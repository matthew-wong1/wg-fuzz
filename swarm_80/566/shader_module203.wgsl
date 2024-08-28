struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = global0.d.a.x;
    global0 = Struct_5(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(max(global0.a, vec2<u32>(1u, 0u)), abs(vec2<u32>(u_input.a, 0u))), arg_2.b.zx), reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(arg_2.b.zx, arg_2.b.zz), vec2<u32>(global0.a.x, global0.a.x)))), vec3<bool>(!global0.d.c.x, all(vec4<bool>(arg_1.b.x, !arg_1.e.c.x, arg_2.a.c.x && false, true)), true), arg_2.a.c.xx, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a.x, _wgslsmith_f_op_f32(-887f + arg_2.a.a.x), -463f, _wgslsmith_f_op_f32(exp2(arg_2.a.b.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.d.a.x, 214f, -1120f, 1561f), arg_2.a.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, arg_1.e.b.x) + vec2<f32>(590f, 330f)), _wgslsmith_f_op_vec2_f32(-global0.e.a.zy))), select(select(!arg_2.a.c, !vec4<bool>(false, true, false, arg_1.d.c.x), select(arg_1.d.c, global0.d.c, vec4<bool>(arg_1.e.c.x, global0.d.d, arg_2.a.e, true))), vec4<bool>(false, true, true, true), !vec4<bool>(false, true, true, arg_1.b.x)), global0.b.x, true), global0.d);
    var var_1 = Struct_5(vec2<u32>((u_input.a | (u_input.a ^ 0u)) & ~(~4294967295u), global0.a.x & (_wgslsmith_div_u32(u_input.a, arg_2.b.x) & abs(27916u))), global0.b, vec2<bool>(true, !(global0.c.x & true)), arg_2.a, arg_1.e);
    var var_2 = !(!global0.d.c.yz);
    var_0 = _wgslsmith_f_op_f32(max(arg_1.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -600f)));
    return _wgslsmith_dot_vec3_u32(~arg_2.b, ~vec3<u32>(arg_2.b.x, ~32729u, ~0u));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = arg_0.x != func_3(-10063i, Struct_2(vec3<i32>(u_input.b.x, ~u_input.b.x, u_input.b.x), select(!global0.d.c, select(vec4<bool>(global0.e.e, true, global0.b.x, true), global0.d.c, global0.c.x), arg_0.x > global0.a.x), vec3<i32>(u_input.b.x, -33366i, 1i), Struct_1(_wgslsmith_f_op_vec4_f32(round(global0.d.a)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.d.a.x, 391f), global0.d.b), !vec4<bool>(global0.b.x, global0.b.x, false, false), all(global0.c), global0.b.x), global0.d), Struct_3(Struct_1(global0.d.a, _wgslsmith_f_op_vec2_f32(-global0.e.b), vec4<bool>(false, global0.b.x, global0.c.x, global0.e.e), true, !global0.b.x), reverseBits(vec3<u32>(u_input.a, u_input.a, 0u))));
    var var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_0.x, 26720u), 1u, 1u, max(~arg_0.x, 0u)), ~(~vec4<u32>(0u, 0u, 17773u, 1u)));
    var_1 = ~select(firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(24018u, u_input.a, 45359u, arg_0.x), vec4<u32>(u_input.a, u_input.a, 4294967295u, 22496u))), (vec4<u32>(arg_0.x, 84260u, 1u, var_1.x) | min(vec4<u32>(9600u, 4294967295u, arg_0.x, 1u), vec4<u32>(var_1.x, 0u, arg_0.x, 0u))) | ~(~vec4<u32>(58259u, u_input.a, 1u, global0.a.x)), global0.d.c);
    var var_2 = global0.d.c.wz;
    var_2 = select(!(!global0.d.c.zy), !(!select(!global0.e.c.zx, global0.b.xy, select(vec2<bool>(global0.e.d, false), global0.b.yz, global0.c))), vec2<bool>(false, any(!select(vec4<bool>(global0.e.c.x, global0.c.x, true, false), vec4<bool>(false, global0.b.x, true, false), var_2.x))));
    return Struct_2(-vec3<i32>(~(-19878i), u_input.b.x, countOneBits(-u_input.b.x)), !(!global0.e.c), vec3<i32>(u_input.b.x, u_input.b.x, firstTrailingBit(24969i)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(1225f)), global0.d.a.x, global0.d.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1350f + global0.e.b.x), 1403f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(771f, -953f))), global0.e.c, true, true), global0.e);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_4 {
    let var_0 = ~select(global0.a.x, _wgslsmith_mod_u32(~global0.a.x, ~(~16224u)), false);
    var var_1 = global0.d.a.yzx;
    global0 = Struct_5(~global0.a, select(vec3<bool>(abs(var_0) <= ~4294967295u, arg_0.d.c.x, all(!global0.e.c)), select(vec3<bool>(false, false, any(vec4<bool>(true, global0.e.c.x, false, true))), global0.b, vec3<bool>(false, false & arg_1, true)), select(global0.b, vec3<bool>(true, true, any(vec3<bool>(true, arg_0.d.e, arg_0.e.e))), select(vec3<bool>(arg_1, global0.c.x, true), select(vec3<bool>(global0.d.c.x, true, arg_0.e.e), global0.e.c.ywx, false), arg_0.e.c.yyw))), select(global0.c, !(!arg_0.d.c.xw), !(!arg_0.b.xx)), func_2(select(abs(max(vec2<u32>(85040u, 0u), global0.a)), global0.a, func_2(global0.a).e.d | (global0.e.b.x > 975f))).d, arg_0.d);
    var var_2 = arg_0.c.xy;
    var var_3 = func_2(vec2<u32>(~_wgslsmith_clamp_u32(var_0 << (global0.a.x % 32u), ~u_input.a, u_input.a ^ 1u), ~(firstTrailingBit(4294967295u) ^ 0u))).e;
    return Struct_4(arg_0.b, func_2(global0.a).d, ~global0.a, vec3<f32>(786f, _wgslsmith_f_op_f32(-global0.e.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.x, var_3.a.x)), _wgslsmith_f_op_f32(step(var_1.x, 829f))))))), !var_3.c.xww);
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = func_4(func_2(global0.a), all(!global0.d.c));
    var var_1 = vec4<bool>(func_2(global0.a << (_wgslsmith_clamp_vec2_u32(global0.a, vec2<u32>(var_0.c.x, global0.a.x), _wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(u_input.a, 1u))) % vec2<u32>(32u))).d.e, firstTrailingBit(max(reverseBits(arg_1), 67934i)) > select(_wgslsmith_mult_i32(func_2(var_0.c).a.x, arg_1), _wgslsmith_clamp_i32(max(1i, arg_1), u_input.b.x >> (var_0.c.x % 32u), i32(-1i) * -29546i), (i32(-1i) * -1i) <= firstLeadingBit(u_input.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, global0.a.x), firstTrailingBit(22300u)), ~vec2<u32>(global0.a.x, 51234u)) < global0.a.x, true);
    var_1 = func_4(func_2((vec2<u32>(global0.a.x, var_0.c.x) ^ global0.a) << (var_0.c % vec2<u32>(32u))), !all(func_4(func_2(vec2<u32>(var_0.c.x, u_input.a)), true).a)).a;
    var var_2 = func_4(func_2(vec2<u32>(~var_0.c.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, var_0.c.x, global0.a.x), ~40355u))), func_4(func_2(max(var_0.c, vec2<u32>(global0.a.x, 1u))), all(select(var_0.b.c, vec4<bool>(false, true, global0.d.e, false), arg_0)) & func_2(var_0.c).b.x).a.x);
    let var_3 = vec4<bool>(false, true, true, true);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.b.a)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(697f, global0.d.a.x, var_2.d.x, 1590f) * vec4<f32>(var_2.b.b.x, 1000f, 698f, -1048f)), vec4<f32>(var_2.b.a.x, var_2.d.x, 532f, global0.e.a.x)))))), func_2(_wgslsmith_mult_vec2_u32(var_0.c, var_2.c)).d.b, !var_3, any(!vec3<bool>(!arg_0, func_4(Struct_2(vec3<i32>(-2147483647i, 0i, u_input.b.x), vec4<bool>(false, false, true, false), vec3<i32>(35960i, u_input.b.x, 2147483647i), global0.d, global0.e), var_1.x).e.x, var_2.c.x != var_2.c.x)), !(!all(vec4<bool>(global0.c.x, true, true, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, ~55000i);
    var var_1 = select(false, any(var_0.c.yx), !global0.b.x);
    global1 = global0.c.x;
    let var_2 = global0.d;
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, func_2(abs(global0.a)).c.x | -_wgslsmith_div_i32(u_input.b.x, 26155i), -1533i, u_input.b.x), ~_wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(-26688i, -20662i, u_input.b.x, u_input.b.x)), firstLeadingBit(min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i), vec4<i32>(-14209i, u_input.b.x, u_input.b.x, -18025i)))));
    let var_4 = global0.e.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(-2592f)), 899f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, 752f) * vec2<f32>(2244f, -127f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.zz) * var_2.a.zw)), var_2.c.wx)));
}

