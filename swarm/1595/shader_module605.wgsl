struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global1 = arg_0;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-740f)), _wgslsmith_f_op_f32(f32(-1f) * -361f), -465f);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -731f, 317f, 390f)), _wgslsmith_f_op_vec4_f32(arg_0.a - vec4<f32>(-263f, -147f, global1.a.x, arg_0.a.x))))))), -2147483647i, global1.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-890f + -664f)))));
    global1 = Struct_2(global1.a, global0.x, vec4<i32>(min(global1.b, ~_wgslsmith_sub_i32(-2147483647i, -2147483647i)), global0.x, arg_0.b, global1.b));
    return -vec4<i32>(~1i, _wgslsmith_add_i32(min(3138i, 26810i), -2147483647i), ~_wgslsmith_mult_i32(global1.b, global0.x), _wgslsmith_mult_i32(i32(-1i) * -9292i, -47336i)) << (~firstLeadingBit(vec4<u32>(~10561u, u_input.d, u_input.a.x, 2136u)) % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.a.x)), 1160f, global1.a.x, global1.a.x))), 2147483647i, global1.c);
    global1 = Struct_2(global1.a, ~(~global1.b), firstLeadingBit(-reverseBits(func_3(Struct_2(var_1.a, -1i, var_1.c)))));
    var var_2 = global1.c;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.a, global1.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-381f, var_1.a.x, var_1.a.x, 750f) - var_1.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -820f, -1000f), vec4<f32>(var_1.a.x, -154f, -502f, global1.a.x)), true)))), ~(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.b, var_2.x, var_2.x), select(global1.c.xyz, vec3<i32>(var_1.c.x, 1i, 0i), true)) >> (27978u % 32u)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.c.x, _wgslsmith_add_i32(2147483647i, var_1.c.x), -59044i, ~var_2.x), abs(-vec4<i32>(20838i, -1i, 145i, var_2.x)), vec4<i32>(~var_1.c.x, abs(global0.x), _wgslsmith_dot_vec4_i32(global1.c, var_1.c), var_2.x)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))), !(!(true != any(vec2<bool>(false, false)))), u_input.c, 2147483647i, any(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = u_input.b;
    var var_1 = 1000f;
    let var_2 = func_2();
    var var_3 = select(select(!select(!vec2<bool>(var_2.b, var_2.e), !vec2<bool>(true, var_2.e), true), select(select(!vec2<bool>(var_2.b, var_2.e), !vec2<bool>(false, var_2.e), all(vec2<bool>(false, true))), select(select(vec2<bool>(var_2.b, var_2.e), vec2<bool>(var_2.b, var_2.b), var_2.e), select(vec2<bool>(true, var_2.b), vec2<bool>(var_2.e, var_2.b), vec2<bool>(var_2.b, var_2.b)), var_2.b), true), vec2<bool>(var_2.e, !(!var_2.e))), select(vec2<bool>(true, true), !(!vec2<bool>(false, var_2.e)), var_2.e), vec2<bool>(any(select(!vec2<bool>(var_2.e, var_2.e), vec2<bool>(var_2.e, false), select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, false), vec2<bool>(false, var_2.e)))), true));
    var_3 = select(vec2<bool>(var_3.x & all(!vec4<bool>(true, var_2.e, true, false)), !(!all(vec2<bool>(false, var_3.x)))), vec2<bool>(false, var_3.x), select(select(!select(vec2<bool>(var_3.x, true), vec2<bool>(var_2.e, false), vec2<bool>(true, false)), !select(vec2<bool>(var_2.e, true), vec2<bool>(false, var_3.x), var_2.b), vec2<bool>(any(vec3<bool>(var_2.b, true, var_2.e)), false)), vec2<bool>(!var_2.e, !(var_2.e != false)), !(!any(vec3<bool>(var_2.b, var_2.b, false)))));
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> vec4<bool> {
    var var_0 = false;
    var var_1 = Struct_2(global1.a, 0i, ~(firstTrailingBit(vec4<i32>(arg_1.d, -3042i, -1i, global1.b)) ^ global1.c));
    var var_2 = var_1.a.zy;
    let var_3 = vec3<f32>(-320f, _wgslsmith_f_op_f32(f32(-1f) * -984f), -2257f);
    global1 = Struct_2(var_1.a, select(9122i, -76990i, !(!(!arg_1.e))), -vec4<i32>(_wgslsmith_sub_i32(-2147483647i, arg_1.d), 39034i, -global0.x, -5507i >> (arg_1.c % 32u)) >> (arg_2 % vec4<u32>(32u)));
    return select(!vec4<bool>(_wgslsmith_f_op_f32(589f - var_3.x) < _wgslsmith_f_op_f32(f32(-1f) * -506f), arg_1.b, select(1u, arg_0.x, arg_1.e) <= firstLeadingBit(40694u), true), select(vec4<bool>(arg_1.e, all(!vec4<bool>(true, arg_1.b, true, false)), arg_1.e, arg_1.c >= u_input.a.x), vec4<bool>(abs(u_input.d) > ~72694u, any(vec2<bool>(arg_1.b, false)), false, arg_1.b), true), select(select(!select(vec4<bool>(arg_1.e, false, arg_1.b, false), vec4<bool>(true, true, arg_1.e, false), false), vec4<bool>(arg_1.b, arg_1.e, arg_1.b && false, true), select(!vec4<bool>(false, false, false, arg_1.e), vec4<bool>(arg_1.b, true, arg_1.e, true), select(false, arg_1.b, arg_1.b))), vec4<bool>(arg_1.e, !(!arg_1.e), arg_1.e, any(select(vec4<bool>(arg_1.e, arg_1.e, true, false), vec4<bool>(false, arg_1.b, false, false), arg_1.b))), select(select(vec4<bool>(arg_1.b, false, arg_1.b, false), !vec4<bool>(false, arg_1.b, arg_1.b, true), select(vec4<bool>(arg_1.e, arg_1.b, false, true), vec4<bool>(false, true, true, true), false)), select(select(vec4<bool>(arg_1.b, true, arg_1.b, true), vec4<bool>(arg_1.b, false, arg_1.b, true), vec4<bool>(false, arg_1.b, arg_1.b, true)), !vec4<bool>(arg_1.b, arg_1.e, false, arg_1.e), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.b, true, arg_1.b, arg_1.e), arg_1.b)), vec4<bool>(true, arg_1.b, true, arg_1.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_4(vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.a.x), vec4<u32>(89022u, u_input.d, u_input.d, 27838u)), func_1(27176u)), func_2(), ~(~vec4<u32>(u_input.c, 69308u, 65838u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x))), select(vec4<bool>(any(vec4<bool>(true, false, true, true)), true && any(vec3<bool>(false, false, true)), false, false), !(!func_4(vec3<u32>(4294967295u, 1u, u_input.c), Struct_1(global1.a.x, true, 4294967295u, -1i, false), vec4<u32>(72147u, u_input.a.x, u_input.c, u_input.b), -612f)), select(vec4<bool>(true, true, func_4(vec3<u32>(u_input.a.x, 4294967295u, 4096u), Struct_1(308f, true, u_input.a.x, -34151i, true), vec4<u32>(u_input.a.x, u_input.d, 1u, u_input.d), global1.a.x).x, false), vec4<bool>(true, func_4(vec3<u32>(u_input.a.x, u_input.d, 4294967295u), Struct_1(964f, false, 1u, -1i, true), vec4<u32>(u_input.b, u_input.d, u_input.b, u_input.b), global1.a.x).x, false, true), vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true, true))), vec4<bool>(-482f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.x, 966f, true))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, !(!any(vec4<bool>(false, false, false, true)))));
    var var_1 = vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.x))), 360f);
    var var_2 = firstTrailingBit(vec3<u32>(u_input.d, _wgslsmith_dot_vec3_u32(~vec3<u32>(72450u, 58612u, 18527u), vec3<u32>(u_input.c, 27386u, 14125u) << (vec3<u32>(u_input.a.x, u_input.c, u_input.c) % vec3<u32>(32u))) ^ 1u, ~1u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1.x, global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + func_2().a))));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))));
    var_0 = !select(!(!vec4<bool>(var_0.x, true, true, var_0.x)), vec4<bool>(false, var_0.x, true, var_0.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a);
}

