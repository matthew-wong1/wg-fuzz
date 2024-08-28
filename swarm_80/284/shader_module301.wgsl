struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: array<Struct_2, 31>;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, 43775i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: bool) -> u32 {
    global0 = -758f;
    global2 = array<Struct_2, 31>();
    var var_0 = abs(arg_1.a.x);
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-469f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1221f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-555f, -689f))))))));
    var_0 = u_input.a.x ^ -17515i;
    return 4294967295u;
}

fn func_2() -> Struct_4 {
    global2 = array<Struct_2, 31>();
    global2 = array<Struct_2, 31>();
    var var_0 = ~(~func_3(Struct_5(Struct_1(vec4<i32>(2147483647i, -2147483647i, -1i, u_input.a.x))), Struct_1(vec4<i32>(global3.x, global3.x, global3.x, -43053i)), true) | ~abs(6936u));
    var var_1 = Struct_2(607f, select(vec3<bool>(true, true, true), vec3<bool>(true, _wgslsmith_div_i32(u_input.a.x, u_input.a.x) >= _wgslsmith_div_i32(u_input.a.x, global3.x), true), vec3<bool>(true, true, true)), -572f, 5866u ^ firstTrailingBit(~func_3(Struct_5(Struct_1(vec4<i32>(0i, 1060i, global3.x, -2147483647i))), Struct_1(vec4<i32>(-27673i, 1i, global3.x, -2147483647i)), false)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), !vec4<bool>(true, true, any(vec2<bool>(true, true)), all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, !any(vec2<bool>(false, false)))));
    var var_2 = !var_1.e;
    return Struct_4(false, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(176f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(666f, var_1.c), var_1.c)), _wgslsmith_f_op_f32(-1000f * -1160f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c, 1579f)) + _wgslsmith_f_op_f32(sign(var_1.a)))))), _wgslsmith_f_op_f32(ceil(var_1.a)), var_2.x, Struct_1(-vec4<i32>(-u_input.a.x, ~u_input.a.x, firstLeadingBit(2147483647i), -global3.x)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>) -> i32 {
    let var_0 = 0u;
    var var_1 = Struct_3(any(select(!select(vec3<bool>(true, arg_0.a, false), vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.d, arg_0.d)), vec3<bool>(arg_0.d && arg_0.d, true, !arg_0.d), vec3<bool>(func_2().d, !arg_0.d, all(vec2<bool>(arg_0.a, arg_0.d))))));
    var_1 = Struct_3(!(!arg_0.a));
    global1 = arg_0.c;
    global0 = -1779f;
    return _wgslsmith_div_i32(~(~max(countOneBits(2231i), firstLeadingBit(-1i))), 2147483647i);
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    global3 = ~(-vec2<i32>(global3.x, func_4(func_2(), ~vec2<u32>(arg_0, 39219u))));
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(countOneBits(~(-1i ^ u_input.a.x)), u_input.a.x), func_4(Struct_4(global3.x < global3.x, vec4<f32>(-1000f, 853f, 2990f, -677f), arg_1.b.x, arg_1.d, func_2().e), ~min(vec2<u32>(arg_0, 0u), vec2<u32>(17391u, arg_0))) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.a.zx), firstTrailingBit(arg_1.e.a.wy)), u_input.a.yy), 11210i, u_input.a.x);
    var var_1 = _wgslsmith_add_u32(arg_0, 11363u);
    var var_2 = countOneBits(arg_0);
    global1 = -1275f;
    return arg_1.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    let var_1 = Struct_2(-914f, vec3<bool>(-func_1(47342u, Struct_4(false, vec4<f32>(2579f, 1215f, -159f, -932f), 564f, true, Struct_1(vec4<i32>(2147483647i, 24257i, global3.x, 26648i))), vec3<bool>(true, false, false), false) == ~global3.x, any(vec2<bool>(select(false, true, false), true)), true), -2199f, ~(~(~1u)), vec4<bool>(true, any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    let var_2 = 1078f;
    let var_3 = _wgslsmith_clamp_i32(global3.x, -2147483647i, func_2().e.a.x);
    var var_4 = any(var_1.e.zy);
    var var_5 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -43497i, var_3, -_wgslsmith_clamp_i32(var_3, 33677i, var_3)), ((vec4<i32>(-19730i, var_3, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, 44080i, -2147483647i, 6985i)) >> (~vec4<u32>(var_1.d, 26664u, var_1.d, 1u) % vec4<u32>(32u))) >> ((~vec4<u32>(var_1.d, 0u, 11145u, 13322u) | (vec4<u32>(4294967295u, 1u, 1u, 0u) << (vec4<u32>(1u, 1u, 59843u, var_1.d) % vec4<u32>(32u)))) % vec4<u32>(32u))));
    var_4 = var_1.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_1.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.d, 0u, 4294967295u, var_1.d), abs(vec4<u32>(var_1.d, 38737u, 4294967295u, 45851u)))) & var_1.d, _wgslsmith_mod_vec2_i32(u_input.a.zz, var_5.a.yx), ~(~_wgslsmith_div_i32(max(u_input.a.x, 25250i), func_2().e.a.x)), _wgslsmith_div_i32(~_wgslsmith_add_i32(global3.x, _wgslsmith_add_i32(0i, var_5.a.x)), var_5.a.x));
}

