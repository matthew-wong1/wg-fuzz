struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec2<i32>(-1i, 13556i), Struct_1(-1189f, vec3<u32>(1u, 31824u, 72321u), vec3<f32>(-295f, -836f, -282f), vec3<i32>(41051i, 27074i, 1i)), vec2<f32>(1682f, 1260f)), Struct_3(vec2<i32>(518i, 23965i), Struct_1(947f, vec3<u32>(1u, 8632u, 0u), vec3<f32>(-961f, 1000f, -826f), vec3<i32>(-37721i, 0i, 28194i)), vec2<f32>(-419f, 476f)), Struct_3(vec2<i32>(-26475i, 36645i), Struct_1(1000f, vec3<u32>(14654u, 1u, 1u), vec3<f32>(351f, 130f, 238f), vec3<i32>(0i, 2147483647i, 24035i)), vec2<f32>(-1044f, -1119f)), Struct_3(vec2<i32>(47221i, 11443i), Struct_1(-313f, vec3<u32>(29948u, 52144u, 4294967295u), vec3<f32>(568f, 946f, 432f), vec3<i32>(-1i, 0i, 2147483647i)), vec2<f32>(522f, 337f)), Struct_3(vec2<i32>(15100i, 1i), Struct_1(1134f, vec3<u32>(1u, 1u, 6923u), vec3<f32>(552f, -140f, 861f), vec3<i32>(-1i, 39476i, 0i)), vec2<f32>(-198f, 1435f)), Struct_3(vec2<i32>(2147483647i, -50257i), Struct_1(-544f, vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-1303f, 190f, 310f), vec3<i32>(1i, -22184i, 39203i)), vec2<f32>(233f, 1000f)), Struct_3(vec2<i32>(-1i, -1i), Struct_1(-1448f, vec3<u32>(4294967295u, 4294967295u, 40871u), vec3<f32>(-2765f, 1803f, -947f), vec3<i32>(35338i, 18972i, 0i)), vec2<f32>(-443f, -1344f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> bool {
    var var_0 = arg_1;
    var var_1 = true;
    let var_2 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -118f), vec3<u32>(1u, firstTrailingBit(arg_0), _wgslsmith_mult_u32(37166u, 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(871f, -306f, -1000f) - vec3<f32>(-817f, -609f, -449f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(138f, 148f, -488f) * vec3<f32>(-799f, 397f, -377f))), _wgslsmith_div_vec3_i32(~u_input.c, vec3<i32>(-2147483647i, u_input.c.x, -5636i)))));
    var_1 = !arg_1.x;
    var_0 = arg_1;
    return !arg_1.x;
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 7>();
    let var_0 = u_input.b.x >= -2147483647i;
    var var_1 = Struct_3(_wgslsmith_clamp_vec2_i32(u_input.c.yz, vec2<i32>(-2147483647i, u_input.c.x), u_input.b), Struct_1(-1000f, vec3<u32>(~u_input.a.x & ~4748u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(54042u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 50293u)), ~vec3<u32>(100392u, u_input.a.x, u_input.a.x)), firstTrailingBit(countOneBits(4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2154f, -120f)) - -250f), _wgslsmith_f_op_f32(trunc(1078f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-157f, 493f))), u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-444f, 467f) * vec2<f32>(1248f, 1620f))))));
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(var_1.b.d.x, ~u_input.b.x) & -2587i, -26587i, _wgslsmith_add_i32(abs(~var_1.b.d.x), var_1.b.d.x), abs(~firstTrailingBit(10970i)) | select(~0i, ~u_input.b.x, var_0));
    var_2 = firstLeadingBit(vec4<i32>(54268i, abs(0i), _wgslsmith_add_i32(48146i, reverseBits(-1674i)), _wgslsmith_mod_i32(-33485i, u_input.c.x)) >> (~vec4<u32>(4294967295u, 1u, 1u, ~1u) % vec4<u32>(32u)));
    return var_1.c.x;
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(827f, arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -258f))), func_2(1u, vec3<bool>(true, false, true)) | true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), 1f, _wgslsmith_f_op_f32(658f * arg_0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -484f, arg_0.x) - vec3<f32>(1000f, arg_0.x, 938f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) + vec3<f32>(arg_0.x, arg_0.x, 2088f)))))));
    let var_2 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3()), firstLeadingBit(~vec3<u32>(var_0.x, 4294967295u, 39864u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-908f, 1028f, 1544f), vec3<f32>(-1473f, arg_0.x, arg_0.x), true)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, -1460f, arg_0.x)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 8092i, u_input.c.x), max(vec3<i32>(15787i, u_input.b.x, u_input.c.x), u_input.c)))));
    global0 = array<Struct_3, 7>();
    var_0 = vec2<u32>(~(~_wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x)), ~reverseBits(62910u)) ^ (vec2<u32>(~select(var_2.a.a.b.x, 1u, true), _wgslsmith_clamp_u32(47564u, 1u, _wgslsmith_mod_u32(42577u, var_0.x))) | var_2.a.a.b.zy);
    return var_2.a.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-609f))))) - -1157f);
    let var_1 = Struct_5(Struct_2(Struct_1(135f, max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(11663u, 1u, 4294967295u)), vec3<u32>(4294967295u, 54860u, 72554u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-326f, 216f, 1661f))), (vec3<i32>(u_input.b.x, -36917i, u_input.b.x) | vec3<i32>(1i, u_input.b.x, u_input.c.x)) << (func_1(vec2<f32>(234f, -821f)) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.a.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(398f, var_1.a.a.c.x))), var_1.a.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1503f, 1032f))), ~(~select(~vec4<u32>(0u, 1u, var_1.a.a.b.x, 1u), abs(vec4<u32>(4294967295u, u_input.a.x, 0u, 1u)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.a.c.xx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.a.c.x, var_1.a.a.a), var_1.a.a.c.yx, vec2<bool>(true, false))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.a, -1201f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(554f, var_1.a.a.c.x))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1204f, var_1.a.a.c.x), var_1.a.a.c.yy))))), u_input.c, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.a.a.b.x, select(0u, 42429u, false)), u_input.a), _wgslsmith_clamp_u32(u_input.a.x, abs(_wgslsmith_add_u32(72882u, u_input.a.x)), 4294967295u), func_1(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))).x, ~_wgslsmith_dot_vec2_u32(u_input.a | vec2<u32>(25006u, var_1.a.a.b.x), u_input.a)));
}

