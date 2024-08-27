struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(Struct_1(-288f), 1498f, vec2<bool>(true, true));

var<private> global2: bool = false;

var<private> global3: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(779f, -1554f, 224f), vec3<f32>(344f, -525f, 1840f), vec3<f32>(-777f, -188f, 1918f), vec3<f32>(664f, 368f, 847f), vec3<f32>(261f, -722f, -788f), vec3<f32>(-622f, 1000f, 1937f), vec3<f32>(-418f, -1000f, 726f), vec3<f32>(2826f, -1000f, 1000f), vec3<f32>(-1000f, -1000f, -616f), vec3<f32>(998f, -428f, 153f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = true;
    var var_1 = Struct_1(global1.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(558f, 1018f, 466f, global1.a.a))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-169f, -349f, global1.a.a, 938f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-1130f + -585f), var_1.a, _wgslsmith_f_op_f32(floor(-1942f)))));
    global3 = array<vec3<f32>, 10>();
    let var_3 = Struct_2(global1.a, 1069f, select(select(select(!vec2<bool>(var_0, global1.c.x), select(vec2<bool>(global1.c.x, global1.c.x), global1.c, true), vec2<bool>(var_0, true)), global1.c, true), global1.c, true));
    return select(select(select(vec2<bool>(true, false), vec2<bool>(!var_3.c.x, true), var_0), select(select(vec2<bool>(true, true), vec2<bool>(false, var_0), select(var_0, var_0, var_0)), vec2<bool>(var_0, any(vec3<bool>(true, global1.c.x, var_0))), select(global1.c, var_3.c, var_2.x < global1.b)), _wgslsmith_mod_u32(u_input.b, abs(4294967295u)) == 1u), !var_3.c, select(vec2<bool>(true, select(-1i, -58073i, var_0) <= _wgslsmith_dot_vec2_i32(vec2<i32>(-9160i, 26475i), vec2<i32>(1i, 2147483647i))), select(select(select(var_3.c, vec2<bool>(false, false), false), !global1.c, vec2<bool>(var_3.c.x, global1.c.x)), select(select(vec2<bool>(var_0, var_3.c.x), global1.c, global1.c), vec2<bool>(true, true), select(var_3.c, vec2<bool>(var_0, var_3.c.x), true)), vec2<bool>(any(vec4<bool>(true, var_3.c.x, false, false)), all(global1.c))), select(select(vec2<bool>(var_0, var_3.c.x), select(global1.c, var_3.c, var_3.c), var_3.c.x), var_3.c, u_input.b <= _wgslsmith_add_u32(u_input.c.x, 27565u))));
}

fn func_2() -> vec2<i32> {
    global0 = global1.c.x;
    global1 = Struct_2(global1.a, 419f, func_3());
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(global1.a.a))), reverseBits(abs(-firstLeadingBit(vec2<i32>(15128i, 17591i)))));
    global3 = array<vec3<f32>, 10>();
    let var_1 = 1i | ~(~var_0.b.x >> (u_input.a % 32u));
    return max(min(var_0.b, _wgslsmith_add_vec2_i32(vec2<i32>(var_1 & 1i, ~25072i), var_0.b)), -(vec2<i32>(i32(-1i) * -76558i, var_1 >> (u_input.a % 32u)) << (u_input.c.xz % vec2<u32>(32u))));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_vec2_i32(select(func_2(), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 45688i), vec2<i32>(abs(-2147483647i), i32(-1i) * -2147483647i)), vec2<bool>(all(!vec2<bool>(global1.c.x, true)), !global1.c.x)), vec2<i32>(-2147483647i, 1i >> (_wgslsmith_sub_u32(u_input.b << (18877u % 32u), _wgslsmith_clamp_u32(0u, 1u, 77502u)) % 32u)));
    let var_1 = 0u;
    global2 = arg_0;
    global0 = select(arg_0, global1.c.x, (_wgslsmith_mult_i32(-25170i, firstTrailingBit(2147483647i)) < select(_wgslsmith_mult_i32(-18834i, var_0.x), ~47139i, all(vec4<bool>(global1.c.x, true, arg_0, true)))) && !arg_0);
    var var_2 = Struct_3(global1.a, ~(~var_0));
    return global3[_wgslsmith_index_u32(~1u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(u_input.a, 10u)] + global3[_wgslsmith_index_u32(25350u, 10u)])) * _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(u_input.b, 10u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(5270u, 106900u)), 10u)])) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(global1.c.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(u_input.c.x, 10u)])) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a.a, -2324f, global1.b)))))), true));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 0u), 40043u), _wgslsmith_div_u32(u_input.b, u_input.c.x)), u_input.a);
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-var_0.x)), vec2<i32>(_wgslsmith_mult_i32(func_2().x >> ((7327u >> (var_1.x % 32u)) % 32u), max(-31743i, 13610i)), _wgslsmith_sub_i32(-(i32(-1i) * -49566i), firstLeadingBit(-1i))));
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.x))))), var_0.x, !global1.c);
    var_2 = Struct_3(global1.a, ~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(var_2.b, _wgslsmith_clamp_vec2_i32(var_2.b, vec2<i32>(-35616i, 2147483647i), var_2.b)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-1i, var_2.b.x), abs(var_2.b), min(vec2<i32>(-39201i, var_2.b.x), vec2<i32>(-63600i, 2147483647i))), var_2.b));
    let var_3 = Struct_3(var_2.a, _wgslsmith_div_vec2_i32(-reverseBits(vec2<i32>(var_2.b.x, var_2.b.x)), vec2<i32>(-1i, 1i)));
    let var_4 = -(countOneBits(firstTrailingBit(var_2.b)) << (u_input.c.zz % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a, u_input.c.zx, _wgslsmith_add_u32(max(firstTrailingBit(var_1.x), max(firstLeadingBit(64461u), var_1.x)), ~abs(var_1.x)), abs(_wgslsmith_mod_vec3_u32(min(vec3<u32>(1u, 0u, u_input.b), u_input.c), vec3<u32>(15737u, _wgslsmith_clamp_u32(var_1.x, 74634u, u_input.c.x), 23444u))));
}

