struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    return Struct_1(arg_0.x <= ~(~(-1i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), !all(vec3<bool>(arg_0.a, arg_0.a, false)))))), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(sign(1000f))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(abs(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(59718u, u_input.e.x, u_input.d), vec3<u32>(36318u, 44235u, 0u)))), u_input.b.x, ~0u, _wgslsmith_div_u32(abs(u_input.e.x) | u_input.e.x, ~min(u_input.d, 1u))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.d, 45515u, u_input.d, u_input.e.x)), reverseBits(countOneBits(vec4<u32>(u_input.e.x, u_input.d, 10498u, u_input.d)))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.d, 31519u, u_input.d, u_input.b.x)), ~vec4<u32>(0u, 4294967295u, u_input.d, u_input.e.x)), vec4<u32>(29203u, _wgslsmith_mod_u32(0u, u_input.e.x), 33081u, abs(u_input.e.x))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = all(!vec3<bool>(false, false, arg_2.a));
    var var_1 = Struct_1(arg_0.a);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(global0.x)), 1544f, _wgslsmith_div_f32(575f, global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -314f) - vec3<f32>(1000f, -1120f, global0.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(168f, global0.x, global0.x), vec3<f32>(2300f, global0.x, -1239f), arg_2.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -824f, global0.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-296f, global0.x, -951f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-200f, global0.x, -165f))), !vec3<bool>(false, false, arg_2.a)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(605f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))))));
    var var_2 = -14252i;
    return Struct_1(true);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(-858f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1520f) - global0.x));
    let var_1 = select(vec2<bool>(true, !(arg_0.a && var_0.a) & true), !select(!select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, true), true), !vec2<bool>(arg_0.a, arg_0.a), arg_0.a), vec2<bool>(var_0.a, !arg_0.a & any(vec2<bool>(false, arg_0.a))));
    var_0 = arg_0;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1419f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-264f))))));
    let var_3 = !var_1.x;
    return func_2(~vec3<i32>(28744i, u_input.c.x, -2147483647i));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(func_4(func_2(vec3<i32>(1i, -23911i, u_input.a.x)), u_input.b.x << (min(func_3(Struct_1(false)), _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)) % 32u), func_2(vec3<i32>(0i, -74081i ^ u_input.a.x, ~u_input.a.x))), min(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c.x, 9470i), 22779i), ~firstTrailingBit(39280i)), -u_input.c.zz), firstTrailingBit(-reverseBits(u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(-527f - 1f);
    var_0 = func_5(func_2(_wgslsmith_mod_vec3_i32(u_input.a.wxz, vec3<i32>(-87627i, 22687i, u_input.c.x) ^ vec3<i32>(u_input.a.x, -1i, u_input.a.x))), select(-select(u_input.c.yx, u_input.a.zw, false), -countOneBits(u_input.c.zx), !(!vec2<bool>(true, var_0.a))) & abs(vec2<i32>(i32(-1i) * -58510i, u_input.c.x)), abs(u_input.a.x));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-721f, var_1), _wgslsmith_f_op_f32(1000f * -355f), var_1));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-130f, _wgslsmith_f_op_f32(f32(-1f) * -857f), var_1))) * vec3<f32>(351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2760f + 1531f))), 107f));
    return Struct_1(!(_wgslsmith_mult_u32(~u_input.b.x, 9002u) > (1u ^ ~u_input.d)));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) + global0.x))), global0.x, !func_1().a)), 1000f, global0.x);
    global0 = vec3<f32>(-2025f, _wgslsmith_f_op_f32(-global0.x), -301f);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1355f)) + 563f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -1221f, 1000f), vec3<f32>(980f, global0.x, 1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(627f, global0.x, -1299f) - vec3<f32>(200f, -128f, 561f))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, -272f))), global0.x), _wgslsmith_f_op_f32(trunc(-708f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2485f + -984f) - _wgslsmith_f_op_f32(global0.x * global0.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-160f - -514f), _wgslsmith_f_op_f32(sign(global0.x)))))));
    let var_0 = Struct_1(false);
    let var_1 = !select(!vec2<bool>(var_0.a, true), arg_0.xw, !select(select(vec2<bool>(arg_2.a, var_0.a), arg_0.wz, true), vec2<bool>(arg_0.x, arg_0.x), false));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-2096f, global0.x, global0.x), vec3<f32>(-798f, 947f, 136f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(874f, global0.x, global0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, global0.x, -274f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 627f, -250f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-816f, global0.x, global0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-440f, 167f, -759f))))))));
    var var_0 = u_input.d;
    global0 = _wgslsmith_f_op_vec3_f32(func_6(vec4<bool>(!all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), !all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), true), func_1(), Struct_1(false), _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(_wgslsmith_mod_i32(0i, 2147483647i), 45267i))));
    let var_1 = u_input.a;
    var var_2 = !all(vec4<bool>(true, true | any(vec3<bool>(true, true, true)), false, false));
    var_0 = abs(~_wgslsmith_mult_u32(32273u, abs(_wgslsmith_add_u32(u_input.d, u_input.e.x))));
    let var_3 = func_4(func_5(func_4(func_2(vec3<i32>(-66147i, 1i, 1i)), 1u, func_1()), vec2<i32>(-1i) * -var_1.wz, ~(-26859i)), countOneBits(4294967295u), func_2(var_1.zzx));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, _wgslsmith_div_i32(~32803i, u_input.a.x));
}

