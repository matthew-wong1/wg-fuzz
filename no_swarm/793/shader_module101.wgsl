struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: array<u32, 20> = array<u32, 20>(34923u, 1u, 0u, 0u, 1u, 4294967295u, 95826u, 18250u, 70544u, 75319u, 83237u, 1u, 4294967295u, 18786u, 0u, 4294967295u, 0u, 1u, 0u, 4294967295u);

var<private> global2: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    return true;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = any(vec3<bool>(func_3(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], global1[_wgslsmith_index_u32(3427u, 20u)])) & true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    var var_1 = reverseBits(firstTrailingBit(~(~min(43506u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)]))));
    let var_2 = vec2<u32>(_wgslsmith_sub_u32(min(firstTrailingBit(reverseBits(5200u)), abs(~26351u)), ~global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(60637u, 92623u), 20u)]), ~select(_wgslsmith_mult_u32(0u << (global1[_wgslsmith_index_u32(38517u, 20u)] % 32u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 22247u)), 20u)]), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 1u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 20u)], 31009u)), var_0));
    let var_3 = global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(0u, 20u)]), 20u)];
    var var_4 = Struct_1(select(select(!vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0), vec2<bool>(true, true)), !(!vec2<bool>(var_0, var_0)), vec2<bool>(true, abs(2147483647i) < arg_0.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -438f);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_4(Struct_1(vec2<bool>(false, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(102227u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)]) > ~4294967295u)), _wgslsmith_f_op_f32(func_2(~(~vec2<i32>(u_input.a.x, -2147483647i)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1749f, 972f, -778f, 920f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-327f, 1478f, -337f, -850f))), vec4<f32>(-1284f, -448f, -1000f, -473f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(158f, -1000f, -1125f, 186f), vec4<f32>(187f, 927f, -729f, -916f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1070f, 448f, 1000f, -2211f), vec4<f32>(518f, -1755f, 1107f, -2141f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1387f, 328f, 983f, -154f) - vec4<f32>(784f, -1220f, 741f, 710f))), vec4<bool>(true, true, true, true))))));
    let var_1 = var_0;
    global1 = array<u32, 20>();
    return vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2423f * -515f) + _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(var_1.b + 1600f))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(318f, var_1.b)), var_1.b)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(!select(func_1(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60267u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), u_input.a.ww), func_1(vec3<u32>(1u, global1[_wgslsmith_index_u32(81978u, 20u)], 36048u), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-225f, _wgslsmith_f_op_f32(1792f + 1390f), select(true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1117f, -124f)) + _wgslsmith_f_op_f32(sign(-1593f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -197f))), -333f), vec2<bool>(true, true))));
    var var_1 = true & !(!(any(vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, var_0.a.a.x)) && !var_0.a.a.x));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2136f), -1315f));
    var var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(abs(global1[_wgslsmith_index_u32(4294967295u, 20u)]) | _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(32512u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48661u, 20u)], 20u)]), ~reverseBits(global1[_wgslsmith_index_u32(0u, 20u)]), ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)] % 32u))), countOneBits(~countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], 4294967295u)))), countOneBits(~select(abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(81872u, 20u)], 20u)], 20u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)])), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(58141u, 20u)], 28346u), !var_0.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * 374f)))), vec3<i32>(~_wgslsmith_sub_i32(-1i, abs(u_input.a.x)), 1i, i32(-1i) * -u_input.a.x), abs(u_input.a.x) << (~abs(global1[_wgslsmith_index_u32(var_3.x, 20u)]) % 32u), firstLeadingBit(_wgslsmith_mult_i32(20974i, firstLeadingBit(u_input.a.x))), _wgslsmith_sub_vec3_i32(-vec3<i32>(firstLeadingBit(u_input.a.x), firstLeadingBit(u_input.a.x), 2147483647i & u_input.a.x), ~_wgslsmith_add_vec3_i32(max(u_input.a.wyy, u_input.a.xzw), ~vec3<i32>(-50718i, -11267i, -43023i))));
}

