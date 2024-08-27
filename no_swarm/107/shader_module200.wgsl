struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true);

var<private> global1: bool = false;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<bool>) -> u32 {
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1624f + _wgslsmith_f_op_f32(-1264f - _wgslsmith_f_op_f32(-468f - 731f)))), _wgslsmith_div_f32(200f, _wgslsmith_f_op_f32(311f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1192f - 425f)))), any(select(vec3<bool>(true, true, true || arg_0.a), arg_2, global0.a))));
    global1 = false;
    var_0 = 303f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-330f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) + _wgslsmith_f_op_f32(-107f + 1809f)))));
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_div_u32(~func_3(Struct_2(!global0.a), ~(~vec4<u32>(u_input.a, 33021u, 74143u, u_input.a)), vec3<bool>(global0.a, false, global0.a)), ~u_input.a);
    let var_1 = Struct_2(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, global0.a)) * _wgslsmith_div_f32(arg_0.b.x, -940f)) == arg_2.b.x));
    let var_2 = select(arg_2.c, arg_2.c, !(!select(select(vec4<bool>(false, var_1.a, false, true), vec4<bool>(global0.a, var_1.a, var_1.a, global0.a), vec4<bool>(global0.a, true, false, global0.a)), !vec4<bool>(var_1.a, true, global0.a, var_1.a), select(vec4<bool>(false, global0.a, false, var_1.a), vec4<bool>(var_1.a, true, true, true), global0.a))));
    let var_3 = -arg_2.c.zxz | abs(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_2.c.x, -2147483647i, arg_0.a), arg_0.c.yww) >> ((max(vec3<u32>(0u, 1u, 1u), vec3<u32>(u_input.a, u_input.a, 3028u)) ^ max(vec3<u32>(2820u, u_input.a, 0u), vec3<u32>(0u, u_input.a, u_input.a))) % vec3<u32>(32u)));
    let var_4 = arg_1.zw;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_1, _wgslsmith_f_op_vec4_f32(round(arg_0.b)))) + vec4<f32>(-257f, arg_1.x, -115f, var_4.x)), _wgslsmith_div_vec4_f32(arg_0.b, _wgslsmith_f_op_vec4_f32(-arg_1)))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(global0.a);
    global1 = true;
    var var_1 = Struct_1(_wgslsmith_sub_i32(u_input.c.x, (_wgslsmith_sub_i32(u_input.b.x, u_input.b.x) ^ _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(-20541i, -51814i))) ^ -u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(633f, _wgslsmith_f_op_f32(min(-3455f, -387f)), _wgslsmith_f_op_f32(613f + -1221f), _wgslsmith_f_op_f32(trunc(597f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(-1i, vec4<f32>(-2312f, 617f, 1000f, 932f), vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.c.x)), vec4<f32>(1000f, 1989f, 322f, 1000f), Struct_1(u_input.c.x, vec4<f32>(919f, 832f, 1172f, -669f), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x))))))), abs(vec4<i32>(max(_wgslsmith_div_i32(-1i, 1i), 1i), -1i, u_input.b.x, u_input.c.x)));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), ~u_input.a, u_input.a), select(vec3<u32>(4294967295u, 4294967295u, u_input.a) >> (vec3<u32>(45713u, 4294967295u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 48540u, 0u), !global0.a)) | _wgslsmith_clamp_u32(4294967295u, u_input.a, ~u_input.a), u_input.a);
    var var_3 = select(select(select(select(!vec2<bool>(global0.a, false), vec2<bool>(true, true), false), select(!vec2<bool>(true, global0.a), select(vec2<bool>(true, var_0.a), vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a)), var_1.b.x > var_1.b.x), vec2<bool>(!var_0.a, true)), select(!select(vec2<bool>(global0.a, true), vec2<bool>(true, var_0.a), false), vec2<bool>(global0.a, false), select(select(vec2<bool>(false, false), vec2<bool>(global0.a, global0.a), false), vec2<bool>(true, true), var_0.a)), !vec2<bool>(24826i > u_input.c.x, false)), select(vec2<bool>(any(select(vec2<bool>(global0.a, false), vec2<bool>(var_0.a, true), false)), 1u >= ~u_input.a), vec2<bool>((5824u < var_2.x) & !var_0.a, abs(u_input.a) >= u_input.a), vec2<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(8587i, u_input.c.x, -21677i, 1i), var_1.c) < reverseBits(var_1.c.x))), select(true, any(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), var_0.a == false));
    return Struct_2(false);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-637f, _wgslsmith_f_op_f32(select(arg_2.b.x, arg_2.b.x, true)))) + arg_2.b.x);
    let var_1 = _wgslsmith_add_i32(~(-27716i), 0i);
    return ~(_wgslsmith_mod_u32((u_input.a & arg_0.x) & ~arg_0.x, 0u) << (127u % 32u));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2(arg_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_2.b, vec4<f32>(-820f, _wgslsmith_f_op_f32(-arg_2.b.x), arg_2.b.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_1(arg_2.a, vec4<f32>(arg_2.b.x, 1200f, 381f, 697f), arg_2.c), vec4<f32>(2384f, arg_2.b.x, arg_2.b.x, arg_2.b.x), arg_2)).x), select(select(vec4<bool>(false, true, false, arg_1), vec4<bool>(false, false, global0.a, false), global0.a), !vec4<bool>(global0.a, false, false, false), vec4<bool>(arg_1, arg_1, false, true)))), _wgslsmith_f_op_vec4_f32(arg_2.b * vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.b.x)), _wgslsmith_f_op_f32(ceil(arg_2.b.x)), arg_2.b.x, -508f))), arg_2)).wyx;
    let var_1 = arg_2.b;
    global0 = func_1();
    let var_2 = ~countOneBits(~(~abs(vec4<u32>(4294967295u, 55672u, 39623u, arg_0))));
    global0 = Struct_2(arg_1);
    return arg_2;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    var var_0 = global0.a || true;
    global1 = global0.a;
    global0 = arg_2;
    var var_1 = func_5(_wgslsmith_sub_u32(1u, 0u), arg_0, Struct_1(-(abs(-50706i) ^ (0i ^ arg_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1016f, arg_1.b.x, arg_1.b.x, -721f), arg_1.b))), arg_1.c));
    var var_2 = arg_1.b.zzy;
    return _wgslsmith_mod_u32(select(u_input.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 53925u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 53456u)), reverseBits(~37098u)), all(!(!vec4<bool>(global0.a, false, false, false)))), abs(11191u));
}

fn func_7(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(14928u, arg_0), abs(arg_0));
    global1 = all(vec4<bool>(true, all(select(select(vec4<bool>(true, arg_1.x, arg_1.x, false), arg_1, arg_1.x), arg_1, all(vec2<bool>(false, false)))), arg_1.x, arg_1.x));
    let var_1 = func_1().a;
    global1 = true;
    global0 = Struct_2(!var_1);
    return func_5(~select(1u << (u_input.a % 32u), var_0.x & 0u, all(arg_1.xw)) & max(var_0.x, ~0u), all(select(vec4<bool>(any(arg_1.xy), false, true, true), select(select(arg_1, vec4<bool>(var_1, global0.a, false, false), vec4<bool>(arg_1.x, global0.a, true, false)), vec4<bool>(true, var_1, arg_1.x, false), arg_1.x), true || arg_1.x)), Struct_1(~(-21566i) & abs(_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.c.zy)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-394f, -305f, 1000f, 427f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, 499f, -361f, -736f))), vec4<f32>(_wgslsmith_f_op_f32(-1955f + 1746f), -508f, _wgslsmith_f_op_f32(1353f - -996f), 1673f))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, u_input.c.x, u_input.b.x, -41168i)), -vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, 0i) & _wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, 11597i, 2276i), vec4<i32>(u_input.b.x, 2147483647i, u_input.c.x, 0i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(all(select(select(vec4<bool>(global0.a, global0.a, global0.a, false), vec4<bool>(false, global0.a, global0.a, true), true), vec4<bool>(global0.a, true, true, global0.a), vec4<bool>(global0.a, false, true, global0.a))), func_5(func_4(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), func_1(), Struct_1(-2147483647i, vec4<f32>(-159f, 393f, -1562f, -367f), vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, u_input.b.x))), global0.a, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, 18727i, 2368i), vec4<i32>(-1i, 1i, u_input.b.x, -67203i)), vec4<f32>(-1000f, 1322f, 471f, -211f), _wgslsmith_mod_vec4_i32(vec4<i32>(-13388i, 0i, -29648i, u_input.c.x), vec4<i32>(u_input.c.x, 1i, 2147483647i, u_input.b.x)))), func_1(), u_input.c), !vec4<bool>(global0.a, (u_input.c.x < u_input.b.x) == false, global0.a, false));
    global0 = func_1();
    var var_1 = Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.b)))))), vec4<i32>(~(~(~u_input.b.x)), ~u_input.b.x, u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, var_0.a, u_input.b.x), u_input.c.x), _wgslsmith_div_i32(-2147483647i ^ u_input.b.x, u_input.c.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-var_1.b);
    global1 = false;
    global1 = _wgslsmith_f_op_vec4_f32(func_2(var_0, var_1.b, func_5(u_input.a, (var_0.a ^ u_input.c.x) >= (21849i >> (u_input.a % 32u)), func_5(u_input.a, true, Struct_1(var_1.a, var_0.b, vec4<i32>(var_1.c.x, u_input.c.x, 1i, u_input.c.x)))))).x == _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-var_1.b.x)));
    var var_3 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_1(var_0.c.x, var_1.b, ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_0.c.x, var_0.c.x, 35804i), vec4<i32>(1i, 13007i, 0i, u_input.c.x))), func_7(_wgslsmith_div_u32(0u, func_3(Struct_2(global0.a), vec4<u32>(47020u, u_input.a, u_input.a, 1u), vec3<bool>(true, true, global0.a))), vec4<bool>(true, global0.a, func_1().a, !global0.a)).b, Struct_1(_wgslsmith_add_i32(var_1.a, var_1.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(var_0.b)), vec4<f32>(862f, var_1.b.x, -304f, var_1.b.x))), var_0.c))), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 4294967295u & u_input.a, var_0.b.x, ~(~(~(~vec3<u32>(0u, u_input.a, 59990u)))));
}

