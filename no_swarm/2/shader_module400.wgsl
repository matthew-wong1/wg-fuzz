struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<bool>(false, true), vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true), vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true), vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true), vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true), vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false), vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false), vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false), vec2<bool>(true, false)));

var<private> global2: array<Struct_2, 7>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_div_vec3_u32((_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(42909u, 26087u, 28258u), vec3<u32>(42259u, 0u, 3225u), vec3<u32>(6227u, 49380u, 8149u)), vec3<u32>(1u, 1u, 1u)) & select(vec3<u32>(1u, 16966u, 0u), vec3<u32>(1u, 1u, 1u), true)) >> (~(~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(1u, 4294967295u, 0u))) & min(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(0u, 4294967295u, 1u)))));
    var var_1 = global0.b;
    var_1 = vec2<bool>(!(!var_1.x), var_1.x);
    let var_2 = vec4<bool>(any(vec4<bool>(select(arg_0, true, arg_1 >= arg_1), any(select(global0.a, vec2<bool>(true, false), global0.a)), arg_0, true == var_1.x)), any(select(vec4<bool>(false, var_1.x, !arg_0, any(vec4<bool>(true, arg_0, true, true))), !select(vec4<bool>(false, true, arg_0, var_1.x), vec4<bool>(var_1.x, true, global0.b.x, true), vec4<bool>(false, arg_0, false, false)), vec4<bool>(any(vec3<bool>(true, global0.a.x, global0.a.x)), true, var_1.x, select(true, true, false)))), _wgslsmith_sub_u32(abs(4294967295u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(1u, var_0.x, 40953u)), firstLeadingBit(var_0.x))) > abs(var_0.x), all(select(vec4<bool>(true, var_1.x, arg_0, global0.b.x), select(vec4<bool>(global0.b.x, arg_0, global0.a.x, false), vec4<bool>(arg_0, var_1.x, false, arg_0), true), select(arg_0, var_1.x, true))) && any(select(!vec3<bool>(true, global0.b.x, false), !vec3<bool>(arg_0, global0.b.x, arg_0), !vec3<bool>(arg_0, true, false))));
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32((~vec3<u32>(53521u, var_0.x, var_0.x) << ((vec3<u32>(var_0.x, 4294967295u, var_0.x) & vec3<u32>(1u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) | vec3<u32>(~115056u, 0u, 8703u), vec3<u32>(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), var_0.yx), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, 28473u), vec4<u32>(4294967295u, 13647u, var_0.x, 4294967295u))))), countOneBits(vec3<i32>(u_input.a.x ^ u_input.a.x, u_input.a.x, _wgslsmith_div_i32(-10842i, 2147483647i))) >> (abs((vec3<u32>(var_0.x, var_0.x, 29247u) >> (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(83815u, 1u, var_0.x), vec3<u32>(var_0.x, 58698u, var_0.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(~abs(_wgslsmith_clamp_vec2_u32(var_0.zz, vec2<u32>(26001u, var_0.x), var_0.xx)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(abs(var_0.yy), ~var_0.yz))), !(!select(select(var_2, var_2, vec4<bool>(false, var_1.x, true, false)), var_2, !var_2)));
    return !var_1.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_1(vec3<u32>(48283u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_0.x, arg_0.x, 0u)), 4294967295u) ^ _wgslsmith_div_u32(4294967295u, ~arg_0.x), arg_0.x), vec3<i32>(u_input.a.x, 18927i, u_input.a.x) | (vec3<i32>(u_input.a.x, 1i, ~u_input.a.x) | vec3<i32>(firstTrailingBit(u_input.a.x), u_input.a.x >> (arg_0.x % 32u), 0i << (arg_0.x % 32u))), arg_0.x, vec4<bool>(global0.a.x, !all(select(vec4<bool>(global0.b.x, global0.b.x, false, global0.a.x), vec4<bool>(true, global0.b.x, global0.a.x, global0.b.x), vec4<bool>(global0.a.x, false, global0.a.x, false))), false, global0.a.x));
    let var_1 = vec2<bool>(func_3(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) * 555f)), false);
    var var_2 = ~(59411u | ~arg_0.x);
    global2 = array<Struct_2, 7>();
    global0 = Struct_2(global0.b, !global0.a);
    return Struct_2(var_1, vec2<bool>(true, var_0.d.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>) -> bool {
    global0 = func_2(vec3<u32>(abs(2494u), select(36555u, abs(0u), all(!vec3<bool>(global0.a.x, true, true))), ~select(1u, _wgslsmith_mult_u32(1u, 0u), true)));
    var var_0 = !(!select(select(!vec4<bool>(global0.a.x, false, arg_1.b.x, false), !vec4<bool>(global0.b.x, global0.b.x, arg_1.b.x, arg_0.a.x), global0.a.x && false), select(select(vec4<bool>(true, arg_1.b.x, false, arg_1.a.x), vec4<bool>(false, arg_1.a.x, false, global0.b.x), false), !vec4<bool>(false, false, arg_0.b.x, arg_0.b.x), select(vec4<bool>(true, global0.a.x, arg_1.b.x, global0.b.x), vec4<bool>(false, arg_1.a.x, false, false), global0.a.x)), !(!vec4<bool>(true, arg_1.b.x, true, false))));
    global1 = array<Struct_2, 26>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(firstTrailingBit(~0u) << (~_wgslsmith_add_u32(1u, 13938u) % 32u), ~1u, 4294967295u), u_input.a.wyy, 4294967295u, !vec4<bool>(true, func_1(Struct_2(vec2<bool>(global0.a.x, global0.b.x), vec2<bool>(true, global0.a.x)), Struct_2(vec2<bool>(true, global0.b.x), global0.b), vec2<f32>(-2684f, -2021f)), global0.a.x, true));
    global0 = Struct_2(!select(!func_2(vec3<u32>(var_0.c, var_0.a.x, var_0.a.x)).a, vec2<bool>(all(vec2<bool>(global0.a.x, global0.b.x)), true), func_2(select(vec3<u32>(var_0.a.x, 4294967295u, 21608u), var_0.a, vec3<bool>(global0.b.x, true, var_0.d.x))).a.x), vec2<bool>(false, true));
    global1 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(902f, 1618f))));
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, select(16750u, ~var_0.a.x, var_2.b.x != var_0.b.x), var_2.c, 1u), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-441f)), 592f), vec2<f32>(_wgslsmith_f_op_f32(select(-522f, 725f, true)), _wgslsmith_f_op_f32(-559f - 650f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(629f)), _wgslsmith_f_op_f32(1000f + -194f))))), vec3<i32>(1i, var_0.b.x, ~(-1i)), ~1i);
}

