struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.c.x;
    let var_1 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1241f, global0.a.x, -363f)) + _wgslsmith_f_op_vec3_f32(-arg_0.a)))))), _wgslsmith_div_vec2_f32(arg_0.b, global0.b));
    global1 = array<vec4<f32>, 21>();
    var var_2 = !(!(-1031f > arg_0.b.x) && true) && true;
    return firstTrailingBit(0u | _wgslsmith_mod_u32(_wgslsmith_mod_u32(86498u, firstTrailingBit(9851u)), countOneBits(~var_0)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-916f, 1174f, -1005f), arg_0.a)))), arg_0.a.zz), var_0, !(!any(vec3<bool>(true, false, true))), 1106f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-684f, _wgslsmith_f_op_f32(-var_1.b.b.x), global0.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -496f))), var_1.b.a.yz));
    global1 = array<vec4<f32>, 21>();
    let var_3 = _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(4294967295u << (max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, 54935u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, 1u))), u_input.c.x) % 32u), 21u)] * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 1947f, -928f, -1562f))))));
    return var_3.yy;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = select(vec3<bool>(any(select(select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, true), true), select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(arg_1.c, false), arg_1.c), select(vec2<bool>(arg_1.c, true), vec2<bool>(true, false), false))), false, arg_1.c), !vec3<bool>(true, arg_1.c, arg_1.c == any(vec2<bool>(arg_1.c, arg_1.c))), false | arg_1.c);
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1081f * -256f), arg_1.a.a.x, all(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, true, false, var_0.x), arg_1.c)))), arg_3.b.x), global0.b);
    let var_2 = ~arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(990f - arg_1.d), 811f)))), _wgslsmith_f_op_vec3_f32(-arg_2.a), false));
    let var_4 = false && var_0.x;
    return arg_1;
}

fn func_1() -> Struct_2 {
    return func_4(~func_2(Struct_1(_wgslsmith_f_op_vec3_f32(global0.a - global0.a), vec2<f32>(-1006f, 1045f))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(478f, 938f, -536f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 121f, global0.a.x))), vec2<f32>(-547f, _wgslsmith_f_op_f32(f32(-1f) * -166f))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(global0.a.x, -131f, global0.a.x)) - global0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-561f, global0.b.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2125f, 249f))), u_input.b <= 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + -1084f) - _wgslsmith_f_op_f32(global0.b.x * 301f)) < _wgslsmith_div_f32(-1385f, global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + global0.a.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.b), global0.a.zx)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * global0.a.x), -508f, global0.a.x), _wgslsmith_f_op_vec2_f32(global0.a.yz + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0.a, vec2<f32>(global0.a.x, -2300f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 21>();
    var var_0 = abs(vec2<u32>(~(~u_input.a.x), u_input.a.x));
    let var_1 = func_1();
    var var_2 = -firstLeadingBit(vec4<i32>(u_input.b, -31006i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-26112i, 43419i, -2147483647i), vec3<i32>(0i, 2147483647i, -1i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.b, 0i), firstLeadingBit(vec3<i32>(2147483647i, 2147483647i, 14644i))), u_input.b));
    let var_3 = 1000f;
    var var_4 = vec3<bool>(40686u == (min(min(u_input.c.x, 3346u), 1u) & select(80564u, 28013u, select(true, true, true))), _wgslsmith_f_op_vec2_f32(func_3(var_1.b)).x <= global0.a.x, true);
    global0 = var_1.b;
    var_2 = ~(~(vec4<i32>(~u_input.b, 1i, var_2.x, min(u_input.b, u_input.b)) | (vec4<i32>(var_2.x, u_input.b, var_2.x, var_2.x) & vec4<i32>(u_input.b, var_2.x, u_input.b, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(abs(-5469i), ~u_input.b) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), u_input.c) % vec2<u32>(32u))), ~vec4<u32>(1u, func_2(var_1.b), countOneBits(~var_0.x), 76137u), vec2<f32>(1f, _wgslsmith_div_f32(var_3, -918f)), _wgslsmith_div_u32(u_input.a.x, u_input.c.x), ~1u);
}

