struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec4<f32> = vec4<f32>(1000f, -1504f, 439f, -366f);

var<private> global2: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    let var_0 = select(vec2<bool>(true, any(!vec3<bool>(arg_0.b.x, true, arg_0.b.x))), arg_0.b.xy, vec2<bool>(!(-16234i <= (u_input.b << (u_input.a.x % 32u))), arg_1.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.a))) + vec3<f32>(-972f, _wgslsmith_div_f32(global1.x, 1000f), _wgslsmith_f_op_f32(global1.x + global1.x))), vec3<f32>(1440f, global1.x, -704f), select(arg_0.b, vec3<bool>(arg_0.a.x < global1.x, any(vec4<bool>(true, false, false, true)), all(vec3<bool>(var_0.x, false, arg_0.b.x))), !(global1.x >= 651f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1111f - global1.x), _wgslsmith_f_op_f32(step(-970f, 1162f))) * _wgslsmith_f_op_f32(max(317f, _wgslsmith_f_op_f32(arg_0.a.x * global1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.a.x, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(241f + -1000f)) + arg_0.a.x))));
    let var_2 = true;
    var var_3 = ~79765u;
    return arg_0.b.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: u32) -> vec3<f32> {
    global0 = ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, ~4294967295u, arg_2 | arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), u_input.a.wy)), max(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(arg_2, u_input.c.x, arg_2, 21426u), arg_0)), true), vec4<u32>(~87687u, ~_wgslsmith_sub_u32(arg_0.x, u_input.a.x), ~arg_2, 0u));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(global1.yzz - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, 456f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, global1.x, 708f)))), select(vec3<bool>(true, true, true), vec3<bool>(func_3(Struct_1(vec3<f32>(arg_1.x, 849f, 1479f), vec3<bool>(true, false, true), u_input.e), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), !all(vec3<bool>(true, false, false)), false), true), u_input.e);
    var var_1 = _wgslsmith_dot_vec3_i32(~firstTrailingBit(firstTrailingBit(vec3<i32>(-35493i, var_0.c.x, var_0.c.x))), vec3<i32>(var_0.c.x, var_0.c.x, countOneBits(-u_input.e.x | -1i)));
    let var_2 = arg_2;
    let var_3 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global1.xwx)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-235f, 305f, var_0.a.x), vec3<f32>(arg_1.x, -824f, 1210f)))))))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-global1.xx), ~u_input.a.x))))), vec3<bool>(true, false, true), vec2<i32>(_wgslsmith_div_i32(u_input.e.x, -2147483647i), ~(~(~7845i))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global1.wyw * vec3<f32>(680f, -318f, var_0.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.wxw), global1.yzw))))), !vec3<bool>(var_0.b.x, -482f != var_0.a.x, false), vec2<i32>(firstTrailingBit(u_input.e.x), 34388i));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.zwy), var_0.a)), vec3<bool>(var_0.b.x, var_1.b.x, u_input.b != 0i), _wgslsmith_div_vec2_i32(abs(vec2<i32>(~var_0.c.x, u_input.e.x)), -vec2<i32>(u_input.e.x, var_1.c.x) ^ var_1.c));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), 1000f) + var_1.a.xx);
    let var_4 = ~11660u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.ywz;
    var var_1 = func_1();
    var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.d.x, 4294967295u), vec3<u32>(17259u, var_0.x, u_input.a.x)), countOneBits(~u_input.a.xxw)), ~u_input.a.yxw), ~u_input.a.zww);
    var var_2 = func_1();
    let var_3 = select(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, max(20243u, 0u)), vec2<u32>(countOneBits(~49578u), ~102452u >> (abs(var_0.x) % 32u)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d.x, 13162u), 0u), ~10611u)), ~u_input.a.zz, vec2<bool>(any(vec3<bool>(true, var_2.b.x, var_1.b.x)) & !all(var_1.b.xx), false));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-371f - -588f), var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1506f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-815f, global1.x), -1165f, _wgslsmith_f_op_f32(-1273f + var_2.a.x)))), vec3<bool>(!var_2.b.x, func_1().b.x, !any(select(vec4<bool>(var_2.b.x, var_2.b.x, false, true), vec4<bool>(true, var_2.b.x, var_2.b.x, true), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_1.b.x)))), vec2<i32>(~(~_wgslsmith_mult_i32(22323i, -17571i)), -33192i));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(var_0.x, _wgslsmith_div_u32(var_0.x, 18725u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, var_0.x), vec2<u32>(18858u, 824u)), 28592u), u_input.a, true || (var_2.b.x & true)), _wgslsmith_f_op_vec2_f32(abs(var_1.a.yx)), vec2<i32>(-(5333i >> (u_input.a.x % 32u)), _wgslsmith_div_i32(9432i, firstLeadingBit(_wgslsmith_add_i32(0i, u_input.e.x)))), -2147483647i, 27439i);
}

