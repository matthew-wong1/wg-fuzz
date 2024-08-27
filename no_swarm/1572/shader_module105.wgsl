struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: array<bool, 28>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<i32> {
    return vec3<i32>(abs(_wgslsmith_dot_vec2_i32(-(vec2<i32>(arg_0, u_input.b.x) | global1.b.xx), vec2<i32>(_wgslsmith_mult_i32(global1.b.x, -19180i), ~(-1i)))), ((-30644i >> (_wgslsmith_sub_u32(arg_1, arg_1) % 32u)) | (1i ^ global1.b.x)) | global1.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-(vec3<i32>(-1i, 17524i, -12468i) ^ vec3<i32>(0i, 12997i, arg_0)), vec3<i32>(_wgslsmith_div_i32(-3750i, -18713i), _wgslsmith_mult_i32(0i, arg_0), 7562i)), abs(-vec3<i32>(6611i, global1.b.x, arg_0))));
}

fn func_3() -> bool {
    var var_0 = 40783i;
    let var_1 = -1568f;
    let var_2 = firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.b, abs(abs(~vec3<i32>(37434i, -1i, 9281i)))));
    let var_3 = select(!(!(!select(vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(70740u, 28u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)])))), select(select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10191u, 58214u, 1u), vec4<u32>(10029u, 76159u, 39685u, 0u)), 28u)], select(global2[_wgslsmith_index_u32(87213u, 28u)], false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(6046u, 28u)]), vec2<bool>(global2[_wgslsmith_index_u32(57918u, 28u)], global2[_wgslsmith_index_u32(34454u, 28u)]), global2[_wgslsmith_index_u32(1u, 28u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(41151u, 28u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 28u)], false), vec2<bool>(true, false)), all(vec2<bool>(global2[_wgslsmith_index_u32(25442u, 28u)], false))), all(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(0u, 28u)])) | !(!global2[_wgslsmith_index_u32(36590u, 28u)])), true);
    global0 = ~1u;
    return true;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    global0 = ~_wgslsmith_mod_u32(~(~_wgslsmith_add_u32(arg_2.x, 15430u)), min(arg_2.x, arg_2.x));
    global0 = 69087u;
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-340f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(arg_1.a + -752f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -1657f))))), ~((func_2(0i, arg_2.x) & reverseBits(vec3<i32>(global1.b.x, u_input.d.x, 0i))) & vec3<i32>(-17851i, global1.b.x, global1.b.x)), _wgslsmith_f_op_vec2_f32(global1.a * vec2<f32>(-140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1725f)) * _wgslsmith_div_f32(-613f, -1069f)))));
    return func_3();
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> StorageBuffer {
    var var_0 = vec3<f32>(114f, _wgslsmith_f_op_f32(f32(-1f) * -670f), 910f);
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -1197f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1611f, arg_1.b))) + var_0.yx), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, _wgslsmith_add_i32(~(-44741i), func_2(-29320i, 35129u).x), reverseBits(2147483647i)), u_input.b), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(-993f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(755f * -302f) * global1.c.x)))));
    global2 = array<bool, 28>();
    var var_1 = arg_1;
    global2 = array<bool, 28>();
    return StorageBuffer(reverseBits(_wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(2179u, 22261u))), _wgslsmith_add_i32(min(_wgslsmith_mult_i32(global1.b.x, abs(u_input.b.x)), max(max(global1.b.x, 2147483647i), ~global1.b.x)), -_wgslsmith_add_i32(55695i, 22912i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.x, 882f, var_0.x), vec3<f32>(-441f, arg_1.a, 929f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1119f, -667f, var_1.b) * vec3<f32>(var_1.a, -419f, arg_1.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1.a, u_input.d, global1.a);
    global2 = array<bool, 28>();
    let x = u_input.a;
    s_output = func_4(all(select(vec4<bool>(true, true, all(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 28u)], true, false)), false || global2[_wgslsmith_index_u32(48051u, 28u)]), select(vec4<bool>(true, true, true, true), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(81076u, 28u)], true), true), vec4<bool>(func_1(vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 28u)]), Struct_2(var_0.a.x, Struct_1(-107f, -1622f), Struct_1(1717f, -437f)), vec3<u32>(4294967295u, 20706u, 0u)), global2[_wgslsmith_index_u32(~53574u, 28u)], func_1(vec3<bool>(false, global2[_wgslsmith_index_u32(42972u, 28u)], false), Struct_2(global1.c.x, Struct_1(-870f, var_0.c.x), Struct_1(global1.a.x, global1.c.x)), vec3<u32>(54640u, 31870u, 0u)), global2[_wgslsmith_index_u32(1u, 28u)]))), Struct_1(-904f, var_0.c.x), !vec2<bool>(global2[_wgslsmith_index_u32(~firstLeadingBit(2212u), 28u)], false), u_input.d.x);
}

