struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, false), 0i, Struct_1(vec2<u32>(0u, 17264u), vec2<f32>(-1022f, -154f), 7746u, vec4<i32>(-8929i, 2147483647i, -47864i, -1i), vec4<f32>(818f, -838f, 1045f, 1000f)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    global0 = Struct_2(global0.a, ~(~30590i), global0.c);
    var var_0 = global0.c;
    var var_1 = arg_1;
    global0 = Struct_2(!vec2<bool>(true, !(!global0.a.x)), _wgslsmith_add_i32(var_0.d.x, -firstLeadingBit(u_input.b.x)), Struct_1(vec2<u32>(firstTrailingBit(~global0.c.a.x), global0.c.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-466f, var_0.e.x) * vec2<f32>(-988f, arg_1.x)), _wgslsmith_div_vec2_f32(var_1.yz, vec2<f32>(global0.c.e.x, arg_1.x))) * var_1.xx), 1u, max(_wgslsmith_mult_vec4_i32(var_0.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(-6583i, -2147483647i, -40930i, u_input.b.x), var_0.d, vec4<i32>(-2147483647i, 13763i, 23656i, u_input.b.x))), countOneBits(-var_0.d)), _wgslsmith_f_op_vec4_f32(var_0.e + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, 463f, var_0.e.x, global0.c.e.x))))));
    let var_2 = ~var_0.d.x;
    return Struct_2(global0.a, var_0.d.x, global0.c);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = func_2(reverseBits(60992u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(min(global0.c.e.x, 355f)))), _wgslsmith_f_op_f32(f32(-1f) * -901f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(981f, 1000f)))));
    global0 = var_0;
    let var_1 = var_0.c;
    let var_2 = firstLeadingBit(_wgslsmith_add_i32(1i | arg_0.d.x, firstLeadingBit(32903i)));
    global0 = var_0;
    return all(!func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 120040u, 4294967295u, 16129u), vec4<u32>(9978u, 34657u, arg_0.a.x, 7750u)), select(vec4<u32>(var_1.c, var_0.c.a.x, 23005u, global0.c.c), vec4<u32>(u_input.c.x, var_1.c, 4867u, global0.c.a.x), vec4<bool>(var_0.a.x, true, true, true))), global0.c.e.zzy).a);
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = func_2(u_input.a, global0.c.e.yyx).c;
    global0 = func_2(_wgslsmith_mult_u32(~(~_wgslsmith_sub_u32(67807u, global0.c.a.x)), abs(abs(var_0.a.x)) << (func_2(global0.c.c, var_0.e.yxz).c.a.x % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-452f, _wgslsmith_f_op_f32(min(var_0.e.x, var_0.e.x)), -180f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.e.x, global0.c.e.x, global0.c.e.x))), var_0.e.xxx));
    global0 = Struct_2(arg_0, ~(-(_wgslsmith_mod_i32(global0.b, u_input.b.x) & (global0.b ^ global0.b))), Struct_1(~select(vec2<u32>(1u, var_0.a.x), global0.c.a, global0.a.x) >> ((global0.c.a | firstTrailingBit(global0.c.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.b)) - vec2<f32>(var_0.b.x, -969f)))), _wgslsmith_div_u32(var_0.a.x, min(var_0.a.x ^ 4294967295u, _wgslsmith_div_u32(global0.c.c, 29767u))), global0.c.d, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(794f, _wgslsmith_f_op_f32(sign(-444f)), _wgslsmith_f_op_f32(floor(var_0.b.x)), -2717f), var_0.e))));
    let var_1 = func_2(~(~12194u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.e.x, -233f, -907f)) + _wgslsmith_f_op_vec3_f32(global0.c.e.ywz * var_0.e.xwz))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.c.e.yzy, vec3<f32>(var_0.b.x, -630f, global0.c.b.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.e.x, var_0.b.x, var_0.e.x) - var_0.e.yzy)) * vec3<f32>(-1125f, global0.c.e.x, 1f))));
    global0 = var_1;
    return vec3<bool>((~_wgslsmith_mod_u32(42501u, var_0.c) << (~(~480u) % 32u)) != func_2(reverseBits(24588u), vec3<f32>(global0.c.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1848f), _wgslsmith_f_op_f32(global0.c.e.x * var_1.c.e.x))).c.a.x, -select(-var_1.c.d.x, u_input.b.x, any(vec2<bool>(arg_0.x, arg_0.x))) > var_1.c.d.x, arg_0.x || any(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(vec2<bool>(func_1(global0.c, -15164i, _wgslsmith_f_op_f32(select(global0.c.b.x, global0.c.e.x, false))) || true, global0.a.x));
    let var_1 = vec4<i32>(~1i >> (u_input.c.x % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.c.d.x, u_input.b.x), func_2(u_input.c.x, global0.c.e.wwx).b), _wgslsmith_clamp_i32(0i, func_2(u_input.a, vec3<f32>(1595f, -2753f, global0.c.e.x)).c.d.x, 1079i)), ~(~_wgslsmith_sub_i32(global0.c.d.x, global0.c.d.x)), ~12121i) & vec4<i32>(~(~u_input.b.x) | abs(global0.c.d.x), _wgslsmith_div_i32(func_2(u_input.a, vec3<f32>(global0.c.b.x, global0.c.b.x, -703f)).c.d.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, 0i), vec2<i32>(u_input.b.x, 38564i))), u_input.b.x, firstTrailingBit(~(u_input.b.x & -2147483647i)));
    let var_2 = Struct_1(~u_input.c.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.c.e.ww)))))), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~1u) >> (global0.c.a % vec2<u32>(32u)), ~vec2<u32>(1u, 46909u)), global0.c.d, vec4<f32>(_wgslsmith_f_op_f32(step(1117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.e.x) * _wgslsmith_f_op_f32(1261f * -350f)))), global0.c.b.x, global0.c.e.x, global0.c.b.x));
    let var_3 = Struct_2(!func_3(func_2(select(global0.c.a.x, var_2.c, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1867f, 1000f, 622f) * global0.c.e.xxw)).a).yx, global0.b, Struct_1(vec2<u32>(~(~65252u), 0u), global0.c.b, ~global0.c.c, var_1, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, var_2.e.x, -1230f, -1634f)), _wgslsmith_f_op_vec4_f32(var_2.e * vec4<f32>(276f, global0.c.b.x, 956f, global0.c.e.x))))));
    var var_4 = var_3;
    var var_5 = 0i;
    var var_6 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(1u, 27927u, var_3.c.a.x) << (vec3<u32>(56847u, 57010u, 0u) % vec3<u32>(32u)))));
}

