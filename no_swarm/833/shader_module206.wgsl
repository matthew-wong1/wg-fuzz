struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2>;

var<private> global1: vec4<i32> = vec4<i32>(39092i, 1i, 1i, -4102i);

var<private> global2: array<f32, 19>;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(-30437i, vec2<bool>(true, true), vec4<i32>(9211i, 15393i, 1i, 73086i), vec2<u32>(0u, 1u), vec2<bool>(true, false));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec2<u32> {
    return vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(4294967295u, ~global4.d.x), 24664u), 1u);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> vec4<i32> {
    var var_0 = Struct_2(~74396u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 19u)]) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 22385u), 19u)])), global2[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global4.d.x, 19u)])))))), _wgslsmith_f_op_f32(-531f + 1000f)), func_2().x, global1.yz);
    var var_1 = arg_1;
    return arg_1.c | vec4<i32>(arg_2, 0i, -_wgslsmith_dot_vec2_i32(arg_1.c.wx, _wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, arg_1.a), vec2<i32>(var_1.a, 436i))), _wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(global1.x, var_0.d.x), -var_1.c.x >> (~arg_3.x % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = arg_0;
    global0 = array<vec2<f32>, 2>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2010f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(686f, global2[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.d.x, 19u)] + -3201f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 19u)] + -1245f)))) + _wgslsmith_f_op_f32(min(1f, 2165f)));
    global3 = true;
    let var_2 = ~arg_1.x << (73107u % 32u);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(194f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(83990u, 19u)], global2[_wgslsmith_index_u32(arg_0.d.x, 19u)]) + _wgslsmith_f_op_f32(911f - global2[_wgslsmith_index_u32(1u, 19u)])))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(32833u, 19u)] + _wgslsmith_f_op_f32(select(-533f, _wgslsmith_f_op_f32(1006f * -131f), any(vec4<bool>(false, arg_0.e.x, false, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(firstTrailingBit(~1u), 19u)])), global2[_wgslsmith_index_u32(firstTrailingBit(~func_2().x), 19u)]));
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<f32>, 2>();
    global4 = Struct_1(-2147483647i, !select(vec2<bool>(true, true), select(select(vec2<bool>(global4.e.x, global4.b.x), vec2<bool>(false, global4.b.x), false), global4.b, !vec2<bool>(global4.b.x, true)), false), global4.c, max(firstTrailingBit(func_2()), global4.d), global4.b);
    global2 = array<f32, 19>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(reverseBits(global4.a), !global4.e, func_3(4294967295u, Struct_1(global1.x, !global4.b, -vec4<i32>(-39045i, u_input.c.x, 1i, global4.a), global4.d | global4.d, global4.b), global4.c.x, ~(global4.d | global4.d)), ~max(~vec2<u32>(u_input.b, 27227u), abs(global4.d)), select(vec2<bool>(true, true), global4.e, vec2<bool>(global4.b.x, true))), firstTrailingBit(~select(min(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(12757u, u_input.b, global4.d.x)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(4294967295u, global4.d.x, 0u)), vec3<bool>(global4.e.x, global4.b.x, false)))));
    global2 = array<f32, 19>();
    return Struct_2(u_input.b & 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global4.d.x, 19u)], -680f, var_0.x, global2[_wgslsmith_index_u32(68059u, 19u)]))))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(global4.d), global4.d), global4.d), vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(~global4.c), min(_wgslsmith_clamp_vec4_i32(global4.c, vec4<i32>(global1.x, u_input.c.x, global4.a, global4.a), global4.c), vec4<i32>(19230i, 1i, global1.x, global1.x))), _wgslsmith_div_i32(select(29557i, -1i, -1i < global1.x), -(8000i & global4.c.x))));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> u32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(8971u, 1u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global4.d.x, u_input.b), vec2<u32>(4294967295u, arg_0.c)) % vec2<u32>(32u)), reverseBits(vec2<u32>(arg_0.c, 67187u) & vec2<u32>(global4.d.x, 9534u))) | arg_0.c, 4294967295u);
    var var_1 = firstLeadingBit(_wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(44242u, var_0.x, var_0.x, 7578u) & vec4<u32>(global4.d.x, arg_0.c, 4294967295u, var_0.x)), vec4<u32>(u_input.b, arg_0.c | global4.d.x, arg_0.c, ~u_input.a) ^ ~vec4<u32>(21565u, 44498u, arg_0.a, 23183u)));
    let var_2 = Struct_1(u_input.c.x, !global4.b, vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global4.c.x, 2147483647i, -10077i, global4.c.x), vec4<i32>(-1i, -11868i, u_input.c.x, global1.x) >> (vec4<u32>(4294967295u, 0u, 27961u, 0u) % vec4<u32>(32u))), arg_0.d.x, 1i, -arg_0.d.x), vec2<u32>(global4.d.x, global4.d.x), select(global4.b, select(vec2<bool>(true, arg_1), select(select(global4.e, global4.b, vec2<bool>(global4.e.x, true)), global4.e, global4.b), vec2<bool>(true, true)), true));
    global4 = var_2;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(arg_0.b.yzx));
    return 55993u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(func_5(func_1(), global4.e.x) | ~0u) | u_input.b;
    var var_1 = _wgslsmith_div_i32(-2309i, reverseBits(-7278i));
    let var_2 = Struct_2(u_input.a ^ 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(237f, _wgslsmith_f_op_f32(select(-1492f, global2[_wgslsmith_index_u32(1u, 19u)], false)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 19u)] * -1000f), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.b, 19u)]))))), 4294967295u, abs(-vec2<i32>(global1.x, global1.x << (0u % 32u))));
    let var_3 = vec4<u32>(u_input.b, func_2().x, 1u, 75549u);
    let var_4 = select(!(var_3.x == firstLeadingBit(0u)), global4.b.x, global4.b.x) && false;
    var_0 = _wgslsmith_clamp_u32(var_3.x ^ _wgslsmith_sub_u32(abs(func_1().c), ~global4.d.x), ~(~u_input.b), var_2.c);
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), var_3.wxy);
}

