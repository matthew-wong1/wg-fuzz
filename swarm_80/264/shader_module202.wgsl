struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 18694u, 4220u, 54623u);

var<private> global1: array<Struct_2, 32>;

var<private> global2: u32 = 37006u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = global0.x;
    let var_1 = Struct_1(countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(global0.yzz, global0.zzx), vec3<u32>(1u, ~3055u, reverseBits(u_input.c.x)))), 1i, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-577f, 605f) + -1190f))), _wgslsmith_f_op_f32(floor(-616f))), true, all(select(vec2<bool>(all(vec3<bool>(true, false, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, true), true), false)));
    var var_2 = vec2<u32>(u_input.d.x | (reverseBits(select(var_1.a.x, global0.x, var_1.d)) >> (u_input.a.x % 32u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 1u, 41552u), ~u_input.a) << ((var_1.a.x << (global0.x % 32u)) % 32u)));
    var var_3 = var_1.d;
    var_0 = var_2.x;
    return var_1.d;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_5) -> u32 {
    let var_0 = -2147483647i;
    let var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 4294967295u, arg_2.x), ~vec3<u32>(arg_2.x, 116655u, u_input.d.x)) ^ select(0u >> (arg_1.a.x % 32u), arg_2.x, func_3()), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, u_input.c.x, arg_1.a.x, 4294967295u)), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a) ^ ~u_input.a), firstTrailingBit(24149u), arg_1.a.x);
    let var_2 = vec4<f32>(-139f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f * arg_1.c.x)))), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * -1051f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(738f, _wgslsmith_f_op_f32(floor(-1169f)))))));
    var var_3 = firstLeadingBit(vec2<i32>(-5915i, -(~_wgslsmith_sub_i32(arg_1.b, arg_1.b))));
    let var_4 = arg_1.d;
    return 1u;
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> vec3<f32> {
    global0 = ~(~vec4<u32>(max(1u, 26996u) & u_input.c.x, 22519u, 1u, ~0u));
    global1 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_mod_u32(1u >> (global0.x % 32u), global0.x);
    var var_1 = (_wgslsmith_add_vec4_u32(~u_input.a, vec4<u32>(u_input.d.x, 0u | arg_1, 105850u | u_input.a.x, 10976u)) << (vec4<u32>(~(~4294967295u), 45465u, _wgslsmith_add_u32(func_2(-1000f, Struct_1(global0.yyz, -37286i, arg_0.a.zx, arg_3.x, true), vec2<u32>(4872u, 1u), arg_0), _wgslsmith_sub_u32(u_input.a.x, arg_1)), u_input.a.x) % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(sign(1612f));
    return _wgslsmith_f_op_vec3_f32(-arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -2147483647i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1029f, -1115f, 906f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-523f, 2693f, false))))), firstLeadingBit(~u_input.d.x), true, vec4<bool>(all(vec2<bool>(true, true)), true, true, false))));
    let var_2 = select(select(vec2<bool>(true, all(vec4<bool>(true, false, false, true))), select(vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true)))), select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(true, true)), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(any(vec3<bool>(var_0 == -4844i, true, true)), true));
    var var_3 = Struct_1(~(~firstTrailingBit(u_input.d)), -(~1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1326f, var_1.x) - vec2<f32>(1684f, 358f)) + vec2<f32>(var_1.x, 1265f)))), _wgslsmith_f_op_f32(trunc(var_1.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), false);
    global1 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-393f, _wgslsmith_f_op_f32(round(var_3.c.x)))) - _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -225f))))), var_1, ~vec4<u32>(3054u, min(48584u, ~u_input.d.x), (u_input.c.x << (0u % 32u)) & ~u_input.c.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.x, 1u), vec2<u32>(u_input.c.x, u_input.c.x)))));
}

