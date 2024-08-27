struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: vec4<f32>;

var<private> global2: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = vec4<f32>(global1.x, 2007f, _wgslsmith_f_op_f32(arg_2.a.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1060f) + _wgslsmith_f_op_f32(select(-223f, arg_2.c.x, true))), -2726f)), _wgslsmith_f_op_f32(sign(1736f)));
    global1 = var_0;
    global1 = _wgslsmith_f_op_vec4_f32(select(var_0, var_0, true));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(552f, -256f, _wgslsmith_f_op_f32(ceil(-809f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(659f + arg_2.b.b), -1347f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-630f * _wgslsmith_f_op_f32(742f + var_0.x)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(arg_2.b.b - 564f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.c.x), 456f))) * vec4<f32>(1000f, -671f, _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.b + var_0.x)))));
    let var_1 = arg_2;
    return u_input.a.zzw;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    global2 = min(vec3<i32>(arg_0.c.x, _wgslsmith_div_i32(1i, 1i), -global2.x), func_3(Struct_2(1u, _wgslsmith_f_op_f32(global1.x - arg_0.a.x)), vec3<u32>(1u, 1u, 1u), Struct_3(Struct_2(48272u, 1593f), Struct_2(0u, arg_0.a.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-162f, 770f), vec2<f32>(global1.x, -903f))), Struct_2(18787u, arg_0.a.x)))) << ((vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 62347u, 5984u)), 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_0 = vec3<u32>(~abs(_wgslsmith_mult_u32(0u, 83649u)) << (_wgslsmith_div_u32(0u, 1u) % 32u), ~7132u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(10622u, 1u)), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(15397u, 4294967295u), vec2<u32>(20327u, 4294967295u)), 23114u)));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(step(2168f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(1716f * global1.x))) - 1913f), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(sign(-2144f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1043f, arg_0.a.x, global1.x, -1000f))), vec4<f32>(global1.x, -1000f, arg_0.a.x, global1.x)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1690f, 816f, 318f, global1.x), vec4<f32>(arg_0.a.x, -1141f, 312f, 301f))), vec4<f32>(arg_0.a.x, global1.x, arg_0.a.x, arg_0.a.x)))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) + _wgslsmith_f_op_f32(select(-790f, -726f, false))), 1f)), global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-410f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global1.x, 358f, arg_0.b.x)))), global1.x, true)))));
    global0 = array<i32, 6>();
    return Struct_3(Struct_2(var_0.x & 55300u, _wgslsmith_f_op_f32(f32(-1f) * -240f)), Struct_2(_wgslsmith_div_u32(firstLeadingBit(abs(4294967295u)), _wgslsmith_clamp_u32(var_0.x | var_0.x, var_0.x, 57202u)), _wgslsmith_f_op_f32(trunc(638f))), global1.xw, Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, 4294967295u), vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x) >> (vec4<u32>(var_0.x, 0u, var_0.x, var_0.x) % vec4<u32>(32u))) >> (~var_0.x % 32u), arg_0.a.x));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yy) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(543f, -922f))))), !vec3<bool>(true, global2.x >= u_input.a.x, false), vec2<i32>(_wgslsmith_mod_i32(~arg_0, global2.x), global2.x ^ arg_0)));
    let var_1 = global1.x;
    global2 = _wgslsmith_mult_vec3_i32(vec3<i32>(-56018i, 1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(~global2.x, 0i), ~_wgslsmith_div_i32(u_input.a.x, 0i))), vec3<i32>(arg_0, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, -2147483647i), u_input.a.zx) & global2.x, global2.x), ~16278i));
    global0 = array<i32, 6>();
    var var_2 = arg_1.a;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(-1915f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.c, vec3<bool>(true, true, false), vec2<i32>(global0[_wgslsmith_index_u32(66265u, 6u)], 26672i))).b.b * _wgslsmith_f_op_f32(global1.x + arg_1.b))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1201f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1350f * 190f)), arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_1(global2.x, Struct_2(49025u, 146f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_f32(-1092f + _wgslsmith_div_f32(670f, global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(650f - global1.x), arg_0.x, all(vec2<bool>(arg_2.b.x, arg_2.b.x)))), arg_0.x)));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-974f)), -570f);
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1231f, 799f), _wgslsmith_f_op_f32(f32(-1f) * -1773f), -443f, -1262f)))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))), -952f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(647f)), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), -287f)))));
    global2 = vec3<i32>(~u_input.a.x, -15038i >> (0u % 32u), 29549i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.xx), vec3<bool>(all(!(!vec3<bool>(arg_2.b.x, false, true))), select(!arg_2.b.x, !any(vec3<bool>(false, false, arg_2.b.x)), !(!arg_2.b.x)), select(_wgslsmith_f_op_f32(-global1.x) == 993f, arg_2.b.x, arg_2.b.x)), global2.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    var var_0 = true;
    var var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(780f - -402f), global1.x, _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.x, Struct_2(67997u, global1.x))) + -370f)))), _wgslsmith_mult_vec2_u32(max(~select(vec2<u32>(40649u, 4294967295u), vec2<u32>(4294967295u, 37707u), false), vec2<u32>(1u, 18935u)), min(min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(37636u, 0u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~(~vec2<u32>(10307u, 0u)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1305f, -1699f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.xw), vec2<f32>(474f, global1.x)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), false), vec2<i32>(reverseBits(~(-8635i)), -2147483647i >> (1u % 32u))));
    var var_2 = vec2<u32>(13714u, 1u);
    let var_3 = _wgslsmith_sub_i32(16362i, global2.x);
    var var_4 = func_2(Struct_1(global1.yy, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1000f, global1.x) * vec3<f32>(var_1.a.x, global1.x, var_1.a.x))), min(vec2<u32>(1u, 1u), vec2<u32>(1u, var_2.x) ^ vec2<u32>(1u, var_2.x)), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-114f, 1351f, var_1.a.x) + vec3<f32>(global1.x, var_1.a.x, -556f)), abs(vec2<u32>(9845u, 0u)), func_4(global1.ywz, vec2<u32>(var_2.x, 4294967295u), Struct_1(vec2<f32>(var_1.a.x, global1.x), vec3<bool>(true, var_1.b.x, true), var_1.c)))).b, global2.yy)).a;
    let var_5 = Struct_2(var_4.a, global1.x);
    let var_6 = func_2(Struct_1(var_1.a, var_1.b, _wgslsmith_div_vec2_i32(u_input.a.xy, var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer((vec2<i32>(global2.x, 0i) & var_1.c) << (~firstTrailingBit(vec2<u32>(1u, var_5.a) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

