struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<f32>(801f, -1986f, -569f)), Struct_1(vec3<f32>(557f, -1498f, 354f)), Struct_1(vec3<f32>(-978f, 543f, 333f)), Struct_1(vec3<f32>(714f, -433f, -562f)), Struct_1(vec3<f32>(-157f, -319f, 1408f)), Struct_1(vec3<f32>(-108f, 394f, -1121f)), Struct_1(vec3<f32>(491f, 540f, 726f)), Struct_1(vec3<f32>(-699f, -1200f, 1000f)), Struct_1(vec3<f32>(-386f, -2172f, 985f)), Struct_1(vec3<f32>(-1365f, -197f, -205f)), Struct_1(vec3<f32>(445f, 211f, 806f)), Struct_1(vec3<f32>(-1555f, -740f, 251f)), Struct_1(vec3<f32>(-328f, -169f, 927f)), Struct_1(vec3<f32>(961f, 642f, 1072f)), Struct_1(vec3<f32>(-1275f, -533f, -165f)), Struct_1(vec3<f32>(1603f, -309f, 1098f)), Struct_1(vec3<f32>(-1000f, -908f, 883f)), Struct_1(vec3<f32>(-310f, 444f, -205f)), Struct_1(vec3<f32>(951f, -1350f, -1000f)));

var<private> global2: array<vec3<i32>, 14>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * 642f)), 1000f)), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -839f))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = ~(vec3<u32>(0u, ~_wgslsmith_mod_u32(34402u, arg_0.x), select(~0u, ~51029u, all(vec2<bool>(false, true)))) & abs(~(~vec3<u32>(u_input.c, arg_0.x, 17033u))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f + 2010f)))));
    global0 = global1[_wgslsmith_index_u32(arg_0.x, 19u)];
    var var_1 = Struct_1(vec3<f32>(global0.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)), global0.a.x), -909f), _wgslsmith_f_op_f32(min(1422f, _wgslsmith_f_op_f32(-890f * 949f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, var_1.a.x, -309f))) + global0.a)));
    return vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), u_input.b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(-89451i, u_input.b.x, 1i, u_input.a.x), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, -2147483647i), -vec4<i32>(u_input.a.x, 1i, -1i, -2147483647i))) & countOneBits(i32(-1i) * -10073i));
}

fn func_2() -> i32 {
    return _wgslsmith_div_i32(-(~_wgslsmith_sub_i32(u_input.b.x, -1i) & -abs(u_input.a.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-31789i, u_input.a.x), func_3(countOneBits(vec2<u32>(u_input.c, u_input.c)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))), ~func_3(vec2<u32>(10044u, u_input.c), vec4<bool>(true, true, true, true)).x));
}

fn func_4(arg_0: f32, arg_1: i32) -> bool {
    global1 = array<Struct_1, 19>();
    global2 = array<vec3<i32>, 14>();
    global2 = array<vec3<i32>, 14>();
    global1 = array<Struct_1, 19>();
    let var_0 = firstLeadingBit(vec4<i32>(max(abs(min(-2147483647i, -2147483647i)), -1i), i32(-1i) * -(i32(-1i) * -2147483647i), arg_1, -20084i));
    return all(vec3<bool>(false, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = !vec2<bool>(select(true, true, !any(vec4<bool>(false, false, true, false))), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x * 356f), _wgslsmith_f_op_f32(func_1()))), func_2()));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(45226u, u_input.c, var_0, 0u)), ~select(vec4<u32>(u_input.c, 15361u, 0u, 1u), ~vec4<u32>(6929u, 0u, u_input.c, 40900u), true)), vec4<u32>(var_0 ^ _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 28819u), vec2<u32>(u_input.c, u_input.c)), 13586u), 67890u, 1u, ~var_0)), 19u)];
    let var_3 = global1[_wgslsmith_index_u32(u_input.c, 19u)];
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) * -239f)), _wgslsmith_f_op_f32(min(-280f, var_2.a.x)), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1046f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.x, var_2.a.x)))))));
    let var_5 = select(firstTrailingBit(firstLeadingBit(~vec4<u32>(var_0, u_input.c, u_input.c, 24562u))), ~(~(~vec4<u32>(1u, 1u, 1u, 15269u))), var_1.x) << (_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, u_input.c ^ 78407u, u_input.c, ~var_0)), vec4<u32>(0u, var_0, var_0, u_input.c)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(~min(reverseBits(u_input.a.xy), select(u_input.b, u_input.b, false)), u_input.a.zz), _wgslsmith_f_op_vec2_f32(select(var_3.a.yx, vec2<f32>(_wgslsmith_f_op_f32(827f + _wgslsmith_div_f32(var_2.a.x, 1000f)), _wgslsmith_f_op_f32(func_1())), select(select(vec2<bool>(false, true), var_1, var_1), vec2<bool>(any(vec4<bool>(false, var_1.x, true, var_1.x)), true), select(func_4(-211f, u_input.a.x), var_1.x, var_1.x | var_1.x)))), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -807f) + _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, max(2147483647i, -2147483647i), 2147483647i & u_input.b.x), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(0i, 2147483647i) & select(u_input.b.x, u_input.b.x, false))));
}

