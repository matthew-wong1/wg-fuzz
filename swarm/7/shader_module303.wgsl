struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32;

var<private> global2: f32 = 1291f;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1590f) - 108f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1596f, -1373f)), _wgslsmith_f_op_f32(f32(-1f) * -528f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(367f, -197f, -1000f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1732f, 1939f, -1000f) * vec3<f32>(1000f, -762f, -1028f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(375f, 652f, -127f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, -1631f, 369f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(915f, -829f, -1027f) - vec3<f32>(1553f, 327f, 1502f)) * vec3<f32>(-1417f, -1000f, 1008f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-512f, -2021f, -929f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(118f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f - -162f)))));
    var var_1 = u_input.d.x;
    var_1 = _wgslsmith_mult_i32(~0i, _wgslsmith_div_i32(-2147483647i, ~_wgslsmith_clamp_i32(-1i, 39744i, min(u_input.a.x, arg_1.x))));
    var_1 = _wgslsmith_mod_i32(-(~(-2147483647i)), 5933i);
    let var_2 = !(!vec2<bool>(select(global3.x, true, false), true));
    return !arg_2.wwy;
}

fn func_2() -> f32 {
    global3 = vec3<bool>(global3.x | false, !global3.x, false & any(func_3(u_input.c.x == u_input.c.x, -u_input.d.xx, vec4<bool>(global3.x, false, global3.x, false), 4991u)));
    let var_0 = Struct_1(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 17630u), u_input.c) >> (_wgslsmith_mod_vec3_u32(u_input.c & vec3<u32>(4294967295u, 32057u, u_input.c.x), vec3<u32>(34595u, 0u, 1u) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-2594f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1550f, -598f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, 1065f, 602f)))), max(_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, u_input.c.x), u_input.c.xz), firstLeadingBit(~u_input.c.zx)), _wgslsmith_f_op_f32(f32(-1f) * -818f));
    let var_1 = u_input.c.x >> (reverseBits(10382u) % 32u);
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.zx & vec2<i32>(u_input.d.x, 48035i), ~u_input.d.yz), u_input.d.x), ~(-firstLeadingBit(vec2<i32>(-2139i, u_input.d.x)))));
    var_2 = abs(_wgslsmith_sub_i32(38619i, ~(~_wgslsmith_add_i32(u_input.b.x, u_input.b.x))));
    return _wgslsmith_f_op_f32(-var_0.b.x);
}

fn func_1(arg_0: bool, arg_1: f32) -> f32 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1, arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(233f - _wgslsmith_f_op_f32(f32(-1f) * -1066f)))))));
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(837f, arg_1, -544f, arg_1) + vec4<f32>(arg_1, arg_1, arg_1, -2201f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-908f - var_1.x));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = abs(abs(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, 46239i, 1i, -2147483647i), vec4<i32>(arg_0, -15172i, 0i, -9843i), vec4<i32>(1i, arg_0, arg_0, -68302i)) >> (~vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.c.x) % vec4<u32>(32u)))));
    var_0 = ~_wgslsmith_sub_vec4_i32(min(-_wgslsmith_div_vec4_i32(vec4<i32>(-19042i, arg_0, 13411i, 0i), vec4<i32>(u_input.d.x, 2147483647i, -23543i, arg_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, -17502i, -1i) ^ vec4<i32>(u_input.b.x, -28940i, arg_0, arg_0), ~vec4<i32>(-1i, 1i, var_0.x, u_input.b.x))), vec4<i32>(u_input.a.x, u_input.d.x, -2147483647i, -33352i >> (~u_input.c.x % 32u)));
    let var_1 = var_0.x;
    let var_2 = u_input.b;
    let var_3 = u_input.c.zz | _wgslsmith_add_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(~1u, countOneBits(1u))), ~(~vec2<u32>(16110u, u_input.c.x)) << (_wgslsmith_mod_vec2_u32(arg_2.b.a.xx, ~vec2<u32>(arg_2.b.d.x, u_input.c.x)) % vec2<u32>(32u)));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_1(global3.x, -722f)), arg_1.x, arg_2.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-574f)), _wgslsmith_f_op_f32(-arg_1.x)))), Struct_1(vec3<u32>(arg_2.b.a.x, u_input.c.x, ~_wgslsmith_clamp_u32(var_3.x, arg_2.b.a.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(250f, -1120f, 138f)), arg_1, vec2<u32>(arg_2.c.a.x, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-551f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a.x))))), Struct_1(select(vec3<u32>(_wgslsmith_add_u32(31296u, arg_2.b.a.x), 65734u, ~66376u), _wgslsmith_div_vec3_u32(~vec3<u32>(50714u, var_3.x, 1u), countOneBits(vec3<u32>(1u, u_input.c.x, 0u))), any(vec4<bool>(true, false, global3.x, false)) | !global3.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_1.x, -2245f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1038f, arg_1.x, 1540f), _wgslsmith_f_op_vec3_f32(select(arg_1, vec3<f32>(-431f, -565f, 1757f), global3.x)), vec3<bool>(global3.x, global3.x, true))))), abs(~firstLeadingBit(vec2<u32>(75620u, 105821u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.c.e, arg_2.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(round(-1874f));
    let var_2 = u_input.a.xx;
    var var_3 = func_4(-1i, vec3<f32>(390f, _wgslsmith_f_op_f32(func_1(false, -225f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f))), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-435f, 186f, -260f, -1055f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), Struct_1(u_input.c, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(262f, -137f, 1300f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-264f, -1790f, 1151f), _wgslsmith_div_vec3_f32(vec3<f32>(560f, -486f, -935f), vec3<f32>(-307f, 191f, -1012f)))), ~_wgslsmith_add_vec2_u32(u_input.c.zx, vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(ceil(-268f))), Struct_1(~vec3<u32>(u_input.c.x, 4294967295u, 10509u) << (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(450f, -1152f, -1000f) * vec3<f32>(-1000f, 688f, -177f)), vec3<f32>(438f, 757f, -1440f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 654f, -705f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1313f, 1609f, 1045f)))), vec2<u32>(_wgslsmith_div_u32(15131u, u_input.c.x), 89164u), 562f)));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.e)), 147f);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.c.xx);
}

