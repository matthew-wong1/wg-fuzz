struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: Struct_4;

var<private> global2: Struct_3 = Struct_3(true);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> i32 {
    let var_0 = vec4<u32>(104346u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(56802u, firstTrailingBit(4294967295u)), ~1u, ~firstLeadingBit(u_input.c.x)), u_input.c.wzz), u_input.c.x, 0u);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-667f))));
    global0 = vec3<bool>(global0.x, false, true);
    var var_2 = Struct_2(Struct_1(38102i), (!any(vec3<bool>(false, global0.x, false)) | true) | any(global0.yx), vec3<f32>(_wgslsmith_f_op_f32(select(2187f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(arg_1.x + arg_1.x)), any(!vec4<bool>(true, false, false, global0.x)))), 291f, var_1));
    global0 = !select(select(select(select(vec3<bool>(false, arg_0, true), vec3<bool>(false, global0.x, true), var_2.b), select(vec3<bool>(global1.b, global1.b, arg_0), vec3<bool>(false, false, var_2.b), global0.x), !vec3<bool>(global2.a, false, var_2.b)), !select(vec3<bool>(true, true, global2.a), vec3<bool>(var_2.b, global1.b, global1.b), vec3<bool>(var_2.b, arg_0, var_2.b)), arg_0), !(!(!vec3<bool>(global0.x, global2.a, true))), global2.a);
    return ~(-1i);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(global1.a.a == ~23721i);
    global1 = Struct_4(Struct_1(-func_3(true, vec4<f32>(-2122f, -1107f, -1000f, -491f)) << (_wgslsmith_div_u32(abs(1u), abs(137765u)) % 32u)), var_0.a);
    var var_1 = Struct_1(global1.a.a);
    let var_2 = 83877u;
    let var_3 = 993u;
    return Struct_4(global1.a, true);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global2 = Struct_3(select(global1.b, global1.b, global1.b));
    let var_0 = global2.a;
    let var_1 = global1.b;
    global2 = Struct_3(true);
    global1 = func_2();
    return Struct_2(global1.a, false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1383f, -144f, 466f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1403f, -999f, -1568f) - vec3<f32>(637f, -811f, 265f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(-189f - -1466f), 1418f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-848f, 342f, -427f))))), false)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> bool {
    let var_0 = func_2().a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.c.x)), 561f, _wgslsmith_f_op_f32(func_1(-(~vec2<i32>(45847i, global1.a.a))).c.x * -1620f), -365f);
    let var_2 = func_2();
    return any(vec4<bool>(any(!vec2<bool>(global1.b, true)), all(select(vec4<bool>(true, false, var_2.b, false), vec4<bool>(var_2.b, var_2.b, false, true), vec4<bool>(global0.x, global1.b, true, global0.x))), true, !global2.a)) && (_wgslsmith_f_op_f32(789f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -687f) - _wgslsmith_f_op_f32(-351f + 618f))) < 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(global2.a, !global1.b, (!all(vec3<bool>(false, true, false)) || !any(vec4<bool>(global2.a, false, true, false))) && global2.a);
    let var_0 = Struct_3(select(all(select(vec3<bool>(global1.b, true, global2.a), !vec3<bool>(false, global0.x, true), any(vec4<bool>(global2.a, global2.a, global2.a, global2.a)))), !func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(437f, -1104f, 744f))), func_1(vec2<i32>(u_input.b.x, 0i))), global1.b));
    var var_1 = select(select(vec3<bool>(global0.x, global2.a, !any(global0.xx)), !vec3<bool>(!global2.a, global2.a, true), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, -52240i), -vec3<i32>(u_input.b.x, u_input.b.x, -16158i)) != _wgslsmith_add_i32(global1.a.a, 34025i)), select(vec3<bool>(all(select(vec3<bool>(global2.a, false, var_0.a), vec3<bool>(false, global1.b, true), vec3<bool>(true, global2.a, global0.x))), any(vec4<bool>(global2.a, global1.b, false, global2.a)), select(global2.a || global2.a, !var_0.a, all(vec3<bool>(true, false, global0.x)))), !vec3<bool>(true, !var_0.a, true), global2.a), !vec3<bool>(true, global0.x, _wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(u_input.c.x, u_input.a)) <= (u_input.c.x | 0u)));
    let var_2 = func_1(max(_wgslsmith_add_vec2_i32(select(vec2<i32>(1i, global1.a.a), u_input.b, var_0.a), u_input.b), -abs(vec2<i32>(global1.a.a, global1.a.a))) << (_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 21251u), u_input.c.xw) << ((vec2<u32>(1u, 0u) & u_input.c.ww) % vec2<u32>(32u)), u_input.c.ww & firstTrailingBit(u_input.c.xw)) % vec2<u32>(32u)));
    global1 = Struct_4(func_1(~(-_wgslsmith_add_vec2_i32(u_input.b, u_input.b))).a, !global1.b);
    global2 = Struct_3(!(1248f > var_2.c.x));
    var var_3 = -2147483647i;
    var_1 = select(!(!(!(!vec3<bool>(var_2.b, global0.x, false)))), select(vec3<bool>(!(22582u > u_input.c.x), true, func_2().b), select(select(vec3<bool>(false, global1.b, true), !vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), !select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, global1.b, var_2.b), true), true), vec3<bool>(global0.x, !any(vec3<bool>(global2.a, global0.x, var_1.x)), global0.x)), vec3<bool>(global0.x, false, var_2.b));
    let var_4 = vec3<f32>(var_2.c.x, var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x + var_2.c.x) - var_2.c.x) - func_1(u_input.b).c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(global1.a.a), u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.x, var_4.x, -1942f)))) + vec3<f32>(434f, -1320f, -1106f))), u_input.a);
}

