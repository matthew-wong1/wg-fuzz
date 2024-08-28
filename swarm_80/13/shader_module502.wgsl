struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 12>;

var<private> global2: Struct_1;

var<private> global3: Struct_3;

var<private> global4: array<i32, 16> = array<i32, 16>(2147483647i, 1i, -8189i, 0i, -1i, -57151i, -1i, 2147483647i, -4173i, 2147483647i, -33522i, 14204i, 12559i, 25517i, 2147483647i, 9932i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>) -> bool {
    let var_0 = true;
    global1 = array<bool, 12>();
    global0 = vec2<bool>(!var_0, true);
    global2 = global3.a.c;
    let var_1 = false;
    return (!(_wgslsmith_f_op_f32(global2.a * global2.a) < -1218f) == true) && !global3.a.c.b.x;
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = global3.a.e.c | vec4<i32>(34958i, _wgslsmith_add_i32(global2.c.x, firstTrailingBit(-34675i)), _wgslsmith_div_i32(-10885i, 1i), 15840i >> (u_input.d % 32u));
    let var_1 = Struct_4(func_3(~vec3<u32>(6220u, 4294967295u, u_input.d), select(_wgslsmith_mod_vec4_i32(var_0, _wgslsmith_mod_vec4_i32(var_0, vec4<i32>(u_input.e.x, 25137i, -13234i, global4[_wgslsmith_index_u32(u_input.d, 16u)]))), _wgslsmith_mult_vec4_i32(vec4<i32>(50459i, global3.a.e.c.x, u_input.e.x, global3.a.c.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, global3.a.c.c.x, var_0.x, global3.a.a.c.x), u_input.e)), vec4<bool>(true, true, true, true))), vec3<u32>(14688u, reverseBits(0u), abs(~u_input.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(select(global3.a.a.a, global2.a, global0.x)))), global3.a.b.a, false)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(657f, global2.a)));
    global2 = global3.a.e;
    global3 = Struct_3(Struct_2(Struct_1(-107f, !select(global2.b, vec2<bool>(false, false), false), _wgslsmith_clamp_vec4_i32(min(global3.a.a.c, global3.a.a.c), min(vec4<i32>(1i, u_input.e.x, u_input.c, 2147483647i), vec4<i32>(global3.a.a.c.x, 2147483647i, var_0.x, global4[_wgslsmith_index_u32(10247u, 16u)])), u_input.e), global3.a.a.d), global3.a.e, Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(global3.a.a.a))), global3.a.c.d.yy, u_input.e, select(vec3<bool>(false, true, global0.x), select(global2.d, vec3<bool>(global3.a.b.d.x, var_1.d, global2.b.x), global2.d), true)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-251f + global2.a))), global2.d.yz, (vec4<i32>(global3.a.c.c.x, 44694i, global3.a.a.c.x, -9440i) ^ global3.a.a.c) ^ var_0, vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c * global3.a.d.a))), global2.b, countOneBits(vec4<i32>(-18877i, 5649i, u_input.c, global2.c.x) | global3.a.b.c), select(global3.a.e.d, select(global3.a.d.d, global2.d, global3.a.a.d), !global2.d))));
    let var_2 = vec4<u32>(~var_1.b.x, firstLeadingBit(~1u), 0u, ~abs(~1u));
    return Struct_4(!(!(!any(vec4<bool>(global0.x, global3.a.a.d.x, var_1.d, true)))), var_1.b, -1133f, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(599f, 1783f)));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    var var_0 = -1i;
    let var_1 = Struct_3(Struct_2(arg_2.a.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(844f)) + -668f), select(select(vec2<bool>(arg_0.a, global2.d.x), vec2<bool>(false, global2.b.x), arg_0.d), vec2<bool>(true, true), global2.b), global2.c, vec3<bool>(arg_1, false, true)), arg_2.a.c, arg_2.a.b, global3.a.c));
    global4 = array<i32, 16>();
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.d, ~0u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1030u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_0.b.x), arg_0.b.zz)), arg_0.b.yy));
    let var_3 = arg_2.a.a;
    return arg_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_2(-382f), global2.b.x, Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(global2.a)), vec2<bool>(global1[_wgslsmith_index_u32(9490u, 12u)], global3.a.a.b.x), _wgslsmith_add_vec4_i32(u_input.e, global3.a.c.c), !vec3<bool>(global2.d.x, global2.d.x, global0.x)), Struct_1(_wgslsmith_f_op_f32(-global2.a), vec2<bool>(true, true), -vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], 1i, 3018i, global3.a.a.c.x), select(vec3<bool>(global3.a.e.b.x, global1[_wgslsmith_index_u32(u_input.d, 12u)], global2.d.x), vec3<bool>(false, global0.x, global2.b.x), true)), global3.a.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1183f), global2.b, vec4<i32>(u_input.b.x, u_input.a.x, global2.c.x, 0i), global2.d), global3.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.c.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1531f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-642f, global2.a) - _wgslsmith_f_op_f32(-global3.a.e.a))))));
    var var_1 = 465f;
    let var_2 = ~abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 0u, 0u) & select(vec3<u32>(0u, 0u, u_input.d), vec3<u32>(22555u, u_input.d, u_input.d), global2.b.x), ~(vec3<u32>(u_input.d, 4294967295u, 4294967295u) | vec3<u32>(u_input.d, u_input.d, 1u))));
    global1 = array<bool, 12>();
    let var_3 = func_2(var_0.e.a);
    return func_4(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))), any(!func_4(func_2(-2048f), true, Struct_3(Struct_2(Struct_1(2007f, global2.d.xy, var_0.c.c, vec3<bool>(global2.d.x, global0.x, false)), Struct_1(global2.a, vec2<bool>(var_0.a.d.x, global0.x), vec4<i32>(-21227i, 45323i, -2147483647i, 1i), vec3<bool>(var_3.a, false, global3.a.a.b.x)), Struct_1(var_0.a.a, global2.b, vec4<i32>(u_input.e.x, 2147483647i, 1i, -98495i), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d, 12u)])), Struct_1(-174f, var_0.e.b, global2.c, vec3<bool>(false, var_0.b.d.x, true)), var_0.b)), _wgslsmith_div_f32(var_3.e.x, -664f)).c.d.zz), Struct_3(Struct_2(global3.a.b, global3.a.a, var_0.a, var_0.b, func_4(func_2(var_3.e.x), global2.b.x, Struct_3(var_0), _wgslsmith_div_f32(global2.a, var_3.c)).e)), -1050f).a;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = -global3.a.a.c.x;
    global1 = array<bool, 12>();
    global4 = array<i32, 16>();
    let var_1 = Struct_4(!select(true, select(false, false, true), arg_2.c.b.x) && arg_0.d.b.x, ~(~(~(vec3<u32>(arg_1, arg_1, 24040u) >> (vec3<u32>(u_input.d, arg_1, 1u) % vec3<u32>(32u))))), -2036f, !(!arg_3.c.d.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.a * arg_3.c.a))), _wgslsmith_f_op_f32(arg_0.a.a * arg_3.b.a)));
    global2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f - -2464f) + _wgslsmith_f_op_f32(global3.a.a.a - 443f))))), func_1().b, global3.a.a.c, global3.a.e.d);
    return func_4(var_1, global0.x, Struct_3(func_4(var_1, false, Struct_3(func_4(var_1, global3.a.a.d.x, Struct_3(Struct_2(Struct_1(-384f, vec2<bool>(true, false), arg_2.e.c, vec3<bool>(arg_2.e.d.x, global1[_wgslsmith_index_u32(var_1.b.x, 12u)], true)), Struct_1(-1177f, arg_0.b.d.xx, global3.a.a.c, arg_0.d.d), Struct_1(2939f, global3.a.b.b, vec4<i32>(arg_0.a.c.x, arg_0.e.c.x, 0i, var_0), global2.d), Struct_1(global2.a, global2.d.xx, vec4<i32>(global2.c.x, var_0, var_0, -8059i), arg_2.c.d), Struct_1(global2.a, arg_0.e.d.xy, arg_0.c.c, arg_0.a.d))), -156f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1370f * 1361f) - global2.a))), _wgslsmith_f_op_f32(-func_2(-1607f).c));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(func_5(global3.a, ~1255u, global3.a, Struct_2(func_1(), Struct_1(153f, vec2<bool>(global0.x, global0.x), global2.c, vec3<bool>(true, false, true)), Struct_1(_wgslsmith_f_op_f32(exp2(global3.a.d.a)), global2.b, vec4<i32>(u_input.c, 20141i, 2147483647i, global3.a.e.c.x) >> (vec4<u32>(96441u, 35439u, u_input.d, u_input.d) % vec4<u32>(32u)), global2.d), Struct_1(global2.a, !vec2<bool>(global2.d.x, false), _wgslsmith_mod_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(1u, 16u)], global3.a.d.c.x, -18217i, u_input.b.x), vec4<i32>(0i, u_input.a.x, global2.c.x, global3.a.a.c.x)), global3.a.a.d), global3.a.b)));
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstTrailingBit(1u), 1u), 0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a, global3.a.a.a, global2.a, global3.a.e.a)))));
    global0 = select(global3.a.e.b, global2.d.yz, 4294967295u >= u_input.d);
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

