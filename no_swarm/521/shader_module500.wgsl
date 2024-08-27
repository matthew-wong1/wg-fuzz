struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(1000f, -1000f, 1000f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> bool {
    let var_0 = reverseBits(vec3<i32>(16065i, u_input.b.x, ~(-2147483647i)));
    var var_1 = Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + 777f), _wgslsmith_f_op_f32(f32(-1f) * -1151f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1789f)))))));
    var var_2 = var_1.b;
    var var_3 = Struct_1(vec4<bool>(arg_1.x, true, all(select(arg_1.xzy, select(vec3<bool>(arg_2, true, global0.a.x), vec3<bool>(false, var_1.a.x, arg_0.a.x), vec3<bool>(false, false, arg_2)), !global0.a.x)), true), global0.b);
    var_3 = Struct_1(!vec4<bool>(select(all(vec4<bool>(true, true, false, arg_2)), false, 12441i <= u_input.b.x), !all(var_3.a.zzx), select(true, global0.a.x, any(vec4<bool>(true, var_3.a.x, var_3.a.x, false))), global0.a.x), _wgslsmith_f_op_vec3_f32(var_3.b + arg_0.b));
    return arg_2;
}

fn func_2() -> vec4<u32> {
    global0 = Struct_1(vec4<bool>(any(select(global0.a.wxx, vec3<bool>(global0.a.x, true, false), all(global0.a.wwy))), false, !func_3(Struct_1(vec4<bool>(true, global0.a.x, global0.a.x, true), vec3<f32>(-336f, global0.b.x, -1471f)), global0.a, global0.a.x), true), _wgslsmith_f_op_vec3_f32(-global0.b));
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(round(global0.b)));
    global0 = Struct_1(!var_0.a, var_0.b);
    var_0 = Struct_1(!select(select(vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(true, var_0.a.x, false, global0.a.x), select(global0.a, global0.a, var_0.a)), !select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.a.x, false, var_0.a.x, false), var_0.a), select(var_0.a, select(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), global0.a, vec4<bool>(true, global0.a.x, var_0.a.x, global0.a.x)), var_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(round(-1698f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(225f, global0.b.x)), _wgslsmith_f_op_f32(ceil(658f)), all(vec4<bool>(false, var_0.a.x, global0.a.x, true)))))));
    let var_1 = Struct_1(vec4<bool>(true, select(true, var_0.a.x, global0.a.x) || false, true, !(u_input.b.x >= abs(u_input.b.x))), vec3<f32>(1f, _wgslsmith_f_op_f32(sign(-1420f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1036f, var_0.b.x)))))));
    return min(vec4<u32>(49198u, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(31025u, 1u, 9175u)), ~vec3<u32>(68891u, u_input.a, u_input.c)), u_input.d, u_input.d), vec4<u32>(~abs(22882u >> (u_input.a % 32u)), 12076u, _wgslsmith_clamp_u32(~1u, 0u, _wgslsmith_mult_u32(u_input.d, u_input.a)), _wgslsmith_mult_u32(u_input.d, 1u) >> (u_input.c % 32u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = global0.a.yzy;
    let var_1 = ~(_wgslsmith_div_i32(u_input.b.x, -(~arg_2)) | -(abs(u_input.b.x) >> (~u_input.c % 32u)));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(392f, global0.b.x)), _wgslsmith_f_op_f32(trunc(-762f)), func_3(Struct_1(select(vec4<bool>(true, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, true, var_0.x, true), false), arg_0.yyw), !select(select(global0.a, vec4<bool>(var_0.x, global0.a.x, global0.a.x, global0.a.x), false), vec4<bool>(true, global0.a.x, global0.a.x, false), vec4<bool>(var_0.x, global0.a.x, var_0.x, global0.a.x)), true)));
    var var_3 = Struct_1(vec4<bool>(var_0.x, true, var_0.x && var_0.x, !(1u > u_input.a) || any(select(vec2<bool>(true, global0.a.x), vec2<bool>(var_0.x, true), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wzz), _wgslsmith_f_op_vec3_f32(arg_0.wxy - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, arg_0.x, arg_0.x) - global0.b), global0.b))));
    let var_4 = Struct_1(select(select(!(!var_3.a), select(vec4<bool>(var_0.x, global0.a.x, var_3.a.x, var_3.a.x), select(var_3.a, var_3.a, var_0.x), vec4<bool>(var_3.a.x, true, false, true)), vec4<bool>(all(global0.a.wzz), !var_3.a.x, false, 1i < u_input.b.x)), !select(global0.a, !global0.a, true), true), vec3<f32>(540f, 912f, _wgslsmith_div_f32(1052f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b.x, var_2))))));
    return Struct_1(!var_4.a, _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-287f, 912f, var_3.b.x))) - var_3.b), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.b.x, 2270f, var_3.b.x))), !(!var_3.a.x)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = Struct_1(select(global0.a, vec4<bool>(all(func_4(arg_0, vec4<u32>(u_input.d, 21005u, 1u, 4294967295u), -10334i).a.zyz), global0.a.x, arg_3.a.x, !(!arg_3.a.x)), func_4(arg_0, firstLeadingBit(vec4<u32>(u_input.c, 65918u, u_input.d, 1u)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, 0i, arg_1.x, arg_1.x), vec4<i32>(1i, -1i, arg_1.x, u_input.b.x))).a.x && !all(vec4<bool>(arg_2.a.x, false, false, false))), vec3<f32>(_wgslsmith_div_f32(global0.b.x, -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1987f, 1000f, true))), 296f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2512f - _wgslsmith_f_op_f32(round(-2397f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-148f + global0.b.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b.x + arg_3.b.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(global0.a, vec3<f32>(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-247f * global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -950f))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f * arg_1.b.x))));
    let var_1 = !(~min(reverseBits(u_input.d), 0u) <= 1u);
    var var_2 = global0.a;
    var_2 = global0.a;
    let var_3 = Struct_1(!vec4<bool>(false, any(select(vec2<bool>(false, false), var_0.a.wx, true)), false, var_1), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1268f * arg_1.b.x))))), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(func_5(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(100f, global0.b.x, 439f, global0.b.x), vec4<f32>(global0.b.x, arg_1.b.x, -535f, 2505f)), vec4<f32>(-257f, var_0.b.x, 1387f, 368f)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, u_input.b.x, u_input.b.x)), -vec3<i32>(15266i, -2147483647i, u_input.b.x)), arg_1, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1081f, arg_1.b.x, 1368f, var_0.b.x)), func_2(), u_input.b.x)))));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    var var_0 = -37208i;
    var_0 = _wgslsmith_sub_i32(u_input.b.x, -u_input.b.x | _wgslsmith_mod_i32(-u_input.b.x, -firstTrailingBit(u_input.b.x)));
    let var_1 = arg_1;
    var_0 = 0i;
    let var_2 = Struct_1(!(!vec4<bool>(!arg_1.a.x, u_input.b.x >= -34337i, true, any(vec4<bool>(false, true, arg_0.a.x, arg_3.a.x)))), arg_3.b);
    return !arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = select(vec4<bool>(global0.a.x, any(var_0.wz), any(select(select(global0.a, vec4<bool>(false, global0.a.x, true, true), var_0.x), select(vec4<bool>(global0.a.x, global0.a.x, var_0.x, false), global0.a, vec4<bool>(var_0.x, true, global0.a.x, true)), select(global0.a, global0.a, vec4<bool>(var_0.x, global0.a.x, var_0.x, global0.a.x)))), _wgslsmith_add_u32(~u_input.c, u_input.d) != ~1u), select(select(global0.a, select(global0.a, vec4<bool>(global0.a.x, false, global0.a.x, true), true), any(!vec3<bool>(global0.a.x, true, true))), global0.a, false), !select(!(!vec4<bool>(global0.a.x, true, var_0.x, true)), vec4<bool>(true, true, true, true), all(select(global0.a.zww, var_0.wxy, global0.a.x))));
    global0 = Struct_1(select(!var_1, vec4<bool>(var_1.x, false && (-1i > u_input.b.x), global0.a.x, true), (false && var_1.x) & func_6(func_1(37325u, Struct_1(vec4<bool>(false, global0.a.x, global0.a.x, true), vec3<f32>(global0.b.x, global0.b.x, -910f))), Struct_1(vec4<bool>(var_0.x, false, false, var_1.x), global0.b), select(var_1.zyx, global0.a.ywy, true), Struct_1(global0.a, global0.b))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, -347f, global0.b.x)))))))));
    global0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, 1000f, -1612f, global0.b.x)) * vec4<f32>(global0.b.x, global0.b.x, global0.b.x, 190f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec4<f32>(1197f, global0.b.x, -1023f, global0.b.x), vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), Struct_1(global0.a, vec3<f32>(239f, global0.b.x, global0.b.x)), Struct_1(vec4<bool>(var_0.x, false, true, var_1.x), global0.b)))), global0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(363f)))), global0.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(abs(~u_input.a), 4294967295u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(50757u, u_input.a, 11901u)), max(vec3<u32>(0u, u_input.d, 1u), vec3<u32>(0u, u_input.d, u_input.a))), ~reverseBits(u_input.c)), vec4<u32>(abs(u_input.c), _wgslsmith_sub_u32(~u_input.a, _wgslsmith_div_u32(u_input.c, u_input.a)), ~min(40093u, 38046u), 0u)), u_input.b.x);
    var var_2 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, _wgslsmith_mod_u32(u_input.a, 1u)) >> (_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.c, u_input.d)), ~vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(max(~vec2<u32>(u_input.d, u_input.d), abs(vec2<u32>(4618u, 10132u))), firstLeadingBit(vec2<u32>(u_input.c, 39097u))) & ~firstTrailingBit(~vec2<u32>(u_input.d, 1u)));
    var var_3 = global0.b.zx;
    global0 = func_4(vec4<f32>(570f, _wgslsmith_div_f32(func_4(vec4<f32>(var_3.x, global0.b.x, var_3.x, var_3.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 61048u, 0u, 4129u), vec4<u32>(u_input.a, 7737u, 53740u, 638u)), -u_input.b.x).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f - global0.b.x))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-808f, var_3.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -376f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -865f)))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d, 6927u), ~6790u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.a, u_input.a), vec3<u32>(62104u, 28151u, 4294967295u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, u_input.a))), u_input.a, select(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d, u_input.c, 18803u, u_input.a)), firstTrailingBit(vec4<u32>(1u, 4294967295u, 47849u, 4294967295u))), u_input.c, var_1.x), ~(~u_input.c)), i32(-1i) * -10679i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0.b.x, global0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.b))));
}

