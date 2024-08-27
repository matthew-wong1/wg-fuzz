struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global0 = Struct_4(all(vec3<bool>(!(!global0.d.d.x), true & !global0.b.e.d.x, !global0.b.b.x & global0.a)), global0.b, global0.c, Struct_1(2147483647i, countOneBits(global0.d.b), _wgslsmith_sub_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(~global0.d.c, ~u_input.a)), vec4<bool>(false, true, global0.b.b.x, global0.b.e.a != countOneBits(-26489i)), global0.b.c), global0.e);
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, 27820u, 0u), vec4<u32>(u_input.a.x, global0.b.a.c.x, 4294967295u, 26118u)) & vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u, ~global0.d.c.x, global0.e.a.c.x), ~vec4<u32>(_wgslsmith_div_u32(global0.e.a.c.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 14159u, 6348u), vec4<u32>(global0.e.a.c.x, global0.e.a.c.x, global0.d.c.x, 25775u)), abs(global0.d.c.x), countOneBits(global0.d.c.x))), ~min(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, global0.d.c.x, u_input.a.x), vec4<u32>(global0.d.c.x, 4294967295u, 18751u, global0.b.d))), select(_wgslsmith_div_vec4_u32(vec4<u32>(104u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(4835u, global0.d.c.x, u_input.a.x, u_input.a.x)), vec4<u32>(14805u, 4294967295u, global0.b.d, 98017u), !global0.a)));
    var var_1 = Struct_4(any(!select(global0.e.a.d.zzz, select(vec3<bool>(true, false, false), vec3<bool>(true, true, global0.b.a.d.x), global0.b.b.zyz), global0.e.a.d.wzx)), global0.b, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.d.e, global0.d.e))), 552f, _wgslsmith_f_op_f32(select(-181f, _wgslsmith_f_op_f32(step(-763f, -1685f)), false))), Struct_1(_wgslsmith_clamp_i32(global0.d.a, 0i, global0.b.e.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(global0.b.a.b.x, global0.b.a.a) ^ global0.e.a.b, global0.d.b), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(1u, u_input.a.x), u_input.a.x), reverseBits(~u_input.a)), !(!global0.e.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(746f, -1621f)) + global0.b.c))), Struct_3(global0.b.a, global0.e.b >> (global0.e.a.c.x % 32u)));
    var_1 = Struct_4(var_1.e.a.d.x, Struct_2(Struct_1(abs(var_1.b.e.a), abs(vec2<i32>(19712i, -66582i)), u_input.a, vec4<bool>(var_1.d.d.x, true, global0.b.a.d.x || var_1.a, global0.a), -1088f), vec4<bool>(all(global0.b.a.d.zxw), true, _wgslsmith_f_op_f32(-522f * global0.c.x) == -1083f, global0.b.a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.a.e - 143f)), u_input.a.x, Struct_1(_wgslsmith_clamp_i32(~var_1.d.a, 42740i, var_1.b.e.b.x & 4037i), abs(vec2<i32>(var_1.e.b, var_1.d.a)) | firstLeadingBit(global0.e.a.b), u_input.a, select(!vec4<bool>(false, global0.d.d.x, true, false), !var_1.e.a.d, !vec4<bool>(false, var_1.b.a.d.x, false, false)), _wgslsmith_f_op_f32(max(683f, -424f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(538f, _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(-var_1.d.e)), _wgslsmith_f_op_f32(trunc(var_1.c.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.c.x, -1781f))), Struct_1(~var_1.e.b, vec2<i32>(_wgslsmith_mult_i32(global0.d.a, ~45642i), ~global0.b.a.a), _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(939u, var_1.d.c.x), global0.b.a.c, true), _wgslsmith_mult_vec2_u32(~global0.d.c, reverseBits(global0.d.c)), ~vec2<u32>(u_input.a.x, global0.e.a.c.x)), select(!select(vec4<bool>(false, true, var_1.e.a.d.x, false), var_1.d.d, var_1.e.a.d.x), select(var_1.b.a.d, vec4<bool>(false, var_1.a, false, true), var_1.d.a != 6360i), global0.b.e.d), _wgslsmith_f_op_f32(step(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.c * var_1.b.c) * _wgslsmith_f_op_f32(select(var_1.b.a.e, 1635f, true)))))), Struct_3(Struct_1(~1i, ~global0.b.e.b, ~vec2<u32>(u_input.a.x, 62504u), vec4<bool>(true, all(vec3<bool>(false, var_1.e.a.d.x, true)), true, global0.b.a.d.x && false), _wgslsmith_f_op_f32(-var_1.b.c)), -2147483647i));
    var var_2 = -countOneBits(~(-(~0i)));
    return vec2<u32>(abs(10889u), u_input.a.x);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> vec3<u32> {
    global0 = Struct_4(global0.d.d.x && all(!(!global0.d.d)), Struct_2(Struct_1(_wgslsmith_div_i32(-2147483647i, 648i), select(arg_1.yx, vec2<i32>(22765i, global0.e.a.b.x), select(global0.d.d.zy, arg_2.b.zw, true)), ~func_3(), !vec4<bool>(global0.b.e.d.x, arg_2.e.d.x, arg_2.b.x, global0.d.d.x), -237f), arg_2.a.d, -1787f, ~(~arg_2.d) << (func_3().x % 32u), global0.e.a), vec3<f32>(-1218f, _wgslsmith_f_op_f32(-arg_0), arg_0), Struct_1(firstTrailingBit(~_wgslsmith_dot_vec3_i32(arg_1, arg_1)), ~vec2<i32>(global0.d.b.x, arg_2.e.a) << (vec2<u32>(~global0.b.e.c.x, countOneBits(4294967295u)) % vec2<u32>(32u)), vec2<u32>(select(4294967295u, 0u, false) | ~1u, firstLeadingBit(1u)), select(select(global0.b.e.d, select(vec4<bool>(arg_2.a.d.x, arg_2.e.d.x, true, arg_2.a.d.x), arg_2.a.d, global0.d.d.x), true), global0.d.d, select(!arg_2.e.d, !vec4<bool>(global0.b.a.d.x, false, true, global0.b.b.x), !global0.b.b)), -952f), global0.e);
    let var_0 = Struct_2(Struct_1(~(~(i32(-1i) * -1i)), abs(_wgslsmith_div_vec2_i32(-vec2<i32>(1i, 48194i), _wgslsmith_mult_vec2_i32(global0.b.a.b, global0.d.b))), select(~global0.b.a.c, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.e.c, vec2<u32>(39653u, 1u)), vec2<u32>(21456u, 6773u)), vec2<bool>(true, true)), !select(!vec4<bool>(arg_2.a.d.x, arg_2.e.d.x, false, arg_2.e.d.x), !vec4<bool>(true, false, global0.b.b.x, false), arg_2.e.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1551f)))), global0.b.a.d, -359f, _wgslsmith_mod_u32(global0.b.e.c.x, max(0u, 0u)), global0.e.a);
    let var_1 = Struct_2(global0.d, !(!(!select(vec4<bool>(true, true, var_0.e.d.x, global0.d.d.x), vec4<bool>(arg_2.b.x, true, false, global0.a), vec4<bool>(global0.a, arg_2.a.d.x, arg_2.e.d.x, var_0.a.d.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(178f * 1095f), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(abs(382f))))), select(var_0.a.c.x, ~var_0.a.c.x, true), arg_2.e);
    let var_2 = Struct_2(Struct_1(2147483647i, select(arg_1.yy, arg_2.e.b, var_1.e.d.yx), func_3(), !select(vec4<bool>(arg_2.e.d.x, false, true, true), var_1.a.d, any(vec4<bool>(arg_2.a.d.x, var_1.e.d.x, false, arg_2.e.d.x))), global0.e.a.e), vec4<bool>(false, false, true, all(!select(vec2<bool>(true, true), var_1.e.d.zy, vec2<bool>(global0.d.d.x, var_1.a.d.x)))), var_1.a.e, var_1.d, arg_2.e);
    let var_3 = global0.e;
    return ~countOneBits(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(arg_2.d, 54954u)), _wgslsmith_mod_u32(u_input.a.x, 9965u), var_2.a.c.x));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(~(-2147483647i ^ _wgslsmith_div_i32(-32726i, global0.e.a.a)), _wgslsmith_add_i32(i32(-1i) * -global0.e.b, 21762i & _wgslsmith_div_i32(global0.e.a.b.x, global0.d.a))), global0.b.a.a, _wgslsmith_sub_i32(-global0.e.a.b.x, 2147483647i));
    var_0 = ~(~vec3<i32>(2147483647i, ~global0.d.a, 1i)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, ~global0.b.d, _wgslsmith_add_u32(24526u, 23584u)), ~(~func_2(global0.b.e.e, vec3<i32>(2147483647i, global0.d.b.x, -2147483647i), global0.b))) % vec3<u32>(32u));
    var var_1 = reverseBits(vec2<i32>(~(~global0.e.b), i32(-1i) * -max(var_0.x, 791i)));
    var var_2 = vec2<bool>(_wgslsmith_div_u32(firstTrailingBit(arg_1.x | 9177u), 0u) > _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(26882u, global0.d.c.x), arg_1), global0.e.a.c)), !(arg_0 || any(global0.b.e.d)) & false);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.c.zz), _wgslsmith_f_op_vec2_f32(-global0.c.xx)))));
    return Struct_4(false, global0.b, global0.c, global0.b.a, Struct_3(Struct_1(-var_0.x >> (_wgslsmith_add_u32(0u, arg_1.x) % 32u), _wgslsmith_div_vec2_i32(var_0.yx ^ var_0.xy, global0.d.b), arg_1, global0.b.a.d, _wgslsmith_div_f32(_wgslsmith_div_f32(-290f, 241f), _wgslsmith_f_op_f32(-var_3.x))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_0.x, 2147483647i), vec4<i32>(0i, var_0.x, 2147483647i, global0.b.e.a)) | var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(false, u_input.a);
    let var_0 = !(!vec4<bool>(false, !global0.b.a.d.x, !(global0.b.e.c.x > 51605u), false));
    global0 = func_1(true, global0.d.c);
    let var_1 = global0.e;
    let var_2 = Struct_2(global0.d, select(vec4<bool>(all(var_0), all(vec4<bool>(false, true, true, false)), true | (global0.d.b.x != -2147483647i), !var_0.x), !global0.e.a.d, true), -2675f, ~abs((u_input.a.x >> (31674u % 32u)) ^ u_input.a.x), global0.d);
    let var_3 = -321f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(609f - 1083f) + _wgslsmith_f_op_f32(-global0.e.a.e)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-932f)), -226f)), _wgslsmith_f_op_f32(func_1(true, vec2<u32>(u_input.a.x, 73411u)).b.c - -345f), var_1.a.e)));
}

