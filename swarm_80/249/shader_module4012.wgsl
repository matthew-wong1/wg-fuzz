struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(415f, 1989f, -2087f, 1000f);

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(39546i, i32(-2147483648)), -362f);

var<private> global2: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(12494u, 0u, 0u, 0u), vec4<u32>(13315u, 4294967295u, 0u, 0u), vec4<u32>(29455u, 4294967295u, 4294967295u, 0u), vec4<u32>(6590u, 11721u, 1u, 64230u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 3614u, 26284u, 4294967295u), vec4<u32>(27944u, 0u, 111932u, 1u), vec4<u32>(52657u, 20955u, 15015u, 83837u), vec4<u32>(84304u, 15199u, 13196u, 4294967295u), vec4<u32>(1u, 116404u, 19963u, 4294967295u), vec4<u32>(36547u, 136062u, 4294967295u, 0u), vec4<u32>(17732u, 35901u, 0u, 0u), vec4<u32>(26291u, 4294967295u, 2677u, 4294967295u), vec4<u32>(40512u, 42924u, 22537u, 24938u), vec4<u32>(16604u, 28649u, 0u, 19014u), vec4<u32>(4294967295u, 18727u, 13520u, 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_sub_u32(0u, abs(0u)) >> (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(20834u, 16u)], ~abs(vec4<u32>(arg_1, 9851u, 6308u, 5238u))) % 32u);
    global1 = Struct_1(-(~abs(vec2<i32>(global1.b.x, 34868i) | global1.a)), ~vec2<i32>(1i, global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c)) - _wgslsmith_f_op_f32(max(1426f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(135f)), -550f)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(select(-365f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(515f))), all(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, true, arg_0, arg_0), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(min(global1.c, 778f))))));
    var var_2 = ~(~56688u);
    var var_3 = select(-36067i, _wgslsmith_div_i32(~_wgslsmith_mult_i32(-2147483647i, ~global1.b.x), -38758i), true | any(select(!vec4<bool>(true, true, false, arg_0), !vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(true, true, true, true))));
    return arg_0;
}

fn func_2() -> Struct_1 {
    global2 = array<vec4<u32>, 16>();
    var var_0 = Struct_1(global1.a, select(vec2<i32>(-11613i, -45070i), vec2<i32>(-1i & global1.b.x, global1.a.x | global1.b.x) & ~global1.a, vec2<bool>(!func_3(false, u_input.a.x), u_input.a.x != u_input.a.x)), _wgslsmith_f_op_f32(1166f - _wgslsmith_f_op_f32(1409f + 662f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.c, 1775f, _wgslsmith_f_op_f32(-global1.c)))))) + vec3<f32>(_wgslsmith_div_f32(678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-618f, 666f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-164f, global0.x))), 2892f)), var_0.c));
    let var_2 = u_input.a.x;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(var_1.x - -363f), -245f >= var_1.x)))), 992f, _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(step(-723f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, var_1.x))))))));
    return Struct_1(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(global1.a.x << (u_input.a.x % 32u), 1i), global1.a)), -_wgslsmith_clamp_vec2_i32(countOneBits(-global1.a), global1.a, reverseBits(max(var_0.a, var_0.b))), -527f);
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var_0 = Struct_1(vec2<i32>(-24453i, global1.b.x), ~(-(~(var_0.b | vec2<i32>(global1.a.x, 0i)))), -542f);
    var_0 = Struct_1(firstLeadingBit(~global1.a), vec2<i32>(firstLeadingBit(~(-1227i)), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1039f, _wgslsmith_div_f32(-390f, var_0.c), any(vec3<bool>(false, true, true))))))));
    let var_1 = 344u;
    global2 = array<vec4<u32>, 16>();
    return -_wgslsmith_div_i32(var_0.b.x, ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec2<i32>(global1.b.x, _wgslsmith_mult_i32(firstLeadingBit(global1.a.x), countOneBits(global1.b.x))), _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(global1.a, global1.a), countOneBits(firstTrailingBit(global1.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(818f, _wgslsmith_f_op_f32(1431f * global1.c))), -701f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~func_1(), func_2().b.x), firstLeadingBit(~select(vec3<i32>(-2649i, global1.b.x, -3231i) | vec3<i32>(84791i, 2147483647i, var_0.b.x), -vec3<i32>(-2147483647i, -85772i, 3968i), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f - -1949f))), _wgslsmith_f_op_vec2_f32(-global0.ww)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + _wgslsmith_f_op_f32(1089f + var_0.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3111f - -200f))))));
}

