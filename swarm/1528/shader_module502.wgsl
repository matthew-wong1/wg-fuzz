struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: vec3<u32> = vec3<u32>(7227u, 52361u, 0u);

var<private> global2: Struct_2;

var<private> global3: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(834f * _wgslsmith_f_op_f32(f32(-1f) * -1210f));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(any(select(select(global3[_wgslsmith_index_u32(12936u, 32u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10867u, 7u)], 32u)], global2.b.a), select(vec3<bool>(false, global2.d.a, global2.d.a), vec3<bool>(global2.b.a, false, global2.d.a), false), global3[_wgslsmith_index_u32(~66721u, 32u)])) & global2.d.a, true, global2.d.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(370f, 398f)), vec2<f32>(-292f, -558f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-138f, -1762f) - vec2<f32>(362f, -1000f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1829f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(124f, 344f))), vec2<f32>(-135f, 762f)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1891f, -1452f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(184f, 1000f))), -1067f));
    var var_2 = var_1.x;
    let var_3 = global2.d;
    var var_4 = (~57654u >= ~var_3.b.x) & !(true == all(select(vec2<bool>(var_0.x, false), var_0.yy, var_0.zz)));
    return ~(~((_wgslsmith_mult_u32(113038u, var_3.b.x) | firstTrailingBit(global2.b.b.x)) << (1u % 32u)));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(224f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -263f)) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1410f - -462f)))))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-733f)), -834f));
    var var_2 = Struct_2(global2.c.yy, Struct_1(~min(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(30282u, 7u)]) >= firstTrailingBit(func_3()), global2.d.b), _wgslsmith_sub_vec4_i32(-(countOneBits(vec4<i32>(2147483647i, 43014i, arg_0.a, global2.a.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 36167u, global2.d.b.x, 4294967295u), vec4<u32>(global1.x, u_input.a, 2201u, u_input.a)) % vec4<u32>(32u))), global2.c), Struct_1(!(!global2.d.a), vec3<u32>(37995u, 107850u, ~55041u) | (global2.d.b >> (global2.b.b % vec3<u32>(32u)))));
    let var_3 = true;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(497f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f - -142f)))), -537f));
    return Struct_2(~_wgslsmith_mult_vec2_i32(-vec2<i32>(var_2.c.x, 2147483647i) | vec2<i32>(2147483647i, global2.c.x), -var_2.a), global2.b, vec4<i32>(14201i, ~(-global2.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.x, -1i, global2.a.x, 1i), vec4<i32>(-21627i, arg_0.a, var_2.c.x, -16950i)), reverseBits(var_2.c)), _wgslsmith_mult_vec4_i32(var_2.c >> (vec4<u32>(20232u, global1.x, 0u, 1u) % vec4<u32>(32u)), vec4<i32>(var_2.c.x, var_2.c.x, var_2.c.x, arg_0.a))), _wgslsmith_sub_i32(select(global2.a.x, -2147483647i << (global2.b.b.x % 32u), true), _wgslsmith_add_i32(var_2.a.x, _wgslsmith_sub_i32(global2.a.x, arg_0.a)))), Struct_1(any(select(vec2<bool>(var_2.d.a, false), vec2<bool>(global2.d.a, global2.b.a), false)) && true, vec3<u32>(~(~global0[_wgslsmith_index_u32(88372u, 7u)]), global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.b.x, global0[_wgslsmith_index_u32(0u, 7u)], global2.d.b.x), vec3<u32>(1u, 15661u, var_2.b.b.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = vec4<u32>(14088u, firstTrailingBit(~firstLeadingBit(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 0u))), countOneBits(1u), global0[_wgslsmith_index_u32(u_input.a, 7u)]);
    global2 = arg_0;
    let var_2 = _wgslsmith_sub_i32(0i, arg_0.c.x);
    var var_3 = global0[_wgslsmith_index_u32(17922u, 7u)];
    return Struct_1(!(!any(vec2<bool>(true, true))), global2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_3(-23870i)), -1885f, !vec2<bool>(true, reverseBits(global2.c.x) == _wgslsmith_div_i32(global2.c.x, global2.c.x)));
    global1 = _wgslsmith_add_vec3_u32(vec3<u32>(43619u, ~firstTrailingBit(_wgslsmith_sub_u32(global2.d.b.x, global0[_wgslsmith_index_u32(33359u, 7u)])), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 7u)], 1u, global0[_wgslsmith_index_u32(global1.x, 7u)], global0[_wgslsmith_index_u32(61704u, 7u)]), ~vec4<u32>(0u, 11483u, 29726u, global1.x)), _wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_mult_u32(u_input.a, 0u)))), var_0.b);
    var var_1 = true;
    var var_2 = -2147483647i;
    global0 = array<u32, 7>();
    var_1 = reverseBits(global2.a.x) <= reverseBits(abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(global2.a.x, -2147483647i), global2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(787f, -421f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1042f, -859f))))), global2.a.x, firstTrailingBit(vec2<u32>(~_wgslsmith_sub_u32(global2.d.b.x, 1u), abs(~global1.x))), 3188u << (~u_input.a % 32u));
}

