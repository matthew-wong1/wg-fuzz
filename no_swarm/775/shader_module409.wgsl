struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: vec4<u32>;

var<private> global1: bool;

var<private> global2: array<bool, 21> = array<bool, 21>(true, false, false, true, false, false, false, true, false, false, true, false, true, false, true, true, true, false, true, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = !vec2<bool>(!global2[_wgslsmith_index_u32(0u, 21u)] && true, ~_wgslsmith_dot_vec3_u32(global0.xyx, vec3<u32>(u_input.a.x, 1u, global0.x)) >= global0.x);
    global1 = true;
    global2 = array<bool, 21>();
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(countOneBits(~u_input.a.zwz) ^ min(reverseBits(u_input.a.wwy), u_input.a.xyw), vec3<u32>(~max(22930u, 1u), 18827u, u_input.a.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1572f, -1151f, -519f), vec3<f32>(2215f, -1356f, -901f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-270f, 622f, 575f))), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(79910u, 21u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(global0.x, 21u)], global2[_wgslsmith_index_u32(13056u, 21u)]), vec3<bool>(false, var_0.x, var_0.x))))));
    return ~(~u_input.a.x) ^ ~u_input.e;
}

fn func_2() -> u32 {
    var var_0 = global0.x;
    var var_1 = vec4<bool>(select(global2[_wgslsmith_index_u32(countOneBits(~firstLeadingBit(u_input.e)), 21u)], ((-9804i >> (0u % 32u)) != u_input.d.x) && false, !global2[_wgslsmith_index_u32(abs(global0.x << (11657u % 32u)), 21u)]), !all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 21u)])) | false, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, -9624i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 64358i, 0i, -14481i), vec4<i32>(u_input.c.x, -10051i, 2147483647i, -49297i)))) < u_input.c.x, (global0.x & ~(~4294967295u)) < (func_3() ^ ~firstTrailingBit(1u)));
    global1 = !(!(false != select(!global2[_wgslsmith_index_u32(global0.x, 21u)], true, false)));
    let var_2 = true;
    global0 = ~vec4<u32>(55497u, _wgslsmith_mult_u32(func_3(), _wgslsmith_div_u32(global0.x, u_input.a.x) ^ u_input.b), _wgslsmith_add_u32(u_input.a.x, ~4294967295u) & max(~u_input.e, _wgslsmith_add_u32(global0.x, global0.x)), func_3());
    return u_input.a.x;
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, 645f, -254f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1695f, 1000f, 1000f)))))));
    var var_1 = global2[_wgslsmith_index_u32(min(31701u, _wgslsmith_div_u32(u_input.a.x, global0.x)), 21u)];
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), 17417i, 48857i);
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(min(global0.x, 2152u) >> ((u_input.a.x & 0u) % 32u)), func_2() >> (~0u % 32u), 0u, func_2()), reverseBits(~u_input.a), ~u_input.a);
    let var_3 = Struct_1(var_0.a);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(~firstTrailingBit(func_1()), _wgslsmith_div_vec4_u32(vec4<u32>(func_2(), ~_wgslsmith_add_u32(4575u, u_input.e), u_input.b, ~_wgslsmith_mod_u32(u_input.e, 4294967295u)), vec4<u32>(1u, 7980u, 1558u, ~global0.x) << (~max(vec4<u32>(global0.x, global0.x, u_input.b, 0u), u_input.a) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1765f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -2314f) + _wgslsmith_f_op_f32(f32(-1f) * -1212f)) + _wgslsmith_div_f32(-1386f, _wgslsmith_f_op_f32(select(-181f, -436f, true)))), 600f, -321f));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, ~_wgslsmith_mult_u32(var_0.x >> (u_input.a.x % 32u), ~51191u)), min(34900u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0.x, 0u, u_input.b), max(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a), vec4<u32>(global0.x, 4294967295u, 1u, var_0.x))))), 21u)];
    var var_3 = var_1.yzy;
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-209f))))))), _wgslsmith_f_op_f32(round(var_1.x)), false));
    var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1304f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1365f, -1000f, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * 279f), var_3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1797f, var_3.x, var_1.x) + var_1.yyy) - _wgslsmith_f_op_vec3_f32(select(var_1.ywy, var_1.yxz, vec3<bool>(false, global2[_wgslsmith_index_u32(2142u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)])))))), vec3<bool>(true, !(!(u_input.c.x >= 1i)), any(vec4<bool>(true, true || global2[_wgslsmith_index_u32(1u, 21u)], true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.x);
}

