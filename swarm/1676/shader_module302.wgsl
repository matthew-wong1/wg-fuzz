struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: array<u32, 28> = array<u32, 28>(1u, 67856u, 4294967295u, 4294967295u, 4294967295u, 0u, 248u, 0u, 1u, 8122u, 6233u, 76139u, 1u, 4294967295u, 61431u, 9499u, 4294967295u, 4294967295u, 0u, 4294967295u, 4294967295u, 0u, 4294967295u, 28072u, 33185u, 36655u, 0u, 8990u);

var<private> global2: array<f32, 15> = array<f32, 15>(952f, -686f, 1381f, -127f, 539f, -1194f, -1875f, 1161f, 1315f, -1018f, 1191f, 925f, -1810f, -165f, 1901f);

var<private> global3: Struct_2;

var<private> global4: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = -2147483647i;
    var var_1 = Struct_2(~global3.a, 2346i, any(arg_0.a.a));
    let var_2 = -vec2<i32>(firstTrailingBit(-2147483647i), arg_2);
    global2 = array<f32, 15>();
    let var_3 = abs(-vec4<i32>((6046i & var_2.x) | _wgslsmith_sub_i32(46717i, var_2.x), var_2.x, var_1.b, 1i));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_3(Struct_1(!vec3<bool>(all(vec4<bool>(true, arg_3.x, arg_2, arg_2)), true, arg_2)));
    var var_1 = select(select(vec4<bool>(1i != -global3.b, !var_0.a.a.x, !func_3(Struct_3(Struct_1(var_0.a.a)), -1670f, global3.b, global2[_wgslsmith_index_u32(arg_1.x, 15u)]), false), !(!(!vec4<bool>(true, false, arg_2, global3.c))), vec4<bool>(arg_3.x || arg_3.x, true, any(vec2<bool>(false, true)), false)), vec4<bool>(true, var_0.a.a.x, true, !arg_2 || false), select(vec4<bool>(!all(vec2<bool>(false, true)), var_0.a.a.x, select(false, true, arg_3.x), any(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x << (u_input.a % 32u), 28u)], 13u)])), vec4<bool>(global3.c, arg_2, !global3.c, true), all(!(!global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59050u, 28u)], 13u)]))));
    var var_2 = -740f;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 15u)], -537f, true)), -2251f, _wgslsmith_div_f32(644f, -114f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(320f, 250f, -1340f)) + vec3<f32>(-588f, arg_0, 204f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(541f, global2[_wgslsmith_index_u32(global3.a.x, 15u)], 1707f), vec3<f32>(arg_0, arg_0, 1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(step(-191f, 1253f)), _wgslsmith_f_op_f32(arg_0 - -922f), _wgslsmith_f_op_f32(-499f + arg_0)))));
    global1 = array<u32, 28>();
    return 1i;
}

fn func_1() -> bool {
    global0 = array<Struct_4, 28>();
    var var_0 = Struct_2(abs(abs(~vec3<u32>(u_input.a, 0u, global3.a.x)) & select(global3.a, vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 28u)], 1u) ^ global3.a, select(vec3<bool>(false, global3.c, true), vec3<bool>(true, true, global3.c), global3.c))), -func_2(-1285f, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), vec4<u32>(4294967295u, global3.a.x, global3.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)])), select(vec4<u32>(global1[_wgslsmith_index_u32(global3.a.x, 28u)], global1[_wgslsmith_index_u32(global3.a.x, 28u)], 0u, 15480u), vec4<u32>(23691u, 103616u, 1u, global1[_wgslsmith_index_u32(58285u, 28u)]), vec4<bool>(true, false, false, true))), any(global4[_wgslsmith_index_u32(abs(u_input.a), 13u)]), !global4[_wgslsmith_index_u32(global3.a.x, 13u)]), global3.c);
    global1 = array<u32, 28>();
    let var_1 = Struct_3(Struct_1(!select(select(vec3<bool>(var_0.c, global3.c, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), var_0.c), vec3<bool>(false, global3.c, true), vec3<bool>(global3.c, true, true))));
    global1 = array<u32, 28>();
    return func_3(Struct_3(Struct_1(select(!var_1.a.a, select(var_1.a.a, var_1.a.a, var_1.a.a), !var_1.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-135f + global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, global3.a.x), global1[_wgslsmith_index_u32(~82383u, 28u)]), 15u)]) + global2[_wgslsmith_index_u32(u_input.a, 15u)]), -(i32(-1i) * -var_0.b), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u << (global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_0.a.x, global1[_wgslsmith_index_u32(u_input.a, 28u)]), 28u)] % 32u), 15u)], 196f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(true, true, all(global4[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(1u, 28u)]), 13u)])), vec3<bool>(!(!global3.c), global3.c, !all(vec4<bool>(true, global3.c, false, global3.c))), !(!vec3<bool>(true, global3.c, true))));
    global4 = array<vec2<bool>, 13>();
    var var_1 = Struct_2(abs(select(select(_wgslsmith_div_vec3_u32(vec3<u32>(47288u, 11491u, 22110u), global3.a), firstTrailingBit(global3.a), !vec3<bool>(var_0.a.x, global3.c, false)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, 22301u), u_input.a, _wgslsmith_dot_vec2_u32(global3.a.zy, global3.a.xz)), !all(vec4<bool>(var_0.a.x, var_0.a.x, true, false)))), ~_wgslsmith_clamp_i32(~(~(-2122i)), 1i, global3.b), all(vec4<bool>(func_1(), false, global3.c == true, true)));
    var var_2 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.b, -1465i, reverseBits(2147483647i)), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global3.b, global3.b, -1i) << (vec3<u32>(var_1.a.x, global3.a.x, global3.a.x) % vec3<u32>(32u)), ~vec3<i32>(global3.b, 46991i, global3.b))), vec3<i32>(var_1.b & 1i, _wgslsmith_clamp_i32(var_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(52673i, var_1.b), vec2<i32>(14557i, global3.b)), -7864i ^ global3.b), -var_1.b));
    global3 = Struct_2(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(~98396u, var_1.a.x, ~u_input.a)), vec3<u32>(reverseBits(_wgslsmith_mod_u32(0u, u_input.a)), _wgslsmith_clamp_u32(37979u, ~1u, _wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(u_input.a, 28u)])), _wgslsmith_div_u32(~1u, 7647u))), 5361i, global3.c);
    var_1 = Struct_2(vec3<u32>(1u, global1[_wgslsmith_index_u32(28165u, 28u)], global1[_wgslsmith_index_u32(select(1u, ~global3.a.x, !var_1.c), 28u)]), select(func_2(global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(u_input.a, u_input.a, global1[_wgslsmith_index_u32(0u, 28u)])), 15u)], vec4<u32>(1u, global1[_wgslsmith_index_u32(~92762u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], ~1u), func_2(global2[_wgslsmith_index_u32(0u, 15u)], vec4<u32>(62290u, u_input.a, 29516u, 0u), global3.c, vec2<bool>(var_0.a.x, true)) >= ~(-2147483647i), select(global4[_wgslsmith_index_u32(~30212u, 13u)], select(var_0.a.yy, var_0.a.zx, var_0.a.yz), any(global4[_wgslsmith_index_u32(u_input.a, 13u)]))), ~(_wgslsmith_mod_i32(global3.b, -6792i) & _wgslsmith_dot_vec4_i32(vec4<i32>(-12569i, 2147483647i, 2147483647i, -1i), vec4<i32>(var_1.b, var_2.x, var_1.b, 5785i))), global3.c), (((global3.c || true) || false) | ((true & global3.c) && !global3.c)) || !(1i >= min(var_1.b, 14204i)));
    var_0 = Struct_1(var_0.a);
    global4 = array<vec2<bool>, 13>();
    let var_3 = global0[_wgslsmith_index_u32(25183u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-908f - _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(0u, 15u)]))) * -1776f), abs(global3.a), var_2.xx, _wgslsmith_sub_i32(-(-global3.b & ~1i), var_1.b));
}

