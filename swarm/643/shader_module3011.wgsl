struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 32210i;

var<private> global1: Struct_3;

var<private> global2: array<i32, 9>;

var<private> global3: array<i32, 2> = array<i32, 2>(11924i, 51801i);

var<private> global4: bool = true;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> f32 {
    let var_0 = global1.d;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d * global1.d), global1.d));
    var var_2 = _wgslsmith_f_op_f32(1339f * _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(-global1.d))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.d))) + -890f);
    global3 = array<i32, 2>();
    var var_3 = global1.e;
    return _wgslsmith_f_op_f32(987f + -1232f);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_4(arg_2.a, 996f, select(select(select(vec2<bool>(false, true), select(global1.a.c, arg_0.a.c, arg_2.c), arg_0.a.c), !select(vec2<bool>(global1.a.c.x, arg_0.a.a), vec2<bool>(true, false), vec2<bool>(global1.b.c.x, true)), select(select(arg_2.c, vec2<bool>(global1.a.a, false), vec2<bool>(global1.b.c.x, false)), vec2<bool>(arg_2.c.x, true), vec2<bool>(arg_2.c.x, false))), arg_0.a.c, any(vec4<bool>(!global1.a.a, true, arg_0.a.a | true, global1.c.a.c.x))));
    global0 = ~(~(-(~arg_3))) >> (_wgslsmith_mult_u32(~54586u, global1.e.b.x) % 32u);
    var var_1 = Struct_3(global1.c.a, Struct_1(arg_2.c.x, countOneBits(~(u_input.a.x >> (global1.c.a.b % 32u))), select(select(!vec2<bool>(var_0.c.x, var_0.c.x), !global1.e.a.c, true), vec2<bool>(!arg_0.a.c.x, all(vec3<bool>(true, global1.b.c.x, true))), var_0.c.x), select(global1.a.d, _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(global1.b.d, arg_0.a.d), _wgslsmith_clamp_vec3_i32(arg_0.a.d, global1.a.d, vec3<i32>(arg_3, arg_3, -28908i))), select(vec3<bool>(true, var_0.c.x, false), !vec3<bool>(false, var_0.c.x, true), !vec3<bool>(false, global1.a.a, false)))), Struct_2(Struct_1(select(global2[_wgslsmith_index_u32(global1.e.b.x, 9u)] > global1.c.a.d.x, !arg_0.a.a, true), _wgslsmith_add_u32(4294967295u, u_input.a.x), vec2<bool>(true, true), global1.c.a.d), vec4<u32>(1u, ~global1.c.a.b, 2476u, _wgslsmith_add_u32(4294967295u, 0u))), var_0.b, arg_0);
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(517f, -516f), var_0.a) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_2.a.x)))) - arg_2.a), vec2<f32>(var_0.b, 1000f), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.d.x, 1i, global2[_wgslsmith_index_u32(13109u, 9u)]), vec3<i32>(0i, global3[_wgslsmith_index_u32(var_1.b.b, 2u)], 0i)) == 1i)), var_1.d, arg_0.a.c);
    global4 = arg_0.a.a;
    return select(abs(select(-vec4<i32>(arg_3, arg_0.a.d.x, arg_3, -11832i), vec4<i32>(var_1.a.d.x, -2147483647i, 6510i, var_1.b.d.x), vec4<bool>(var_1.e.a.a, false, false, true))), _wgslsmith_mod_vec4_i32(~vec4<i32>(global3[_wgslsmith_index_u32(0u, 2u)], -59114i, -3928i, var_1.c.a.d.x) | _wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(var_1.e.b.x, 9u)], var_1.a.d.x, 1i, arg_0.a.d.x), vec4<i32>(-1i, global2[_wgslsmith_index_u32(1759u, 9u)], global3[_wgslsmith_index_u32(8185u, 2u)], var_1.a.d.x)), vec4<i32>(~var_1.b.d.x, arg_3, -28032i, -global3[_wgslsmith_index_u32(4294967295u, 2u)])), vec4<bool>(var_1.c.a.c.x, any(!vec3<bool>(var_1.b.c.x, true, var_0.c.x)), all(select(vec4<bool>(false, global1.a.a, false, arg_0.a.c.x), vec4<bool>(false, global1.e.a.a, arg_2.c.x, false), var_0.c.x)), true)) >> (select(~(var_1.e.b ^ (vec4<u32>(u_input.a.x, global1.a.b, u_input.a.x, 1u) >> (vec4<u32>(57986u, 77443u, 44958u, 23203u) % vec4<u32>(32u)))), select(vec4<u32>(arg_0.a.b, max(4294967295u, var_1.b.b), max(var_1.c.b.x, 1u), ~4294967295u), ~_wgslsmith_mult_vec4_u32(global1.e.b, arg_0.b), all(select(vec3<bool>(var_0.c.x, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, var_0.c.x)))), vec4<bool>(all(select(vec4<bool>(true, arg_0.a.a, var_1.a.a, true), vec4<bool>(true, true, global1.a.c.x, false), vec4<bool>(true, arg_2.c.x, global1.a.a, false))), arg_2.c.x, var_1.a.c.x, true)) % vec4<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: vec2<bool>) -> vec4<i32> {
    global3 = array<i32, 2>();
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_1.b * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_1.d)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-693f, global1.d) - arg_1.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, -195f) - arg_1.d))) - arg_1.b));
    var var_1 = global1.a.b;
    global4 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(abs(global1.d));
    return func_3(global1.c, _wgslsmith_f_op_f32(func_2()), Struct_4(arg_1.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)))), vec2<bool>(true, !arg_2.x || arg_2.x)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.a.x, u_input.a.x), global1.e.b.x), ~vec2<u32>(43452u, u_input.a.x)), 2u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 22547i, -1i, global2[_wgslsmith_index_u32(u_input.a.x, 9u)]), func_1(true, Struct_5(vec4<f32>(-945f, 1124f, -306f, -568f), vec2<f32>(global1.d, 956f), vec4<i32>(global1.b.d.x, global2[_wgslsmith_index_u32(64476u, 9u)], global1.a.d.x, global2[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec2<f32>(global1.d, global1.d), global1.b.d.yz), global1.e.a.c)) << (~countOneBits(global1.b.b) % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global1.e.a.d << (vec3<u32>(4294967295u, 5144u, 0u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global3[_wgslsmith_index_u32(u_input.a.x, 2u)], global2[_wgslsmith_index_u32(0u, 9u)]), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], global3[_wgslsmith_index_u32(1u, 2u)], 48150i), global1.c.a.d)), global3[_wgslsmith_index_u32(global1.c.b.x, 2u)]), -1i ^ _wgslsmith_mod_i32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a.x, 9u)]), reverseBits(-9111i))), _wgslsmith_sub_vec4_i32(firstTrailingBit(-(vec4<i32>(-7229i, global1.a.d.x, global1.b.d.x, global2[_wgslsmith_index_u32(4294967295u, 9u)]) << (global1.c.b % vec4<u32>(32u)))), ~min(select(vec4<i32>(global3[_wgslsmith_index_u32(65312u, 2u)], 61143i, global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 1i), vec4<i32>(global2[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(1u, 2u)], 0i, -1i), global1.c.a.a), vec4<i32>(39645i, 2147483647i, 27419i, -40315i))), vec4<i32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~4294967295u), 2u)], i32(-1i) * -70877i, abs(firstLeadingBit(-49829i >> (global1.a.b % 32u))), _wgslsmith_sub_i32(global1.a.d.x, _wgslsmith_clamp_i32(-1i, max(-75165i, -1551i), -global1.e.a.d.x))));
    let var_1 = true;
    global1 = Struct_3(Struct_1(any(vec3<bool>(global1.d > -1244f, global1.a.c.x, all(vec2<bool>(global1.c.a.a, true)))), 0u, !global1.e.a.c, max(select(global1.e.a.d ^ global1.b.d, vec3<i32>(59753i, 2147483647i, 10786i), !vec3<bool>(var_1, global1.a.c.x, true)), -func_3(Struct_2(Struct_1(global1.e.a.a, 10840u, global1.b.c, vec3<i32>(1i, -2147483647i, 79902i)), global1.c.b), global1.d, Struct_4(vec2<f32>(global1.d, global1.d), global1.d, vec2<bool>(true, var_1)), -1i).xyy)), global1.a, global1.e, _wgslsmith_f_op_f32(-global1.d), Struct_2(global1.e.a, global1.e.b));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f + 1004f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1583f, -1342f) + vec2<f32>(820f, global1.d)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.d, -923f), vec2<f32>(1289f, global1.d), true))))))), _wgslsmith_mult_vec4_i32(var_0, firstTrailingBit(max(-vec4<i32>(global1.c.a.d.x, 0i, 2147483647i, global3[_wgslsmith_index_u32(global1.a.b, 2u)]), vec4<i32>(var_0.x, var_0.x, global1.b.d.x, global1.a.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(992f, -1000f))))), global1.e.a.d.zx);
    let var_3 = _wgslsmith_add_vec3_i32(-var_2.c.yzy, _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(select(var_0.yyx, vec3<i32>(global1.e.a.d.x, 0i, -1i), vec3<bool>(global1.a.a, false, false)) & vec3<i32>(global1.e.a.d.x, global2[_wgslsmith_index_u32(global1.e.b.x, 9u)], -17710i), min(global1.e.a.d, vec3<i32>(-2147483647i, 2147483647i, var_2.e.x)), ~(~vec3<i32>(-21082i, global3[_wgslsmith_index_u32(global1.e.b.x, 2u)], 0i))), abs(reverseBits(vec3<i32>(var_2.e.x, 77181i, global2[_wgslsmith_index_u32(u_input.a.x, 9u)]) | vec3<i32>(-17558i, global3[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)])))));
    var var_4 = global1.e.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(u_input.a.yx), vec2<u32>(~(~global1.e.a.b), global1.c.a.b)), 41787i, u_input.a.x);
}

