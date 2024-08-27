struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(208f, 574f, -270f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> f32 {
    global0 = vec3<f32>(global0.x, 1183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - arg_2.a.b.x)));
    let var_0 = vec3<i32>(-12608i, u_input.a.x, -u_input.a.x);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b + vec3<f32>(global0.x, arg_1, -268f))), _wgslsmith_div_vec3_f32(arg_0.d, _wgslsmith_div_vec3_f32(arg_0.d, arg_0.d))))), arg_0.d, vec3<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 7084u), vec2<u32>(1u, arg_0.a)) << (0u % 32u)) > arg_0.a, false, false)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(step(-1308f, _wgslsmith_f_op_f32(abs(arg_0.b.a)))), arg_2.a.b.x)));
    let var_1 = Struct_2(58445u, Struct_1(arg_0.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.zy, vec2<f32>(arg_1, arg_0.b.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, arg_2.d))), all(!vec2<bool>(arg_2.a.c, arg_2.c)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, u_input.a.x, -44278i, var_0.x), arg_2.a.d)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_2.a.d.x, ~(-18141i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-arg_2.a.d.wx, reverseBits(arg_2.a.d.xz)), 0i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, -1192f, arg_0.b.b.x)))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.d.x))));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(func_3(arg_2, _wgslsmith_f_op_f32(-global0.x), Struct_3(arg_2.b, arg_2.d, arg_0.x, arg_2.b.b.x), 1662f)), arg_2.b.b.x));
    let var_0 = Struct_5(Struct_4(Struct_3(arg_2.b, vec3<f32>(_wgslsmith_f_op_f32(ceil(315f)), _wgslsmith_f_op_f32(round(-380f)), _wgslsmith_f_op_f32(ceil(global0.x))), true, arg_2.b.b.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-200f)), arg_2.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.b)), arg_0.x, _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-46133i, 0i, 10709i, 26768i)), arg_2.b.d, -vec4<i32>(-3489i, -8099i, u_input.a.x, u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.a) + global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, arg_2.d.x) - vec2<f32>(global0.x, arg_2.b.b.x)) * vec2<f32>(global0.x, -184f)), true, max(vec4<i32>(u_input.a.x, -1i, -22330i, u_input.a.x), vec4<i32>(1i, u_input.a.x, -28575i, u_input.a.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.c, 0i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -20081i), arg_2.b.d)), Struct_1(arg_2.d.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_2.b.b - global0.xz))), !(!arg_1), vec4<i32>(-1i) * -arg_2.b.d)), Struct_2(_wgslsmith_div_u32(~(arg_2.a >> (61593u % 32u)), ~_wgslsmith_div_u32(arg_2.a, arg_2.a)), Struct_1(_wgslsmith_f_op_f32(-arg_2.b.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.zx), vec2<f32>(global0.x, 243f), true)), true, reverseBits(-vec4<i32>(arg_2.b.d.x, arg_2.c, arg_2.c, arg_2.b.d.x))), -7460i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, arg_2.d.x, global0.x)))))), select(select(select(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_2.b.c, false, true), arg_1), !vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_2.b.c, true, true)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, true, true), false), select(false, arg_1, true)), select(select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_2.b.c, true, false), vec3<bool>(false, arg_1, arg_1)), vec3<bool>(true, arg_2.b.c, arg_0.x), all(vec4<bool>(true, arg_2.b.c, true, arg_1)))), vec3<bool>(any(vec4<bool>(arg_2.b.c, false, false, arg_0.x)) | all(vec3<bool>(arg_2.b.c, arg_1, arg_1)), all(select(vec3<bool>(arg_1, arg_0.x, arg_2.b.c), vec3<bool>(false, true, true), arg_0.x)), any(vec3<bool>(false, arg_0.x, arg_0.x)) && true), select(vec3<bool>(arg_2.b.c, !arg_2.b.c, false), select(!vec3<bool>(arg_2.b.c, true, false), select(vec3<bool>(arg_2.b.c, arg_2.b.c, arg_2.b.c), vec3<bool>(true, arg_2.b.c, false), false), !vec3<bool>(false, true, arg_2.b.c)), select(!vec3<bool>(arg_0.x, arg_1, false), select(vec3<bool>(arg_2.b.c, true, arg_0.x), vec3<bool>(true, false, false), vec3<bool>(arg_0.x, false, arg_0.x)), select(vec3<bool>(arg_0.x, arg_2.b.c, true), vec3<bool>(arg_1, arg_2.b.c, arg_1), true)))), !vec2<bool>(arg_0.x, false && !arg_0.x));
    var var_1 = ~abs(~abs(vec3<u32>(1u, var_0.b.a, arg_2.a) ^ vec3<u32>(53035u, 1u, arg_2.a)));
    var_1 = ~(~min(~vec3<u32>(var_0.b.a, 19490u, 958u), vec3<u32>(var_1.x, var_1.x, arg_2.a) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(31432u, 4294967295u, var_0.b.a), vec3<u32>(var_1.x, arg_2.a, var_0.b.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.c.a - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -140f)), _wgslsmith_f_op_vec2_f32(trunc(global0.zz)))))));
    return arg_2.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: f32) -> f32 {
    let var_0 = global0.x;
    var var_1 = -func_2(!(!vec2<bool>(arg_0.x, true)), false, Struct_2(47337u, Struct_1(arg_1.x, arg_1.zy, false, vec4<i32>(0i, u_input.a.x, u_input.a.x, -2147483647i)), u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(650f, global0.x, 2206f)))) ^ ~(-2147483647i);
    var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a, -_wgslsmith_mod_vec2_i32(~u_input.a, abs(u_input.a))), -9609i << (0u % 32u));
    var var_2 = Struct_2(14873u, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(floor(1000f))), global0.x), global0.xx, arg_0.x, -(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(1i, -17152i, 1i, u_input.a.x)) >> (~(~vec4<u32>(15285u, 4294967295u, 63506u, 4294967295u)) % vec4<u32>(32u))), min(~(-1i), -16604i), arg_1);
    var var_3 = Struct_4(Struct_3(Struct_1(944f, vec2<f32>(_wgslsmith_f_op_f32(global0.x - arg_2), var_2.d.x), any(vec3<bool>(var_2.b.c, false, arg_0.x)), -var_2.b.d), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(307f, arg_2, 633f))))), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-213f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(329f)) * _wgslsmith_f_op_f32(trunc(1017f))))), var_2.b, Struct_1(_wgslsmith_f_op_f32(ceil(-271f)), var_2.b.b, !((var_2.b.d.x ^ 0i) <= ~u_input.a.x), firstLeadingBit(var_2.b.d) ^ vec4<i32>(~(-2147483647i), _wgslsmith_add_i32(10708i, var_2.c), 0i, _wgslsmith_add_i32(17433i, 25247i))), var_2.b);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(~0u, _wgslsmith_add_u32(57302u, 96742u)), 68190u, ~1u), _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 89635u, 4294967295u)), vec3<u32>(0u, 0u, 12106u) << (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)), vec3<u32>(36985u, 0u, 53415u)), ~firstLeadingBit(abs(vec3<u32>(0u, 1u, 56455u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-u_input.a.x, -1171i, ~(-1i), i32(-1i) * -2147483647i), vec2<u32>(var_0.x, ~var_0.x), 0i, -(~1i), _wgslsmith_f_op_f32(138f * _wgslsmith_f_op_f32(func_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1947f, 637f, -734f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -744f)))))));
}

