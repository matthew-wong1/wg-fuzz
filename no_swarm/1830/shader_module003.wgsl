struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2597f)) - arg_3.a.c.x);
    let var_1 = arg_2;
    let var_2 = arg_1.xy;
    global0 = array<Struct_2, 31>();
    return 0u;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(Struct_1(func_3(Struct_1(36715u & u_input.c, -u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-639f, -834f, -423f))), abs(~vec4<u32>(u_input.c, u_input.c, 0u, u_input.c)), global0[_wgslsmith_index_u32(~(~4294967295u), 31u)], Struct_3(Struct_1(u_input.c, u_input.d, vec3<f32>(-1000f, -261f, -802f)))), vec2<i32>(_wgslsmith_mult_i32(select(u_input.d.x, -2147483647i, false), -1i), _wgslsmith_div_i32(u_input.a, u_input.a >> (u_input.c % 32u))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2029f, 263f, 1000f))), vec3<f32>(-729f, 1000f, -123f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-322f, -1000f, 1416f)))))));
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    var var_1 = global0[_wgslsmith_index_u32(var_0.a.a, 31u)];
    var var_2 = ~(~(~vec4<u32>(64953u, 0u << (var_0.a.a % 32u), 0u, select(0u, 0u, true))));
    return vec2<bool>(var_2.x >= ~firstTrailingBit(59467u), true);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, _wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(step(arg_0, 892f)), arg_0))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1302f, arg_0, 1171f, arg_0) + vec4<f32>(1410f, arg_0, -2769f, arg_0)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1188f, 125f, -376f, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1200f, arg_0) + vec4<f32>(425f, arg_0, arg_0, -135f)) + vec4<f32>(arg_0, 1776f, -2288f, arg_0))))));
    global0 = array<Struct_2, 31>();
    let var_1 = 1i;
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_u32(select(4294967295u, u_input.c, u_input.c == 67410u), 0u), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-53803i, u_input.a) & u_input.e.yz, -vec2<i32>(u_input.e.x, -9914i)), _wgslsmith_clamp_vec2_i32(u_input.d, ~vec2<i32>(34952i, -21067i), vec2<i32>(var_1, -2147483647i) | vec2<i32>(u_input.a, var_1))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, 537f, -671f))))), u_input.b, Struct_1(~1u << (select(u_input.c, ~3557u, true) % 32u), vec2<i32>(i32(-1i) * -u_input.a, -(~var_1)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -573f), -1000f, _wgslsmith_f_op_f32(-arg_0))))), ~_wgslsmith_mult_vec2_i32(u_input.d, -u_input.e.xz) | u_input.e.zx, var_1);
    global0 = array<Struct_2, 31>();
    return var_2.c;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(15482u, 31u)];
    let var_1 = Struct_2(arg_1, var_0.d.x, func_4(-586f, select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), func_2(), vec2<bool>(true, true))), u_input.d, -5299i);
    let var_2 = Struct_2(Struct_1(u_input.c, -vec2<i32>(-arg_1.b.x, -5068i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.c.c * arg_1.c))) - vec3<f32>(arg_0, _wgslsmith_div_f32(-860f, -393f), _wgslsmith_f_op_f32(abs(arg_0))))), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-31875i, 2147483647i, var_1.a.b.x, 72137i) << (~vec4<u32>(1u, 28425u, u_input.c, var_0.c.a) % vec4<u32>(32u)), abs(-vec4<i32>(-1i, -24895i, 33941i, u_input.e.x))), vec4<i32>(arg_1.b.x, u_input.a, -2147483647i, 0i) ^ (vec4<i32>(-1i) * -vec4<i32>(-17885i, -19099i, var_0.c.b.x, arg_1.b.x))), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.c.x), 611f), !vec2<bool>(true, arg_0 >= -328f)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(32351i, -27316i), vec2<i32>(-46883i, 1i)), ~var_0.c.b.x), abs(~var_0.d)), vec2<i32>(i32(-1i) * -6743i, var_0.d.x) << (vec2<u32>(_wgslsmith_clamp_u32(var_1.a.a, arg_1.a, 45130u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.a), vec2<u32>(arg_1.a, 0u))) % vec2<u32>(32u))), select(-var_0.c.b.x, reverseBits(~var_1.a.b.x), !all(vec2<bool>(false, true))));
    global0 = array<Struct_2, 31>();
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(870f, var_2.a.c.x, 219f, var_0.c.c.x) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(func_4(_wgslsmith_f_op_f32(floor(var_1.c.c.x)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))).c.x)), -200f, _wgslsmith_f_op_f32(205f - arg_1.c.x)));
    return ~firstTrailingBit(firstLeadingBit(~abs(vec4<i32>(u_input.b, 0i, var_1.d.x, 9271i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, var_0.x, var_0.x, u_input.d.x), ~vec4<i32>(var_0.x, -25949i, -2147483647i, var_0.x)), func_1(_wgslsmith_f_op_f32(405f - -896f), Struct_1(1u, var_0, vec3<f32>(1019f, 1000f, 530f)))), _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(2147483647i, 20250i, var_0.x, 7699i)), -(~vec4<i32>(1i, -1i, 45355i, var_0.x)), vec4<i32>(~u_input.e.x, u_input.a, firstLeadingBit(u_input.d.x), u_input.e.x)) << ((firstLeadingBit(vec4<u32>(71524u, u_input.c, u_input.c, 0u) << (vec4<u32>(u_input.c, 86986u, 455u, 78746u) % vec4<u32>(32u))) >> (select(select(vec4<u32>(u_input.c, 12255u, u_input.c, 73818u), vec4<u32>(4080u, u_input.c, u_input.c, 57126u), vec4<bool>(false, true, false, false)), vec4<u32>(1u, u_input.c, 1u, u_input.c) & vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c), any(vec3<bool>(false, false, false))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~abs(vec4<u32>(u_input.c, 4294967295u, 0u, 31365u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.c, u_input.c), ~vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 36968u))), u_input.c);
}

