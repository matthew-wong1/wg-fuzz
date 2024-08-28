struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

var<private> global1: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> u32 {
    return u_input.b.x;
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = _wgslsmith_add_u32(~41858u, _wgslsmith_div_u32(_wgslsmith_mod_u32(38557u, max(1u, u_input.a)), 1u));
    global1 = _wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(4294967295u, 4294967295u, 1u), firstLeadingBit(vec3<u32>(12985u, u_input.d, u_input.d)), arg_0.b) >> (u_input.b.zxw % vec3<u32>(32u))), firstTrailingBit(vec3<u32>(u_input.d, 1u ^ _wgslsmith_div_u32(u_input.a, 0u), _wgslsmith_add_u32(abs(u_input.b.x), ~u_input.d))));
    global1 = 4294967295u;
    let var_0 = Struct_1(~abs(firstLeadingBit(firstTrailingBit(44263i))), select(!select(!vec3<bool>(arg_0.b.x, arg_0.d.x, true), vec3<bool>(true, false, arg_0.b.x), vec3<bool>(arg_0.d.x, true, false)), !vec3<bool>(false, arg_0.b.x | arg_0.b.x, arg_0.d.x), false), -abs(abs(~u_input.c.x)), arg_0.b, arg_0.e);
    global1 = 4294967295u;
    return false;
}

fn func_4(arg_0: Struct_1) -> i32 {
    global0 = array<vec2<u32>, 23>();
    var var_0 = arg_0.b.x;
    let var_1 = Struct_1(abs(_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.c.yxy, u_input.c.xxy), ~1i))), !vec3<bool>(!(0i > arg_0.a), any(select(arg_0.d, arg_0.b, vec3<bool>(arg_0.d.x, arg_0.d.x, false))), false), arg_0.a, vec3<bool>(!any(arg_0.d), true, arg_0.b.x), _wgslsmith_f_op_f32(select(arg_0.e, arg_0.e, arg_0.d.x)));
    let var_2 = ~_wgslsmith_mod_u32(0u, u_input.a);
    var_0 = any(vec2<bool>(func_3(var_1), true));
    return 0i >> ((var_2 & 1u) % 32u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = ~u_input.d <= max(_wgslsmith_add_u32(u_input.d, u_input.b.x), func_2());
    global0 = array<vec2<u32>, 23>();
    let var_1 = Struct_1(-38850i, vec3<bool>(true, true, true), func_4(Struct_1(4457i << (_wgslsmith_div_u32(54430u, 36919u) % 32u), vec3<bool>(false, true, func_3(Struct_1(arg_1.x, vec3<bool>(var_0, true, var_0), u_input.c.x, vec3<bool>(true, false, true), -1423f))), arg_1.x, select(!vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0), var_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-402f, -367f) + -665f))), !vec3<bool>(any(vec2<bool>(true, true)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1718f * -2220f), 614f)));
    global0 = array<vec2<u32>, 23>();
    let var_2 = _wgslsmith_mult_vec3_u32(abs(u_input.b.xzw), ~vec3<u32>(abs(0u) >> (u_input.d % 32u), ~_wgslsmith_mult_u32(u_input.b.x, u_input.d), ~_wgslsmith_div_u32(0u, 4294967295u)));
    return vec3<bool>(any(!var_1.d.xx), var_0, false);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.a;
    global1 = u_input.b.x;
    var var_0 = func_5(Struct_1(-reverseBits(i32(-1i) * -63286i), select(!func_1(vec4<i32>(u_input.c.x, -1i, -5593i, 4200i), u_input.c.xx), vec3<bool>(true, true, true), true), _wgslsmith_sub_i32(~u_input.c.x, u_input.c.x), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(217f, 405f))));
    var_0 = func_5(func_5(Struct_1(_wgslsmith_div_i32(func_4(Struct_1(-1i, vec3<bool>(true, var_0.b.x, var_0.d.x), 0i, var_0.d, 605f)), abs(var_0.c)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), !var_0.d), _wgslsmith_dot_vec2_i32(~u_input.c.xw, ~vec2<i32>(u_input.c.x, -2147483647i)), vec3<bool>(!var_0.b.x, true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-552f, 994f) * _wgslsmith_f_op_f32(-var_0.e)))));
    global0 = array<vec2<u32>, 23>();
    var var_1 = func_5(Struct_1(-16873i, vec3<bool>(var_0.d.x, select(!var_0.b.x, u_input.c.x >= 33717i, false), var_0.e >= -210f), ~var_0.c, var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e - -587f) * var_0.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(315f);
}

