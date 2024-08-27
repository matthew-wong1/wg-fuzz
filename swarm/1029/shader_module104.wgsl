struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(1120f, -434f, 846f));

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<i32, 11> = array<i32, 11>(2147483647i, 18326i, -28988i, -9934i, 14381i, i32(-2147483648), -1i, -1i, -24039i, 132791i, 11818i);

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1076f, _wgslsmith_f_op_f32(f32(-1f) * -1082f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(575f, arg_1.c.b.x) - _wgslsmith_f_op_f32(arg_1.c.b.x - 1138f)))))));
    return arg_1.d.xz;
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    global0 = array<vec3<f32>, 1>();
    global3 = array<Struct_1, 16>();
    global1 = array<Struct_2, 32>();
    global2 = array<i32, 11>();
    let var_0 = true;
    return vec3<u32>(countOneBits(~countOneBits(u_input.b)), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 77878u), vec2<u32>(arg_0.x, 4294967295u))), countOneBits(min(~4294967295u, arg_0.x | 103620u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 55124u), vec3<u32>(46494u, 31792u, 1u)) % 32u), ~1u, _wgslsmith_mod_u32(4294967295u >> (arg_0.x % 32u), firstTrailingBit(u_input.b))), ~(vec3<u32>(1u, 1u, arg_0.x) >> (vec3<u32>(0u, u_input.b, arg_0.x) % vec3<u32>(32u))) & (~vec3<u32>(arg_0.x, 4294967295u, u_input.b) << (_wgslsmith_mult_vec3_u32(vec3<u32>(872u, 4294967295u, 1u), vec3<u32>(4559u, arg_0.x, arg_0.x)) % vec3<u32>(32u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = arg_3.b.x;
    let var_1 = func_3(~arg_3.b);
    var var_2 = ~(~u_input.a.yy);
    let var_3 = Struct_2(false, arg_3.b, Struct_1(-abs(0i) >> (countOneBits(func_3(vec2<u32>(arg_3.b.x, 4294967295u)).x) % 32u), arg_3.c.b), select(select(!vec3<bool>(arg_1.x, true, false), vec3<bool>(u_input.a.x <= 1i, u_input.b > u_input.b, any(vec3<bool>(arg_3.a, arg_1.x, arg_1.x))), arg_3.d), select(select(arg_3.d, arg_3.d, arg_3.d), vec3<bool>(false && arg_3.a, false, true | arg_3.a), arg_3.d.x), func_1(10141u, Struct_2(false, vec2<u32>(0u, 4294967295u), global3[_wgslsmith_index_u32(u_input.b, 16u)], arg_3.d)).x | select(true, arg_1.x, !arg_1.x)));
    global2 = array<i32, 11>();
    return ~vec4<u32>(~var_0, (4294967295u ^ arg_0) >> (var_0 % 32u), _wgslsmith_mult_u32(~_wgslsmith_add_u32(0u, 0u), u_input.b >> ((1u << (var_1.x % 32u)) % 32u)), reverseBits(_wgslsmith_mult_u32(reverseBits(59783u), ~var_0)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(arg_2), vec2<i32>(-2147483647i, firstLeadingBit(arg_2.x))), ~(~(vec2<i32>(-13678i, global2[_wgslsmith_index_u32(arg_3.x, 11u)]) >> (arg_3 % vec2<u32>(32u))))), vec4<f32>(arg_0.x, _wgslsmith_div_f32(-757f, _wgslsmith_f_op_f32(ceil(arg_0.x))), arg_0.x, -484f));
    var var_1 = Struct_3(Struct_2(!any(vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(arg_3.x, 43064u) ^ vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 19609u))), Struct_1(~(~1i), vec4<f32>(_wgslsmith_f_op_f32(select(241f, 335f, true)), _wgslsmith_f_op_f32(-422f - 942f), _wgslsmith_f_op_f32(step(900f, -1088f)), _wgslsmith_f_op_f32(select(var_0.b.x, arg_0.x, true)))), vec3<bool>(true, true, true)));
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(arg_3.x, select(arg_1.x | 4294967295u, (arg_1.x | 0u) >> (~arg_3.x % 32u), !var_1.a.a)), 1u);
    var var_3 = !(!select(vec3<bool>(var_1.a.a, true, var_1.a.a), !vec3<bool>(var_1.a.d.x, var_1.a.a, var_1.a.a), !var_1.a.d));
    global1 = array<Struct_2, 32>();
    return Struct_3(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-513f, -1159f, -288f, 373f))) + vec4<f32>(-853f, -1098f, -488f, 444f)))), min(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 26561u, u_input.b, u_input.b), vec4<u32>(0u, 0u, u_input.b, 1u)) >> (~vec4<u32>(u_input.b, 35678u, 1u, 1u) % vec4<u32>(32u)), ~firstTrailingBit(vec4<u32>(11968u, 1u, 21059u, u_input.b))), firstTrailingBit(func_2(u_input.b, func_1(u_input.b, Struct_2(false, vec2<u32>(11051u, u_input.b), Struct_1(u_input.a.x, vec4<f32>(800f, 373f, 493f, 592f)), vec3<bool>(true, true, false))), u_input.a.x, Struct_2(false, vec2<u32>(u_input.b, u_input.b), global3[_wgslsmith_index_u32(u_input.b, 16u)], vec3<bool>(true, true, true))))), u_input.a.wy, func_3(func_3(~vec2<u32>(u_input.b, 4294967295u)).xx).xx);
    var var_1 = func_4(func_4(_wgslsmith_div_vec4_f32(var_0.a.c.b, vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.c.b.x)), _wgslsmith_div_f32(-1885f, 716f), _wgslsmith_f_op_f32(-1000f - -118f), _wgslsmith_f_op_f32(1000f + var_0.a.c.b.x))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(14312u, var_0.a.b.x), var_0.a.b), ~(var_0.a.b.x | 7284u), reverseBits(8496u), 10272u), vec2<i32>(global2[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 11u)] >> (13259u % 32u), 1i), var_0.a.b).a.c.b, ~vec4<u32>(1u, ~_wgslsmith_div_u32(u_input.b, 38729u), _wgslsmith_mod_u32(firstLeadingBit(u_input.b), 4294967295u), min(var_0.a.b.x, 4294967295u) | (u_input.b | 53720u)), ~vec2<i32>(1i, abs(abs(-25163i))), min(_wgslsmith_div_vec2_u32(select(vec2<u32>(var_0.a.b.x, u_input.b) << (vec2<u32>(var_0.a.b.x, u_input.b) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.b.x, 12757u), vec2<u32>(5093u, u_input.b)), true), vec2<u32>(81523u, u_input.b) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 4294967295u), vec2<u32>(var_0.a.b.x, u_input.b)) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(vec2<u32>(1u, countOneBits(33938u)), var_0.a.b)));
    let var_2 = vec2<f32>(var_0.a.c.b.x, -153f);
    let var_3 = _wgslsmith_dot_vec3_u32(max(~((vec3<u32>(14532u, 17392u, var_1.a.b.x) >> (vec3<u32>(34482u, 59900u, 8798u) % vec3<u32>(32u))) & select(vec3<u32>(47524u, 4294967295u, u_input.b), vec3<u32>(74852u, 4294967295u, 1u), var_0.a.d)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(0u, u_input.b, 4294967295u) ^ vec3<u32>(4294967295u, 4712u, var_0.a.b.x)), ~(~vec3<u32>(u_input.b, var_0.a.b.x, 4294967295u)))), func_3(vec2<u32>(0u, var_0.a.b.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_4(var_1.a.c.b, vec4<u32>(var_3, var_3, 44249u, 6417u), u_input.a.xx, var_1.a.b).a.c.b.x + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -323f)), var_2)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.c.b.yy * _wgslsmith_f_op_vec2_f32(var_1.a.c.b.wy - var_2)), _wgslsmith_f_op_vec2_f32(-var_1.a.c.b.xx)));
    let var_5 = Struct_1(u_input.a.x, var_1.a.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~1u) | max(0u, var_1.a.b.x ^ 0u), ~2147483647i, var_1.a.c.b.wyw, vec3<i32>(var_0.a.c.a, -firstTrailingBit(global2[_wgslsmith_index_u32(~var_0.a.b.x, 11u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.c.a, var_1.a.c.a) & -vec2<i32>(2242i, u_input.a.x), min(abs(u_input.a.wx), _wgslsmith_mult_vec2_i32(u_input.a.yx, u_input.a.wx)))));
}

