struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    let var_0 = ~(~_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(min(u_input.b, 0u), _wgslsmith_add_u32(80656u, 1u))));
    global0 = array<f32, 1>();
    let var_1 = reverseBits(4294967295u);
    var var_2 = Struct_1(arg_0.a);
    var var_3 = Struct_1(arg_0.a);
    return arg_1.x;
}

fn func_2() -> Struct_1 {
    var var_0 = select(true, true, func_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 922f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], -1289f) + vec4<f32>(-443f, 294f, global0[_wgslsmith_index_u32(4294967295u, 1u)], 1000f))), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))) | !(!(u_input.c > u_input.c) | true);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], -1251f, -517f, 1873f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(28582u, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)], global0[_wgslsmith_index_u32(45310u, 1u)]), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-884f, 742f, global0[_wgslsmith_index_u32(0u, 1u)], 1377f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], -1352f, -678f, global0[_wgslsmith_index_u32(62870u, 1u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], 202f, global0[_wgslsmith_index_u32(4294967295u, 1u)], 730f))), vec4<bool>(true, true, true, true)))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = func_2();
    var var_2 = var_0.x << (59997u % 32u);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-443f, _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 1u)]), _wgslsmith_f_op_f32(select(-1000f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false)))))));
    var var_4 = vec3<i32>(-u_input.c | min(firstLeadingBit(_wgslsmith_div_i32(1i, -19896i)), -_wgslsmith_sub_i32(2147483647i, 0i)), abs(7726i), i32(-1i) * -16206i);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = vec4<i32>(u_input.e.x, 1i, max(u_input.c & abs(u_input.e.x), select(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, 2147483647i), vec3<i32>(0i, -7112i, u_input.c)), true)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.c, -41784i))) & ~vec4<i32>(2147483647i, -1i, min(-1i >> (0u % 32u), _wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(2147483647i, u_input.e.x))), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c, -59579i), 48713i));
    global0 = array<f32, 1>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + -1857f)) + global0[_wgslsmith_index_u32(u_input.d, 1u)]);
    var var_2 = 37540u;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + 563f) * _wgslsmith_f_op_f32(arg_0.a.x * -1000f)) - func_1(vec2<bool>(!arg_2, u_input.c >= 0i)).a.x), arg_3.a.x, func_2().a.x);
    return _wgslsmith_mod_vec4_u32(~select(firstTrailingBit(vec4<u32>(3399u, u_input.d, u_input.b, 30696u)), reverseBits(vec4<u32>(9748u, 1u, 19016u, 4294967295u)), !select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, arg_2))), vec4<u32>(12370u, ~(~18256u) << (u_input.a.x % 32u), 1u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(func_4(func_1(vec2<bool>(false, false)), Struct_1(vec4<f32>(264f, global0[_wgslsmith_index_u32(37607u, 1u)], global0[_wgslsmith_index_u32(74609u, 1u)], 1917f)), true, func_2()), reverseBits(vec4<u32>(16296u, 4294967295u, u_input.d, u_input.d))), ~min(vec4<u32>(u_input.d, 29083u, u_input.a.x, u_input.a.x) << (vec4<u32>(18315u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(40011u, u_input.b, u_input.b, 27151u))));
    global0 = array<f32, 1>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(~61146u), 1u)]), -557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), var_0.zw), 1u)]))) * func_1(vec2<bool>(false, any(vec3<bool>(true, true, true)))).a.wyz);
    var_0 = select(~firstTrailingBit(countOneBits(vec4<u32>(58280u, 2408u, 24277u, var_0.x))) >> (((vec4<u32>(var_0.x, var_0.x, 7510u, var_0.x) ^ abs(vec4<u32>(u_input.b, 4294967295u, var_0.x, var_0.x))) << (vec4<u32>(~4294967295u, ~116178u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(26589u, 23601u))) % vec4<u32>(32u))) % vec4<u32>(32u)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(~35352u, var_0.x, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, var_0.x, 9303u), vec4<u32>(1u, var_0.x, 4294967295u, 14394u))), vec4<u32>(firstLeadingBit(4294967295u), 68120u, ~21702u, u_input.b)), min((vec4<u32>(u_input.d, var_0.x, 71228u, var_0.x) << (vec4<u32>(48325u, var_0.x, 55800u, u_input.d) % vec4<u32>(32u))) & select(vec4<u32>(u_input.d, 4294967295u, u_input.d, 1u), vec4<u32>(u_input.b, var_0.x, u_input.a.x, var_0.x), false), ~vec4<u32>(1u, u_input.d, u_input.a.x, 1u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 1u, var_0.x), vec4<u32>(24426u, 78445u, 2530u, 4294967295u)), min(vec4<u32>(var_0.x, u_input.a.x, 40657u, var_0.x), vec4<u32>(58492u, u_input.d, var_0.x, u_input.b))), firstLeadingBit(~vec4<u32>(var_0.x, 1u, 44719u, u_input.b))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, var_0.x, u_input.b), select(vec3<u32>(var_0.x, 15493u, var_0.x), var_0.xzw, vec3<bool>(false, true, false))), max(abs(60554u), 4294967295u), abs(u_input.a.x), ~1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_1(vec2<bool>(false, true)).a.x)))), u_input.c, firstTrailingBit(-1i), vec4<i32>(30084i, -15904i, ~(~u_input.c) << (0u % 32u), _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(11414i, u_input.e.x, -2147483647i))), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.e.x, u_input.c, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(-4535i, 20118i, u_input.e.x), vec3<i32>(u_input.c, u_input.e.x, -17677i))))));
}

