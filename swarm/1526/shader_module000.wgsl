struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec3<bool>(true, false, false)));

var<private> global3: vec3<i32> = vec3<i32>(-25302i, 15883i, 40089i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(322f * arg_0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(round(global1.x)))));
    var var_1 = global2.a.a.x;
    var var_2 = global2.a;
    let var_3 = Struct_4(max(vec4<u32>(arg_1, u_input.a.x, arg_1, abs(~u_input.b.x)), ((vec4<u32>(0u, arg_1, 2315u, u_input.c) << (u_input.a % vec4<u32>(32u))) ^ u_input.b) ^ ~(~u_input.a)), u_input.a.xw, Struct_3(Struct_2(!select(global2.a.a, global2.a.a, vec3<bool>(var_2.a.x, true, true)))), global2.a, select(var_2.a.x, global2.a.a.x, global2.a.a.x));
    var var_4 = vec4<bool>(!(!select(true, false, 1u > u_input.c)), !var_2.a.x, select(var_3.e, true, !var_2.a.x), true);
    return ~4294967295u ^ _wgslsmith_div_u32(arg_1 | max(6399u, arg_1), ~_wgslsmith_mult_u32(~13195u, arg_1));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(u_input.a & u_input.b, vec2<u32>(~_wgslsmith_sub_u32(u_input.c ^ u_input.c, abs(4294967295u)), func_3(_wgslsmith_f_op_f32(-global1.x), u_input.c, global3.x)), Struct_3(Struct_2(global2.a.a)), Struct_2(select(global2.a.a, !(!global2.a.a), select(vec3<bool>(false, global2.a.a.x, global2.a.a.x), global2.a.a, all(vec3<bool>(true, false, true))))), any(select(!global2.a.a.yy, !(!vec2<bool>(global2.a.a.x, global2.a.a.x)), vec2<bool>(global2.a.a.x, -2983f > global1.x))));
    var var_1 = var_0.c;
    var var_2 = Struct_4(min(~firstLeadingBit(min(var_0.a, u_input.a)), vec4<u32>(_wgslsmith_div_u32(~1u, ~19264u), ~33270u, var_0.a.x, abs(u_input.c))), u_input.a.xx, Struct_3(Struct_2(vec3<bool>(true, var_0.d.a.x, all(var_0.d.a)))), Struct_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.d.a.x, true, var_1.a.a.x), vec3<bool>(false, false, false), vec3<bool>(var_0.e, global2.a.a.x, false)), var_0.c.a.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -280f))) == global1.x);
    var var_3 = all(!vec3<bool>(any(vec3<bool>(true, false, true)), true | (-1000f < global1.x), global2.a.a.x));
    let var_4 = !global2.a.a.x;
    return Struct_3(Struct_2(select(!(!var_0.d.a), !var_2.d.a, vec3<bool>(!var_2.d.a.x, true, false))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = Struct_5(arg_0.b.x > arg_0.b.x, vec4<i32>(~(1i | global3.x) >> (~firstTrailingBit(32880u) % 32u), -6848i, -11550i, 2633i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -438f) * _wgslsmith_f_op_f32(trunc(global1.x))), vec4<u32>(u_input.a.x, u_input.c, 79796u, reverseBits(0u ^ arg_0.a.x) >> (40247u % 32u)));
    let var_1 = var_0.b | select(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, 0i) & vec4<i32>(-2147483647i, global3.x, 26708i, var_0.b.x), vec4<i32>(_wgslsmith_add_i32(global3.x, 27425i), -55130i, select(45550i, 2147483647i, true), global3.x | -18564i)), var_0.b, !(true || global2.a.a.x));
    var var_2 = -1241f;
    let var_3 = global2.a.a;
    var var_4 = countOneBits(vec4<u32>(1u, 0u, 1u, select(arg_0.b.x, ~u_input.c, !(!var_0.a))));
    return Struct_1(func_2().a.a.zx, reverseBits(vec2<i32>(~global3.x, 1i)), _wgslsmith_f_op_f32(-var_0.c));
}

fn func_1() -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1212f, global1.x) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, 2024f)))))), vec2<f32>(_wgslsmith_f_op_f32(-511f + _wgslsmith_f_op_f32(round(341f))), -390f)))));
    global0 = min(global3.x, -36891i);
    var var_0 = func_4(Struct_4(~vec4<u32>(abs(u_input.b.x), u_input.a.x, ~4294967295u, ~u_input.a.x), _wgslsmith_mult_vec2_u32(select(u_input.a.xy, vec2<u32>(u_input.c, 6565u), false), _wgslsmith_sub_vec2_u32(u_input.a.wx, vec2<u32>(u_input.a.x, 0u))) << (u_input.b.xz % vec2<u32>(32u)), func_2(), global2.a, global2.a.a.x));
    let var_1 = Struct_1(vec2<bool>(var_0.a.x, true), countOneBits(abs(select(vec2<i32>(global3.x, global3.x), vec2<i32>(var_0.b.x, global3.x), select(vec2<bool>(global2.a.a.x, var_0.a.x), var_0.a, false)))), -1712f);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(427f, var_0.c, var_0.a.x))))))));
    return -63686i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<bool>(all(vec3<bool>(any(vec3<bool>(global2.a.a.x, global2.a.a.x, global2.a.a.x)), -1727f != global1.x, global2.a.a.x)), !global2.a.a.x, true));
    var var_1 = countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(global3.xx, global3.zz, global3.zy), global3.yx));
    let var_2 = ~_wgslsmith_mult_u32(max(4294967295u, 4294967295u), u_input.c) & 26966u;
    var var_3 = ~countOneBits(var_1.x);
    global3 = vec3<i32>(_wgslsmith_mod_i32(-global3.x, global3.x), _wgslsmith_sub_i32(-60882i, ~var_1.x), 2147483647i);
    let var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 87327u) & u_input.a.zw, vec2<u32>(88816u, var_2))), u_input.b.yw);
    let x = u_input.a;
    s_output = StorageBuffer(-(func_1() << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 33486u, 4294967295u), ~vec4<u32>(4294967295u, var_2, 36568u, 21485u)) % 32u)), var_4.x);
}

