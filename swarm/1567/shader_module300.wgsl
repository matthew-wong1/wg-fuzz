struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global1 = vec4<bool>(!any(select(!global0.e, vec2<bool>(false, global1.x), true)), all(select(!select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, true, global0.e.x, global1.x), vec4<bool>(false, global0.e.x, global0.c, true)), select(vec4<bool>(false, global0.e.x, global0.c, false), vec4<bool>(false, false, global0.c, false), !global0.c), true)), select(false, true, false), all(!(!(!vec4<bool>(false, global0.c, false, global0.c)))));
    global0 = Struct_1(0u, -1030f, _wgslsmith_dot_vec3_u32(u_input.c.yyx, u_input.c.xwx) != _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.c.x, 4294967295u), vec3<u32>(u_input.a.x, global0.a, global0.a)) | (global0.a | 0u), ~global0.a & u_input.a.x), _wgslsmith_mult_vec4_i32(min(reverseBits(_wgslsmith_clamp_vec4_i32(global0.d, vec4<i32>(39388i, 67866i, -254i, -21743i), vec4<i32>(-2147483647i, 1i, u_input.e, 9225i))), vec4<i32>(-global0.d.x, abs(u_input.e), arg_0.x, global0.d.x)), vec4<i32>(arg_0.x, u_input.e, i32(-1i) * -1i, select(~arg_0.x, min(-2147483647i, u_input.e), global0.e.x))), select(select(!vec2<bool>(global0.c, true), vec2<bool>(true, true), global1.x || global0.e.x), global1.wy, !global0.e));
    let var_0 = Struct_4(-1390f, false, Struct_2(_wgslsmith_clamp_u32(global0.a, 1u, ~u_input.c.x & _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, u_input.b.x))), Struct_1(max(~u_input.b.x, 1u), _wgslsmith_f_op_f32(-global0.b), all(vec2<bool>(true, global1.x)) || !global1.x, max(vec4<i32>(u_input.d, 2147483647i, arg_0.x, global0.d.x) | vec4<i32>(-22818i, arg_0.x, u_input.d, 2147483647i), global0.d >> (vec4<u32>(1u, global0.a, u_input.b.x, 5479u) % vec4<u32>(32u))), vec2<bool>(false, false)), _wgslsmith_dot_vec4_u32(~vec4<u32>(6099u, 0u, u_input.c.x, global0.a), u_input.b) << (u_input.a.x % 32u), Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-329f, global0.b))), !global0.e.x || true, ~global0.d, !(!global0.e))), Struct_1(u_input.c.x, -405f, all(!(!vec4<bool>(false, false, false, global0.e.x))), vec4<i32>(-1i) * -global0.d, global1.wy), Struct_3(~9735u, Struct_1(max(_wgslsmith_mult_u32(12023u, 82490u), 4294967295u), _wgslsmith_f_op_f32(-1074f * global0.b), global1.x, max(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -35298i, 0i, u_input.e), global0.d), _wgslsmith_add_vec4_i32(global0.d, global0.d)), select(global1.xz, select(global0.e, vec2<bool>(true, true), false), true)), Struct_1(~global0.a & global0.a, global0.b, !(global1.x | global1.x), vec4<i32>(~global0.d.x, _wgslsmith_div_i32(-2147483647i, 1i), ~(-1i), reverseBits(arg_0.x)), !global1.zy)));
    global1 = select(select(!(!select(vec4<bool>(global0.c, global1.x, true, true), vec4<bool>(false, var_0.e.b.e.x, global1.x, global1.x), vec4<bool>(var_0.e.b.c, global1.x, global1.x, true))), vec4<bool>(true, global1.x, !(global0.c | false), global0.e.x), !select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global0.e.x, true, true, false), true)), !(!select(vec4<bool>(true, global0.c, true, global1.x), vec4<bool>(global1.x, false, global0.e.x, true), select(vec4<bool>(global1.x, false, true, true), vec4<bool>(false, global1.x, global0.c, global1.x), var_0.b))), select(vec4<bool>(var_0.d.c && select(true, global1.x, false), global0.e.x, global0.c, true), vec4<bool>(!(true & global1.x), var_0.d.c, global0.e.x, arg_0.x > min(u_input.d, global0.d.x)), global1.x));
    let var_1 = global1.wx;
    return any(vec4<bool>(select(global0.c, !(var_0.e.b.b <= var_0.e.b.b), false), all(select(!vec2<bool>(global0.e.x, var_0.b), !vec2<bool>(false, var_1.x), !global1.x)), select(true, global0.e.x, !(!global1.x)), global0.c));
}

fn func_2() -> vec3<u32> {
    global0 = Struct_1(firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f - global0.b)))))), true, global0.d, select(select(!select(vec2<bool>(global0.c, true), global1.yy, global0.e.x), global1.yy, global0.e), select(vec2<bool>(func_3(global0.d.yxw), true), vec2<bool>(true, any(global1.zy)), false), global1.x));
    var var_0 = global0.a >> (countOneBits(global0.a) % 32u);
    global0 = Struct_1(u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b + global0.b), 1369f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1600f))) * _wgslsmith_f_op_f32(abs(-1946f)))), true, global0.d >> (select(~countOneBits(u_input.c), vec4<u32>(4343u | global0.a, 1u, ~global0.a, ~36319u), true) % vec4<u32>(32u)), vec2<bool>(true, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, 43270u), select(u_input.b.x, 0u, global1.x)) <= ~(~43245u)));
    var_0 = 110285u;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(1674f - -1000f), any(!select(vec4<bool>(true, global0.c, true, global1.x), vec4<bool>(true, true, true, true), global1.x)), Struct_2(~(~(~u_input.b.x)), Struct_1(~30938u, _wgslsmith_f_op_f32(f32(-1f) * -967f), func_3(~vec3<i32>(2147483647i, u_input.d, 1i)), firstTrailingBit(vec4<i32>(global0.d.x, u_input.e, global0.d.x, 1i)), select(vec2<bool>(false, true), global0.e, all(vec2<bool>(false, global0.c)))), _wgslsmith_mod_u32(~global0.a, min(88826u, 0u)) ^ ~(~u_input.a.x), Struct_1(firstTrailingBit(firstTrailingBit(11594u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1105f)))), 10642u > _wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.yw), _wgslsmith_sub_vec4_i32(global0.d, firstLeadingBit(vec4<i32>(u_input.e, global0.d.x, 7025i, -5016i))), global1.xx)), Struct_1(_wgslsmith_dot_vec3_u32(u_input.b.xwy, select(_wgslsmith_add_vec3_u32(vec3<u32>(99893u, 21858u, 20474u), u_input.b.xyy), ~vec3<u32>(62262u, global0.a, 0u), !global1.yyw)), _wgslsmith_f_op_f32(-global0.b), true, global0.d, !vec2<bool>(!global1.x, global0.e.x)), Struct_3(0u, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a, 1u, global0.a), countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), global1.x, min(vec4<i32>(24905i, -42280i, 2147483647i, u_input.e) ^ global0.d, firstLeadingBit(vec4<i32>(u_input.e, 2147483647i, -2147483647i, -1i))), !(!global0.e)), Struct_1(u_input.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0.b)))), false, global0.d, !(!global1.wy))));
    return u_input.b.zww;
}

fn func_4(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(reverseBits(4294967295u), Struct_1(u_input.c.x, 282f, global0.e.x, global0.d, !vec2<bool>(global0.e.x && global1.x, false)), ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.yz, vec2<u32>(u_input.c.x, u_input.c.x)), vec2<u32>(4294967295u, arg_0.x))), Struct_1(~13224u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1025f))))), true, global0.d, vec2<bool>(false, global0.e.x)));
    let var_1 = 4294967295u;
    let var_2 = var_0.d.d.x;
    var var_3 = ~firstTrailingBit(var_0.b.d.yy);
    var var_4 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1 >= var_0.d.a, !global1.x, !var_0.b.c, true), global1.x), select(vec4<bool>(var_0.d.b != 246f, true, var_0.d.e.x, true), select(!vec4<bool>(global1.x, var_0.b.c, global1.x, global1.x), vec4<bool>(true, false, global0.e.x, true), !var_0.d.c), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.b.c, false, global1.x, global0.e.x), !global1.x)), all(select(!vec4<bool>(global1.x, true, global0.e.x, global1.x), !vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global0.c, var_0.b.c, false, global0.c))));
    return Struct_2(~0u, Struct_1(26255u, _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(round(-990f))), false, global0.d, !vec2<bool>(true, 23278u < var_0.a)), _wgslsmith_add_u32(u_input.a.x, max(u_input.a.x, global0.a)), Struct_1(35787u, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(745f, _wgslsmith_f_op_f32(f32(-1f) * -139f)))), global1.x, min(vec4<i32>(-1i) * -global0.d, _wgslsmith_add_vec4_i32(var_0.d.d, abs(vec4<i32>(global0.d.x, u_input.d, 0i, 0i)))), select(vec2<bool>(global0.c, u_input.a.x >= global0.a), select(select(vec2<bool>(var_0.b.c, true), var_0.b.e, var_4.x), !global0.e, true), false)));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = func_4(~func_2());
    global0 = Struct_1(global0.a, -1000f, any(!arg_1), vec4<i32>(abs((-12026i ^ u_input.e) & firstTrailingBit(2147483647i)), _wgslsmith_sub_i32(global0.d.x, -1i), 27391i, var_0.b.d.x), select(arg_1.xw, global1.xy, select(vec2<bool>(1i < var_0.b.d.x, arg_1.x), func_4(vec3<u32>(global0.a, u_input.c.x, 57534u) ^ vec3<u32>(global0.a, u_input.b.x, global0.a)).b.e, vec2<bool>(arg_0 || true, global1.x))));
    let var_1 = 0i;
    var var_2 = Struct_1(var_0.a, -1077f, false, _wgslsmith_sub_vec4_i32(vec4<i32>(~(var_0.b.d.x << (0u % 32u)), firstLeadingBit(_wgslsmith_mod_i32(1i, var_1)), -28615i, max(_wgslsmith_clamp_i32(-2147483647i, var_1, -22122i), _wgslsmith_sub_i32(0i, -2147483647i))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_1, u_input.d), var_0.d.d.x), -reverseBits(var_1), -2147483647i, _wgslsmith_mod_i32(var_0.b.d.x, var_1) << (14842u % 32u))), arg_1.yy);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(step(var_0.b.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b))))))), var_2.e.x, Struct_2(u_input.a.x, var_0.d, _wgslsmith_div_u32(u_input.c.x, 4294967295u), func_4(select(select(u_input.c.yzz, u_input.c.yzz, global1.x), u_input.b.wxw, select(global1.wyy, arg_1.yzy, arg_1.yxz))).b), var_0.b, Struct_3(3840u, Struct_1(23066u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(881f * var_0.b.b) * _wgslsmith_f_op_f32(-var_0.b.b)), !any(arg_1.xyz), global0.d & -global0.d, global0.e), var_0.d));
    return func_4(select(vec3<u32>(var_2.a, var_0.c, 1u), select(~vec3<u32>(67606u, 37031u, global0.a), u_input.c.yzx, select(global1.yzw, vec3<bool>(false, var_2.e.x, var_3.e.c.e.x), vec3<bool>(global0.e.x, true, false))), select(!vec3<bool>(var_3.e.c.c, arg_0, false), arg_1.wzx, arg_1.xzz)) << (reverseBits(vec3<u32>(var_2.a, global0.a | u_input.c.x, u_input.b.x | 23084u)) % vec3<u32>(32u))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    var var_1 = Struct_3(1u, func_1(-1i != global0.d.x, select(!vec4<bool>(true, global1.x, global0.e.x, global1.x), select(!vec4<bool>(global1.x, global1.x, global1.x, false), !vec4<bool>(global0.c, global1.x, false, false), vec4<bool>(true, global0.c, global1.x, global1.x)), !(!vec4<bool>(true, global1.x, false, false)))), Struct_1(_wgslsmith_add_u32(0u, global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + 772f))), global0.c, min(_wgslsmith_mult_vec4_i32(vec4<i32>(-8680i, 5821i, -35061i, 15341i), vec4<i32>(-45222i, global0.d.x, -1150i, global0.d.x)), select(vec4<i32>(20169i, global0.d.x, 2147483647i, 0i), global0.d, global1.x)) & ((vec4<i32>(global0.d.x, 2147483647i, 1i, 1i) >> (u_input.c % vec4<u32>(32u))) & vec4<i32>(1i, -2147483647i, global0.d.x, u_input.d)), select(vec2<bool>(false, false), func_4(u_input.a).d.e, global0.e.x)));
    var var_2 = var_1.b;
    let var_3 = func_4(firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.c.zyz, ~vec3<u32>(global0.a, 1u, var_1.b.a))));
    let var_4 = Struct_3(4294967295u, var_3.b, func_1(true, vec4<bool>(true, _wgslsmith_dot_vec3_u32(u_input.a, u_input.c.yyw) < ~0u, true, func_3(~var_2.d.zyz))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b, global0.b, global0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b, var_4.c.b, global0.b) - vec3<f32>(1676f, -1522f, var_1.b.b)))))), func_1(global1.x, !vec4<bool>(true, false, any(var_2.e), true)).b, _wgslsmith_f_op_f32(-func_1(!(global1.x == false), !select(vec4<bool>(var_3.d.e.x, var_1.b.e.x, true, var_4.c.c), vec4<bool>(false, global0.c, false, true), true)).b), func_1(any(global1.zzw), select(vec4<bool>(false | var_2.e.x, !var_2.e.x, var_3.d.c, false), !vec4<bool>(var_2.c, true, var_2.e.x, var_1.b.e.x), global0.e.x)).d.x, i32(-1i) * -2147483647i);
}

