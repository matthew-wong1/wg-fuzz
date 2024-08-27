struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(-1179f, -1000f, -194f, 183f, 568f, 177f, 890f, 331f, 257f, -861f, 319f, -1066f, 256f, -547f, 1944f, 2241f, 1420f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(26345i, select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), vec4<bool>(true, true, any(vec3<bool>(true, false, false)) && true, true), 4728i >= _wgslsmith_dot_vec4_i32(min(vec4<i32>(38775i, 0i, -15608i, -3344i), vec4<i32>(22434i, -37751i, 37649i, -1i)), vec4<i32>(-2147483647i, -19357i, 6438i, 2147483647i))), firstLeadingBit(-1i), (select(~vec3<u32>(u_input.a.x, 7948u, 1u), ~vec3<u32>(u_input.a.x, 39950u, 77747u), vec3<bool>(true, true, true)) & min(select(vec3<u32>(u_input.a.x, 0u, 52454u), vec3<u32>(40176u, 33484u, u_input.a.x), vec3<bool>(true, true, true)), vec3<u32>(u_input.a.x, 34140u, u_input.a.x))) << (~(vec3<u32>(30165u, 32335u, 4294967295u) << (~vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), !all(vec3<bool>(true, true, false)));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], _wgslsmith_f_op_f32(f32(-1f) * -123f))), global0[_wgslsmith_index_u32(var_0.d.x, 17u)])) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.d.x, 17u)]))), 47450i != _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a, var_0.a), select(vec2<i32>(49380i, 0i), ~vec2<i32>(var_0.c, var_0.c), !var_0.b.wx)), var_0.e, countOneBits(~1u) >= _wgslsmith_mod_u32(99920u, abs(u_input.a.x) ^ _wgslsmith_div_u32(59907u, 1u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_0.d.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 745f, global0[_wgslsmith_index_u32(61640u, 17u)])), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1210f, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(var_0.d.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-121f, global0[_wgslsmith_index_u32(var_0.d.x, 17u)], 419f, global0[_wgslsmith_index_u32(71520u, 17u)]))) - _wgslsmith_div_vec4_f32(vec4<f32>(142f, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(var_0.d.x, 17u)], -477f), vec4<f32>(377f, -2153f, global0[_wgslsmith_index_u32(53328u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)])))))));
    var var_3 = -42706i;
    var var_4 = vec4<u32>(10240u, abs(var_0.d.x), _wgslsmith_div_u32(~u_input.a.x, 4374u), ~((var_0.d.x ^ var_0.d.x) << (var_0.d.x % 32u)) >> (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(36053u, u_input.a.x)), ~u_input.a) % 32u));
    return vec4<bool>(true, var_1.x, select(true, var_0.b.x, var_0.b.x), var_1.x);
}

fn func_2() -> vec4<bool> {
    global0 = array<f32, 17>();
    return func_3();
}

fn func_1() -> u32 {
    var var_0 = ~vec4<i32>(~(-17740i << (u_input.a.x % 32u)), _wgslsmith_add_i32(_wgslsmith_div_i32(-34599i, 1i), ~33033i), ~select(1i, 1i, any(vec2<bool>(true, false))), -firstLeadingBit(countOneBits(29581i)));
    let var_1 = Struct_1(var_0.x, select(func_2(), !func_2(), !(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(37000u, 17u)] + global0[_wgslsmith_index_u32(28600u, 17u)]) > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 17u)] * 1146f))), _wgslsmith_dot_vec3_i32(~(-_wgslsmith_mult_vec3_i32(var_0.ywy, var_0.yzw)), var_0.ywz), vec3<u32>(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 48306u, ~_wgslsmith_add_u32(15216u, 92648u)) | abs(vec3<u32>(u_input.a.x, 4294967295u, 16627u) & select(vec3<u32>(3088u, u_input.a.x, 57248u), vec3<u32>(4294967295u, u_input.a.x, 42432u), vec3<bool>(true, false, false))), false);
    global0 = array<f32, 17>();
    var_0 = min(vec4<i32>(-(~(-var_1.a)), 1i, _wgslsmith_mod_i32(firstLeadingBit(0i) >> (firstTrailingBit(u_input.a.x) % 32u), ~(-16277i)), min(-2147483647i, firstTrailingBit(var_1.a)) & var_0.x), firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.yyz, var_0.yxy), abs(vec3<i32>(var_1.c, var_0.x, var_0.x))), _wgslsmith_add_i32(var_0.x, var_0.x), min(-var_0.x, _wgslsmith_mod_i32(var_0.x, var_1.c)), -2147483647i)));
    let var_2 = var_1;
    return abs(select(61012u, _wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), var_1.d.x, reverseBits(13679u)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(40775i), vec4<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 772f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1274f, 361f)) * _wgslsmith_f_op_f32(floor(-1348f))), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true))), 2147483647i, vec3<u32>(u_input.a.x, u_input.a.x, reverseBits(79382u)), true);
    var var_1 = vec2<f32>(global0[_wgslsmith_index_u32(countOneBits(func_1()), 17u)], _wgslsmith_div_f32(695f, 479f));
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(abs(var_2.d.x), 17u)])) + -1441f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~0u, 17u)]))), var_1.x));
    var_1 = var_3.xy;
    global0 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, 1u, ~9174u, abs(var_2.a));
}

