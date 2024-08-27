struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(0i, -5462i, 0i, -10803i), vec4<i32>(53640i, 0i, 1i, -1i), vec4<i32>(4145i, 14412i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 37781i), vec4<i32>(-1i, 0i, i32(-2147483648), -21582i), vec4<i32>(-8775i, 0i, 27747i, 0i), vec4<i32>(5477i, -50973i, 2147483647i, 55724i), vec4<i32>(i32(-2147483648), -43543i, 1i, -38113i), vec4<i32>(1i, 7127i, 1590i, 36668i));

var<private> global1: vec2<f32> = vec2<f32>(1212f, 464f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = global1.x;
    let var_1 = Struct_1(26849i, countOneBits(select(_wgslsmith_add_vec2_i32(vec2<i32>(18485i, 40562i), vec2<i32>(0i, -5498i)), vec2<i32>(1i, 36299i), false) ^ -(~vec2<i32>(-24607i, 75592i))), -vec4<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(12149i, 0i, 2147483647i))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 2147483647i), vec3<i32>(1i, 2147483647i, 2147483647i)), -reverseBits(-2147483647i), abs(~1i)));
    var var_2 = var_1;
    let var_3 = 0u ^ u_input.a;
    let var_4 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.d, u_input.a, 27739u, 1u) & ~vec4<u32>(17286u, u_input.d, 0u, 0u)), vec4<u32>(~var_3 >> (u_input.a % 32u), 4294967295u, var_3, _wgslsmith_clamp_u32(u_input.a, u_input.b, 1u))), ~(~(~select(vec4<u32>(34059u, 38823u, var_3, 4294967295u), vec4<u32>(u_input.a, var_3, 4294967295u, 4294967295u), vec4<bool>(true, true, false, true)))));
    return ~_wgslsmith_mod_vec2_i32(select(vec2<i32>(var_2.c.x & var_2.b.x, var_2.b.x), countOneBits(select(var_2.b, vec2<i32>(0i, -1i), false)), true), ~(~vec2<i32>(16129i, var_2.a)) | ~vec2<i32>(2147483647i, var_1.c.x));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<i32>, 9>();
    let var_0 = ~firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(43921u, u_input.b, u_input.c.x), vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.c.x, 1u, u_input.a)), vec3<u32>(65464u, 1u, 95232u))) ^ vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.c.x, 4946u, 0u), ~vec3<u32>(u_input.d, 40411u, u_input.d))), u_input.d);
    let var_1 = Struct_1(_wgslsmith_add_i32(-2147483647i, 1i), -(func_3() ^ (vec2<i32>(-1i) * -vec2<i32>(-7623i, 1i))), _wgslsmith_div_vec4_i32(-select(vec4<i32>(-22297i, 2147483647i, -31207i, 1i), global0[_wgslsmith_index_u32(15532u, 9u)], true), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i), ~global0[_wgslsmith_index_u32(var_0.x, 9u)])) << ((~vec4<u32>(0u, var_0.x, u_input.c.x, 4294967295u) | min(vec4<u32>(u_input.a, u_input.a, var_0.x, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.b, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 47322u)))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1251f, 1000f, global1.x, 784f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, -364f, -237f, 1033f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-371f, global1.x, global1.x, 1575f) - vec4<f32>(global1.x, 1298f, global1.x, -1061f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-643f, 1207f)), _wgslsmith_f_op_f32(max(global1.x, global1.x)), -1125f, _wgslsmith_f_op_f32(f32(-1f) * -705f))))) - vec4<f32>(global1.x, global1.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1312f)))));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-237f, 1079f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-583f, var_2.x), vec2<f32>(global1.x, var_2.x)), var_2.wx))), _wgslsmith_f_op_vec2_f32(-var_2.wy));
    return Struct_1(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(var_1.c.x, var_1.a, 2147483647i) | (var_1.c.xzy | vec3<i32>(2147483647i, var_1.c.x, var_1.b.x))), vec3<i32>(-1i, _wgslsmith_add_i32(var_1.b.x >> (4294967295u % 32u), var_1.c.x), 2147483647i)), vec2<i32>(-var_1.b.x, var_1.b.x), countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.a, u_input.d), vec3<u32>(46445u, 47281u, var_0.x)), _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(u_input.c.x, var_0.x, 0u))), 9u)]));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<f32>) -> vec2<i32> {
    var var_0 = func_2();
    var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = func_2().b;
    global0 = array<vec4<i32>, 9>();
    return abs(abs(-firstTrailingBit(var_1)) & _wgslsmith_div_vec2_i32((vec2<i32>(arg_0.c.x, 2113i) >> (u_input.c % vec2<u32>(32u))) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), arg_0.c.xy));
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_1(-2147483647i, _wgslsmith_mod_vec2_i32(func_4(func_2(), select(max(vec4<u32>(35503u, 72598u, 16641u, u_input.c.x), vec4<u32>(u_input.d, 74158u, u_input.b, 4294967295u)), vec4<u32>(4028u, u_input.d, u_input.b, 4294967295u) & vec4<u32>(1u, u_input.b, 0u, 19969u), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, 678f)))), -vec2<i32>(_wgslsmith_div_i32(-1i, 55744i), _wgslsmith_mult_i32(-1020i, -4716i))), ~vec4<i32>(select(1i, reverseBits(-61908i), true), reverseBits(1i), -51909i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 38870i), abs(vec2<i32>(35455i, 1i)))));
    let var_1 = select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + 395f), global1.x) - global1.x) >= global1.x);
    var var_2 = var_1.x;
    let var_3 = func_2();
    global0 = array<vec4<i32>, 9>();
    return var_3.c.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(select(_wgslsmith_div_vec3_i32(max(vec3<i32>(-914i, 2147483647i, -41155i), vec3<i32>(-2147483647i, -2147483647i, 2147483647i)), vec3<i32>(25766i, 22801i, 21675i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-23725i, -1i, -43983i), func_1()), vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(24656i, 23186i, -20350i, 2147483647i), global0[_wgslsmith_index_u32(11695u, 9u)]), func_1().x), -1i, 18521i)), global1.x, ~(1u | u_input.a));
}

