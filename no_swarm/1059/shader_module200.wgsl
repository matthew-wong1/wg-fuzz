struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(vec3<f32>(609f, -1000f, -235f), vec4<bool>(true, false, true, false)), 89363u, vec4<f32>(-169f, -1000f, 2228f, 469f));

var<private> global1: Struct_3 = Struct_3(vec2<u32>(34414u, 68255u), Struct_2(vec3<f32>(-785f, -615f, 1018f), vec4<bool>(false, false, true, true)), vec3<f32>(-229f, -2534f, -133f));

var<private> global2: i32;

var<private> global3: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<bool>) -> vec3<bool> {
    global1 = Struct_3(u_input.e, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1028f - -1506f)), global1.c.x, _wgslsmith_f_op_f32(select(global1.b.a.x, global0.c.x, all(global1.b.b.ywz)))), global1.b.b), global1.b.a);
    let var_0 = Struct_4(global1.b, !(!(!arg_3.yzz)));
    global0 = Struct_5(global0.a, 4294967295u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, var_0.a.a.x, _wgslsmith_f_op_f32(select(global0.c.x, 962f, true)), global0.a.a.x)))));
    var var_1 = true;
    var var_2 = ~_wgslsmith_div_vec2_i32(u_input.d.yz, countOneBits(vec2<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d))));
    return !(!select(select(vec3<bool>(arg_1, true, arg_3.x), select(vec3<bool>(false, arg_2.x, global1.b.b.x), arg_3.yyx, global1.b.b.x), !arg_1), vec3<bool>(false, true, all(arg_3.yww)), !vec3<bool>(true, arg_0.e, arg_2.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_3 {
    let var_0 = ~(~1i ^ -u_input.d.x);
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1276f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -578f)) - arg_0.wxx), select(!select(vec4<bool>(false, true, false, global1.b.b.x), vec4<bool>(global1.b.b.x, global0.a.b.x, global0.a.b.x, global1.b.b.x), global1.b.b.x), global0.a.b, vec4<bool>(all(vec4<bool>(false, global1.b.b.x, true, true)), global0.a.b.x, true, !global0.a.b.x))), select(func_3(Struct_1(arg_0.x, _wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, -723f, global1.c.x, 513f), global0.c), _wgslsmith_mod_i32(1i, arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(-901f, global0.a.a.x, global0.c.x, -1126f) - vec4<f32>(arg_0.x, arg_0.x, global0.c.x, global0.a.a.x)), global0.a.b.x), (true && global1.b.b.x) & false, !global0.a.b.yy, select(select(vec4<bool>(true, global0.a.b.x, true, true), vec4<bool>(false, true, global0.a.b.x, global0.a.b.x), global1.b.b.x), !global1.b.b, global0.a.b)), vec3<bool>(global0.a.b.x, false, !(!global0.a.b.x)), (global0.b | global0.b) != global0.b));
    let var_2 = u_input.d;
    var var_3 = Struct_4(global1.b, vec3<bool>(any(select(global1.b.b.wxw, !global3[_wgslsmith_index_u32(global0.b, 31u)], var_1.a.b.zyx)), false, -(~2147483647i) < -_wgslsmith_mult_i32(var_2.x, -31860i)));
    let var_4 = !(global0.a.b.x || true);
    return Struct_3(~vec2<u32>(~_wgslsmith_mod_u32(global1.a.x, 1u), global0.b), var_3.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.a.x * -879f), global1.b.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a.x - -1132f)), 1518f), var_1.a.a.x));
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2(global0.c, u_input.b);
    let var_1 = !vec2<bool>(global0.b >= min(~global1.a.x, 37286u), global0.a.b.x);
    let var_2 = all(!global0.a.b.wyw);
    let var_3 = vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(~select(21633u, 7134u, var_0.b.b.x), abs(~0u)), ~(~(~select(global0.b, global0.b, var_1.x))));
    global1 = var_0;
    return var_0.b.b.wyx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = -3563i;
    global0 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a.a.x - 2887f), _wgslsmith_f_op_f32(f32(-1f) * -479f), -1000f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.a) - _wgslsmith_f_op_vec3_f32(global1.b.a * global1.c))), vec4<bool>((global1.a.x & u_input.e.x) >= ~13048u, select(true || global1.b.b.x, global1.b.b.x, global0.a.b.x), _wgslsmith_sub_i32(22142i, u_input.b) >= u_input.b, global0.a.b.x)), ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.b, 67346u), vec3<u32>(global1.a.x, 54246u, global0.b)), ~(~12117u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.c.x, global1.b.a.x, 1000f))));
    global1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(global1.b.a.x, global1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(-global0.c.x), global1.b.a.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.c)))))), u_input.b);
    global0 = Struct_5(global0.a, 66427u, vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b.a.x)) - func_2(global0.c, 9464i).b.a.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.c.x + -568f)))), _wgslsmith_f_op_f32(floor(420f)), _wgslsmith_div_f32(global0.a.a.x, global0.a.a.x)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-510f + -1000f), 1394f, _wgslsmith_f_op_f32(global1.c.x - -460f)))), global0.a.b);
    let var_3 = global1.b;
    var var_4 = 598f;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(u_input.b), 20154i, u_input.b), u_input.d.yyy >> (~vec3<u32>(u_input.a, 45946u, u_input.a) % vec3<u32>(32u))), ~u_input.d.zxz, func_1()), global0.c.x, firstLeadingBit(u_input.b));
}

