struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<bool, 24> = array<bool, 24>(true, false, true, false, true, false, false, false, false, false, false, true, true, true, true, false, false, true, false, false, false, false, true, true);

var<private> global4: array<u32, 10> = array<u32, 10>(1u, 4294967295u, 4294967295u, 0u, 4294967295u, 51256u, 0u, 20865u, 1u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    global2 = array<Struct_2, 26>();
    return ~abs(vec2<u32>(6095u, u_input.b << (58058u % 32u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_2(u_input.a & ~_wgslsmith_sub_vec4_u32(arg_0.a.a, vec4<u32>(arg_2, arg_2, 4294967295u, 4294967295u)), func_3(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.zzw)) - var_0.c.zxw));
    let var_2 = abs(firstLeadingBit(i32(-1i) * -1i));
    let var_3 = -_wgslsmith_div_vec4_i32(select(~vec4<i32>(var_2, 1i, var_2, -37099i), _wgslsmith_div_vec4_i32(~vec4<i32>(40284i, -31951i, var_2, var_2), vec4<i32>(-2147483647i, var_2, 21775i, var_2) & vec4<i32>(23749i, -19860i, var_2, var_2)), select(!vec4<bool>(arg_3.x, arg_3.x, false, global3[_wgslsmith_index_u32(17403u, 24u)]), vec4<bool>(global3[_wgslsmith_index_u32(arg_2, 24u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5274u, 10u)], 24u)], false, false), -2147483647i > var_2)), ~(-min(vec4<i32>(var_2, -2147483647i, 33159i, 1i), vec4<i32>(10186i, 2147483647i, 0i, var_2))));
    let var_4 = true;
    return reverseBits(~(arg_2 | countOneBits(_wgslsmith_dot_vec4_u32(var_0.a, var_0.a))));
}

fn func_1() -> f32 {
    global3 = array<bool, 24>();
    global3 = array<bool, 24>();
    global1 = min(~(~u_input.a.x), _wgslsmith_mod_u32(~1u, func_2(Struct_3(Struct_2(u_input.a, vec2<u32>(1u, 1u), vec4<f32>(1213f, -990f, 172f, 423f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1664f, -1066f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1467f, -669f, -1405f, -401f) - vec4<f32>(653f, -589f, 809f, -1011f))), ~_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.b, 10u)], u_input.b), vec2<bool>(global3[_wgslsmith_index_u32(~u_input.a.x, 24u)], true))));
    let var_0 = 1i;
    let var_1 = -622f == _wgslsmith_f_op_f32(max(-515f, _wgslsmith_f_op_f32(step(289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1949f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-772f, -1180f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-962f, 765f, true)), -839f, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(555f))))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1580f) + _wgslsmith_f_op_f32(-129f * -337f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(592f, -1017f, 1616f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -524f, 153f), vec3<f32>(403f, 166f, 1197f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1473f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-946f - 470f) + -596f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1428f - 2373f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, -690f, _wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1090f, -2021f, -1000f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1717f, 2467f), vec3<f32>(670f, -1000f, 533f))))));
    var var_1 = !global3[_wgslsmith_index_u32(18441u, 24u)];
    var var_2 = min(abs(1i), -5954i) << ((firstTrailingBit(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(0u, 10u)], u_input.a.x)) >> (4294967295u % 32u)) % 32u);
    global3 = array<bool, 24>();
    var_1 = !all(vec2<bool>(true, true));
    var var_3 = countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~select(vec3<i32>(2147483647i, 33414i, 1i), vec3<i32>(-1i, 52568i, 30121i), false), _wgslsmith_add_vec3_i32(abs(vec3<i32>(-2147483647i, 0i, 13262i)), vec3<i32>(0i, 22837i, 1i))), -firstTrailingBit(vec3<i32>(0i, 1i, -11493i)) << ((u_input.a.zxw | ~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global4[_wgslsmith_index_u32(1u, 10u)], 32952u)) % vec3<u32>(32u))));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * var_0.x)))))))));
    global0 = array<Struct_4, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4, var_0.x, 1676f), vec3<f32>(var_4, var_0.x, var_4)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-715f, var_4, -1000f), vec3<f32>(-1123f, var_0.x, var_4), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_4)), vec3<bool>(global3[_wgslsmith_index_u32(0u, 24u)], false, global3[_wgslsmith_index_u32(u_input.b, 24u)]))))), u_input.a.wy, _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(abs(u_input.a.x), 10u)], global4[_wgslsmith_index_u32(36088u, 10u)], u_input.a.x << (0u % 32u), global4[_wgslsmith_index_u32(u_input.b, 10u)]), abs(u_input.a)), u_input.a), ~global4[_wgslsmith_index_u32(~38097u, 10u)]);
}

