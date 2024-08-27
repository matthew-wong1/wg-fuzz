struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: array<f32, 14> = array<f32, 14>(-1288f, 1000f, -125f, -263f, -315f, -700f, -969f, -351f, -1400f, 233f, 1724f, 2100f, 675f, -2403f);

var<private> global2: vec3<f32> = vec3<f32>(-918f, -1000f, -818f);

var<private> global3: array<f32, 4>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> f32 {
    global3 = array<f32, 4>();
    global3 = array<f32, 4>();
    var var_0 = arg_1.a.x;
    let var_1 = vec4<i32>(arg_0, min(_wgslsmith_sub_i32(u_input.e, _wgslsmith_clamp_i32(u_input.b & 2147483647i, _wgslsmith_add_i32(1i, arg_0), ~arg_0)), _wgslsmith_dot_vec2_i32(-u_input.a.xx, reverseBits(u_input.a.yz)) ^ (i32(-1i) * -31372i)), _wgslsmith_mod_i32(i32(-1i) * -(~arg_0), u_input.a.x), firstTrailingBit(2147483647i));
    var_0 = true;
    return _wgslsmith_f_op_f32(-global2.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    var var_0 = vec4<f32>(global3[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1532f)))), global3[_wgslsmith_index_u32(u_input.c.x, 4u)], global2.x);
    let var_1 = 2147483647i;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~arg_0.x, Struct_5(vec2<bool>(true, false), 53698u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, global3[_wgslsmith_index_u32(23110u, 4u)], -132f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global3[_wgslsmith_index_u32(u_input.c.x, 4u)])), global2.x)), 8548u ^ max(_wgslsmith_mult_u32(~u_input.d, 0u), ~(~u_input.c.x)), ~vec2<i32>(_wgslsmith_sub_i32(~1i, ~(-20398i)), (-9940i << (u_input.c.x % 32u)) ^ _wgslsmith_mult_i32(-17066i, u_input.a.x)));
    var var_3 = Struct_5(!select(vec2<bool>(false, all(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true))), _wgslsmith_div_u32(min(18247u, 42777u), 36958u));
    let var_4 = vec4<bool>((_wgslsmith_mult_u32(u_input.d, ~752u) | 4294967295u) >= ~(var_2.b >> (~var_2.b % 32u)), true, !all(!select(vec3<bool>(false, true, var_3.a.x), vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x), var_3.a.x)), false);
    return arg_0.x | _wgslsmith_sub_i32(-15058i << ((u_input.c.x & 0u) % 32u), var_2.c.x);
}

fn func_1() -> bool {
    var var_0 = select(-_wgslsmith_sub_vec2_i32(-vec2<i32>(18935i, 21621i), vec2<i32>(func_2(u_input.a.wwy, global3[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_add_i32(0i, -2147483647i))), vec2<i32>(-(~20506i), -countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1063i, 42071i), u_input.a.xy))), vec2<bool>(true, true));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1813f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f * -136f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.x, global2.x))))), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(u_input.d, firstLeadingBit(abs(19248u))), ~u_input.c.x, 1u), 4u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(1u), 10113u, 70984u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39272u, 1u, 0u), global0[_wgslsmith_index_u32(u_input.d, 20u)]) ^ 4294967295u, 20u)]), 14u)] * _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u ^ u_input.d, abs(u_input.d)), 14u)], _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 4u)], -870f))))));
    global2 = var_1;
    global3 = array<f32, 4>();
    let var_2 = vec3<bool>(false, !(false | any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), true);
    return !(!any(select(select(vec3<bool>(true, true, var_2.x), vec3<bool>(false, var_2.x, true), vec3<bool>(false, true, false)), vec3<bool>(var_2.x, true, true), vec3<bool>(var_2.x, var_2.x, var_2.x))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: i32) -> vec4<bool> {
    let var_0 = vec4<i32>(-(~min(~arg_2.x, -14405i)), -(firstLeadingBit(35311i) ^ (_wgslsmith_add_i32(-1i, u_input.b) ^ u_input.e)), -36145i | ~(~(-31094i & arg_2.x)), -1i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-287f + _wgslsmith_f_op_f32(-global2.x)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], -1565f, global2.x, 111f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1289f, -109f, -544f, global1[_wgslsmith_index_u32(31295u, 14u)]))), !arg_0)))), _wgslsmith_div_f32(global2.x, -574f), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(58516i, Struct_5(vec2<bool>(false, arg_0), arg_1.x))), _wgslsmith_f_op_f32(trunc(global2.x)), select(arg_0, false, true))), global2.x == _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(arg_1.x, 4u)]))))));
    global0 = array<vec3<u32>, 20>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1334f + _wgslsmith_f_op_f32(-var_1.a)) * 1984f);
    global3 = array<f32, 4>();
    return vec4<bool>(any(!vec2<bool>(arg_0 || false, all(vec2<bool>(arg_0, arg_0)))), arg_0, true, any(select(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0))), select(!vec2<bool>(false, arg_0), !vec2<bool>(arg_0, arg_0), any(vec3<bool>(arg_0, true, arg_0))), select(!vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), all(vec4<bool>(true, arg_0, arg_0, true))))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    global1 = array<f32, 14>();
    global3 = array<f32, 4>();
    global1 = array<f32, 14>();
    global3 = array<f32, 4>();
    let var_0 = true;
    return Struct_2(arg_1, Struct_1(vec4<f32>(arg_1, -1577f, arg_1, -1011f), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u << (1u % 32u), abs(1u) & abs(u_input.c.x)), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(f32(-1f) * -1330f), !arg_0)) - 950f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f)), func_4(!func_1(), ~_wgslsmith_add_vec4_u32(vec4<u32>(48934u, 14870u, 26620u, u_input.d) ^ vec4<u32>(u_input.d, 1u, u_input.d, 1u), ~vec4<u32>(u_input.c.x, 4294967295u, 0u, u_input.d)), firstTrailingBit(-(u_input.a ^ u_input.a)), -2147483647i));
    var var_1 = Struct_5(vec2<bool>(!select(true, true, 354f < global2.x), select(true, true, true || all(vec4<bool>(false, true, false, true)))), 11220u);
    var var_2 = var_0.b;
    var var_3 = var_1.a.x;
    let var_4 = reverseBits(_wgslsmith_clamp_u32(4294967295u, u_input.d, ~u_input.c.x) | 0u);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_sub_vec4_u32(~(vec4<u32>(184u, var_1.b, 1u, 79827u) >> (vec4<u32>(16254u, 44144u, 44049u, 6407u) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_mod_u32(u_input.d, var_1.b), ~1u, var_4, u_input.c.x), min(~vec4<u32>(101037u, 11133u, 0u, var_4), vec4<u32>(u_input.d, u_input.c.x, var_1.b, 18474u) | (vec4<u32>(14273u, 1u, 0u, u_input.c.x) >> (vec4<u32>(4294967295u, 28728u, u_input.d, 11910u) % vec4<u32>(32u))))));
}

