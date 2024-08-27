struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1133f - _wgslsmith_f_op_f32(round(-657f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d + arg_0.b.b.x)))), 1000f));
    let var_1 = min(abs(vec4<i32>(abs(-arg_0.b.a.x), arg_0.b.a.x >> (arg_0.a.x % 32u), arg_0.b.a.x, ~u_input.a)), vec4<i32>(u_input.a, arg_0.b.a.x, -1i, (1i & _wgslsmith_mult_i32(u_input.d, u_input.d)) ^ _wgslsmith_mod_i32(-u_input.d, -arg_0.b.a.x)));
    var_0 = arg_0.c.wy;
    var_0 = arg_0.c.xz;
    let var_2 = vec4<bool>(true, all(select(!(!vec4<bool>(arg_0.b.d.x, arg_0.b.d.x, arg_0.b.d.x, arg_0.b.d.x)), vec4<bool>(arg_0.b.d.x, true, any(vec2<bool>(arg_0.b.d.x, arg_0.b.d.x)), false), !select(vec4<bool>(false, arg_0.b.d.x, arg_0.b.d.x, true), vec4<bool>(false, arg_0.b.d.x, arg_0.b.d.x, arg_0.b.d.x), vec4<bool>(arg_0.b.d.x, arg_0.b.d.x, true, arg_0.b.d.x)))), true, all(arg_0.b.d.zx));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(abs(reverseBits(arg_0.a.zzy))), vec3<u32>(u_input.c, ~(~0u), ~_wgslsmith_sub_u32(arg_0.a.x, 18927u))), vec3<u32>(~_wgslsmith_mult_u32(arg_0.a.x, 60771u), countOneBits(arg_0.b.c.x), _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(arg_0.b.c.x, 39122u)), vec2<u32>(~75308u, arg_0.b.c.x))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_1(-arg_1.x ^ _wgslsmith_add_i32(-21276i, reverseBits(-1i) >> (u_input.b.x % 32u)), u_input.b.x, ((firstLeadingBit(u_input.a) << (_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u)) ^ reverseBits(_wgslsmith_div_i32(u_input.a, 0i))) << (1u % 32u), ~arg_1.x > _wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, -2147483647i, 5440i, -16886i), vec4<i32>(-1i, arg_1.x, 2147483647i, arg_1.x), false) | vec4<i32>(u_input.d, arg_1.x, 43678i, -2988i), abs(abs(vec4<i32>(24888i, -1i, -2147483647i, u_input.a)))), 4294967295u);
    var var_1 = _wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.b.x, func_3(Struct_3(vec4<u32>(var_0.b, 33932u, 10237u, u_input.b.x), Struct_2(arg_1, arg_0.ywy, u_input.b, vec3<bool>(var_0.d, var_0.d, false)), arg_0, arg_0.x)))), firstLeadingBit(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, 96224u, var_0.e)), ~vec3<u32>(u_input.c, 11414u, var_0.b)))));
    var_1 = u_input.b & abs(u_input.b);
    let var_2 = countOneBits(79347i);
    var var_3 = var_0.e;
    return var_0.a;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = ~87545u;
    var_1 = _wgslsmith_dot_vec3_u32(select(arg_3.a.a.yzz, vec3<u32>(var_0.a.a.x, ~firstLeadingBit(arg_2.c.x), ~arg_3.b.c.x), arg_3.b.a.x > abs(arg_1)), arg_3.a.a.yzz & (_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(arg_3.a.a.wxw, var_0.a.a.wzy), arg_3.a.a.ywy) ^ _wgslsmith_sub_vec3_u32(max(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(arg_2.c.x, u_input.c, 0u)), var_0.a.a.xww)));
    var_0 = Struct_4(var_0.a, arg_2, vec2<i32>(_wgslsmith_dot_vec4_i32(var_0.e, arg_3.e) ^ 30899i, ~arg_2.a.x << (~arg_2.c.x % 32u)) & _wgslsmith_mod_vec2_i32(abs(~arg_2.a), _wgslsmith_div_vec2_i32(var_0.a.b.a, var_0.a.b.a << (vec2<u32>(4294967295u, 56807u) % vec2<u32>(32u)))), select(arg_2.a, ~vec2<i32>(-arg_1, ~0i), arg_0), vec4<i32>(arg_2.a.x, arg_2.a.x, -1i, arg_2.a.x));
    var var_2 = false;
    return Struct_1(_wgslsmith_clamp_i32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.c.x, -175f, 830f, arg_2.b.x), arg_3.a.c) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1414f, arg_3.b.b.x, arg_2.b.x, arg_3.b.b.x)))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.e.x, -2147483647i), vec2<i32>(12207i, -24582i)), arg_2.a)), 25786i, firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-6150i, -49624i, -45898i), vec3<i32>(u_input.d, 1i, var_0.d.x), vec3<i32>(-12033i, arg_1, arg_2.a.x)), -vec3<i32>(var_0.e.x, var_0.d.x, var_0.c.x)))), u_input.b.x >> ((~arg_2.c.x | ~(4294967295u << (arg_2.c.x % 32u))) % 32u), firstLeadingBit(arg_1), u_input.a < (_wgslsmith_sub_i32(1i, arg_3.e.x) | -(~18437i)), ~arg_3.b.c.x);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = func_4(false, func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-510f, arg_1.b.x, -1501f, arg_1.b.x), vec4<f32>(-1587f, arg_1.b.x, arg_1.b.x, 717f), vec4<bool>(true, arg_1.d.x, true, arg_1.d.x)))))), _wgslsmith_sub_vec2_i32(-vec2<i32>(arg_1.a.x, u_input.d), vec2<i32>(u_input.d, arg_0) ^ vec2<i32>(arg_0, -2147483647i)) >> (_wgslsmith_sub_vec2_u32(u_input.b & arg_1.c, vec2<u32>(0u, 1u)) % vec2<u32>(32u))), Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 80832i, -16535i, arg_0), vec4<i32>(u_input.d, 1i, arg_1.a.x, 0i) | vec4<i32>(0i, -28540i, u_input.d, 3673i)), ~(-2147483647i)), _wgslsmith_f_op_vec3_f32(select(arg_1.b, arg_1.b, !select(arg_1.d, arg_1.d, vec3<bool>(arg_1.d.x, arg_1.d.x, true)))), vec2<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u)), min(1u, max(4294967295u, arg_1.c.x))), vec3<bool>(all(!vec4<bool>(true, false, false, arg_1.d.x)), true, arg_1.d.x)), Struct_4(Struct_3(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(60117u, u_input.b.x, 17616u, u_input.c)), select(vec4<u32>(u_input.c, u_input.b.x, 8508u, u_input.b.x), vec4<u32>(1u, 0u, 40206u, arg_1.c.x), arg_1.d.x), vec4<u32>(1u, arg_1.c.x, arg_1.c.x, u_input.b.x)), arg_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(200f, -546f, arg_1.b.x, arg_1.b.x))), vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(true, arg_1.d.x, arg_1.d.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x) * _wgslsmith_f_op_f32(-1018f - arg_1.b.x))), arg_1, ~max(-vec2<i32>(u_input.d, 6219i), _wgslsmith_div_vec2_i32(arg_1.a, arg_1.a)), arg_1.a, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, 0i, arg_0), vec4<i32>(-3687i, 28998i, -2996i, -14028i))) << (_wgslsmith_clamp_vec4_u32(max(vec4<u32>(1u, 4294967295u, 12006u, 4294967295u), vec4<u32>(4294967295u, u_input.c, 0u, 47282u)), vec4<u32>(0u, 32635u, arg_1.c.x, 4294967295u), ~vec4<u32>(arg_1.c.x, u_input.b.x, 7288u, arg_1.c.x)) % vec4<u32>(32u))));
    return ~(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(~vec4<u32>(u_input.b.x, 0u, 78426u, 0u) << (~vec4<u32>(u_input.c, u_input.c, u_input.c, 55609u) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<u32>(~38105u, func_1(u_input.a, Struct_2(vec2<i32>(u_input.a, u_input.d), vec3<f32>(-185f, -479f, 147f), u_input.b, vec3<bool>(true, false, false))), 1u, u_input.b.x & 0u)), Struct_2(vec2<i32>(~(-7315i), abs(-35304i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-743f, 906f, 534f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1945f, 2114f, -1605f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-120f, 854f, -842f), vec3<f32>(2870f, 1012f, 800f), vec3<bool>(true, true, true))), all(vec4<bool>(false, true, true, false))))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b)), vec3<bool>(false, true & all(vec4<bool>(false, true, true, false)), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(599f, -1284f)) + 1129f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(993f, -532f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1032f, 175f, true)) * _wgslsmith_f_op_f32(floor(809f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1333f), -986f, _wgslsmith_f_op_f32(trunc(255f)), 332f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-432f, 1000f)), -759f))));
    let var_1 = vec4<bool>(var_0.b.d.x, var_0.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.b.x - -247f), _wgslsmith_f_op_f32(var_0.b.b.x + -1166f))) * var_0.c.x) >= _wgslsmith_f_op_f32(-var_0.d), !(false | !any(vec2<bool>(var_0.b.d.x, var_0.b.d.x))));
    var var_2 = true;
    let var_3 = var_0.b.c.x;
    var_2 = select(func_3(var_0) != 0u, false, false);
    var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_0.b.a.x), vec2<i32>(2147483647i, u_input.a)), vec2<i32>(u_input.d, 29602i)), -var_0.b.a.x) < ~_wgslsmith_clamp_i32(var_0.b.a.x >> (0u % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, u_input.a), var_0.b.a.x), _wgslsmith_clamp_i32(func_4(true, var_0.b.a.x, var_0.b, Struct_4(var_0, Struct_2(var_0.b.a, vec3<f32>(var_0.c.x, var_0.d, 1193f), vec2<u32>(47846u, 4294967295u), vec3<bool>(true, var_0.b.d.x, var_1.x)), var_0.b.a, vec2<i32>(var_0.b.a.x, -1i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a))).c, _wgslsmith_mult_i32(-1i, var_0.b.a.x), var_0.b.a.x));
    var var_4 = vec3<bool>(select(func_4(select(true, any(var_1.yzy), func_4(false, var_0.b.a.x, Struct_2(vec2<i32>(var_0.b.a.x, u_input.a), vec3<f32>(2662f, var_0.b.b.x, var_0.c.x), var_0.b.c, var_1.wzw), Struct_4(var_0, Struct_2(var_0.b.a, var_0.b.b, vec2<u32>(u_input.b.x, var_0.b.c.x), vec3<bool>(true, true, var_0.b.d.x)), var_0.b.a, var_0.b.a, vec4<i32>(u_input.d, var_0.b.a.x, u_input.a, 2147483647i))).d), countOneBits(var_0.b.a.x) | var_0.b.a.x, var_0.b, Struct_4(var_0, Struct_2(vec2<i32>(u_input.a, u_input.d), vec3<f32>(572f, var_0.d, 1448f), vec2<u32>(54203u, var_3), var_1.wyx), max(vec2<i32>(2147483647i, -37092i), var_0.b.a), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.a.x, -1i), var_0.b.a), vec4<i32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, -25546i))).d, all(!(!var_1.xwz)), all(select(vec4<bool>(false, false, false, false), select(var_1, var_1, var_0.b.d.x), var_0.b.d.x))), false, any(!vec3<bool>(false, true, all(var_1.wy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1103f, -799f, var_0.b.b.x)) - vec3<f32>(-112f, 596f, var_0.b.b.x)))), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.x, var_3, var_0.a.x), _wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 110253u), vec3<u32>(u_input.c, var_0.b.c.x, var_0.b.c.x))), vec3<u32>(36534u, max(var_3, var_3), ~4294967295u))));
}

