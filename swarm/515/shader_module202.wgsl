struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3 = Struct_3(-46044i);

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_4) -> u32 {
    var var_0 = Struct_3(u_input.a.x);
    var var_1 = global0.c;
    let var_2 = vec4<bool>(true, !(10869u >= ~global0.d.x), any(select(vec4<bool>(true, global0.d.x <= global0.d.x, global0.c.d.x, var_1.d.x), select(select(vec4<bool>(var_1.d.x, false, var_1.b.x, true), vec4<bool>(var_1.b.x, true, global0.c.b.x, var_1.d.x), vec4<bool>(global0.c.d.x, true, false, global0.c.b.x)), select(vec4<bool>(var_1.d.x, true, global0.c.b.x, global0.c.b.x), vec4<bool>(false, var_1.d.x, var_1.d.x, true), vec4<bool>(true, false, true, global0.c.d.x)), select(vec4<bool>(true, true, false, var_1.d.x), vec4<bool>(true, false, var_1.b.x, false), vec4<bool>(global0.c.d.x, var_1.d.x, global0.c.b.x, true))), all(select(vec3<bool>(true, true, var_1.d.x), global0.c.d, vec3<bool>(false, false, true))))), false);
    var var_3 = arg_3;
    var var_4 = arg_3;
    return _wgslsmith_sub_u32(global0.d.x, _wgslsmith_mult_u32(global0.d.x, global0.d.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    global1 = Struct_3(u_input.a.x);
    let var_0 = Struct_2(global0.a, _wgslsmith_dot_vec4_i32(-(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(global1.a, -1i, global1.a, u_input.a.x)) << (~vec4<u32>(22548u, global0.d.x, 0u, 19276u) % vec4<u32>(32u))), max(u_input.a, ~vec4<i32>(2147483647i, global0.c.c, 36556i, global0.a.x))), arg_1.c, vec3<u32>(60318u, arg_1.d.x >> (firstLeadingBit(max(global0.d.x, arg_1.d.x)) % 32u), func_3(Struct_3(u_input.a.x & arg_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.c.a, arg_1.c.a)))), Struct_3(0i ^ u_input.a.x), Struct_4(Struct_3(-43630i)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a)));
    return Struct_3(global1.a);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(~(~(~arg_3.a))), -select(min(arg_3.a, -global0.a), min(vec2<i32>(23083i, arg_3.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, arg_0.a), global0.a, vec2<i32>(2147483647i, 2147483647i))), all(!arg_2.c.d)));
    var var_1 = u_input.a.yzw;
    let var_2 = reverseBits(reverseBits(arg_2.d.x));
    let var_3 = -358f;
    let var_4 = !vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c.a), _wgslsmith_f_op_f32(-arg_2.c.a)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 * var_3), _wgslsmith_f_op_f32(max(-2593f, global0.c.a))), any(arg_2.c.d));
    return select(!select(select(global0.c.d, arg_2.c.d, !arg_2.c.d), select(vec3<bool>(false, var_4.x, arg_3.c.d.x), vec3<bool>(true, false, arg_3.c.d.x), 35868i < global0.a.x), !(1u >= arg_2.d.x)), vec3<bool>(any(vec2<bool>(var_4.x, all(vec3<bool>(true, global0.c.b.x, false)))), !(u_input.a.x >= arg_2.b) || arg_3.c.d.x, (func_2(global0.d.xz, Struct_2(arg_2.a, 48604i, Struct_1(-186f, vec2<bool>(false, true), 10542i, arg_3.c.d), vec3<u32>(4294967295u, 23922u, 62736u))).a == _wgslsmith_div_i32(arg_0.a, arg_3.a.x)) && any(!vec4<bool>(var_4.x, arg_3.c.b.x, false, var_4.x))), arg_3.c.d);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = false;
    let var_1 = arg_3.b;
    var_0 = select(!var_1.x | true, true, !(~min(u_input.a.x, -1i) < 2147483647i));
    var var_2 = _wgslsmith_f_op_f32(step(-1000f, 705f));
    var var_3 = any(vec3<bool>(false, !global0.c.b.x, !any(arg_3.d))) & !(!(!(!global0.c.b.x)));
    return Struct_2(firstTrailingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(abs(u_input.a.yy), u_input.a.zz), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a, global0.c.c), u_input.a.wy), vec2<i32>(0i, 9008i)), vec2<i32>(34005i, arg_1.a) & firstLeadingBit(global0.a))), arg_0, global2[_wgslsmith_index_u32(abs(~21629u), 21u)], global0.d);
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(1i, Struct_3(select(u_input.a.x, -31030i << (_wgslsmith_mult_u32(global0.d.x, global0.d.x) % 32u), any(vec3<bool>(global0.c.d.x, false, global0.c.b.x)) & global0.c.d.x)), _wgslsmith_f_op_f32(ceil(-1195f)), Struct_1(_wgslsmith_div_f32(-1711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-804f)) * _wgslsmith_f_op_f32(-global0.c.a))), global0.c.b, _wgslsmith_sub_i32(-1i | _wgslsmith_add_i32(global0.c.c, 1i), global0.c.c ^ (global0.c.c >> (26946u % 32u))), select(select(select(global0.c.d, vec3<bool>(true, false, true), true), vec3<bool>(true, global0.c.b.x, false), any(vec4<bool>(global0.c.b.x, true, global0.c.b.x, true))), func_4(func_2(global0.d.yx, Struct_2(vec2<i32>(37575i, u_input.a.x), -11973i, Struct_1(2584f, vec2<bool>(global0.c.d.x, true), u_input.a.x, vec3<bool>(true, global0.c.b.x, global0.c.b.x)), vec3<u32>(global0.d.x, global0.d.x, 1u))), u_input.a.x != global1.a, Struct_2(global0.a, global1.a, Struct_1(-100f, global0.c.d.xy, global1.a, vec3<bool>(false, global0.c.b.x, global0.c.d.x)), global0.d), Struct_2(vec2<i32>(global0.b, 30024i), 2147483647i, Struct_1(1675f, global0.c.d.xy, -1i, vec3<bool>(true, false, global0.c.d.x)), global0.d)), global0.c.d)));
    var var_1 = vec4<i32>(-firstLeadingBit(~var_0.c.c >> (61225u % 32u)), u_input.a.x, _wgslsmith_dot_vec2_i32(global0.a, ~global0.a), min(global1.a, 9273i));
    var var_2 = var_0.c.a;
    let var_3 = countOneBits(select(~abs(vec4<u32>(global0.d.x, var_0.d.x, global0.d.x, global0.d.x)), ~vec4<u32>(global0.d.x, 40468u, 48949u, global0.d.x), !vec4<bool>(var_0.c.d.x, true, global0.c.b.x, global0.c.b.x)) ^ abs(firstTrailingBit(vec4<u32>(52112u, 38625u, 41751u, var_0.d.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, global0.d.x, 1u, global0.d.x), vec4<u32>(var_0.d.x, 1u, 16475u, global0.d.x))));
    var var_4 = reverseBits(-39681i);
    return Struct_1(global0.c.a, vec2<bool>(var_0.c.b.x, !(!all(global0.c.d.xz))), countOneBits(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-35658i, var_1.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.c, var_1.x, -20470i), vec3<i32>(1i, var_1.x, var_0.a.x)))) ^ countOneBits(i32(-1i) * -global0.a.x), var_0.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(global0.c.c, countOneBits(0i));
    var var_1 = func_1();
    let var_2 = all(vec2<bool>(!func_4(Struct_3(global1.a), var_1.d.x, Struct_2(var_0, global1.a, Struct_1(global0.c.a, vec2<bool>(var_1.d.x, true), -41849i, vec3<bool>(global0.c.b.x, var_1.d.x, true)), global0.d), Struct_2(vec2<i32>(var_1.c, 7821i), 16475i, Struct_1(-245f, vec2<bool>(true, true), 1i, var_1.d), vec3<u32>(1u, global0.d.x, global0.d.x))).x, global0.c.d.x)) | false;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(exp2(func_1().a)), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1358f)), _wgslsmith_f_op_f32(-var_1.a)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, -297f, var_1.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(593f, var_1.a, var_1.a, global0.c.a) + vec4<f32>(-731f, 1244f, global0.c.a, var_1.a))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1104f)), _wgslsmith_f_op_f32(max(global0.c.a, 932f)), _wgslsmith_f_op_f32(-global0.c.a), 2085f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.a, -135f, var_2)), 553f, _wgslsmith_f_op_f32(var_1.a + var_1.a), _wgslsmith_f_op_f32(-global0.c.a)) - vec4<f32>(-2400f, 605f, var_1.a, var_1.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1765f, -2155f, var_1.a, global0.c.a) * vec4<f32>(-842f, -827f, 453f, global0.c.a)))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(933f, _wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(254f)) * 1076f))));
    var var_5 = vec4<bool>(false, false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1645f, var_1.a))))) != -617f, true);
    var var_6 = min(global0.d.x, _wgslsmith_clamp_u32(~(~global0.d.x), ~select(99271u, global0.d.x, true) & reverseBits(_wgslsmith_clamp_u32(global0.d.x, global0.d.x, global0.d.x)), global0.d.x));
    var_5 = !vec4<bool>(var_5.x, !(var_1.b.x || false) && true, !(!var_5.x), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_0), _wgslsmith_f_op_vec3_f32(var_3.zyy + _wgslsmith_f_op_vec3_f32(-var_3.xyy)), _wgslsmith_f_op_vec4_f32(-var_3));
}

