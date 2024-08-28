struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<i32, 1> = array<i32, 1>(34917i);

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<u32>(77369u, 0u), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<u32>(11699u, 4294967295u, 19813u)), Struct_1(vec2<u32>(8490u, 7216u), vec3<i32>(-23724i, i32(-2147483648), -42422i), vec3<u32>(36045u, 28648u, 24294u)));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global2 = array<Struct_1, 29>();
    global0 = array<Struct_1, 18>();
    let var_0 = Struct_1(vec2<u32>(firstTrailingBit(u_input.a ^ u_input.d), ~(~u_input.a) << (0u % 32u)), _wgslsmith_clamp_vec3_i32(select(u_input.b, vec3<i32>(_wgslsmith_div_i32(-46231i, u_input.b.x), abs(u_input.b.x), -1i << (u_input.c % 32u)), true), ~vec3<i32>(~u_input.e.x, countOneBits(u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.e, u_input.e)), vec3<i32>(~1i, ~0i & firstLeadingBit(global1[_wgslsmith_index_u32(5924u, 1u)]), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(~46496u, 1u)], _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.d, 1u)], u_input.b.x)))), vec3<u32>(~(~(~u_input.d)), abs(~(~117922u)), abs(u_input.c)));
    var var_1 = global2[_wgslsmith_index_u32(43099u, 29u)];
    let var_2 = vec4<f32>(307f, _wgslsmith_f_op_f32(-2858f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1315f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1020f, 1167f)))))), -709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-688f, 765f))))));
    return true;
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 29>();
    var var_0 = vec3<bool>(!select(all(vec4<bool>(true, false, true, false)), true, true), !func_3(), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 1u)], 1i), vec2<i32>(2691i, 20449i)), 15832i) <= u_input.e.x);
    var var_1 = global2[_wgslsmith_index_u32(~u_input.d, 29u)];
    let var_2 = ~reverseBits(vec4<u32>(8501u, max(u_input.d, 86733u | u_input.c), ~_wgslsmith_mod_u32(var_1.c.x, var_1.a.x), 0u));
    let var_3 = vec4<bool>(all(vec4<bool>(var_0.x, false, var_0.x, any(var_0.yy))), all(var_0.xz), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1012f)) - -1892f) < 1702f), var_0.x);
    return global0[_wgslsmith_index_u32(u_input.c, 18u)];
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_sub_i32(u_input.b.x, firstTrailingBit(2147483647i));
    let var_1 = false;
    global3 = array<Struct_1, 2>();
    let var_2 = func_2();
    var var_3 = _wgslsmith_mult_u32(0u, func_2().c.x) ^ 0u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -187f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-312f, -208f, false)))), _wgslsmith_f_op_f32(-816f * -344f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(997f * 245f) - _wgslsmith_f_op_f32(func_1()))))), 1000f, 1f);
    let var_1 = func_2();
    var var_2 = !select(vec3<bool>(!all(vec2<bool>(true, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), true), select(vec3<bool>(true, false, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(u_input.b.x >= global1[_wgslsmith_index_u32(1u, 1u)], u_input.d != 47903u, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    var var_3 = Struct_1(~(~vec2<u32>(var_1.c.x, firstLeadingBit(var_1.c.x))), min(select(vec3<i32>(global1[_wgslsmith_index_u32(reverseBits(0u), 1u)], _wgslsmith_mod_i32(-2147483647i, global1[_wgslsmith_index_u32(u_input.c, 1u)]), -12363i >> (var_1.a.x % 32u)), vec3<i32>(36461i, ~u_input.e.x, i32(-1i) * -2147483647i), !vec3<bool>(var_2.x, var_2.x, false)), ~func_2().b), ~(~(vec3<u32>(u_input.c, var_1.c.x, 8753u) << (vec3<u32>(u_input.d, 76491u, var_1.c.x) % vec3<u32>(32u)))) | ~(abs(var_1.c) << (vec3<u32>(var_1.a.x, 1u, 13606u) % vec3<u32>(32u))));
    var_3 = Struct_1(~vec2<u32>(~1u, 1u), ~var_1.b, select(var_1.c, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.c, var_3.c), ~var_1.c), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(var_2.x, true, false)), vec3<bool>(all(vec4<bool>(var_2.x, false, false, true)), var_1.c.x < u_input.d, var_2.x), select(!vec3<bool>(var_2.x, var_2.x, var_2.x), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, var_2.x, false), true), !vec3<bool>(var_2.x, var_2.x, var_2.x)))));
    let var_4 = global0[_wgslsmith_index_u32(~4294967295u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(936f, var_0.x, -1278f, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 900f, 234f, -498f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1315f, var_0.x, var_0.x, var_0.x)))))), max(-vec3<i32>(~var_3.b.x, var_4.b.x, var_4.b.x), ~vec3<i32>(min(u_input.b.x, 47469i), _wgslsmith_clamp_i32(-26024i, u_input.b.x, var_3.b.x), -8610i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xy), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.xy * vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 130f), vec2<f32>(var_0.x, var_0.x))), true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy))));
}

