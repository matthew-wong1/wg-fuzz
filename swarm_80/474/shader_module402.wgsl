struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(4294967295u, 0u, 5844u), vec3<u32>(4294967295u, 62688u, 4294967295u), vec3<u32>(7419u, 21465u, 4294967295u), vec3<u32>(72181u, 47106u, 0u), vec3<u32>(4294967295u, 0u, 36186u), vec3<u32>(16351u, 1u, 1u), vec3<u32>(96452u, 1u, 4294967295u), vec3<u32>(0u, 34117u, 31215u), vec3<u32>(52855u, 11352u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 20197u, 35489u), vec3<u32>(69466u, 0u, 15575u), vec3<u32>(75745u, 13065u, 1u), vec3<u32>(3105u, 12573u, 12727u), vec3<u32>(0u, 31286u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 67126u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 127946u, 43416u), vec3<u32>(83075u, 4294967295u, 0u), vec3<u32>(4294967295u, 3110u, 4294967295u), vec3<u32>(25468u, 56157u, 64129u), vec3<u32>(0u, 49675u, 45347u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(48526u, 6558u, 0u), vec3<u32>(21779u, 4294967295u, 7049u), vec3<u32>(34988u, 13146u, 79681u), vec3<u32>(1399u, 0u, 1u), vec3<u32>(0u, 0u, 23110u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> bool {
    global1 = array<vec3<u32>, 30>();
    global0 = Struct_5(Struct_3(global0.a.a, global0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.b)), select(vec2<bool>(true, any(vec3<bool>(true, false, true))), select(vec2<bool>(true, global0.a.b.d.x), vec2<bool>(false, global0.a.a.c), select(global0.a.d, vec2<bool>(false, false), vec2<bool>(true, false))), true), Struct_1(_wgslsmith_f_op_f32(-global0.a.e.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c * global0.a.c)), true, select(vec4<bool>(arg_1, true, arg_1, global0.a.d.x), vec4<bool>(arg_1, true, global0.a.a.c, true), vec4<bool>(false, false, arg_1, false)))), min(countOneBits(_wgslsmith_div_u32(arg_0.x, firstTrailingBit(global0.b))), global0.c), arg_0.x);
    let var_0 = ~u_input.a.x;
    global0 = Struct_5(global0.a, ~(~4294967295u), ~_wgslsmith_sub_u32(39120u, _wgslsmith_mod_u32(4294967295u, 162970u | arg_0.x)));
    return any(global0.a.a.d.yy);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.b.a))), -1661f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b.b - 404f)), -1111f)), -select(arg_3.x, -2147483647i, true) > firstTrailingBit(reverseBits(u_input.b.x)), vec4<bool>(all(!vec4<bool>(true, true, arg_0.e.d.x, true)), arg_3.x == 9007i, global0.a.a.c, true)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.a.b.a)), 947f))), _wgslsmith_f_op_f32(-arg_2.c.a), all(!vec4<bool>(false, global0.a.d.x, arg_0.e.d.x, arg_1.a.b.c)) || true, select(vec4<bool>(global0.a.d.x, true || global0.a.a.d.x, -178f != arg_2.b.x, !arg_1.a.b.c), vec4<bool>(arg_0.d.x, any(arg_1.a.b.d.zw), all(arg_1.a.a.d.xz), arg_0.b.c), true)), _wgslsmith_f_op_f32(ceil(-399f)), arg_0.e.d.yx, Struct_1(arg_1.a.b.a, _wgslsmith_f_op_f32(arg_1.a.a.b * arg_2.d.a), true, !vec4<bool>(true, arg_2.a || true, true, true && arg_2.a)));
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(abs(vec2<u32>(81649u, arg_1.c))), select(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.c, global0.b), vec2<u32>(global0.b, 1u)), ~abs(vec2<u32>(global0.b, global0.c)), func_3(vec2<u32>(4294967295u, global0.b), var_0.b.c) || false), ~(~select(vec2<u32>(arg_1.b, 41957u), vec2<u32>(1u, 1u), global0.a.a.d.x))), vec2<u32>(~arg_1.c, _wgslsmith_clamp_u32(2888u | global0.c, global0.c ^ arg_1.c, 38645u) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0.b, global0.c, 0u), ~vec4<u32>(global0.b, 57399u, 1u, arg_1.c)) % 32u)));
    var_0 = Struct_3(arg_1.a.e, arg_2.d, _wgslsmith_f_op_f32(select(arg_1.a.e.a, -716f, false || all(var_0.e.d))), select(!vec2<bool>(func_3(vec2<u32>(global0.b, 4294967295u), var_0.b.c), true), global0.a.b.d.ww, vec2<bool>(!arg_1.a.d.x, ~global0.c > ~var_1.x)), Struct_1(362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b - 394f) - _wgslsmith_f_op_f32(-arg_2.b.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_f_op_f32(f32(-1f) * -799f))), any(!vec3<bool>(true, true, arg_2.c.c)), vec4<bool>(all(vec2<bool>(arg_0.e.d.x, arg_2.d.c)), !arg_2.c.d.x, arg_2.d.c, all(select(global0.a.e.d.zx, arg_1.a.d, true)))));
    var var_2 = !select(select(select(vec3<bool>(arg_2.c.c, true, arg_0.a.d.x), !global0.a.b.d.yzy, arg_2.d.d.wwz), select(!vec3<bool>(arg_1.a.b.c, true, global0.a.b.d.x), arg_1.a.b.d.zwy, !arg_1.a.e.d.yxx), !(!var_0.b.d.zyx)), vec3<bool>((44227i ^ u_input.a.x) >= (-65595i << (1u % 32u)), arg_2.d.c, true), vec3<bool>(!all(vec3<bool>(var_0.a.d.x, false, global0.a.d.x)), arg_1.c >= var_1.x, !(!global0.a.b.c)));
    var_2 = select(vec3<bool>(all(!arg_0.a.d.xz) || true, var_0.a.d.x, all(arg_2.c.d.xx)), var_0.e.d.wwx, global0.a.b.a == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(258f, global0.a.e.a)) * -492f)));
    return _wgslsmith_f_op_f32(floor(arg_1.a.c));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(func_4(global0.a, Struct_5(global0.a, 33044u, ~(~_wgslsmith_sub_u32(global0.b, global0.c))), Struct_2(func_3(~vec2<u32>(35031u, global0.b), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.b, global0.a.a.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.e.a, 305f)))), global0.a.b, Struct_1(global0.a.e.a, _wgslsmith_f_op_f32(global0.a.a.b * _wgslsmith_f_op_f32(642f * -1741f)), all(vec3<bool>(false, true, global0.a.e.d.x)), select(vec4<bool>(true, true, global0.a.a.d.x, global0.a.d.x), select(global0.a.b.d, vec4<bool>(false, false, true, global0.a.e.d.x), false), vec4<bool>(global0.a.d.x, global0.a.e.d.x, global0.a.d.x, global0.a.d.x)))), ~(~_wgslsmith_mod_vec4_i32(-vec4<i32>(20748i, 19880i, u_input.b.x, 2147483647i), vec4<i32>(-1i, u_input.a.x, -1i, 52496i)))));
    var var_1 = u_input.a;
    global1 = array<vec3<u32>, 30>();
    let var_2 = Struct_2(any(!global0.a.e.d.yyz), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(245f * global0.a.b.b)))), _wgslsmith_f_op_f32(step(856f, _wgslsmith_f_op_f32(floor(global0.a.e.b))))), Struct_1(global0.a.e.a, _wgslsmith_f_op_f32(-global0.a.e.b), any(!(!vec4<bool>(global0.a.b.d.x, global0.a.b.d.x, false, global0.a.e.d.x))), !(!global0.a.b.d)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1326f))), global0.a.c, any(global0.a.a.d.yw), select(global0.a.a.d, vec4<bool>(false, global0.a.d.x | false, true, global0.a.d.x), !vec4<bool>(global0.a.a.d.x, global0.a.e.c, global0.a.e.d.x, false))));
    let var_3 = Struct_4(reverseBits(global0.c), Struct_3(Struct_1(_wgslsmith_f_op_f32(-global0.a.b.a), _wgslsmith_f_op_f32(round(1074f)), global0.a.b.d.x, vec4<bool>(false, true, func_3(vec2<u32>(41959u, global0.c), global0.a.a.c), any(global0.a.e.d.zz))), var_2.d, global0.a.e.a, !(!global0.a.b.d.wx), global0.a.a));
    return Struct_5(var_3.b, 0u, global0.b);
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-331f, 1287f, -1180f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.e.a, global0.a.a.a, arg_2.a.c)))));
    return Struct_2(!select(any(arg_2.a.b.d.wxx), global0.a.a.d.x, true), _wgslsmith_div_vec2_f32(var_0.xy, var_0.yy), func_2().a.e, global0.a.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    let var_0 = func_5(!arg_1.b.b.d.xx, -2147483647i, func_2());
    global1 = array<vec3<u32>, 30>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.c) * _wgslsmith_f_op_f32(floor(arg_1.b.a.b))), arg_1.b.c, false)) + global0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -875f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.a.c)), _wgslsmith_f_op_f32(-arg_1.b.a.a)))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(arg_1.b, Struct_5(Struct_3(global0.a.a, Struct_1(-1013f, 842f, true, vec4<bool>(arg_1.b.e.c, false, false, global0.a.e.c)), 1137f, vec2<bool>(false, false), Struct_1(global0.a.c, arg_1.b.e.a, false, global0.a.a.d)), global0.c, arg_2), Struct_2(var_0.d.d.x, vec2<f32>(var_0.d.b, -583f), Struct_1(var_0.d.a, var_0.c.a, arg_1.b.a.c, vec4<bool>(false, false, false, arg_1.b.e.d.x)), arg_1.b.b), vec4<i32>(u_input.a.x, -1i, u_input.b.x, 0i))), _wgslsmith_f_op_f32(var_0.d.a * -1901f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_f32(min(406f, 324f))))), all(select(var_0.c.d.zzy, func_5(var_0.d.d.zy, 12245i & u_input.a.x, Struct_5(arg_1.b, 73483u, arg_2)).c.d.ywy, var_0.d.c)), select(!select(global0.a.a.d, !var_0.c.d, !global0.a.e.c), arg_1.b.a.d, !select(!arg_1.b.e.d, func_2().a.b.d, global0.a.b.c)));
    let var_2 = func_2().a.b;
    var_1 = func_5(func_2().a.a.d.yx, -1i, func_2()).d;
    return func_2().a.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 30>();
    var var_0 = global0.a.a.b;
    global1 = array<vec3<u32>, 30>();
    let var_1 = 473f;
    var var_2 = func_1(vec2<u32>(~41123u, global0.c), Struct_4(~global0.b, global0.a), _wgslsmith_mult_u32(global0.c, 97237u));
    var var_3 = !var_2.d;
    var var_4 = Struct_4(5330u, func_2().a);
    var var_5 = Struct_5(func_2().a, ~var_4.a, var_4.a);
    global0 = Struct_5(Struct_3(global0.a.b, var_4.b.e, 940f, select(!vec2<bool>(false, var_2.c), var_5.a.b.d.ww, !vec2<bool>(var_5.a.a.d.x, false)), Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_2.b)), 1000f, var_5.a.d.x, var_2.d)), min(44200u, _wgslsmith_dot_vec4_u32(vec4<u32>(70212u, 16620u, 1u, 75073u), reverseBits(vec4<u32>(0u, var_4.a, var_4.a, var_4.a))) >> (var_4.a % 32u)), var_5.b);
    let x = u_input.a;
    s_output = StorageBuffer(-12352i, -226f, _wgslsmith_clamp_vec3_u32(vec3<u32>(~(~var_5.c), 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.c, 4294967295u, var_5.b), global1[_wgslsmith_index_u32(1u, 30u)])), global1[_wgslsmith_index_u32(~var_4.a, 30u)], _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(global0.b, 30u)], countOneBits(vec3<u32>(var_5.c, global0.c, global0.b))), select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.b, global0.b), 30u)], ~global1[_wgslsmith_index_u32(var_5.c, 30u)], global0.c <= global0.b))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.c, global0.a.b.a)) - var_4.b.e.b), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-var_2.b)))))));
}

