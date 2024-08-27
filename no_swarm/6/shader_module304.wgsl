struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = vec4<u32>(4294967295u >> (0u % 32u), countOneBits(arg_2), u_input.a.x, 1u);
    var var_1 = vec2<bool>(true, true);
    var var_2 = 1928u;
    var var_3 = Struct_3(select(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(u_input.c, arg_1))) >> (~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u), 13788i, all(select(!global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(~1u, 20u)]))));
    var var_4 = vec3<i32>(abs(-39496i), _wgslsmith_div_i32(1i, u_input.c), -1i);
    return _wgslsmith_div_u32(1u, var_0.x | var_0.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> bool {
    global0 = array<vec3<bool>, 20>();
    var var_0 = Struct_4(arg_3, Struct_1(true & all(vec2<bool>(true, false)), vec2<bool>(select(true, true, u_input.a.x < 25084u), false)), ~arg_2, Struct_1(false, vec2<bool>(true, all(vec3<bool>(true, false, false)))), -157f);
    var var_1 = !(!(!(!vec2<bool>(var_0.b.a, var_0.d.a))));
    var var_2 = ~min(_wgslsmith_clamp_vec3_u32(~firstTrailingBit(vec3<u32>(var_0.c, 4294967295u, var_0.c)), min(vec3<u32>(1u, arg_1.x, arg_1.x), ~vec3<u32>(arg_1.x, var_0.c, arg_2)), u_input.a), vec3<u32>(firstTrailingBit(arg_1.x), u_input.a.x, u_input.a.x));
    var var_3 = var_0.d.b.x;
    return any(vec4<bool>(var_0.b.a, -145f <= _wgslsmith_f_op_f32(-374f * var_0.e), any(!(!vec4<bool>(true, var_0.d.a, var_0.d.a, false))), true));
}

fn func_2() -> i32 {
    var var_0 = -638f;
    let var_1 = Struct_1(select(true, u_input.b == (2147483647i >> (reverseBits(u_input.a.x) % 32u)), !any(vec4<bool>(true, false, false, false))), vec2<bool>(func_4(vec3<i32>(i32(-1i) * -8669i, 1i, select(u_input.b, 69287i, false)), vec2<u32>(func_3(vec3<f32>(-282f, -305f, 995f), -1i, 20273u), ~u_input.a.x), countOneBits(~u_input.a.x), Struct_2(u_input.c)), false));
    let var_2 = select(vec3<bool>(var_1.b.x, any(select(!vec4<bool>(false, var_1.b.x, var_1.b.x, true), select(vec4<bool>(false, var_1.b.x, true, true), vec4<bool>(var_1.b.x, false, var_1.a, false), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.a)), false)), var_1.b.x), !global0[_wgslsmith_index_u32(~u_input.a.x | 1u, 20u)], true);
    var var_3 = Struct_3(1i);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-802f + -1257f) + -1000f), -837f, -1746f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-549f)), 588f, _wgslsmith_f_op_f32(floor(-151f))))));
    return -2147483647i;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = select(arg_2.xx, arg_2.wz, _wgslsmith_clamp_i32(-25747i, 0i, arg_1.x) < -abs(func_2()));
    let var_1 = Struct_4(Struct_2(35046i), Struct_1(((arg_1.x >> (26710u % 32u)) >= -44264i) | !select(arg_2.x, var_0.x, true), select(vec2<bool>(true, arg_0 >= arg_0), arg_2.zx, vec2<bool>(func_4(arg_1.zxz, vec2<u32>(0u, 46662u), u_input.a.x, Struct_2(-59170i)), false))), abs(_wgslsmith_dot_vec3_u32(select(~u_input.a, abs(u_input.a), vec3<bool>(false, arg_2.x, false)), ~u_input.a)), Struct_1(false, !select(var_0, var_0, !arg_2.xz)), arg_0);
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    var var_2 = vec3<u32>((firstTrailingBit(abs(var_1.c)) | u_input.a.x) ^ (min(func_3(vec3<f32>(1473f, -379f, 363f), 0i, var_1.c), u_input.a.x) << (3706u % 32u)), _wgslsmith_mult_u32(~_wgslsmith_add_u32(min(var_1.c, 1698u), min(var_1.c, 0u)), var_1.c), u_input.a.x);
    return Struct_1(true, !var_0);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> Struct_1 {
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    var var_0 = arg_2.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e, _wgslsmith_f_op_f32(-arg_2.e)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_2.e + arg_2.e), _wgslsmith_f_op_f32(min(arg_2.e, arg_2.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.e, arg_2.e))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1604f, -474f)))), arg_2.b.a))));
    var_0 = arg_2.a;
    return arg_2.d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>) -> bool {
    return select(false, true & func_5(2147483647i, abs(arg_1.a), Struct_4(Struct_2(-3442i), Struct_1(arg_0.b.x, vec2<bool>(arg_0.a, arg_0.b.x)), u_input.a.x, arg_0, 722f)).a, true) && arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!all(!global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) && true, func_6(func_5(min(u_input.b, 6026i) ^ _wgslsmith_mult_i32(u_input.b, 1i), min(u_input.b, u_input.b), Struct_4(Struct_2(u_input.c), func_1(515f, vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.b), vec4<bool>(true, true, false, true)), 51877u, Struct_1(true, vec2<bool>(false, true)), _wgslsmith_f_op_f32(trunc(1000f)))), Struct_3(-2147483647i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_div_f32(675f, 781f))))), !((select(false, true, true) & true) != true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(~min(vec2<u32>(u_input.a.x, 39463u), vec2<u32>(0u, 0u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(432f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1760f)), -363f)))))), ~(_wgslsmith_sub_vec2_u32(~u_input.a.zx, u_input.a.yx) & u_input.a.zy), vec2<i32>(_wgslsmith_sub_i32(2150i, countOneBits(-u_input.c)), 1i), 0u);
}

