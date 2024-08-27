struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

var<private> global1: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 1i), vec4<i32>(-8674i, -1i, 26545i, -865i), vec4<i32>(-1i, 19740i, 41610i, i32(-2147483648)), vec4<i32>(55459i, -1i, 22667i, -1i), vec4<i32>(-2610i, i32(-2147483648), 7143i, 1i), vec4<i32>(2147483647i, 19078i, 2147483647i, 1i), vec4<i32>(-94692i, 1i, 0i, i32(-2147483648)));

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = !vec3<bool>(~arg_1.b <= ~u_input.b.x, global2.x, all(select(!vec4<bool>(global2.x, true, true, true), !vec4<bool>(true, global2.x, global2.x, true), !vec4<bool>(global2.x, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, arg_0)) - -1184f) - 540f), -1097f) * vec2<f32>(arg_0, arg_1.a));
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_3() -> f32 {
    var var_0 = -39637i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-420f)));
    var_0 = reverseBits(_wgslsmith_div_i32(-546i, u_input.c));
    let var_2 = vec2<bool>(true, true);
    global1 = array<vec4<i32>, 7>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1700f * 691f) + _wgslsmith_f_op_f32(step(-629f, 621f))))) * _wgslsmith_f_op_f32(round(-188f))) - 1505f);
}

fn func_2() -> f32 {
    var var_0 = Struct_3(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, ~(-68525i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~u_input.a, reverseBits(u_input.a)), 1i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(535f)) * _wgslsmith_f_op_f32(sign(1839f))), _wgslsmith_div_f32(-1699f, -1197f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(func_3()), Struct_1(2549f, u_input.b.x, 1u, 2147483647i), u_input.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -243f))), abs(~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), min(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), u_input.d)) >> (u_input.d.x % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, 9078u), ~abs(u_input.d.x))), 2537i);
    var_0 = Struct_3(_wgslsmith_mult_vec2_i32(-(vec2<i32>(u_input.c, var_0.a.x) << (~u_input.d % vec2<u32>(32u))), u_input.a.yx));
    var var_2 = reverseBits(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, var_1.b, u_input.d.x) ^ vec4<u32>(66750u, 84872u, 4294967295u, 5272u), vec4<u32>(30228u, var_1.c, 1u, 4294967295u) >> (vec4<u32>(4294967295u, 87864u, 1u, 3862u) % vec4<u32>(32u)))));
    var var_3 = _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(min(abs(vec3<i32>(2147483647i, 0i, -2147483647i)), u_input.a ^ u_input.a), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, var_1.d, u_input.c), vec3<i32>(-2147483647i, var_0.a.x, var_0.a.x), vec3<i32>(var_0.a.x, -10640i, u_input.a.x)))), ~var_1.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.b.a);
    var var_1 = any(select(!(!vec3<bool>(false, global2.x, false)), !(!select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, false, true), global2.x)), !(_wgslsmith_dot_vec3_i32(vec3<i32>(9494i, -2147483647i, 9488i), vec3<i32>(-58570i, arg_0.a.d, -73257i)) == _wgslsmith_mod_i32(-1i, u_input.a.x))));
    let var_2 = Struct_4(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1042f, 251f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, -1177f))))), reverseBits(abs(max(u_input.d, abs(vec2<u32>(u_input.d.x, u_input.d.x))))), ~_wgslsmith_mod_vec4_i32((global1[_wgslsmith_index_u32(54668u, 7u)] ^ global1[_wgslsmith_index_u32(47071u, 7u)]) >> (reverseBits(vec4<u32>(36055u, u_input.b.x, 19190u, 10294u)) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, ~u_input.b.xz), 7u)]), arg_1);
    var var_3 = _wgslsmith_f_op_f32(max(arg_1.a, arg_0.a.a));
    global0 = array<Struct_4, 25>();
    return !global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-566f + 624f)) + _wgslsmith_f_op_f32(func_1(707f, Struct_1(502f, u_input.d.x, 7249u, 8443i), u_input.b.x))))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-191f + -1234f), var_0, true)))))));
    var var_2 = all(select(!vec3<bool>(any(vec2<bool>(global2.x, false)), false, any(vec4<bool>(true, global2.x, false, false))), !vec3<bool>(true, global2.x, global2.x), func_4(Struct_2(Struct_1(var_0, 19561u, u_input.b.x, -44089i), Struct_1(var_0, u_input.d.x, 0u, -819i)), Struct_1(_wgslsmith_f_op_f32(func_2()), 0u, ~4294967295u, -u_input.a.x))));
    var var_3 = u_input.b;
    let var_4 = ~1u;
    var var_5 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(4294967295u, u_input.b.x, 0u, 15516u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 1u, 4183u), vec4<u32>(var_3.x, 4294967295u, 68509u, 1u)), vec4<bool>(global2.x, false, true, global2.x)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(25483u, var_3.x, 4294967295u, var_4), vec4<u32>(12542u, var_3.x, var_3.x, var_4), vec4<bool>(false, global2.x, global2.x, false)), vec4<u32>(1u, 18937u, var_3.x, var_3.x) ^ vec4<u32>(var_4, var_4, 1u, u_input.d.x))), ~firstTrailingBit(var_3.x) & ~var_3.x, abs(~(~u_input.d.x)));
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-399f * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-602f, 714f)) * 1f), -751f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * vec3<f32>(var_0, var_0, var_0))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0, -124f, 122f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -1575f, -212f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(var_5.x, 23707u)) >> (~_wgslsmith_clamp_u32(var_3.x, 4294967295u, u_input.d.x) % 32u), 7u)]), ~(~(~vec4<u32>(77523u, 91430u, u_input.d.x, var_5.x))), u_input.b, countOneBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_mult_i32(u_input.c, u_input.c), -2721i), u_input.c)));
}

