struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(1000f), Struct_2(1680f), Struct_2(-661f), Struct_2(545f), Struct_2(-1000f), Struct_2(1097f), Struct_2(445f), Struct_2(1000f), Struct_2(-945f), Struct_2(-185f), Struct_2(1000f), Struct_2(294f), Struct_2(1317f), Struct_2(1032f), Struct_2(451f), Struct_2(-1296f), Struct_2(-2599f), Struct_2(-869f), Struct_2(257f));

var<private> global2: Struct_1 = Struct_1(vec3<u32>(14687u, 28908u, 26981u), vec3<u32>(4294967295u, 12203u, 4677u), vec4<f32>(-627f, -1000f, -2181f, -780f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_2 {
    return global1[_wgslsmith_index_u32(firstTrailingBit(global2.b.x), 19u)];
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_1(~(~_wgslsmith_mod_vec3_u32(global2.b, select(vec3<u32>(30982u, 4294967295u, 24897u), vec3<u32>(arg_3.x, 4294967295u, u_input.a), vec3<bool>(true, true, true)))), vec3<u32>(_wgslsmith_mult_u32(global2.a.x, 0u), 1u, reverseBits(1u)), _wgslsmith_f_op_vec4_f32(global2.c * _wgslsmith_f_op_vec4_f32(global2.c - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -332f, global0.x, -1961f)))))));
    return !(!((global2.c.x > _wgslsmith_f_op_f32(global0.x * var_0.c.x)) | true));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: bool) -> vec2<u32> {
    global2 = Struct_1(abs(global2.a), global2.b, global2.c);
    global2 = Struct_1(global2.b, global2.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(406f + arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, -1142f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2449f + global0.x))), any(vec3<bool>(false, arg_2, true)))), -342f, _wgslsmith_f_op_f32(step(arg_1.x, arg_0.x))));
    return ~global2.b.xz;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-1000f + -1164f);
    global1 = array<Struct_2, 19>();
    var_0 = _wgslsmith_f_op_f32(func_1().a + 1709f);
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.c - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-176f, -1996f, -126f, -103f)))) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(trunc(global0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.c.x, global2.c.x, 307f, global2.c.x)))), _wgslsmith_f_op_vec4_f32(min(global2.c, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 1386f, 218f, global2.c.x))))))))));
    let var_1 = vec2<u32>(~(func_3(_wgslsmith_f_op_vec3_f32(exp2(global2.c.wwz)), global2.c, false).x >> (firstTrailingBit(arg_1) % 32u)), ~_wgslsmith_mult_u32(firstTrailingBit(min(1u, arg_2.x)), 1u));
    return Struct_1(vec3<u32>(arg_2.x, ~max(firstLeadingBit(1u), 4294967295u), _wgslsmith_sub_u32(~firstLeadingBit(0u), u_input.a)), vec3<u32>(30780u, u_input.a, abs(1u)), global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global2.c.yww), _wgslsmith_f_op_vec3_f32(global2.c.www * vec3<f32>(global2.c.x, -1074f, _wgslsmith_f_op_f32(floor(global2.c.x)))))));
    var var_1 = func_1();
    var var_2 = global2.a;
    global2 = func_4(0u, ~(~0u) >> (abs(1u >> (_wgslsmith_sub_u32(0u, u_input.a) % 32u)) % 32u), func_3(global2.c.zyy, vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1002f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f - -1194f)), global2.c.x), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))) | !func_2(vec3<i32>(0i, -2147483647i, 1i), 2147483647i, vec3<i32>(-24146i, 2147483647i, 47867i), vec2<u32>(37424u, 0u))));
    global1 = array<Struct_2, 19>();
    var var_3 = vec3<bool>(~4294967295u < abs(var_2.x), false, false);
    var var_4 = ~(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-4917i, 0i), -40084i << (1u % 32u), 30045i), max(-vec3<i32>(2147483647i, 1i, -30828i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-35131i, 6361i, 1i), vec3<i32>(1i, -2147483647i, 2147483647i), vec3<i32>(2428i, 21147i, 2147483647i)))) << (vec3<u32>(_wgslsmith_mod_u32(26936u, firstLeadingBit(7135u)), 45333u, var_2.x) % vec3<u32>(32u)));
    var var_5 = ~_wgslsmith_mod_vec4_u32(~firstTrailingBit(~vec4<u32>(var_2.x, var_2.x, var_2.x, global2.a.x)), vec4<u32>(~u_input.a, _wgslsmith_mult_u32(u_input.a, 0u | var_2.x), u_input.a, _wgslsmith_sub_u32(u_input.a, ~global2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_vec4_f32(global2.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(486f, -422f, var_0.x, 191f) - global2.c), _wgslsmith_f_op_vec4_f32(-global2.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_0.x, var_0.x, var_0.x))))), -2147483647i, var_4.yz, _wgslsmith_clamp_u32(~(~(var_5.x << (79419u % 32u))), ~var_5.x, 42895u));
}

