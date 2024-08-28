struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<i32>) -> f32 {
    var var_0 = ~max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x | u_input.c.x, ~u_input.c.x), abs(_wgslsmith_mod_vec3_u32(u_input.c.yzz, u_input.c.wyz))), reverseBits(u_input.c.yyw) >> (~u_input.c.zzz % vec3<u32>(32u)));
    var var_1 = ~arg_3.x;
    var_1 = 7727i;
    let var_2 = _wgslsmith_f_op_f32(round(-786f));
    var var_3 = all(select(select(arg_2, vec2<bool>(!arg_0.x, var_2 <= var_2), vec2<bool>(false, true)), !vec2<bool>(!arg_2.x, false), arg_0.x));
    return -1001f;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(true, vec2<bool>(false, any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), u_input.c.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(636f, _wgslsmith_f_op_f32(-427f + -803f), -465f, _wgslsmith_f_op_f32(trunc(-1471f))))), true);
    let var_1 = u_input.d;
    let var_2 = Struct_2(var_0.e, var_0.b.x, var_0.c, var_0, Struct_1(var_0.b.x, var_0.b, ~50738u, var_0.d, !var_0.b.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.d.x) + _wgslsmith_div_f32(475f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec4<bool>(var_2.e.a, var_0.e, false, false), false, vec2<bool>(var_2.a, var_0.e), vec2<i32>(var_1, -41701i))), _wgslsmith_f_op_f32(-1489f * 1264f))), 989f)));
    let var_4 = var_2.e.d;
    return _wgslsmith_add_u32(u_input.b >> (u_input.c.x % 32u), var_0.c >> (_wgslsmith_mod_u32(~(~var_0.c), 1u) % 32u));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(!arg_0.a, vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.e.d.x, 761f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.d.x) - -426f), arg_0.d.a), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.d.x, 1070f, arg_0.e.d.x, arg_0.d.d.x) * arg_0.d.d))), true);
    var var_2 = vec3<u32>(~arg_0.e.c, func_2() << (u_input.c.x % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.c, u_input.c.x, 50649u), firstLeadingBit(vec4<u32>(21164u, var_1.c, var_1.c, 4294967295u))) << (arg_0.d.c % 32u), 0u >> (~_wgslsmith_clamp_u32(4294967295u, u_input.b, 0u) % 32u)));
    var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(max(u_input.c.yyy, vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(9171u, 4294967295u, var_2.x, 17857u)), arg_0.c)), u_input.c.zzx), var_1.c, 24504u << (_wgslsmith_mult_u32(abs(1u), func_2()) % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.d.zxw)));
    return vec2<bool>(any(arg_0.d.b), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), func_1(Struct_2(false, true, u_input.c.x, Struct_1(false, vec2<bool>(true, true), u_input.c.x, vec4<f32>(-1000f, 643f, 1000f, 238f), true), Struct_1(false, vec2<bool>(true, false), 0u, vec4<f32>(-1566f, 1285f, 618f, -836f), false))), vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(select(false, true, u_input.b > 0u), false)));
    var var_1 = -135f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(518f)), -1671f))));
    let var_2 = vec2<bool>(false & !any(vec3<bool>(true, true, true)), false != (u_input.e.x >= 0i));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(605f, -416f)))), _wgslsmith_f_op_f32(-1f)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-694f)), _wgslsmith_f_op_f32(select(636f, 1f, true)), !var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zx ^ _wgslsmith_add_vec2_i32(~firstLeadingBit(u_input.e.xx), _wgslsmith_add_vec2_i32(u_input.a.xz << (vec2<u32>(6210u, u_input.c.x) % vec2<u32>(32u)), vec2<i32>(0i, u_input.e.x))), -799f);
}

