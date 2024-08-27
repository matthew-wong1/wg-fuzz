struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(false, true, vec4<i32>(13021i, -1i, 58477i, 2147483647i), 225f);

var<private> global1: Struct_2 = Struct_2(-1900i, Struct_1(vec4<u32>(22067u, 0u, 0u, 44684u)));

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: bool = false;

var<private> global4: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(35056i, -4238i), vec2<i32>(-42985i, 1i), vec2<i32>(35092i, -1i), vec2<i32>(38612i, -1i), vec2<i32>(-43586i, 2147483647i), vec2<i32>(-22041i, 1i), vec2<i32>(0i, 0i), vec2<i32>(-40569i, -15914i), vec2<i32>(10322i, -30710i), vec2<i32>(i32(-2147483648), 12198i), vec2<i32>(-18023i, -1i), vec2<i32>(-714i, 0i), vec2<i32>(-20158i, -17692i), vec2<i32>(-1i, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = ~global1.b.a.zxz;
    var var_1 = true;
    let var_2 = global0.c.x;
    var var_3 = false;
    var_1 = any(!global2.yx);
    return !vec3<bool>(!any(!global2.xx), arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d, 1863f) - _wgslsmith_f_op_f32(step(global0.d, 125f))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2534f, global0.d))));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    global2 = vec3<bool>(!global2.x, true, global0.a);
    var var_0 = vec2<u32>(~firstTrailingBit(1u), ~6901u) << (~(~vec2<u32>(~global1.b.a.x, global1.b.a.x)) % vec2<u32>(32u));
    var var_1 = Struct_1(countOneBits(global1.b.a));
    var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23594u, 70018u), var_1.a.xzy), 28274u), global1.b.a.wy);
    global2 = !select(!(!select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global0.a), vec3<bool>(false, false, global0.a))), select(vec3<bool>(true, all(vec4<bool>(global2.x, global0.b, true, global0.b)), select(false, global0.b, true)), !select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, global2.x, true), vec3<bool>(global0.a, true, global2.x)), !vec3<bool>(global2.x, global2.x, true)), func_3(_wgslsmith_div_f32(global0.d, -1000f) != -258f));
    return global1.b;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: bool) -> bool {
    var var_0 = func_2(Struct_4(min(1i, -firstLeadingBit(0i)), vec4<f32>(1126f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1466f, 1062f))), _wgslsmith_f_op_f32(min(-829f, _wgslsmith_div_f32(global0.d, -456f))), -1022f), global0.c.x));
    var var_1 = Struct_2(select(0i, 27069i, true), Struct_1(~var_0.a));
    let var_2 = Struct_2(-1i, var_1.b);
    let var_3 = vec3<bool>(true, global2.x && true, any(global2.zy));
    let var_4 = Struct_3(Struct_1(~(~(vec4<u32>(global1.b.a.x, 22518u, global1.b.a.x, var_0.a.x) << (var_0.a % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-606f, global0.d, global0.d)), vec3<f32>(global0.d, global0.d, global0.d), !vec3<bool>(global2.x, false, false))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.d, global0.d, -1940f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1021f, global0.d, global0.d) * vec3<f32>(-542f, global0.d, global0.d)) * vec3<f32>(global0.d, -158f, global0.d)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1857f, -146f, 199f))))))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(select(~vec4<u32>(global1.b.a.x, 1u, 29786u, 1u), var_0.a, global1.b.a.x == arg_1.x), vec4<u32>(_wgslsmith_mult_u32(var_1.b.a.x, var_1.b.a.x), 0u, _wgslsmith_div_u32(1u, 1u), global1.b.a.x)), ~abs(var_0.a)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    global2 = select(select(vec3<bool>(global2.x, func_1(false, global1.b.a.zzy, global0.a) != (global2.x | global2.x), !global0.b), !vec3<bool>(true, any(vec2<bool>(true, global0.b)), func_3(global0.a).x), any(global2.yy)), vec3<bool>(!(!any(vec4<bool>(false, false, false, global2.x))), !(~global1.b.a.x < ~var_0.a.x), func_3(true && (global1.b.a.x >= 0u)).x), global2.x);
    var var_1 = -347f;
    let var_2 = true;
    var var_3 = true;
    global0 = Struct_5(true, ~var_0.a.x > 7265u, global0.c, _wgslsmith_f_op_f32(-global0.d));
    global4 = array<vec2<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-287f, 795f, _wgslsmith_f_op_f32(-360f + global0.d), global0.d), ~reverseBits(~(var_0.a.yz & var_0.a.yx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.d)))), ~global1.a, ~_wgslsmith_clamp_i32(u_input.b, max(_wgslsmith_add_i32(-1i, global1.a), u_input.a.x), u_input.b ^ abs(global0.c.x)));
}

