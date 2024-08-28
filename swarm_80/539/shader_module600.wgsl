struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 13441u, 4294967295u, 1u, 1u, 73359u, 4294967295u, 50336u, 41428u, 0u, 24511u, 13726u, 0u, 78869u, 53037u, 18011u, 0u, 1u, 40663u);

var<private> global1: vec3<u32>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec4<f32> {
    let var_0 = !vec3<bool>(true, select(arg_0, (arg_1 < -2147483647i) | true, false), true);
    global0 = array<u32, 19>();
    var var_1 = vec4<i32>(36318i, (-2147483647i ^ u_input.b.x) >> (global1.x % 32u), -_wgslsmith_clamp_i32(u_input.b.x, -60557i, _wgslsmith_div_i32(-9929i, 29534i)), ~u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, -876f, 1276f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, global2.a)), vec3<bool>(true, true, false))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -655f), global2.a, -1095f)))));
    let var_3 = -_wgslsmith_mod_vec2_i32(var_1.xz, ~vec2<i32>(arg_1, _wgslsmith_div_i32(1i, var_1.x)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652f + -663f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a - -1145f))), var_2.x));
}

fn func_2() -> vec4<f32> {
    var var_0 = vec4<i32>(~(-u_input.b.x), -33515i, _wgslsmith_add_i32(u_input.a, u_input.b.x), -2147483647i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2446f)))), select(1u, u_input.c, true));
    var_0 = vec4<i32>(1i, u_input.a, abs(var_0.x | -27834i), 21681i);
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_1.a.x)))))));
    global1 = ~(~(~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, var_1.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 19u)], 19u)]), vec3<u32>(u_input.c, u_input.c, 0u)) >> (vec3<u32>(75803u, 0u, u_input.c) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, -238f, 235f, global2.a)) * vec4<f32>(global2.a, -643f, -1193f, var_1.a.x))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.x, 217f, global2.a, 733f), vec4<f32>(717f, global2.a, global2.a, global2.a))), _wgslsmith_f_op_vec4_f32(func_3(false, u_input.a)), all(vec2<bool>(true, false))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a + arg_0.x))))), ~5516u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.zyw, _wgslsmith_f_op_vec3_f32(-arg_0.yyx), select(vec3<bool>(true, arg_3, false), vec3<bool>(false, arg_3, false), vec3<bool>(arg_3, arg_3, true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(455f, -1000f, var_0.a.x), arg_0.yxx)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.zzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(497f, 1648f, 368f)), arg_3)))));
    var var_2 = true;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_1.x) + 835f)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> u32 {
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(398f - arg_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-369f, global2.a, false))))));
    global2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1283f, global2.a, -1051f, global2.a)), _wgslsmith_f_op_vec4_f32(func_2())) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 405f, 1117f, 585f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1891f, 986f, global2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2387f, global2.a, 250f, 829f) - vec4<f32>(global2.a, arg_1.x, -1579f, arg_1.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))))), Struct_1(vec2<f32>(-1336f, _wgslsmith_f_op_f32(max(global2.a, global2.a))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(5769u, arg_0, 88638u, global1.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 19u)], 19u)], global0[_wgslsmith_index_u32(17432u, 19u)], u_input.c, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 13550u, 1726u, 9419u), vec4<u32>(global1.x, global1.x, u_input.c, 19663u))), min(reverseBits(132763u), ~u_input.c), ~firstLeadingBit(52581u))), ~0u, ((firstTrailingBit(global1.x) & 0u) <= reverseBits(~arg_0)) & !all(vec3<bool>(true, true, true)));
    global0 = array<u32, 19>();
    global1 = vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c) | arg_0, global1.x, _wgslsmith_mult_u32(~u_input.c, ~global1.x));
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_3(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)) || (reverseBits(global1.x) > ~28216u), u_input.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(984f, 182f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a)))))), ~global0[_wgslsmith_index_u32(global1.x ^ global0[_wgslsmith_index_u32(u_input.c, 19u)], 19u)] ^ firstLeadingBit(~20336u)), ~(~u_input.c), true);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(func_1(~(~u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.a + 2662f), 1f))), ~(~_wgslsmith_mult_u32(global1.x << (global0[_wgslsmith_index_u32(27958u, 19u)] % 32u), min(53360u, global0[_wgslsmith_index_u32(33937u, 19u)]))));
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    global2 = Struct_2(_wgslsmith_f_op_f32(596f * _wgslsmith_f_op_f32(exp2(global2.a))));
    var var_1 = _wgslsmith_clamp_u32(u_input.c, max(~var_0, u_input.c), 43168u & u_input.c);
    let var_2 = ~select(vec4<u32>(var_0, 1u, ~(global1.x ^ global1.x), 1u), reverseBits(min(vec4<u32>(0u, 4294967295u, var_0, var_0), vec4<u32>(var_0, var_0, 4294967295u, 80672u)) ^ ~vec4<u32>(u_input.c, u_input.c, 4294967295u, global0[_wgslsmith_index_u32(1u, 19u)])), (global2.a > _wgslsmith_f_op_f32(-global2.a)) | !all(vec3<bool>(true, true, true)));
    var var_3 = !select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), select(false, false, !(u_input.c < 91850u)));
    let var_4 = firstTrailingBit(min(min(u_input.a >> (u_input.c % 32u), u_input.b.x), -(u_input.b.x ^ u_input.b.x)) & _wgslsmith_mult_i32(u_input.b.x, u_input.b.x));
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global2.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, -175f)))) + _wgslsmith_f_op_vec4_f32(func_3(!var_3.x, 10105i)).zx), global1.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(766f, 702f, 1132f, -347f) + vec4<f32>(-355f, 1000f, global2.a, global2.a)), _wgslsmith_f_op_vec4_f32(func_3(var_3.x, -42033i)), !vec4<bool>(false, var_3.x, false, var_3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -586f, global2.a, global2.a)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(474f, global2.a, global2.a, global2.a)))))))), global0[_wgslsmith_index_u32(u_input.c, 19u)]);
}

