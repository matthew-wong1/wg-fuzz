struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec3<u32> {
    global1 = 1u;
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    var var_0 = -countOneBits(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 2523i, 1i), vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(1i, 30575i, -27247i, -40508i))));
    let var_1 = !(!vec3<bool>(!all(vec3<bool>(true, false, true)), true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false))));
    return ~(~(~(~vec3<u32>(u_input.a, u_input.a, u_input.b))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = -729f;
    return func_1().x;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0, 0u) | (1u << (u_input.a % 32u)), 10u), u_input.c);
    global1 = 1u;
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_3(Struct_3(vec2<i32>(arg_2.a, -1i), vec4<f32>(arg_2.d.x, arg_2.d.x, arg_2.d.x, -518f), arg_2.a, Struct_1(-1i, vec3<u32>(22479u, 4294967295u, arg_2.b.x), arg_2.c, vec2<f32>(1852f, arg_2.c.x)))), arg_2.b.x, _wgslsmith_clamp_u32(min(~1u, 1u), 2464u, u_input.a), _wgslsmith_mult_u32(select(max(u_input.c, 1u), 21843u >> (arg_2.b.x % 32u), true), ~_wgslsmith_sub_u32(13864u, u_input.a))), ~(vec4<u32>(arg_0, arg_1.x, ~arg_2.b.x, arg_1.x) << (arg_1 % vec4<u32>(32u))));
    global0 = array<vec2<bool>, 21>();
    var var_2 = 1549f;
    return firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(u_input.b, func_3(Struct_3(vec2<i32>(0i, 2147483647i), arg_2.c, 2147483647i, arg_2)))) >> (~(~(~arg_0)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(select(65342u, u_input.c, any(!(!global0[_wgslsmith_index_u32(u_input.b, 21u)]))), 24464u, func_2(_wgslsmith_div_u32(51136u, u_input.a), ~vec4<u32>(15857u, 22344u, 76103u, u_input.c) & vec4<u32>(~u_input.a, ~u_input.b, _wgslsmith_mod_u32(4294967295u, 84356u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 811u), vec4<u32>(4294967295u, 0u, 5376u, u_input.b))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(50814i, 1i, -11935i, 0i) >> (vec4<u32>(157u, u_input.b, 4294967295u, u_input.a) % vec4<u32>(32u)), vec4<i32>(1i, -37625i, 12142i, -1i)), func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1016f, 508f, -544f, -441f) - vec4<f32>(1266f, 213f, 266f, 725f))), vec2<f32>(_wgslsmith_div_f32(1828f, 873f), _wgslsmith_f_op_f32(-326f - 718f)))), min(~13330u, func_3(Struct_3(vec2<i32>(-2147483647i, 46275i), vec4<f32>(-907f, -965f, -2722f, -1019f), -1i, Struct_1(2147483647i, vec3<u32>(1u, 4294967295u, u_input.a), vec4<f32>(1000f, 1048f, -116f, 144f), vec2<f32>(-1143f, -389f))))) << (firstTrailingBit(51539u) % 32u));
    let var_1 = Struct_3(_wgslsmith_mult_vec2_i32(select(vec2<i32>(-51170i, -75688i), vec2<i32>(1i, 1i), true), vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(187f, -1812f, -1000f, 1000f), vec4<f32>(-445f, 601f, -413f, 1000f)))))))), countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 0i), vec3<i32>(-2147483647i, -17456i, -2147483647i)), -2147483647i, ~21231i))), Struct_1(select(9042i, _wgslsmith_sub_i32(25361i << (u_input.b % 32u), 1i), any(vec3<bool>(false, false, false))), var_0.wzz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1145f, -1661f, 129f, 166f) * vec4<f32>(-475f, 1000f, 118f, -2514f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 767f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(653f, 283f))))));
    global0 = array<vec2<bool>, 21>();
    let var_2 = Struct_3(~(-abs(var_1.a)) << (countOneBits(var_1.d.b.yz | vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1930f, var_1.d.d.x, 1383f, var_1.b.x))))))), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.d.a, var_1.c), 30369i), var_1.d);
    var_0 = firstLeadingBit(~reverseBits(reverseBits(vec4<u32>(var_2.d.b.x, var_0.x, 42437u, var_2.d.b.x)))) ^ ~(~select(select(vec4<u32>(var_2.d.b.x, var_2.d.b.x, var_1.d.b.x, 4294967295u), vec4<u32>(var_2.d.b.x, var_2.d.b.x, 4294967295u, var_1.d.b.x), true), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, var_0.x, var_0.x), vec4<u32>(var_0.x, 0u, u_input.a, 0u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.a, var_2.d.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(539f, var_1.d.c.x, var_1.b.x), vec3<f32>(620f, var_1.b.x, 724f)) + vec3<f32>(-372f, _wgslsmith_f_op_f32(-352f - -837f), _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.d.x), _wgslsmith_f_op_f32(var_1.d.d.x + -163f), _wgslsmith_f_op_f32(f32(-1f) * -885f)), var_1.d.c.ywz)));
}

