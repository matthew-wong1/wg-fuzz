struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false));

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<vec4<i32>, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = array<vec4<bool>, 8>();
    let var_0 = Struct_1(!((true || (4148u >= u_input.c.x)) | global1.x), arg_0.b);
    global0 = array<vec4<bool>, 8>();
    let var_1 = !(!(false && all(select(vec3<bool>(global1.x, var_0.a, arg_0.a), vec3<bool>(false, true, global1.x), vec3<bool>(arg_0.a, arg_0.a, global1.x)))));
    let var_2 = var_0;
    return var_1;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_1(true | func_3(Struct_1(global1.x, _wgslsmith_f_op_f32(3125f - 151f)), 0u), -988f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1368f, 2299f)) * _wgslsmith_f_op_f32(-195f + -1236f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, -2123f))), _wgslsmith_f_op_f32(select(-301f, _wgslsmith_f_op_f32(abs(1378f)), var_0.b == _wgslsmith_f_op_f32(-1234f + -675f))), _wgslsmith_f_op_f32(f32(-1f) * -665f)));
    global2 = array<vec4<i32>, 22>();
    var_0 = Struct_1(false, 583f);
    var var_2 = vec2<i32>(~2147483647i, ~0i);
    return var_1.x;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.a, max(2147483647i & u_input.a, u_input.a)))));
    var var_1 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(select(~u_input.c.zw, firstLeadingBit(vec2<u32>(61132u, u_input.b.x)), select(vec2<bool>(global1.x, true), vec2<bool>(true, global1.x), false)), u_input.b.wz), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.xz, vec2<u32>(u_input.c.x, u_input.c.x)), vec2<u32>(33388u, u_input.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 51280u), vec2<u32>(25788u, 29692u))));
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    global0 = array<vec4<bool>, 8>();
    global1 = !vec3<bool>(true, any(vec3<bool>(false, var_1.x != 51453u, true)), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(826f * -174f) - _wgslsmith_f_op_f32(-var_0)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = ~u_input.c.x;
    let var_1 = vec2<u32>(abs(1u), _wgslsmith_mod_u32(u_input.b.x, select(abs(u_input.b.x), u_input.b.x, true)));
    global1 = vec3<bool>(!(!func_3(Struct_1(arg_0.a, -1106f), var_1.x)), global1.x, true);
    var_0 = ~(~0u);
    var var_2 = arg_0;
    return Struct_1(var_2.a | false, arg_2.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<bool> {
    global1 = select(select(vec3<bool>(!all(vec3<bool>(true, arg_1.a, false)), select(func_4(arg_2, 5154i, vec4<f32>(arg_2.b, arg_1.b, -109f, arg_1.b)).a, arg_1.a, false), func_4(func_4(Struct_1(true, -874f), u_input.a, vec4<f32>(1988f, arg_2.b, arg_2.b, arg_1.b)), _wgslsmith_mod_i32(-2147483647i, -11400i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-229f, -598f, arg_2.b, -1317f), vec4<f32>(arg_1.b, -654f, -2015f, arg_2.b)))).a), !vec3<bool>(242f < arg_1.b, false & arg_2.a, any(global1.zy)), true), !select(!vec3<bool>(true, arg_0.x, false), vec3<bool>(false, false, true), arg_0), (arg_1.b > -389f) && func_4(arg_1, -2147483647i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.b, 764f, arg_2.b, arg_1.b), vec4<f32>(arg_2.b, arg_1.b, arg_1.b, arg_2.b)))))).a);
    var var_0 = arg_2;
    var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = firstLeadingBit(u_input.b.xw);
    return vec3<bool>(all(global0[_wgslsmith_index_u32(select(~11679u, _wgslsmith_mult_u32(0u, 7039u), !arg_2.a) | ~u_input.b.x, 8u)]), (var_0.a || (arg_0.x && true)) | any(arg_0), arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = !(!vec3<bool>(select(!global1.x, false, global1.x), global1.x, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-557f, -2410f, 346f, 1767f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1188f, 1797f, 1000f, 207f) - vec4<f32>(862f, -110f, 200f, 435f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-823f, -303f, -893f, 641f) - vec4<f32>(1144f, 1627f, -328f, -1000f))))))));
    var var_3 = var_2.x;
    let var_4 = func_5(vec3<bool>(any(vec3<bool>(!var_1.x, select(global1.x, global1.x, true), any(global0[_wgslsmith_index_u32(26045u, 8u)]))), !(!any(vec4<bool>(false, true, var_1.x, true))), global1.x), Struct_1(global1.x, var_2.x), func_4(Struct_1(var_1.x, 1763f), select(abs(reverseBits(u_input.a)), countOneBits(u_input.a << (var_0.x % 32u)), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.x, -1000f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(804f * -1054f), _wgslsmith_f_op_f32(-670f - var_2.x)) + vec4<f32>(var_2.x, var_2.x, -900f, var_2.x))), abs(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(u_input.a, -37303i)), _wgslsmith_mod_i32(u_input.a, u_input.a & u_input.a), _wgslsmith_sub_i32(2147483647i, u_input.a) >> (4294967295u % 32u))));
    let var_5 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f * var_2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, 1f, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(_wgslsmith_add_i32(u_input.a | 19869i, firstLeadingBit(-28082i)), u_input.a)));
}

