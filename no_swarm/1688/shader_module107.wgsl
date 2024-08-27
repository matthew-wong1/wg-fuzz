struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2;

var<private> global2: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_5(arg_0.d.zzz, arg_1.b, Struct_4(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(exp2(global0.c))) == arg_0.d.x, ~_wgslsmith_mult_vec2_u32(u_input.b.yz & vec2<u32>(59457u, global0.b.x), vec2<u32>(0u, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(-global0.d), global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-913f - _wgslsmith_f_op_f32(f32(-1f) * -1417f)) * global2.x), !(!select(arg_1.a.zyx, vec3<bool>(true, arg_0.a.x, arg_1.a.x), vec3<bool>(arg_1.a.x, false, arg_1.a.x)))), -u_input.a);
    var var_1 = vec4<u32>(35166u, 42052u | ~u_input.b.x, _wgslsmith_mod_u32(20997u, abs(~global0.b.x)), firstLeadingBit(reverseBits(var_0.c.b.x)));
    let var_2 = global1.d.x;
    let var_3 = global2.x;
    global0 = var_0.c;
    return arg_0.b.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1566f - 675f))), -281f), ~(~abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_2.c, 2147483647i, -36668i), vec4<i32>(global1.b.b, -1826i, arg_1, arg_1)))));
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1436f + global0.d))), _wgslsmith_f_op_f32(-arg_0.x), -563f), min(var_0.b, countOneBits(var_0.b)));
    let var_2 = Struct_1(abs(vec2<i32>(2147483647i, -u_input.a)), -2147483647i);
    var var_3 = u_input.b.x;
    var var_4 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), global0.d, -296f), -vec4<i32>(var_0.b.x, _wgslsmith_sub_i32(min(2147483647i, -2147483647i), -2147483647i ^ global1.b.a.x), -39206i, var_2.b));
    return _wgslsmith_f_op_f32(-495f + _wgslsmith_f_op_f32(ceil(arg_2.d.x)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(global0.d));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181f + -1077f)), _wgslsmith_f_op_f32(-arg_0.d.x), true)), global0.c, global0.c, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(400f, global1.d.x, global2.x)))), _wgslsmith_div_i32(i32(-1i) * -1677i, func_3(Struct_2(vec4<bool>(false, global1.a.x, true, false), global1.b, arg_1.b, arg_0.d), arg_0)) ^ -(i32(-1i) * -2147483647i), arg_0)));
    let var_1 = !select(!vec3<bool>(false, !global1.a.x, global1.a.x), !(!(!vec3<bool>(global0.e.x, global0.a, arg_0.a.x))), !global0.e);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -410f))))), global1.d.x, 1296f);
    var var_3 = global1.b.a.x;
    return Struct_1(~countOneBits(_wgslsmith_mod_vec2_i32(arg_2.wx, abs(vec2<i32>(-1i, arg_2.x)))), arg_2.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = abs(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b), ~global1.c, _wgslsmith_clamp_i32(u_input.a, u_input.a, arg_3.a.x), arg_0.b.x & global1.b.a.x), ~arg_0.b)));
    let var_1 = global0.e.x;
    global1 = Struct_2(!global1.a, func_2(Struct_2(!vec4<bool>(arg_2, arg_2, true, global0.e.x), Struct_1(reverseBits(vec2<i32>(u_input.a, arg_3.a.x)), global1.c), 2147483647i, _wgslsmith_f_op_vec4_f32(exp2(global1.d))), Struct_1(arg_0.b.zw, arg_3.a.x), arg_0.b), u_input.a, global1.d);
    var var_2 = firstTrailingBit(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(reverseBits(4294967295u), u_input.c.x), ~17310u));
    let var_3 = Struct_4(global1.a.x, abs(_wgslsmith_sub_vec2_u32(select(u_input.b.yx, select(u_input.c.xx, u_input.b.zx, false), any(vec3<bool>(false, global1.a.x, global0.e.x))), arg_1.xx)), global0.c, -870f, select(!global1.a.zxw, select(global0.e, !(!vec3<bool>(arg_2, false, false)), !any(vec4<bool>(global0.e.x, arg_2, true, false))), true));
    return vec4<bool>(!global0.e.x, true, !var_3.e.x | any(!(!vec3<bool>(global0.e.x, true, false))), all(vec3<bool>(any(global1.a), true, global1.a.x)));
}

fn func_1() -> i32 {
    var var_0 = global2.x;
    var var_1 = global1.c;
    var var_2 = !(!(!func_5(Struct_3(vec3<f32>(global1.d.x, -930f, global2.x), vec4<i32>(27945i, -11539i, global1.c, u_input.a)), vec4<u32>(global0.b.x, 4294967295u, 0u, 4834u), false, func_2(Struct_2(global1.a, global1.b, u_input.a, vec4<f32>(-153f, global0.d, 328f, global2.x)), global1.b, vec4<i32>(u_input.a, u_input.a, 2147483647i, global1.c)))));
    let var_3 = abs(vec3<u32>(4294967295u, 1u, (0u ^ u_input.c.x) | _wgslsmith_dot_vec4_u32(u_input.c, u_input.c))) ^ _wgslsmith_div_vec3_u32(u_input.b, abs(vec3<u32>(u_input.c.x, ~u_input.c.x, global0.b.x)));
    var var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.x, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, 0u, global0.b.x), _wgslsmith_clamp_u32(global0.b.x, 4294967295u, 1u))), var_3.yz, ~(vec2<u32>(~0u, select(29729u, 1u, false)) ^ reverseBits(u_input.c.zx)));
    return 30998i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(func_1(), abs(global1.c)), global1.b.a), abs(min(-vec2<i32>(global1.c, -25850i), _wgslsmith_sub_vec2_i32(vec2<i32>(5542i, global1.c), vec2<i32>(-57382i, global1.c))))));
    var var_1 = global1.b.a;
    var_0 = -(~abs(-global1.b.a));
    let var_2 = !(!global0.e);
    let var_3 = (~(-1i) << (_wgslsmith_div_u32(global0.b.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(23877u, global0.b.x), 1u)) % 32u)) >= global1.c;
    var var_4 = select(vec2<bool>(global0.a, !(!global1.a.x)), var_2.zy, select(var_2.zx, var_2.zz, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.zzy))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d - _wgslsmith_div_vec4_f32(global1.d, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-274f, global1.d.x, global2.x, global0.c), vec4<f32>(193f, 776f, global2.x, global0.c), false)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1906f, global0.d, global1.d.x, global2.x) - global1.d), _wgslsmith_f_op_vec4_f32(-global1.d)))))), -abs(~vec2<i32>(-2147483647i, var_1.x)) ^ global1.b.a, ~var_1.x);
}

