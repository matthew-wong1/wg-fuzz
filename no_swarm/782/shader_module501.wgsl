struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -46628i, 50765i);

var<private> global1: f32 = 1971f;

var<private> global2: vec4<f32>;

var<private> global3: u32;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + arg_0.c))), 179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f * global2.x) + -1000f)));
    global0 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, max(firstTrailingBit(arg_0.a), 16657i), abs(15349i) ^ global0.x), ~vec3<i32>(~global0.x, 0i, _wgslsmith_mod_i32(global0.x, global0.x))), -(_wgslsmith_mod_vec3_i32(vec3<i32>(58479i, 1i, -4629i) << (vec3<u32>(4294967295u, u_input.a.x, 0u) % vec3<u32>(32u)), vec3<i32>(arg_0.a, global0.x, 5703i)) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))));
    let var_1 = arg_0;
    let var_2 = arg_2.x;
    global2 = var_0;
    return Struct_2(~abs(1u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    global0 = arg_0;
    let var_0 = -(~(~36118i));
    let var_1 = select(select(vec4<bool>(true, true, !(u_input.a.x >= arg_1.a), !global4.a), !vec4<bool>(false || global4.a, arg_2.d.a, true, !global4.a), false), vec4<bool>(!arg_2.d.a, -1142f != _wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(-global2.x)), all(vec2<bool>(all(vec3<bool>(global4.a, false, arg_2.b.a)), !arg_2.d.a)), !(!any(vec4<bool>(arg_2.d.a, true, true, arg_2.b.a)))), true | (_wgslsmith_clamp_i32(5689i, var_0, -var_0) > _wgslsmith_clamp_i32(abs(var_0), max(-1i, -5482i), -var_0)));
    let var_2 = !var_1;
    global3 = abs(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xww, vec3<u32>(0u, u_input.a.x, 0u)), ~vec3<u32>(arg_1.a, 4294967295u, u_input.a.x) | vec3<u32>(u_input.a.x, 4294967295u, 26211u))) >> (arg_1.a % 32u);
    return global0.x ^ _wgslsmith_mod_i32(global0.x, var_0 >> (1u % 32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(arg_3.a, ~(~arg_2.a));
    global1 = _wgslsmith_f_op_f32(exp2(global2.x));
    global0 = -(~(~arg_1));
    var var_1 = Struct_1(true);
    let var_2 = 588f <= global2.x;
    return Struct_1(all(!(!vec2<bool>(false, global4.a))));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = 0i;
    var var_1 = func_4(_wgslsmith_div_vec4_i32(vec4<i32>(func_3(vec3<i32>(global0.x, global0.x, global0.x) | vec3<i32>(1119i, global0.x, global0.x), func_2(Struct_3(-1i, Struct_1(false), global2.x, arg_0), 0u, vec2<bool>(global4.a, global4.a)), Struct_3(6201i, Struct_1(global4.a), global2.x, arg_0)), ~max(global0.x, global0.x), global0.x, _wgslsmith_mod_i32(~21351i, -13219i)), vec4<i32>(firstLeadingBit(1i), (global0.x >> (u_input.a.x % 32u)) & func_3(vec3<i32>(-2147483647i, global0.x, 1189i), Struct_2(u_input.a.x), Struct_3(2147483647i, Struct_1(arg_0.a), 132f, Struct_1(arg_0.a))), -(33542i & global0.x), (global0.x << (66642u % 32u)) & -global0.x)), vec3<i32>(global0.x, 0i, 1i), Struct_2(_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.a.x, ~28269u), 102988u)), func_2(Struct_3(~2147483647i, arg_0, -827f, Struct_1(true)), ~reverseBits(~124307u), !select(select(vec2<bool>(global4.a, global4.a), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, true), global4.a), select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, global4.a)))));
    let var_2 = _wgslsmith_mod_vec2_u32(u_input.a.wz, reverseBits(abs(vec2<u32>(_wgslsmith_add_u32(4294967295u, u_input.a.x), u_input.a.x ^ u_input.a.x))));
    let var_3 = 86740u;
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(1779f - global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -883f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - -1401f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x) * global2.x), global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, 875f))), global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(183f)), -771f, -461f, _wgslsmith_f_op_f32(-global2.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(global2.x * global2.x), global2.x, _wgslsmith_f_op_f32(global2.x - -434f))))), any(select(vec3<bool>(global4.a, func_1(Struct_1(global4.a)), true), vec3<bool>(global2.x == -1200f, func_4(vec4<i32>(2147483647i, global0.x, -35974i, -6198i), vec3<i32>(global0.x, var_0, -1i), Struct_2(0u), Struct_2(u_input.a.x)).a, true), vec3<bool>(true, global4.a, func_4(vec4<i32>(var_0, var_0, global0.x, var_0), vec3<i32>(703i, global0.x, global0.x), Struct_2(u_input.a.x), Struct_2(7u)).a)))));
    global0 = firstLeadingBit(_wgslsmith_mult_vec3_i32(select(max(-vec3<i32>(0i, var_0, var_0), vec3<i32>(-1i, var_0, global0.x) >> (u_input.a.zzw % vec3<u32>(32u))), ~(-vec3<i32>(global0.x, 41982i, global0.x)), vec3<bool>(false, true, global4.a)), vec3<i32>(1i, -1i, ~var_0) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 85561u), u_input.a.zww) % vec3<u32>(32u))));
    let var_1 = vec3<bool>(global4.a, true, u_input.a.x >= 1u);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, 733f, global2.x, global2.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec2_i32(global0.zz << (u_input.a.xz % vec2<u32>(32u)), vec2<i32>(var_0, _wgslsmith_clamp_i32(-38836i, -2147483647i, -12638i))), var_0, all(var_1)));
}

