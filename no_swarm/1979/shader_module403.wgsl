struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<u32> = vec3<u32>(36656u, 18379u, 6635u);

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec4<u32>(18723u, 0u, 63111u, 4294967295u)), Struct_3(vec4<u32>(1u, 4294967295u, 51914u, 6088u)), Struct_3(vec4<u32>(47483u, 60707u, 1u, 4294967295u)), Struct_3(vec4<u32>(20790u, 6143u, 4294967295u, 73038u)), Struct_3(vec4<u32>(10198u, 36474u, 1u, 1u)), Struct_3(vec4<u32>(4294967295u, 35855u, 0u, 4294967295u)), Struct_3(vec4<u32>(1u, 4294967295u, 3542u, 28682u)), Struct_3(vec4<u32>(4294967295u, 22822u, 60701u, 1u)), Struct_3(vec4<u32>(40586u, 86786u, 4294967295u, 13161u)), Struct_3(vec4<u32>(28400u, 55002u, 0u, 14363u)), Struct_3(vec4<u32>(35126u, 520u, 80197u, 11379u)), Struct_3(vec4<u32>(80313u, 4294967295u, 13530u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 1u, 0u, 0u)), Struct_3(vec4<u32>(4294967295u, 15894u, 0u, 0u)), Struct_3(vec4<u32>(9957u, 0u, 0u, 1u)), Struct_3(vec4<u32>(5162u, 4294967295u, 4294967295u, 1u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(575f, 1870f)))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1349f))))), _wgslsmith_div_f32(-1593f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1205f, 112f)))))), true));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-463f, -676f, 985f), vec3<f32>(312f, -137f, 130f))))), u_input.a);
    var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) - -2188f))), -(~var_0.b));
    global0 = vec4<u32>(40821u, ~(~global0.x), abs(~1u ^ global0.x), _wgslsmith_add_u32(4294967295u, global0.x));
    global2 = array<Struct_3, 16>();
    global1 = _wgslsmith_mult_vec3_u32(max(global0.yyx, global0.yzx) | global0.yxx, global0.yxw);
    return Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) + vec2<f32>(788f, var_0.a.x)), _wgslsmith_f_op_vec2_f32(abs(var_0.a.xy)))))), !vec4<bool>(true, false, any(vec3<bool>(true, false, true)), any(vec4<bool>(false, true, true, true))), vec4<u32>(416u, global1.x, global0.x, ~_wgslsmith_sub_u32(global1.x, 34912u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x)))), vec3<bool>(true, true, false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1995f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1054f))), -1072f, _wgslsmith_f_op_f32(-arg_1.a.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1192f, arg_1.a.e, -1431f, arg_2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, arg_1.a.e, 363f, -1184f) - vec4<f32>(var_0, 153f, 709f, 265f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, arg_2.x, 755f, 942f), vec4<f32>(-521f, arg_2.x, var_0, arg_2.x), arg_1.b.x))))))));
    var var_2 = !select(arg_1.a.c, !vec4<bool>(func_2().a.c.x, any(vec3<bool>(true, arg_1.b.x, false)), select(arg_1.b.x, true, arg_1.a.c.x), false), arg_1.b.x);
    let var_3 = select(func_2().b.zx, arg_1.b.zz, func_2().a.c.x);
    var_2 = func_2().a.c;
    return u_input.b;
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    let var_0 = (vec4<i32>(~arg_0.b, 0i, abs(0i), _wgslsmith_mod_i32(70146i >> (global0.x % 32u), ~u_input.b.x)) & firstTrailingBit(func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(35601u, 107158u, global0.x), global0.wyw), 16u)], func_2(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x))))) << (max(~vec4<u32>(~124583u, global1.x, ~29783u, 37484u), ~vec4<u32>(4294967295u ^ global1.x, _wgslsmith_mult_u32(global0.x, global0.x), global1.x, func_2().a.d.x)) % vec4<u32>(32u));
    global2 = array<Struct_3, 16>();
    global0 = ~_wgslsmith_add_vec4_u32(abs(~vec4<u32>(5273u, 0u, 4294967295u, global0.x) | (vec4<u32>(46142u, 9211u, 39327u, global1.x) ^ vec4<u32>(global1.x, 1u, 6383u, 1u))), func_2().a.d);
    global0 = select(~firstLeadingBit(vec4<u32>(0u, 575u >> (global0.x % 32u), global0.x, 4695u & global0.x)), ~(~vec4<u32>(global1.x << (4294967295u % 32u), abs(4294967295u), abs(1u), 1u)), !func_2().a.c);
    let var_1 = _wgslsmith_div_vec2_u32((vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(39892u, global1.x, global0.x), vec3<u32>(global0.x, 4294967295u, global1.x)), global0.x) ^ vec2<u32>(global1.x & 100515u, ~global0.x)) ^ ~countOneBits(_wgslsmith_add_vec2_u32(global0.zw, vec2<u32>(global0.x, global1.x))), global0.yy & (vec2<u32>(~1u, ~global1.x) ^ _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 10014u), _wgslsmith_mod_vec2_u32(global0.zx, vec2<u32>(global1.x, global1.x)))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, -712f))), -_wgslsmith_sub_i32(1i, arg_0.b));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_4 {
    global0 = abs(~vec4<u32>(global1.x, 0u, 34006u, _wgslsmith_mult_u32(global1.x, global0.x) | global1.x));
    var var_0 = arg_0.b;
    var_0 = -6711i;
    let var_1 = -(~u_input.b.x);
    let var_2 = global0.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(763f, -1000f, 1000f))), -2147483647i)), func_2().a.c.xzz);
    let var_1 = func_2().a.a;
    global1 = vec3<u32>(global1.x, ~51389u, 4294967295u);
    global2 = array<Struct_3, 16>();
    let var_2 = Struct_2(Struct_1(i32(-1i) * -u_input.b.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, -1755f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1118f))), func_2().a.c, max(vec4<u32>(8867u, global1.x, 1u, 4294967295u) >> (vec4<u32>(global1.x, global0.x, global0.x, global0.x) % vec4<u32>(32u)), vec4<u32>(func_2().a.d.x, global1.x | 0u, 16250u, 75040u)), _wgslsmith_f_op_f32(-var_0.a.x)), select(vec3<bool>(!(var_1 != var_1), true, all(vec3<bool>(true, true, true))), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), select(vec3<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, false)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.d.x, u_input.b.zxw);
}

