struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28>;

var<private> global1: vec4<f32> = vec4<f32>(-571f, -145f, 117f, -1230f);

var<private> global2: vec2<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = firstTrailingBit(vec4<u32>(abs(~86033u), 0u, _wgslsmith_mult_u32(select(1u, 8927u, true), 108838u), 1u)) | select(select(~vec4<u32>(0u, 1u, 32786u, 472u), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(all(vec2<bool>(true, false)), true, true, false)), min(vec4<u32>(max(23372u, 0u), _wgslsmith_mult_u32(4828u, 21292u), ~4294967295u, 1u), firstTrailingBit(vec4<u32>(54585u, 0u, 94457u, 119427u))), vec4<bool>(true, false, true, true));
    let var_1 = global2.x;
    global0 = array<vec3<i32>, 28>();
    let var_2 = vec4<bool>(all(vec2<bool>(all(vec3<bool>(true, true, true)), true)), -1i > ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a.yzw, vec3<i32>(40471i, -13416i, 7827i)), u_input.a.x), (global2.x > _wgslsmith_mod_i32(u_input.a.x, 1i | global2.x)) == false, true);
    global1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, 2211f, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(max(global1.x, global1.x))), select(u_input.a.x, u_input.a.x, true) > firstLeadingBit(-1i))), _wgslsmith_f_op_f32(floor(global1.x)))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1359f))), global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1058f)) - -1000f))), _wgslsmith_f_op_f32(ceil(global1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x + 2276f), _wgslsmith_div_f32(-1119f, -491f), global1.x, -336f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 668f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(551f, -559f, -353f, 577f)))))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = abs(_wgslsmith_mod_u32(select(~_wgslsmith_clamp_u32(1u, 14129u, 4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(10483u, 1294u), vec2<u32>(0u, 10002u)), true), select(~select(1u, 42500u, true), _wgslsmith_clamp_u32(1u, 7659u, 0u) ^ ~35205u, true)));
    global1 = _wgslsmith_f_op_vec4_f32(func_3());
    global2 = arg_0.zz;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(-505f)), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, 145f, global1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(393f, _wgslsmith_f_op_f32(global1.x - global1.x)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1278f, _wgslsmith_f_op_f32(max(global1.x, 291f))), vec2<f32>(_wgslsmith_f_op_f32(-425f + global1.x), _wgslsmith_f_op_f32(-global1.x))))), ~vec4<u32>(abs(~0u), 1u, 1u, 27699u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(-2194f - global1.x), true))), -2430f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f * _wgslsmith_f_op_f32(-global1.x)) - 1871f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1352f))))));
    var var_2 = u_input.a.x;
    return !vec4<bool>(!(true || all(vec2<bool>(false, true))), true == any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true, !(_wgslsmith_f_op_f32(-var_1.a) != _wgslsmith_f_op_f32(-global1.x)));
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = u_input.a.xy;
    return !func_2(u_input.a.wzz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 28>();
    let var_0 = select(!select(func_1(vec3<bool>(true, true, true)), vec4<bool>(false, true, all(vec4<bool>(true, true, false, false)), any(vec2<bool>(false, false))), select(func_1(vec3<bool>(false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), func_1(vec3<bool>(-1385f < _wgslsmith_f_op_f32(-global1.x), true, true)), func_2(~_wgslsmith_sub_vec3_i32(~global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(101493u, 28u)]))));
    let var_1 = u_input.a.x & global2.x;
    var var_2 = ~16830i;
    global0 = array<vec3<i32>, 28>();
    var var_3 = Struct_1(global1.x, vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), global1.x), global1.yw, reverseBits(~vec4<u32>(~1u, 1u >> (0u % 32u), ~13386u, ~0u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, -1284f), vec4<f32>(global1.x, global1.x, 1831f, -1000f), vec4<bool>(var_0.x, false, true, true))), vec4<f32>(396f, 297f, 1204f, 1117f), !vec4<bool>(false, false, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-global1.x), -450f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(-2228f, global1.x, global1.x, -355f))), vec4<f32>(global1.x, 190f, -361f, global1.x), vec4<bool>(false, false, var_0.x, var_0.x))))), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, min(0u, ~_wgslsmith_clamp_u32(var_3.d.x, var_3.d.x, var_3.d.x) >> (~select(34432u, 4294967295u, var_0.x) % 32u)), -8389i);
}

