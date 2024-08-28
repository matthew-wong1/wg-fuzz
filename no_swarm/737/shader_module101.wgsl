struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 48773u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    global1 = select(vec2<u32>(~2498u | _wgslsmith_sub_u32(~u_input.a.x, global1.x), 4294967295u), select(_wgslsmith_mult_vec2_u32(~select(vec2<u32>(1u, global1.x), u_input.c, vec2<bool>(true, false)), vec2<u32>(~global1.x, _wgslsmith_div_u32(arg_2.b.x, global1.x))), max(u_input.c, reverseBits(vec2<u32>(global1.x, 18735u) & arg_2.b.yz)), vec2<bool>(true, true)), select(vec2<bool>(arg_2.b.x <= global1.x, true), !vec2<bool>(select(true, false, true), true), vec2<bool>(any(vec2<bool>(true, true)), true)));
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.b, _wgslsmith_div_f32(362f, arg_2.c.a), _wgslsmith_f_op_f32(-1633f + 841f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.b, -1000f, 1045f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(224f - 561f), 1052f), global0.x))));
    var var_0 = Struct_1(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(383f + _wgslsmith_f_op_f32(abs(arg_2.c.a))) * _wgslsmith_f_op_f32(-459f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(240f * arg_1.a)))), vec2<i32>(0i, ~min(14578i, -49169i)), arg_2.c.d);
    var var_1 = -10303i;
    let var_2 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 4294967295u, _wgslsmith_mult_u32(~global1.x, ~u_input.c.x)), arg_2.b));
    return ~(~vec2<u32>(arg_2.b.x, 4294967295u));
}

fn func_2(arg_0: i32, arg_1: u32) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) + -1050f), _wgslsmith_f_op_f32(-global0.x), global0.x)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(366f, global0.x))) + _wgslsmith_f_op_f32(step(-704f, _wgslsmith_f_op_f32(-global0.x)))), global0.x, -469f));
    let var_0 = vec2<bool>(any(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true)), -1821f > global0.x);
    global1 = func_3(u_input.b, Struct_1(_wgslsmith_div_f32(-2030f, global0.x), global0.x, vec2<i32>(reverseBits(~2147483647i), 1i), global0.x), Struct_2(vec2<i32>(~arg_0, ~u_input.b.x), _wgslsmith_add_vec3_u32(reverseBits(u_input.a.zzy | u_input.a.wyz), vec3<u32>(1u, ~global1.x, _wgslsmith_mult_u32(1u, u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-177f * global0.x) * -1316f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, -257f)) + _wgslsmith_f_op_f32(sign(global0.x))), u_input.b.xz, -970f)));
    let var_1 = Struct_2(u_input.b.zx & vec2<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), -2147483647i), ~vec3<u32>(countOneBits(max(1u, global1.x)), ~_wgslsmith_clamp_u32(4294967295u, 0u, global1.x), u_input.a.x), Struct_1(-518f, _wgslsmith_f_op_f32(floor(225f)), select(vec2<i32>(u_input.b.x, -48591i), u_input.b.zy >> ((vec2<u32>(arg_1, arg_1) | vec2<u32>(arg_1, global1.x)) % vec2<u32>(32u)), var_0.x), 1273f));
    global1 = u_input.a.wy;
    return firstTrailingBit(~(-54301i));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1221f))), vec2<i32>(func_2(-(~u_input.b.x), 15356u), u_input.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(step(global0.x, -643f)))))));
    global0 = vec3<f32>(_wgslsmith_div_f32(1313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1340f, _wgslsmith_f_op_f32(f32(-1f) * -1126f))))), _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(sign(var_0.a)))), 491f);
    var var_1 = var_0.c.x;
    let var_2 = 1262f;
    var var_3 = all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, false)), vec2<bool>(select(false, false, false), any(vec3<bool>(true, false, false)))), vec2<bool>((60758u < global1.x) || any(vec4<bool>(false, true, true, true)), true), vec2<bool>(abs(-13664i) < _wgslsmith_mult_i32(u_input.b.x, 2147483647i), any(vec4<bool>(true, true, false, false)))));
    return Struct_2(~(~select(_wgslsmith_div_vec2_i32(var_0.c, vec2<i32>(2147483647i, 15206i)), u_input.b.yy, true)), (_wgslsmith_mod_vec3_u32(vec3<u32>(48969u, 0u, u_input.c.x), min(vec3<u32>(u_input.c.x, global1.x, 4294967295u), u_input.a.xyz)) | _wgslsmith_div_vec3_u32(min(vec3<u32>(global1.x, u_input.a.x, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, global1.x)), u_input.a.ywy)) & ~countOneBits(u_input.a.xyy), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(var_0.a, var_0.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(659f, -1746f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(546f)))), _wgslsmith_f_op_f32(floor(1000f)), vec2<i32>(2147483647i, -var_0.a.x), -1572f));
    var var_2 = _wgslsmith_f_op_f32(var_0.c.b - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a + var_0.c.d)))))));
    var var_3 = ~41880u;
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.a, 259f, global0.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c.b, global0.x, global0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-462f, var_1.c.d, 1309f))) * vec3<f32>(_wgslsmith_f_op_f32(sign(901f)), _wgslsmith_f_op_f32(select(-395f, var_0.c.a, true)), _wgslsmith_f_op_f32(-var_0.c.a)))));
    let var_4 = func_1().c;
    let var_5 = func_1();
    var var_6 = vec4<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true, true, !(_wgslsmith_f_op_f32(107f + var_1.c.d) >= _wgslsmith_f_op_f32(select(1055f, _wgslsmith_f_op_f32(-576f + 822f), any(vec3<bool>(false, false, false))))));
    var_0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(249f, var_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.a, _wgslsmith_f_op_f32(f32(-1f) * -357f)) - _wgslsmith_f_op_f32(-var_4.b)), -598f));
}

