struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3>;

var<private> global1: f32;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> bool {
    var var_0 = any(!vec4<bool>(_wgslsmith_clamp_i32(u_input.a.x, -2952i, u_input.a.x) != _wgslsmith_div_i32(0i, u_input.a.x), true, all(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), (u_input.a.x & 1i) > u_input.a.x));
    global2 = !vec4<bool>(global2.x, false, true, true);
    let var_1 = select(vec4<bool>(!(!global2.x), (28328u & (4294967295u ^ u_input.c.x)) <= min(0u, 1586u), true, all(vec2<bool>(all(vec4<bool>(true, global2.x, false, global2.x)), true))), select(select(vec4<bool>(true, all(vec3<bool>(false, global2.x, false)), true, true && global2.x), select(select(vec4<bool>(true, false, false, global2.x), vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, false, true, false)), select(vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(true, false, global2.x, global2.x)), !global2.x), !(!vec4<bool>(global2.x, true, false, false))), select(select(select(vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(global2.x, true, false, global2.x)), select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, false, false, global2.x)), !global2.x), vec4<bool>(true, global2.x, !global2.x, 1i > u_input.a.x), vec4<bool>(!global2.x, true, false, all(vec4<bool>(false, global2.x, global2.x, global2.x)))), false), true);
    var var_2 = Struct_2(Struct_1(49752u, vec2<bool>(_wgslsmith_f_op_f32(trunc(355f)) != _wgslsmith_f_op_f32(-308f + 118f), false), vec2<bool>(any(vec4<bool>(var_1.x, var_1.x, true, global2.x)), global2.x)), Struct_1(~(~_wgslsmith_dot_vec3_u32(u_input.c.ywx, u_input.b)), var_1.yz, !global2.wx), select(select(vec3<bool>(false && var_1.x, global2.x, select(true, true, true)), select(var_1.xyz, vec3<bool>(global2.x, var_1.x, false), select(vec3<bool>(var_1.x, var_1.x, var_1.x), global2.wzz, global2.x)), !any(vec4<bool>(global2.x, true, global2.x, var_1.x))), select(vec3<bool>(true, !global2.x, all(var_1)), !select(global2.yzz, var_1.yyx, true), select(select(var_1.xzw, vec3<bool>(false, true, true), true), select(var_1.zzx, global2.xwz, var_1.wxy), true)), -_wgslsmith_add_i32(13258i, u_input.a.x) > -(-1i << (u_input.b.x % 32u))), 1f, vec2<bool>(any(!(!vec3<bool>(var_1.x, true, false))), all(var_1)));
    var var_3 = _wgslsmith_clamp_u32(1u, abs(~_wgslsmith_div_u32(1u, ~var_2.b.a)), 1u & ~countOneBits(u_input.c.x));
    return var_1.x;
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_5 {
    global0 = array<vec3<f32>, 3>();
    var var_0 = Struct_2(Struct_1(23602u ^ (u_input.b.x >> (~u_input.b.x % 32u)), vec2<bool>(!func_3(), false), select(vec2<bool>(global2.x, true), vec2<bool>(arg_0, any(vec4<bool>(true, arg_0, false, arg_0))), select(!global2.ww, vec2<bool>(false, true), select(global2.wx, global2.yz, global2.zw)))), Struct_1(39275u, !(!(!global2.zw)), vec2<bool>(global2.x, true)), vec3<bool>(true, arg_0, global2.x), _wgslsmith_f_op_f32(-arg_1.c), !global2.xy);
    global1 = 1820f;
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.a.x), abs(~(~0i)), 1i), u_input.a.x);
    let var_2 = Struct_1(countOneBits(~(~_wgslsmith_mult_u32(1u, u_input.c.x))), select(!(!vec2<bool>(arg_0, global2.x)), vec2<bool>(all(vec3<bool>(arg_0, arg_0, true)), all(vec2<bool>(global2.x, false))), var_0.e), vec2<bool>(arg_0, false));
    return Struct_5(var_0.b.a, vec2<bool>(true, any(global2.xxy)), vec3<f32>(310f, arg_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d + -784f), var_0.d)), _wgslsmith_f_op_f32(328f + -1589f))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = func_2(global2.x | true, Struct_4(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, u_input.a.x << (u_input.b.x % 32u)), _wgslsmith_mult_i32(u_input.a.x, 0i) >> (~0u % 32u)), vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a.x), 12319i, ~min(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -308f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1412f * -272f), -2022f)), u_input.a.yz));
    global2 = select(!vec4<bool>(var_0.b.x, func_2(true, Struct_4(-12696i, u_input.a, var_0.c.x, u_input.a.xy)).c.x >= _wgslsmith_f_op_f32(-var_0.c.x), true, any(vec4<bool>(true, global2.x, arg_0.c.x, arg_0.c.x))), !select(vec4<bool>(!arg_0.b.x, true, all(vec4<bool>(global2.x, true, var_0.b.x, var_0.b.x)), all(vec2<bool>(var_0.b.x, true))), vec4<bool>(global2.x, u_input.c.x >= var_0.a, !var_0.b.x, global2.x | false), vec4<bool>(true, var_0.c.x < var_0.c.x, false, false)), vec4<bool>(all(!select(global2.ywx, global2.yww, false)), arg_0.b.x, false, !var_0.b.x));
    let var_1 = Struct_3(u_input.c, 1i, _wgslsmith_mod_vec2_i32(reverseBits(~vec2<i32>(u_input.a.x, 13021i)), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(29302i, u_input.a.x)), u_input.a.yy, -vec2<i32>(u_input.a.x, u_input.a.x))) | u_input.a.yy, vec3<u32>(arg_0.a, abs(~u_input.c.x), u_input.c.x ^ firstLeadingBit(~26922u)));
    var var_2 = Struct_1(0u, !select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(true, global2.x, true, true))), select(func_2(var_0.b.x, Struct_4(u_input.a.x, u_input.a, var_0.c.x, u_input.a.xy)).b, global2.yy, global2.x)), vec2<bool>(!var_0.b.x, false));
    var var_3 = !(!(!vec4<bool>(true, var_0.b.x, arg_0.b.x & arg_0.b.x, all(global2.xzw))));
    return !global2.zx;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> Struct_5 {
    global1 = _wgslsmith_f_op_f32(step(arg_2, arg_2));
    global0 = array<vec3<f32>, 3>();
    global0 = array<vec3<f32>, 3>();
    var var_0 = arg_3.a;
    global1 = -476f;
    return func_2(arg_0.b.b.x, Struct_4(-(~(u_input.a.x | u_input.a.x)), u_input.a, -1000f, ~vec2<i32>(~u_input.a.x, ~(-3095i))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_5) -> Struct_1 {
    let var_0 = ~(_wgslsmith_add_vec3_u32(~vec3<u32>(55707u, 78119u, arg_0.x), countOneBits(~vec3<u32>(67267u, 11494u, 32630u))) & vec3<u32>(0u, 1u, 1u));
    let var_1 = Struct_4(-1394i, -_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-9281i, u_input.a.x, -1i) ^ u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<i32>(u_input.a.x | 2147483647i, -2147483647i, ~50714i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1.c.x)))), u_input.a.zy);
    global2 = vec4<bool>(false, global2.x, true, false || all(vec3<bool>(var_1.a <= 2147483647i, true, false)));
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_div_f32(-274f, -1501f)), -160f), arg_1.c.x);
    let var_2 = true;
    return Struct_1(0u, vec2<bool>(all(vec2<bool>(arg_1.b.x, arg_1.b.x)), true), vec2<bool>(true, func_4(Struct_2(Struct_1(arg_0.x, vec2<bool>(global2.x, false), vec2<bool>(true, global2.x)), Struct_1(var_0.x, vec2<bool>(true, false), vec2<bool>(arg_1.b.x, var_2)), vec3<bool>(global2.x, global2.x, true), 501f, arg_1.b), select(select(vec4<bool>(true, arg_1.b.x, arg_1.b.x, false), vec4<bool>(false, true, arg_1.b.x, var_2), vec4<bool>(false, false, var_2, var_2)), select(vec4<bool>(var_2, global2.x, true, global2.x), vec4<bool>(false, false, global2.x, var_2), true), var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c))), Struct_2(Struct_1(20341u, vec2<bool>(global2.x, true), arg_1.b), Struct_1(var_0.x, vec2<bool>(true, true), vec2<bool>(arg_1.b.x, global2.x)), vec3<bool>(arg_1.b.x, false, true), _wgslsmith_f_op_f32(trunc(arg_1.c.x)), !global2.xw)).b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(17692u, ~u_input.b.x), u_input.b.x, reverseBits(u_input.b.x & 12507u)), vec3<u32>(u_input.c.x, 63828u, _wgslsmith_div_u32(u_input.c.x, min(u_input.b.x, 23799u)))), func_4(Struct_2(Struct_1(u_input.b.x, func_1(Struct_1(15611u, vec2<bool>(global2.x, true), vec2<bool>(true, global2.x))), global2.zw), Struct_1(countOneBits(u_input.c.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x)), vec3<bool>(!global2.x, true, all(global2.wyw)), _wgslsmith_f_op_f32(round(446f)), select(global2.xz, vec2<bool>(true, true), any(global2.zyx))), !(!(!vec4<bool>(global2.x, false, global2.x, global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(885f - _wgslsmith_f_op_f32(step(-1423f, 557f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1878f * -832f), _wgslsmith_f_op_f32(step(176f, -867f))))), Struct_2(Struct_1(~6194u, !vec2<bool>(global2.x, global2.x), vec2<bool>(true, global2.x)), Struct_1(~1u, global2.yz, func_2(global2.x, Struct_4(u_input.a.x, u_input.a, 196f, u_input.a.zx)).b), vec3<bool>(global2.x || false, u_input.b.x > u_input.b.x, all(vec4<bool>(global2.x, global2.x, global2.x, global2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1428f - 522f), 180f)), !vec2<bool>(true, global2.x))));
    let var_1 = u_input.a.x >> ((85019u & var_0.a) % 32u);
    var var_2 = -639f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1529f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-609f + -667f))))));
}

