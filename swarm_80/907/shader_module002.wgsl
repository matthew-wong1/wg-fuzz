struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-831f, -325f), vec2<f32>(415f, -1046f), vec2<f32>(471f, -1945f), vec2<f32>(-187f, 689f), vec2<f32>(-1079f, -1251f), vec2<f32>(-1765f, 370f), vec2<f32>(462f, 1000f), vec2<f32>(908f, -884f), vec2<f32>(-555f, -236f), vec2<f32>(596f, 209f));

var<private> global2: array<Struct_1, 28>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_mult_u32(abs(12321u), _wgslsmith_mult_u32(u_input.c.x, 45166u)))), 28u)];
    global0 = arg_1;
    global3 = Struct_1(global3.a, select(vec2<bool>(true, any(select(vec2<bool>(global0.c, true), arg_0.xy, global3.d))), vec2<bool>(true, true), global0.b), true, !(!((global0.d & false) && (u_input.c.x != 90373u))));
    var_0 = Struct_1((global3.a >> (4294967295u % 32u)) ^ select(~reverseBits(2147483647i), 52018i, true), !vec2<bool>(arg_0.x, all(select(arg_0.xyz, arg_0.yxx, arg_2.d))), any(vec3<bool>(arg_1.d, !arg_0.x, true)), (global0.a <= -(1i | var_0.a)) == (arg_0.x || var_0.d));
    let var_1 = Struct_1(4242i, vec2<bool>(global0.d, arg_2.c), !(6129u > _wgslsmith_div_u32(u_input.a.x, select(100997u, u_input.e, true))), any(vec2<bool>(true, var_0.b.x)) & true);
    return ~(~(_wgslsmith_clamp_i32(1i, var_0.a, var_0.a) >> (_wgslsmith_sub_u32(71633u, _wgslsmith_add_u32(0u, u_input.e)) % 32u)));
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(-_wgslsmith_mod_i32(~global0.a, global0.a), global0.b, _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, 57953i), _wgslsmith_clamp_i32(-1i, i32(-1i) * -958i, countOneBits(1i))) <= _wgslsmith_mod_i32(func_3(vec4<bool>(global3.d, global0.d, global0.c, global3.d), Struct_1(u_input.d.x, global0.b, false, global3.d), global2[_wgslsmith_index_u32(~1u, 28u)]), 0i), true);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(414f, -969f, -139f, 111f) * vec4<f32>(1168f, 561f, -450f, 368f)) + vec4<f32>(-936f, 2032f, -442f, -1408f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))))));
    let var_1 = Struct_1(_wgslsmith_sub_i32(global3.a, -1i), global0.b, global0.c, global3.d);
    var var_2 = u_input.a;
    global2 = array<Struct_1, 28>();
    return Struct_1(global0.a, select(vec2<bool>(true, true), var_1.b, !(!(!global3.b))), any(vec3<bool>(var_1.b.x, false, any(vec3<bool>(false, true, var_1.c)))), true);
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec3_u32(u_input.a.xyy, u_input.a.yww);
    var var_1 = Struct_1(global3.a >> (1u % 32u), vec2<bool>(!(!any(global3.b)), true), !all(select(select(vec2<bool>(false, global3.d), global3.b, false), select(vec2<bool>(false, global0.c), global3.b, true), select(vec2<bool>(false, global0.c), vec2<bool>(global3.b.x, global3.b.x), vec2<bool>(global3.d, true)))), !(!all(vec4<bool>(false, true, global3.d, global0.c))));
    var var_2 = _wgslsmith_f_op_f32(1791f + -574f);
    global3 = func_2();
    let var_3 = vec2<u32>(min(var_0.x, u_input.e), var_0.x);
    return select(vec4<bool>(!var_1.b.x | global3.c, any(select(select(vec3<bool>(var_1.d, global3.b.x, global3.c), vec3<bool>(true, global0.c, true), false), vec3<bool>(var_1.b.x, true, global0.d), true)), true, true), vec4<bool>(!select(false, global0.c, true), global3.d || !var_1.d, all(!select(vec4<bool>(true, var_1.b.x, false, var_1.c), vec4<bool>(true, global3.c, global0.c, var_1.c), vec4<bool>(var_1.b.x, true, global0.d, true))), all(!vec3<bool>(false, global0.d, global0.c))), vec4<bool>(!var_1.b.x, false, false, global3.d & true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2[_wgslsmith_index_u32(~4294967295u, 28u)];
    var var_0 = select(select(func_1(), !(!func_1()), all(global3.b)), !vec4<bool>(~0u <= firstTrailingBit(86547u), all(!vec3<bool>(global3.c, global0.b.x, false)), true, func_1().x), select(vec4<bool>(global3.c, global3.b.x && global3.c, true, true), vec4<bool>(false & !global0.c, global0.b.x, !any(global3.b), true), func_1()));
    var_0 = func_1();
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1473f)), _wgslsmith_f_op_f32(-248f * -106f))) + -1101f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c));
}

