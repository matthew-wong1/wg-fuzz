struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<i32> {
    let var_0 = 15739i >> (1u % 32u);
    var var_1 = Struct_3(318f);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-var_1.a));
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f))) + _wgslsmith_f_op_f32(-var_2.a)));
    var var_3 = ~_wgslsmith_mod_vec2_u32(~(u_input.b >> (u_input.b % vec2<u32>(32u))), u_input.b);
    return vec3<i32>(firstLeadingBit(var_0 >> (var_3.x % 32u)) << (~(~var_3.x & abs(u_input.a)) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, -u_input.d), ~(-u_input.d)), -(~(~19345i >> (u_input.b.x % 32u))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f + arg_0.x) - _wgslsmith_f_op_f32(max(-1348f, arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -386f), arg_2.a) - _wgslsmith_div_vec3_f32(arg_0.zyw, arg_0.zzw)) * vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), -1304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(913f + -898f) + 1747f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.zyy * arg_0.zxy));
    var var_1 = min(~vec3<i32>(~u_input.d.x, 1i, reverseBits(u_input.d.x)), func_3() >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 29532u), countOneBits(vec3<u32>(2651u, 0u, 1u))) % vec3<u32>(32u))) << (~_wgslsmith_mod_vec3_u32(~abs(vec3<u32>(u_input.a, arg_3, u_input.b.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 0u, 5458u), vec3<u32>(0u, u_input.b.x, 43949u))) % vec3<u32>(32u));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(143f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -219f))) + _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-961f - arg_0.x))))));
    var_1 = vec3<i32>(38943i, _wgslsmith_div_i32(0i, reverseBits(2583i ^ var_1.x)), max(-18625i, ~1i));
    return vec2<bool>(arg_1, false);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_mult_i32(-51416i, 28284i);
    var var_2 = ~vec2<u32>(u_input.b.x, ~max(u_input.a, u_input.b.x << (14817u % 32u)));
    var_0 = ~8725u;
    var var_3 = !(select(all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true, false) & !(-1i >= _wgslsmith_sub_i32(0i, u_input.d.x)));
    return Struct_1(vec4<u32>(abs(~56744u), var_2.x | _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, var_2.x, var_2.x, u_input.a)), firstLeadingBit(vec4<u32>(0u, u_input.b.x, u_input.b.x, var_2.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(11868u, ~6528u, 1u), ~(~vec3<u32>(var_2.x, var_2.x, var_2.x))), 62643u), select(vec2<bool>(true, true), !(!func_2(vec4<f32>(222f, 973f, 1000f, -1757f), true, Struct_3(1000f), 4294967295u)), false));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<i32> {
    let var_0 = ~reverseBits(arg_2.a.x);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(round(arg_1)));
    var var_2 = 57285u;
    var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))), arg_1));
    var_2 = u_input.a;
    return vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -firstTrailingBit(u_input.d.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, u_input.d.x ^ -25731i), func_3().x)), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(-35658i, max(u_input.d.x, 0i)), 0i), countOneBits(u_input.d.x), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x & u_input.b.x;
    var_0 = ~0u;
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-326f))), -121f));
    let var_2 = _wgslsmith_div_vec4_i32(func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1055f)) * _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(var_1.a - 504f)))), func_1(Struct_3(_wgslsmith_f_op_f32(331f - -521f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(905f, var_1.a, var_1.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, var_1.a)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_1.a, -939f, 454f), vec4<f32>(-1324f, var_1.a, var_1.a, -1556f), false))))))), u_input.d);
    var_0 = 29598u;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(651f, var_1.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(636f, var_1.a))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(532f, -519f) - vec2<f32>(-720f, 1556f)))))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(step(var_1.a, var_1.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(765f);
}

