struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(83507i, 1i, 17587i), vec3<i32>(-30715i, -11336i, -21716i), vec3<i32>(0i, 0i, 31063i), vec3<i32>(i32(-2147483648), 0i, 2864i), vec3<i32>(1i, -24100i, -1i), vec3<i32>(-32858i, -1i, -1i), vec3<i32>(-11983i, 0i, 7089i), vec3<i32>(i32(-2147483648), 24176i, 0i), vec3<i32>(1i, -21696i, -1i), vec3<i32>(5170i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 42732i), vec3<i32>(i32(-2147483648), 23706i, -1i), vec3<i32>(-28079i, i32(-2147483648), 0i), vec3<i32>(-7547i, 1i, 2147483647i), vec3<i32>(52343i, 46837i, 0i), vec3<i32>(10041i, 8951i, -4611i), vec3<i32>(0i, -54905i, 6591i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(19155i, i32(-2147483648), 0i), vec3<i32>(-43660i, -28982i, 0i), vec3<i32>(0i, 0i, -7908i), vec3<i32>(-40220i, -8237i, -15214i), vec3<i32>(2147483647i, -8572i, 47374i), vec3<i32>(15078i, 2147483647i, 33143i), vec3<i32>(20751i, 35162i, 0i), vec3<i32>(i32(-2147483648), 30728i, 12490i), vec3<i32>(2147483647i, 24708i, 31642i), vec3<i32>(0i, 0i, 0i), vec3<i32>(25362i, 77503i, 47451i), vec3<i32>(-1643i, i32(-2147483648), -1i), vec3<i32>(0i, 19013i, 64042i));

var<private> global1: array<vec4<i32>, 3>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<i32>) -> vec4<bool> {
    global0 = array<vec3<i32>, 31>();
    let var_0 = all(!(!vec4<bool>(false, select(true, false, false), select(true, true, false), true)));
    global1 = array<vec4<i32>, 3>();
    global1 = array<vec4<i32>, 3>();
    let var_1 = !any(vec4<bool>(!(!var_0), any(!vec2<bool>(false, var_0)), false, true));
    return vec4<bool>(true, all(vec4<bool>(true, var_0, !(!var_1), true)), var_0, _wgslsmith_sub_u32(min(u_input.d.x, u_input.d.x) >> (_wgslsmith_sub_u32(1u, arg_1) % 32u), arg_1) > ~(~(~arg_1)));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = 251f;
    let var_1 = func_3(max(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(32028u, 31u)], vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), -31153i, _wgslsmith_add_i32(u_input.b.x, 5992i)), _wgslsmith_add_vec4_i32(~global1[_wgslsmith_index_u32(26574u, 3u)], vec4<i32>(1i, 1i, 1i, 1i))) << (vec4<u32>(38481u, abs(~u_input.a.x), ~u_input.c, u_input.a.x) % vec4<u32>(32u)), 1u, max(_wgslsmith_mod_vec3_i32(-(vec3<i32>(0i, u_input.b.x, u_input.b.x) | global0[_wgslsmith_index_u32(51374u, 31u)]), ~vec3<i32>(1330i, -1i, u_input.b.x)), ~vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(2147483647i, 0i, u_input.b.x), -2147483647i)));
    let var_2 = Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-4178i, -u_input.b.x), -10270i), _wgslsmith_mod_vec2_i32(countOneBits(min(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b)), ~vec2<i32>(2147483647i, 0i))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(arg_0.yy)))), 1i, u_input.b.x);
    return _wgslsmith_f_op_f32(trunc(1065f));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<i32>, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1171f - -1564f), _wgslsmith_f_op_f32(floor(807f)), _wgslsmith_f_op_f32(1268f + -1007f), _wgslsmith_f_op_f32(-603f * -455f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-552f, -841f, 1920f, -1000f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1424f, -1000f, -1238f, 1335f), vec4<f32>(1000f, 1845f, 613f, 375f), vec4<bool>(true, false, true, false))))))));
    let var_1 = arg_0.x << (~_wgslsmith_mult_u32(abs(u_input.c ^ u_input.c), ~1u) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-602f, 981f, var_0.x, 793f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -299f, var_0.x, var_0.x)), true))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(921f))), _wgslsmith_f_op_f32(step(-1186f, _wgslsmith_f_op_f32(trunc(-1786f)))), _wgslsmith_f_op_f32(func_2(vec3<f32>(var_0.x, var_0.x, var_0.x))), -466f))));
    var var_3 = true;
    return Struct_1(select(vec2<bool>(false, func_3(_wgslsmith_clamp_vec4_i32(arg_0, global1[_wgslsmith_index_u32(u_input.d.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), 29360u, global0[_wgslsmith_index_u32(u_input.d.x, 31u)] & vec3<i32>(5408i, 0i, var_1)).x), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(select(true, true, false), true, u_input.b.x <= _wgslsmith_dot_vec2_i32(arg_0.ww, arg_0.yw))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -654f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f + -845f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(161f, -1395f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1516f) * _wgslsmith_f_op_f32(select(735f, -889f, true))), u_input.b.x <= firstLeadingBit(u_input.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) * 129f))), -1000f);
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(var_0.wzx));
    let var_2 = ~33490u;
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    var var_3 = func_1(~global1[_wgslsmith_index_u32(1u, 3u)]);
    global1 = array<vec4<i32>, 3>();
    global0 = array<vec3<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~vec4<u32>(3199u, u_input.d.x, var_2, 1u) << (~vec4<u32>(7084u, 27528u, 54456u, u_input.d.x) % vec4<u32>(32u))));
}

