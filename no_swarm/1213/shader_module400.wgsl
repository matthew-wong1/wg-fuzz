struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-1026f, -875f), vec2<f32>(656f, 466f), vec2<f32>(1507f, 684f), vec2<f32>(-1752f, 1000f), vec2<f32>(-511f, 1801f), vec2<f32>(1387f, 1191f), vec2<f32>(1114f, 1276f), vec2<f32>(-1173f, -2010f), vec2<f32>(911f, -1000f), vec2<f32>(1285f, 166f), vec2<f32>(-402f, 846f), vec2<f32>(350f, 573f), vec2<f32>(1829f, -235f), vec2<f32>(1409f, -1000f), vec2<f32>(-1000f, -1507f), vec2<f32>(1103f, -1000f), vec2<f32>(1097f, 945f), vec2<f32>(1799f, 1047f), vec2<f32>(-2013f, -214f), vec2<f32>(-454f, -1116f), vec2<f32>(-609f, 997f), vec2<f32>(-909f, 829f), vec2<f32>(450f, -816f));

var<private> global2: vec2<f32>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-208f)));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-528f)))) - global2.x)));
    var var_1 = !any(select(!vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, global2.x < 2531f, true || global3.x), !all(vec3<bool>(false, true, true))));
    var_1 = global3.x;
    let var_2 = ~(-u_input.a);
    return _wgslsmith_mod_vec3_u32(min(~vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(0u, 378u, 0u))), vec3<u32>(~abs(4294967295u), 25543u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(38842u, 4294967295u), vec2<u32>(8112u, 4294967295u), vec2<u32>(1u, 0u)), vec2<u32>(1u, 1u)))) << (_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(51644u, 0u, 6649u)), ~select(vec3<u32>(4294967295u, 4294967295u, 48817u), vec3<u32>(96092u, 47309u, 13349u), vec3<bool>(true, false, false)) << (~vec3<u32>(4294967295u, 1614u, 61372u) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.a.zz, _wgslsmith_clamp_vec2_i32(countOneBits(~max(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 12939i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(arg_0.x, arg_0.x)), ~arg_0.x), vec2<i32>(0i >> (0u % 32u), _wgslsmith_mod_i32(-44237i, arg_0.x)), vec2<i32>(select(-21575i, u_input.a.x, false), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), -abs(min(vec2<i32>(u_input.a.x, 1i), vec2<i32>(arg_0.x, 0i)))));
    var var_1 = ~vec4<u32>(1u, 0u, 4294967295u, 1u);
    let var_2 = global2.x;
    return vec4<u32>(_wgslsmith_dot_vec3_u32(~func_3(), (~var_1.yyx ^ (vec3<u32>(var_1.x, 23679u, 1u) << (var_1.xzy % vec3<u32>(32u)))) << (var_1.wwz % vec3<u32>(32u))), min(((var_1.x ^ var_1.x) | 1u) >> (~_wgslsmith_sub_u32(var_1.x, 1u) % 32u), var_1.x), var_1.x, 1u);
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = ~func_2(_wgslsmith_mult_vec4_i32(~select(vec4<i32>(u_input.a.x, arg_0, -19708i, arg_0), vec4<i32>(u_input.a.x, arg_0, 19709i, -2147483647i), true), abs(firstLeadingBit(vec4<i32>(0i, u_input.a.x, arg_0, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(floor(821f))))), vec2<bool>(true, all(vec2<bool>(true, true))));
    let var_1 = firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-u_input.a.xy, _wgslsmith_mod_vec2_i32(u_input.a.yz, vec2<i32>(-26971i, 0i))), -1i)) << (~select(~countOneBits(4294967295u), var_0.x, true) % 32u);
    var var_2 = var_0.x ^ var_0.x;
    var_2 = firstLeadingBit(~(~(~(var_0.x << (var_0.x % 32u)))));
    var_2 = ~(~var_0.x);
    return StorageBuffer(i32(-1i) * -12391i, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 23>();
    var var_0 = Struct_1(~firstTrailingBit(firstLeadingBit(~vec4<u32>(450u, 38100u, 17154u, 20168u))));
    let x = u_input.a;
    s_output = func_1(u_input.a.x);
}

