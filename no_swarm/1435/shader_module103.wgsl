struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(13775i, 4395i, 36346i, -5332i), vec4<i32>(0i, -20374i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 24216i, 1i, -41854i), vec4<i32>(i32(-2147483648), 2833i, 0i, 1i), vec4<i32>(0i, -1i, -35679i, -43632i), vec4<i32>(i32(-2147483648), -24709i, -28178i, -49652i), vec4<i32>(i32(-2147483648), 32022i, -12182i, 30039i), vec4<i32>(0i, -36852i, 0i, 0i), vec4<i32>(-1i, -1i, -1i, -13607i), vec4<i32>(14855i, -920i, 2147483647i, 0i), vec4<i32>(-32283i, 2147483647i, -6939i, i32(-2147483648)), vec4<i32>(-22687i, -52973i, 48792i, -47012i), vec4<i32>(0i, 0i, 11708i, 2147483647i), vec4<i32>(37359i, i32(-2147483648), 69435i, 1i), vec4<i32>(-38416i, 12914i, 17924i, -7286i), vec4<i32>(-5964i, 2147483647i, -4053i, 2147483647i), vec4<i32>(1i, -49065i, 0i, i32(-2147483648)), vec4<i32>(-35116i, -1i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -42594i, 5417i), vec4<i32>(9355i, -1i, 2147483647i, 14895i), vec4<i32>(i32(-2147483648), i32(-2147483648), -48905i, 18784i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 35479i), vec4<i32>(2147483647i, 74321i, i32(-2147483648), -20685i), vec4<i32>(1i, -13618i, -1i, i32(-2147483648)), vec4<i32>(0i, 35921i, 15881i, -60816i), vec4<i32>(-1i, -3302i, 3735i, 2147483647i), vec4<i32>(50084i, -38527i, 2147483647i, -1236i), vec4<i32>(-13677i, 46082i, -35053i, 0i), vec4<i32>(0i, -3843i, 20395i, -37232i));

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(arg_1));
    var var_1 = u_input.c;
    var var_2 = u_input.c;
    var_1 = ~u_input.c;
    var var_3 = u_input.b.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -1022f) + _wgslsmith_f_op_f32(-var_0)))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-288f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 465f)));
}

fn func_2() -> vec3<u32> {
    global2 = array<vec2<i32>, 3>();
    let var_0 = ~27719u;
    var var_1 = abs(~(-vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wzy, vec3<i32>(-1i, u_input.b.x, 1i)), -2147483647i, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1i, -474f))), false)) * _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1156f)), _wgslsmith_f_op_f32(-368f - 928f)) * _wgslsmith_f_op_f32(f32(-1f) * -721f))));
    var var_3 = max(reverseBits(2147483647i), 1i);
    return ~u_input.c.www;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = any(vec4<bool>(true | any(vec3<bool>(true, false, true)), true, all(vec4<bool>(true, true, true, true)), !(!(arg_0.x < 645f))));
    var var_1 = vec2<u32>(u_input.c.x, 6853u);
    let var_2 = ~func_2() ^ vec3<u32>(~(abs(var_1.x) | _wgslsmith_mult_u32(u_input.e.x, var_1.x)), ~0u & ~var_1.x, _wgslsmith_add_u32(select(u_input.d >> (45324u % 32u), ~var_1.x, any(vec3<bool>(false, true, var_0))), var_1.x));
    var var_3 = vec4<i32>(-(~select(-25110i, ~2147483647i, false || var_0)), firstLeadingBit(0i) << (var_1.x % 32u), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, 1i)), reverseBits(-vec2<i32>(5856i, 1i))), 26679i);
    var_3 = ~(min(_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(var_1.x, 29u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, var_3.x, 37039i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, u_input.b.x, var_3.x), u_input.b)), -(~vec4<i32>(2147483647i, 1i, u_input.b.x, var_3.x))) & ~(~global0[_wgslsmith_index_u32(~u_input.c.x, 29u)]));
    return Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(arg_0)), vec3<f32>(-398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1037f) + _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-196f - 1532f), _wgslsmith_div_f32(arg_0.x, arg_0.x), any(vec2<bool>(var_0, true))))))), firstTrailingBit(~(~(u_input.c.yw ^ u_input.c.ww))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(max(vec4<i32>(~min(u_input.a, 1409i), -30088i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), u_input.b.zy), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 18402i, u_input.b.x, u_input.a) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(u_input.b, u_input.b))), ~(global0[_wgslsmith_index_u32(min(u_input.d, u_input.e.x), 29u)] ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, -1i, 0i), vec4<i32>(14095i, u_input.b.x, -7273i, u_input.b.x)))), vec4<i32>(1i, reverseBits(min(47954i, u_input.b.x)), -u_input.a, ~abs(u_input.a)));
    var var_1 = vec2<bool>(true, true);
    global2 = array<vec2<i32>, 3>();
    let var_2 = 990f;
    global0 = array<vec4<i32>, 29>();
    let var_3 = Struct_3(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 2865f, 1400f) - vec3<f32>(var_2, 785f, 1012f))))));
    var var_4 = Struct_4(true, var_1.x);
    var var_5 = Struct_4(all(vec2<bool>(false, all(vec4<bool>(false, var_4.a, false, true)) && !var_4.a)), var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a), ~_wgslsmith_div_u32(_wgslsmith_add_u32(firstTrailingBit(12827u), firstLeadingBit(1u)), 1u << (func_2().x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * 1221f), var_2);
}

