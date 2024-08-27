struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 27>;

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec2<u32>(86014u, 36947u)), -1429f, -887f), Struct_2(Struct_1(vec2<u32>(16485u, 4294967295u)), -931f, 173f), Struct_2(Struct_1(vec2<u32>(0u, 34966u)), 820f, 1170f), Struct_2(Struct_1(vec2<u32>(43548u, 0u)), -137f, 780f), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u)), 827f, -225f), Struct_2(Struct_1(vec2<u32>(43046u, 4294967295u)), 1274f, 1217f), Struct_2(Struct_1(vec2<u32>(23783u, 86287u)), -871f, 780f), Struct_2(Struct_1(vec2<u32>(4294967295u, 77360u)), 803f, 1000f), Struct_2(Struct_1(vec2<u32>(0u, 2571u)), -523f, 1348f), Struct_2(Struct_1(vec2<u32>(11196u, 30684u)), -343f, 776f), Struct_2(Struct_1(vec2<u32>(42045u, 4294967295u)), -2056f, 659f), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u)), -512f, -1099f), Struct_2(Struct_1(vec2<u32>(0u, 47724u)), 783f, -650f), Struct_2(Struct_1(vec2<u32>(82555u, 0u)), -1000f, 1676f), Struct_2(Struct_1(vec2<u32>(1u, 39482u)), -808f, 324f), Struct_2(Struct_1(vec2<u32>(28351u, 1u)), -1070f, 761f), Struct_2(Struct_1(vec2<u32>(9469u, 27975u)), 240f, 224f), Struct_2(Struct_1(vec2<u32>(26399u, 1u)), 1179f, -745f), Struct_2(Struct_1(vec2<u32>(1u, 1u)), 445f, -1721f));

var<private> global3: vec2<u32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<f32>) -> bool {
    return !all(vec3<bool>(true, true, true));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec2<f32> {
    var var_0 = false;
    let var_1 = _wgslsmith_mult_vec3_u32(arg_3, firstTrailingBit(~(~(~arg_3))));
    global0 = arg_2.x;
    global3 = ~(~arg_1);
    let var_2 = vec4<bool>(all(!vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), func_2(Struct_5(vec4<i32>(1i, firstLeadingBit(u_input.a.x), 36365i, 0i), ~var_1), vec2<f32>(_wgslsmith_f_op_f32(step(arg_2.x, -337f)), -571f)), all(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, false), vec2<bool>(false, true))), true);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(968f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -623f) * global1[_wgslsmith_index_u32(max(arg_3.x, 4294967295u), 27u)]) - arg_2.x)) * arg_2.zx);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = vec2<u32>(abs(global3.x ^ 1u), global3.x);
    global1 = array<f32, 27>();
    let var_1 = -2181f;
    let var_2 = Struct_4(u_input.a.xz, Struct_3(true & select(u_input.a.x != u_input.a.x, true, func_2(Struct_5(vec4<i32>(u_input.a.x, u_input.a.x, 74160i, u_input.a.x), vec3<u32>(24113u, global3.x, 4722u)), vec2<f32>(arg_0, -799f))), any(vec3<bool>(true, true, true)), true | !(-2070i >= u_input.b), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(reverseBits(global3.x), 27u)])), var_0, vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1)), 1787f, _wgslsmith_f_op_f32(sign(arg_0))), ~(~vec3<u32>(4294967295u, 7515u, global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f)))));
    var var_3 = var_0.x;
    return _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_0.x >> (var_0.x % 32u), 27u)]));
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_2 {
    global3 = abs(~vec2<u32>(0u, ~arg_1));
    var var_0 = countOneBits(_wgslsmith_div_u32(global3.x, ~arg_1));
    var var_1 = Struct_5(-select(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, -4899i) >> (~vec4<u32>(global3.x, arg_1, 32197u, global3.x) % vec4<u32>(32u)), vec4<i32>(u_input.b, -8402i, countOneBits(35853i), -56687i), (-2726i > u_input.b) == true), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>((1u << (arg_1 % 32u)) & 4294967295u, firstTrailingBit(arg_1), global3.x)));
    var var_2 = Struct_5(var_1.a, ~firstLeadingBit(vec3<u32>(var_1.b.x, global3.x, 35477u)) & _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(var_1.b, var_1.b), max(var_1.b, var_1.b)));
    var var_3 = _wgslsmith_f_op_f32(-2095f * _wgslsmith_f_op_f32(f32(-1f) * -726f));
    return global2[_wgslsmith_index_u32(min(83155u, 12923u), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(44263u, 26457u), 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2298f + global1[_wgslsmith_index_u32(global3.x, 27u)]))), global1[_wgslsmith_index_u32((50403u >> (~global3.x % 32u)) ^ ~0u, 27u)], -921f));
    let var_1 = -select(u_input.a.xz, u_input.a.xx, false);
    global3 = vec2<u32>(~global3.x, _wgslsmith_add_u32(_wgslsmith_div_u32(select(~55418u, ~global3.x, -11548i >= var_1.x), global3.x), ~_wgslsmith_sub_u32(global3.x, global3.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(select(-980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), all(vec3<bool>(false, true, false)) | (global1[_wgslsmith_index_u32(4294967295u, 27u)] != var_0.x)))));
    let var_3 = func_4(_wgslsmith_f_op_f32(func_1(368f)), (firstTrailingBit(~global3.x) ^ ~(~10655u)) & 62513u);
    var var_4 = Struct_5(vec4<i32>(-u_input.b, 11840i, var_1.x, -40688i), vec3<u32>(22387u, ~(~global3.x) << (3994u % 32u), ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.a.x, 4294967295u, var_3.a.a.x, 4294967295u), vec4<u32>(0u, 88788u, 11898u, 0u)), ~var_3.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(31341u, global3.x) << (var_3.a.a % vec2<u32>(32u)), abs(var_3.a.a), var_3.a.a), vec2<u32>(~var_3.a.a.x, 1u))));
}

