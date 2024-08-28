struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(1000f, -879f, 1277f), vec3<u32>(50523u, 49536u, 0u), vec2<i32>(-33598i, -1i), -1426f, 38973i);

var<private> global2: array<vec2<f32>, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global2 = array<vec2<f32>, 5>();
    global0 = Struct_1(vec3<f32>(global0.d, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1411f * 583f))), global1.b & ~abs(global0.b), -global1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.x * global1.d)))))), _wgslsmith_add_i32(1i, arg_0));
    var var_0 = ~(~select(vec4<i32>(1i, 59045i, 0i, -34236i), ~vec4<i32>(1i, 22683i, global0.c.x, -1i), true) & -vec4<i32>(18662i ^ global1.e, abs(global1.c.x), 0i, -85i));
    let var_1 = true;
    var_0 = min(~abs(vec4<i32>(var_0.x, 13364i, var_0.x, 40003i) >> (~vec4<u32>(63293u, 67201u, 13406u, u_input.b) % vec4<u32>(32u))), -vec4<i32>(~_wgslsmith_dot_vec2_i32(global0.c, global1.c), ~u_input.a, select(-1i, 1i ^ global1.e, var_1 & true), ~0i));
    return vec3<u32>(~global1.b.x, ~global1.b.x, _wgslsmith_dot_vec2_u32(global1.b.zx ^ firstLeadingBit(vec2<u32>(u_input.b, 0u)), ~global0.b.zz));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global0.a, _wgslsmith_clamp_vec3_u32(func_3(2147483647i), global1.b, _wgslsmith_add_vec3_u32(vec3<u32>(0u, global1.b.x, u_input.b) & _wgslsmith_clamp_vec3_u32(global0.b, global0.b, global1.b), vec3<u32>(28182u, firstLeadingBit(global1.b.x), ~u_input.b))), abs(global1.c) << (global1.b.zx % vec2<u32>(32u)), -585f, -8136i);
    return Struct_1(_wgslsmith_div_vec3_f32(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(global0.d, global1.d)), var_0.a.x))), vec3<u32>(var_0.b.x, 45502u, global1.b.x), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global1.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.x))))), i32(-1i) * -_wgslsmith_sub_i32(1i << (global0.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-69363i, 2147483647i, 13852i, var_0.e), vec4<i32>(-2147483647i, 2147483647i, -62397i, u_input.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = -min(0i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-49626i, 8286i), arg_1.c), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 1i, -23650i, 0i), vec4<i32>(1i, arg_0, 1i, -2147483647i)), -vec4<i32>(global1.e, 14253i, global0.e, -22655i))));
    global0 = arg_1;
    var var_1 = func_2();
    let var_2 = arg_2.d;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), var_1.d, -549f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a), vec3<f32>(global0.d, arg_1.a.x, -3044f)), true))), ~max(vec3<u32>(1u, u_input.b, 24863u), abs(vec3<u32>(1u, 4294967295u, 4294967295u))), arg_2.c, 376f, _wgslsmith_div_i32(-(abs(arg_1.e) << (_wgslsmith_mult_u32(4294967295u, 0u) % 32u)), arg_0));
    return select(!select(vec3<bool>(any(vec2<bool>(false, true)), true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, global0.d == arg_1.a.x, true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), arg_1.c.x < min(_wgslsmith_mod_i32(1i, var_0) << (reverseBits(1u) % 32u), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(79723i, -19544i, u_input.a, -48721i), vec4<i32>(var_3.e, 2147483647i, -15794i, 0i)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(global1.d - 120f), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(global0.d + global1.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global0.d, global1.d, arg_1.a.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(331f, 469f, -505f, 1243f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 1867f, -1298f, 1270f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1107f, arg_1.a.x, 582f, global1.a.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.d, global1.d, global0.a.x, arg_1.a.x)))))))));
    global2 = array<vec2<f32>, 5>();
    var var_1 = arg_1;
    let var_2 = ~(~(i32(-1i) * -(global1.c.x | global0.c.x)));
    var var_3 = vec4<i32>(arg_1.e, _wgslsmith_mod_i32(-38007i, i32(-1i) * -27800i), var_2, -37860i);
    return func_2();
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(global1.a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.b.x, global0.b.x, global0.b.x), ~(global1.b | vec3<u32>(global1.b.x, 49147u, global0.b.x))), -(global0.c & vec2<i32>(-2147483647i, 7769i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), abs(1721i));
    global2 = array<vec2<f32>, 5>();
    global1 = var_0;
    global2 = array<vec2<f32>, 5>();
    global1 = func_5(func_4(0i, func_2(), var_0), func_2(), vec4<i32>(var_0.c.x, -1i, reverseBits(firstLeadingBit(global0.e & global0.e)), u_input.a));
    return Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-369f * global1.d), _wgslsmith_f_op_f32(ceil(global1.d)), all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(select(var_0.a.x, global1.a.x, true)), _wgslsmith_f_op_f32(abs(func_5(vec3<bool>(true, true, true), Struct_1(global1.a, global0.b, global1.c, var_0.a.x, 0i), vec4<i32>(global1.c.x, var_0.c.x, global1.c.x, -13733i)).d))), _wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(270f, 165f, 414f) - vec3<f32>(global0.a.x, var_0.d, global0.d)), vec3<f32>(-430f, global1.a.x, global1.a.x)), func_4(-global0.c.x, func_2(), var_0).x))), vec3<u32>(_wgslsmith_sub_u32(u_input.b, ~countOneBits(4294967295u)), ~4294967295u, ~1u), -_wgslsmith_mult_vec2_i32(select(global1.c, global0.c, vec2<bool>(true, true)), -vec2<i32>(global0.e, var_0.c.x)), _wgslsmith_f_op_f32(-global1.a.x), ~(-36072i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global2 = array<vec2<f32>, 5>();
    let var_0 = global1.b.x;
    global2 = array<vec2<f32>, 5>();
    let var_1 = firstTrailingBit(~min(global1.c, global0.c));
    global1 = func_1();
    var var_2 = any(select(vec4<bool>(all(func_4(u_input.a, Struct_1(vec3<f32>(global1.d, -1200f, global0.d), vec3<u32>(global1.b.x, global0.b.x, global1.b.x), global0.c, global0.d, global1.c.x), Struct_1(vec3<f32>(-423f, global0.d, global1.a.x), vec3<u32>(1040u, 1u, u_input.b), vec2<i32>(-34325i, global1.e), global0.a.x, 0i))), true, all(vec3<bool>(false, true, false)), !all(vec3<bool>(false, true, false))), vec4<bool>(96640u <= global0.b.x, any(vec2<bool>(true, true)), false & (global0.b.x != 4294967295u), true), select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.a.x + func_5(vec3<bool>(false, true, true), Struct_1(global0.a, global0.b, vec2<i32>(1i, -2147483647i), global0.d, global0.e), vec4<i32>(-1i, -1i, u_input.a, -47079i)).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), global1.a.x, 1070f)));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~1i, -func_5(vec3<bool>(true, true, all(vec3<bool>(false, false, false))), func_2(), vec4<i32>(~var_1.x, -43744i, _wgslsmith_sub_i32(global0.c.x, global1.c.x), _wgslsmith_div_i32(1i, global0.c.x))).c.x, _wgslsmith_add_vec2_u32(~abs(vec2<u32>(u_input.b, 1u)) ^ global0.b.zx, vec2<u32>(global0.b.x, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 25452u), vec2<u32>(4888u, 1u))))));
}

