struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1559f), Struct_1(1666f), Struct_1(893f), Struct_1(-498f), Struct_1(-1087f), Struct_1(1000f), Struct_1(450f), Struct_1(-1454f), Struct_1(2539f), Struct_1(-637f), Struct_1(-513f), Struct_1(-823f), Struct_1(-891f), Struct_1(692f), Struct_1(-650f), Struct_1(1422f), Struct_1(725f), Struct_1(2938f), Struct_1(-952f), Struct_1(-1543f), Struct_1(1341f), Struct_1(-1000f), Struct_1(800f), Struct_1(513f), Struct_1(259f), Struct_1(-221f));

var<private> global1: bool;

var<private> global2: bool = false;

var<private> global3: array<vec4<f32>, 12>;

var<private> global4: vec4<u32> = vec4<u32>(23737u, 1u, 27051u, 47933u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = Struct_2(arg_2.c.x, 1155f, arg_2.c, 0i);
    global0 = array<Struct_1, 26>();
    global3 = array<vec4<f32>, 12>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(335f - arg_0.b))))));
    var var_2 = Struct_2(true, -551f, select(!vec3<bool>(!arg_2.a, arg_2.a || arg_0.c.x, all(vec4<bool>(arg_0.c.x, false, var_0.a, true))), arg_0.c, select(vec3<bool>(var_0.a, false, select(arg_0.c.x, var_0.a, false)), select(vec3<bool>(false, true, false), select(var_0.c, vec3<bool>(false, arg_0.c.x, var_0.a), true), all(vec4<bool>(true, false, false, false))), false)), ~reverseBits(1i));
    return select(!vec3<bool>(true, arg_0.b >= -1083f, !any(vec2<bool>(var_2.a, var_2.a))), vec3<bool>(true, all(vec3<bool>(!var_2.c.x, select(var_2.a, false, var_0.a), arg_2.c.x)), true), all(select(select(vec4<bool>(true, arg_2.a, true, var_2.c.x), select(vec4<bool>(true, var_0.c.x, true, true), vec4<bool>(var_2.a, true, var_0.a, arg_2.a), vec4<bool>(true, true, var_2.c.x, arg_2.c.x)), vec4<bool>(var_2.a, false, var_2.c.x, arg_2.c.x)), vec4<bool>(var_2.a, all(arg_0.c), true, true), vec4<bool>(any(vec3<bool>(true, var_0.a, arg_2.c.x)), var_0.c.x, -2147483647i >= var_2.d, true))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> vec3<bool> {
    global2 = any(arg_2);
    let var_0 = 1f;
    global0 = array<Struct_1, 26>();
    global3 = array<vec4<f32>, 12>();
    var var_1 = vec3<u32>(~(~4294967295u), ~global4.x, select(~0u, 1u, false));
    return select(select(vec3<bool>(arg_2.x, any(select(arg_2, arg_2, vec2<bool>(false, arg_2.x))), false), select(select(vec3<bool>(arg_2.x, true, arg_2.x), !vec3<bool>(false, false, arg_2.x), !vec3<bool>(arg_2.x, false, arg_2.x)), !func_3(Struct_2(true, 2049f, vec3<bool>(arg_2.x, arg_2.x, arg_2.x), -54959i), Struct_1(var_0), Struct_2(arg_2.x, var_0, vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_0)), true), !arg_2.x | any(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, false, arg_2.x), arg_2.x))), !(!(!(!vec3<bool>(false, true, arg_2.x)))), (!(u_input.b.x < 0i) & arg_2.x) & true);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> u32 {
    global3 = array<vec4<f32>, 12>();
    var var_0 = !select(vec3<bool>(select(true, true, arg_1.c.x) | true, !arg_0.a & (arg_1.a | false), arg_1.a), select(arg_0.c, func_2(_wgslsmith_clamp_i32(-23117i, -2147483647i, -36949i), _wgslsmith_clamp_u32(4294967295u, 1u, 0u), select(arg_0.c.yy, vec2<bool>(arg_1.a, false), arg_1.c.xx)), func_2(~arg_3, 29520u, vec2<bool>(true, true)).x), vec3<bool>(!arg_0.a | true, arg_1.a, ~global4.x > firstLeadingBit(8102u)));
    let var_1 = Struct_2(!(arg_1.c.x | select(arg_0.a == true, arg_1.c.x || true, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, -223f, arg_1.a)), _wgslsmith_f_op_f32(-arg_0.b)), !(!arg_0.c), 1i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-513f)), _wgslsmith_f_op_f32(f32(-1f) * -341f), var_0.x))))));
    global4 = ~abs(vec4<u32>(global4.x << (~u_input.a % 32u), _wgslsmith_mult_u32(8784u, global4.x) | _wgslsmith_add_u32(u_input.a, 1u), u_input.a, ~(global4.x << (1u % 32u))));
    return 49710u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -841f), -258f, -472f, 756f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f)), 1f, _wgslsmith_f_op_f32(-455f - _wgslsmith_f_op_f32(trunc(-616f)))) + _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(func_1(Struct_2(true, 341f, vec3<bool>(true, true, false), 42823i), Struct_2(false, -613f, vec3<bool>(false, false, false), u_input.b.x), 33311i, u_input.b.x) >> (55001u % 32u), 12u)] - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1042f, 683f, -350f, -263f)))))), select(vec4<bool>(true, select(func_3(Struct_2(true, -2618f, vec3<bool>(true, true, false), u_input.b.x), global0[_wgslsmith_index_u32(1u, 26u)], Struct_2(true, 1000f, vec3<bool>(false, true, true), u_input.b.x)).x, all(vec3<bool>(true, false, true)), true), any(vec4<bool>(false, true, true, true)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), any(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), true))));
    global4 = vec4<u32>(~global4.x, u_input.a, _wgslsmith_sub_u32(59171u, u_input.a), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(4229u, 1u, global4.x)), global4.xxz, ~global4.yxy), ~(vec3<u32>(u_input.a, u_input.a, 105323u) ^ vec3<u32>(global4.x, u_input.a, global4.x))));
    let var_1 = 340f;
    let var_2 = func_3(Struct_2(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))), func_3(Struct_2(var_1 > -964f, -1000f, func_2(1i, 4294967295u, vec2<bool>(true, false)), u_input.b.x), global0[_wgslsmith_index_u32(1u, 26u)], Struct_2(true, var_0.x, select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), u_input.b.x)), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -9043i, -30062i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b.x, 9945i, u_input.b.x), vec4<i32>(-59132i, -2910i, u_input.b.x, u_input.b.x))))), global0[_wgslsmith_index_u32(4294967295u, 26u)], Struct_2(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-1577f * var_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -2555f)), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), true), 1i)).x;
    let var_3 = select(!vec4<bool>(var_2, true, var_2, true && any(vec2<bool>(var_2, true))), select(select(select(!vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(var_2, var_2, false, true), vec4<bool>(true, false, true, var_2)), vec4<bool>(!var_2, all(vec2<bool>(var_2, true)), true, true), select(true, false, any(vec4<bool>(var_2, var_2, false, var_2)))), vec4<bool>(true, !var_2, max(global4.x, 58754u) <= _wgslsmith_mult_u32(999u, 0u), false), vec4<bool>(all(vec2<bool>(true, false)), select(true, all(vec2<bool>(true, true)), !var_2), true, (var_2 & true) | !var_2)), select(!select(select(vec4<bool>(true, false, true, var_2), vec4<bool>(var_2, var_2, false, var_2), var_2), vec4<bool>(true, var_2, false, false), all(vec3<bool>(var_2, true, true))), !select(vec4<bool>(false, false, var_2, true), vec4<bool>(false, false, var_2, true), !vec4<bool>(var_2, true, true, false)), any(vec3<bool>(true, var_2, var_2 | false))));
    global2 = false;
    let var_4 = global0[_wgslsmith_index_u32(u_input.a, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(u_input.b.x, abs(-2147483647i), -59647i), global4.yz, u_input.b, global3[_wgslsmith_index_u32(0u, 12u)], ~select(reverseBits(_wgslsmith_sub_vec3_i32(u_input.b.xyw, u_input.b.zww)), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.b.x, 10011i, 1i))), vec3<bool>(false, true, func_2(u_input.b.x, u_input.a, var_3.ww).x)));
}

