struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> vec2<f32> {
    var var_0 = Struct_2(arg_1.a);
    var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11748u, 31528u, 71898u, var_0.a.a), vec4<u32>(2145u, 1u, arg_0.x, arg_3)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 5946u), arg_0)), arg_0.zy), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.a.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.b.x, var_0.a.b.x, var_0.a.e.x)) * 1202f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.b.x))), -2066f))), arg_1.a.e.wxx, true, !(!select(arg_1.a.e, vec4<bool>(true, false, global0.x, true), any(vec3<bool>(true, true, false)))));
    let var_2 = ~1u;
    global0 = var_1.e.xw;
    return var_1.b.yz;
}

fn func_4(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = all(vec4<bool>(global0.x, true, 273f != _wgslsmith_f_op_f32(arg_0.x + 1262f), !(false == global0.x))) & (!all(vec3<bool>(true, global0.x, global0.x)) != (u_input.b < _wgslsmith_mod_i32(u_input.b, firstTrailingBit(u_input.a))));
    let var_1 = Struct_1(~0u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -219f))))), select(select(select(!vec3<bool>(var_0, false, var_0), !vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, false)), select(vec3<bool>(true, false, true), !vec3<bool>(global0.x, false, var_0), vec3<bool>(true, true, true)), true), vec3<bool>(false, true, true), select(vec3<bool>(false, !global0.x, all(vec4<bool>(var_0, var_0, true, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, var_0), var_0), select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, global0.x, var_0), global0.x), select(vec3<bool>(false, var_0, true), vec3<bool>(true, var_0, var_0), true)), vec3<bool>(true, false, false && global0.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), ~1u), vec2<u32>(firstTrailingBit(0u), _wgslsmith_mod_u32(4294967295u, 1u))) >= 27885u, !vec4<bool>(true, var_0, 4122i > max(u_input.c.x, -3140i), true));
    let var_2 = vec4<u32>((var_1.a & ~(~87826u)) & (firstTrailingBit(var_1.a) & reverseBits(~0u)), ~4294967295u, ~38899u, 1u);
    let var_3 = abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(var_1.a, var_2.x, var_2.x, var_1.a), var_2), _wgslsmith_mod_vec4_u32(var_2, vec4<u32>(0u, var_1.a, 0u, 4294967295u))), var_2, ~var_2)) ^ var_2;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)));
    return vec2<bool>(global0.x, var_1.e.x);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 1u << ((arg_0 & 1u) % 32u)), arg_0, reverseBits(arg_3.a.a)) ^ ~(~_wgslsmith_div_u32(33671u >> (arg_3.a.a % 32u), _wgslsmith_sub_u32(arg_0, 4294967295u)));
    global0 = func_4(_wgslsmith_f_op_vec2_f32(func_3(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0, arg_3.a.a, 10631u) | vec3<u32>(arg_0, var_0, 15273u), vec3<u32>(4294967295u, arg_0, 13249u)), arg_3, u_input.c.zy, ~(~(arg_0 & arg_0)))));
    var var_1 = vec4<i32>(0i, 0i, _wgslsmith_add_i32(abs(~(-6865i) >> (1u % 32u)), arg_2), -44222i);
    var var_2 = ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(48812u, arg_0) | _wgslsmith_sub_vec2_u32(vec2<u32>(var_0, arg_3.a.a), vec2<u32>(16990u, 24573u))), ~vec2<u32>(20267u, arg_0));
    var var_3 = arg_3;
    return Struct_2(var_3.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = 86034u;
    var var_1 = func_2(39091u, u_input.c.xy, min(~arg_0.x, 2147483647i), Struct_2(arg_1.a));
    global0 = !(!(!(!select(vec2<bool>(false, false), var_1.a.c.zz, arg_1.a.c.zy))));
    var var_2 = vec2<f32>(var_1.a.b.x, 388f);
    var var_3 = vec4<bool>(true, !var_1.a.c.x != all(arg_1.a.e.zz), -u_input.c.x > -select(-arg_0.x, u_input.b, any(arg_2)), !(~4294967295u >= var_1.a.a));
    return func_2(50157u, firstLeadingBit(~(~u_input.c.xz)) | vec2<i32>(1i, 0i), max(~(-arg_0.x), arg_0.x), arg_1);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    global0 = vec2<bool>((global0.x & !(!global0.x)) & false, false);
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!vec2<bool>(global0.x, global0.x | all(vec2<bool>(false, global0.x))));
    let var_0 = vec4<bool>(true, any(select(vec4<bool>(false && global0.x, false, any(vec2<bool>(global0.x, false)), !global0.x), select(!vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, true), false), select(vec4<bool>(true, global0.x, true, false), !vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, global0.x, false, global0.x)))), true, global0.x);
    let var_1 = _wgslsmith_add_i32(u_input.b, countOneBits(firstTrailingBit((u_input.b & 1i) & _wgslsmith_dot_vec2_i32(vec2<i32>(-38656i, 20444i), u_input.c.xy))));
    global0 = select(var_0.zy, select(!func_5(func_1(vec4<i32>(-1i, 1i, var_1, -7297i), Struct_2(Struct_1(30392u, vec3<f32>(-530f, -200f, 459f), var_0.ywx, true, vec4<bool>(var_0.x, global0.x, false, false))), var_0.zy), _wgslsmith_clamp_u32(27095u, 1u, 35461u), func_2(4294967295u, vec2<i32>(u_input.b, var_1), 1i, Struct_2(Struct_1(4294967295u, vec3<f32>(139f, -1094f, -480f), vec3<bool>(true, false, true), var_0.x, vec4<bool>(global0.x, true, global0.x, true)))).a), var_0.zx, var_0.zy), any(func_4(func_2(abs(20100u), _wgslsmith_mod_vec2_i32(vec2<i32>(64149i, 2147483647i), vec2<i32>(var_1, var_1)), u_input.a, Struct_2(Struct_1(35720u, vec3<f32>(-2151f, 902f, -1095f), var_0.yyw, false, var_0))).a.b.xz)));
    global0 = var_0.ww;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(40407u, func_2(1u, -u_input.c.xz, 0i, func_1(vec4<i32>(u_input.c.x, 40619i, u_input.c.x, var_1), Struct_2(Struct_1(90598u, vec3<f32>(1243f, 1000f, -1064f), vec3<bool>(global0.x, var_0.x, true), false, var_0)), var_0.wx)).a.a), func_1(abs(vec4<i32>(u_input.b, 0i, 1i, var_1)), Struct_2(Struct_1(20198u, vec3<f32>(-2332f, -2252f, -809f), vec3<bool>(true, global0.x, var_0.x), global0.x, vec4<bool>(true, var_0.x, global0.x, global0.x))), var_0.zy).a.a), reverseBits(abs(_wgslsmith_div_u32(1u, 34113u))), u_input.b, reverseBits(66182u), max(-34170i, countOneBits(select(0i, u_input.b, var_0.x))));
}

