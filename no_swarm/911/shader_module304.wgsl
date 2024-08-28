struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<f32>(-245f, -1067f, 393f), 34124u), Struct_2(vec3<f32>(-1308f, 462f, 1000f), 1u), Struct_2(vec3<f32>(-1200f, 757f, -146f), 25783u), Struct_2(vec3<f32>(-1000f, 1000f, -342f), 50636u), Struct_2(vec3<f32>(425f, -661f, 413f), 4294967295u), Struct_2(vec3<f32>(-537f, -1925f, 979f), 4294967295u), Struct_2(vec3<f32>(128f, 623f, -1075f), 34695u), Struct_2(vec3<f32>(-400f, 1000f, 551f), 38778u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> bool {
    var var_0 = arg_1.d;
    var var_1 = Struct_3(-(~arg_1.a), ~var_0.b, ((4783i & (arg_1.c ^ 1507i)) << (~(~arg_1.d.b) % 32u)) & ~37160i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(arg_1.d.b, arg_1.d.b, 0u) & vec3<u32>(arg_1.e, 1u, arg_1.e)), vec3<u32>(u_input.a << (arg_1.e % 32u), 0u | var_0.b, ~18262u)), abs(~vec3<u32>(arg_1.b, 70389u, 1u)) & select(vec3<u32>(var_0.b, u_input.a, u_input.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 19172u, var_0.b), vec3<u32>(arg_1.d.b, 0u, arg_1.b)), true)), 8u)], ~firstLeadingBit(92463u));
    let var_2 = arg_1.e;
    let var_3 = 65629i;
    let var_4 = -422f;
    return var_1.c == ~1i;
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_3(vec4<i32>(abs(~u_input.c.x), 1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(5797i, 5744i), u_input.c.zz), -18957i), ~2147483647i), arg_2, firstTrailingBit(0i), global1[_wgslsmith_index_u32(arg_2, 8u)], arg_2);
    var var_1 = vec2<u32>(var_0.d.b, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6909u, 4294967295u) | vec3<u32>(28553u, u_input.a, 40453u), ~vec3<u32>(4294967295u, 91536u, arg_2)), ~_wgslsmith_add_u32(4294967295u, arg_2)));
    var_1 = abs(~(u_input.b ^ (u_input.b >> (u_input.b % vec2<u32>(32u)))));
    global1 = array<Struct_2, 8>();
    var_1 = ~u_input.b;
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<bool> {
    global0 = arg_3.a;
    return select(!select(select(select(vec2<bool>(false, arg_3.a), vec2<bool>(true, true), vec2<bool>(false, arg_3.a)), !vec2<bool>(arg_3.a, false), true && arg_3.a), vec2<bool>(false, true), vec2<bool>(all(vec3<bool>(arg_3.a, arg_3.a, arg_3.a)), any(vec2<bool>(arg_3.a, arg_3.a)))), select(select(!select(vec2<bool>(arg_3.a, false), vec2<bool>(arg_3.a, false), arg_3.a), select(vec2<bool>(false, arg_3.a), select(vec2<bool>(false, true), vec2<bool>(false, false), true), any(vec2<bool>(true, arg_3.a))), any(!vec4<bool>(true, arg_3.a, true, arg_3.a))), vec2<bool>(-1495f > _wgslsmith_f_op_f32(arg_1 + arg_2.x), arg_3.a), !(!(!vec2<bool>(arg_3.a, arg_3.a)))), select(select(vec2<bool>(func_2(arg_3.a, Struct_3(vec4<i32>(-41835i, u_input.c.x, 35229i, 9508i), u_input.b.x, -38597i, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.b.x)), arg_3.a), select(!vec2<bool>(arg_3.a, false), select(vec2<bool>(true, arg_3.a), vec2<bool>(false, arg_3.a), vec2<bool>(arg_3.a, arg_3.a)), vec2<bool>(false, arg_3.a)), !vec2<bool>(false, arg_3.a)), !func_3(!vec2<bool>(arg_3.a, arg_3.a), _wgslsmith_f_op_f32(floor(arg_0)), ~u_input.a), select(arg_3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b, 1i, 10958i, u_input.c.x), vec4<i32>(0i, 0i, arg_3.b, 0i)) == abs(34023i), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var_0 = select(select(func_1(-251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1567f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-776f, 1741f))) * vec2<f32>(-1748f, 714f)), Struct_1(true, u_input.c.x)), !(!vec2<bool>(true, var_0.x)), !func_1(-631f, _wgslsmith_f_op_f32(-785f - -413f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1161f)), Struct_1(true, -1i))), vec2<bool>(!var_0.x, false), vec2<bool>(any(vec3<bool>(var_0.x, true, false)) & false, u_input.b.x != reverseBits(u_input.a)));
    let var_1 = u_input.b.x;
    var var_2 = true;
    let var_3 = Struct_3(-(~vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.c.x), u_input.c.x >> (u_input.b.x % 32u), u_input.c.x & u_input.c.x, u_input.c.x)), var_1, 1i ^ countOneBits(~u_input.c.x), global1[_wgslsmith_index_u32(select(85077u, _wgslsmith_mod_u32(4294967295u, 6348u), _wgslsmith_mod_u32(~20184u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)) == ~(~var_1)), 8u)], ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(~14637u), ~_wgslsmith_div_u32(0u, var_1), ~var_3.e) | firstLeadingBit(11216u), u_input.c.zz, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1611f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(485f * var_3.d.a.x))), max(reverseBits(~(vec3<u32>(u_input.b.x, 103190u, var_1) & vec3<u32>(4294967295u, 45264u, var_3.b))), select(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, var_1), vec3<u32>(var_1, 535u, var_3.e))), ~firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, var_3.b)), var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.a.x, 1607f, -522f, var_3.d.a.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-607f, 170f, var_3.d.a.x, var_3.d.a.x) + vec4<f32>(-162f, -650f, var_3.d.a.x, -317f)))))));
}

