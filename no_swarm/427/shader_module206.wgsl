struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-44729i, vec2<f32>(133f, -1121f), 28644i);

var<private> global1: array<vec2<i32>, 7>;

var<private> global2: array<vec4<i32>, 25>;

var<private> global3: array<Struct_2, 23>;

var<private> global4: vec3<i32> = vec3<i32>(1i, 0i, -43962i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, abs(firstLeadingBit(global4.x)), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -35111i, 8050i), vec3<i32>(global4.x, global4.x, 54727i))), 2147483647i), global2[_wgslsmith_index_u32(1u, 25u)]), global0.b, firstTrailingBit(max(global4.x, _wgslsmith_sub_i32(2147483647i, reverseBits(27370i)))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(374f + -1000f), _wgslsmith_f_op_f32(min(global0.b.x, global0.b.x))) + vec2<f32>(_wgslsmith_f_op_f32(select(global0.b.x, global0.b.x, true)), global0.b.x)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2051f, global0.b.x)) + global0.b)))), reverseBits(firstTrailingBit(global2[_wgslsmith_index_u32(30956u, 25u)])), ~vec3<i32>(-9320i, global4.x, i32(-1i) * -21139i), abs(~u_input.b));
    var var_1 = global3[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_sub_u32(arg_0, 40448u)) & reverseBits(17499u)), 23u)];
    global3 = array<Struct_2, 23>();
    global2 = array<vec4<i32>, 25>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(891f + -517f) + _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - 1111f) - _wgslsmith_f_op_f32(global0.b.x + 226f))))));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec3<u32> {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(4294967295u, 95322u)), 25u)];
    global3 = array<Struct_2, 23>();
    var var_1 = Struct_3(var_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0))), _wgslsmith_f_op_f32(-1713f - -399f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-913f, 710f))), global0.b))), countOneBits(-_wgslsmith_mod_i32(u_input.a.x, global0.a)) << (arg_0 % 32u));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.x + -774f), -185f));
    var var_3 = vec4<bool>(!(!all(vec4<bool>(arg_1, true, arg_1, arg_1))), (_wgslsmith_add_u32(4294967295u, arg_0) >> (reverseBits(arg_0 << (u_input.b.x % 32u)) % 32u)) > _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~(~u_input.b.x)), arg_1, false);
    return _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(0u, 4294967295u, arg_0)), max(reverseBits(vec3<u32>(17434u, 93474u, arg_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(62733u, arg_0, 61093u), vec3<u32>(u_input.b.x, 4957u, arg_0)))) >> (~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 50074u, arg_0), abs(vec3<u32>(1u, arg_0, arg_0))) % vec3<u32>(32u)), countOneBits(countOneBits(max(vec3<u32>(13199u, 0u, 36784u), vec3<u32>(28117u, 7875u, u_input.b.x)))) & ~vec3<u32>(abs(u_input.b.x), 14736u, u_input.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    global0 = Struct_3(1i & _wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.a.x, global0.c, global0.c), vec3<i32>(global0.a, -2147483647i, global0.c), vec3<bool>(true, true, true)), select(vec3<i32>(-61i, u_input.a.x, u_input.a.x), ~vec3<i32>(-41910i, 84695i, -25867i), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(global0.b.x, 207f)))))), -17332i);
    let var_0 = u_input.a.x;
    global1 = array<vec2<i32>, 7>();
    var var_1 = vec4<bool>(select(!select(true, all(vec2<bool>(false, true)), any(vec2<bool>(true, true))), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), (~global0.a < var_0) & (_wgslsmith_div_f32(1000f, -169f) == _wgslsmith_f_op_f32(-2098f + global0.b.x))), true, true, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_2 = ~(~arg_1.x);
    return -_wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.a.x, -(var_0 >> (8158u % 32u))), ~(-(~(-2147483647i))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-global0.b.x);
    let var_1 = false == !(global4.x >= func_4(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 24474u), 23u)], func_2(u_input.b.x, false)));
    let var_2 = true;
    let var_3 = 4294967295u;
    global1 = array<vec2<i32>, 7>();
    return Struct_2(abs(~vec3<u32>(u_input.b.x, 15331u, u_input.b.x) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x, 23474u), vec3<u32>(0u, u_input.b.x, 17036u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global3 = array<Struct_2, 23>();
    var var_1 = Struct_4(func_1());
    let var_2 = Struct_3(620i, vec2<f32>(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(243f * -1028f)), global0.b.x), _wgslsmith_add_i32(-9810i, 1i));
    global3 = array<Struct_2, 23>();
    let var_3 = Struct_4(var_1.a);
    var var_4 = vec4<bool>(!select(-global4.x < (2147483647i & global4.x), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), 1u != u_input.b.x), 1i >= firstLeadingBit(global4.x), any(select(vec3<bool>(640f > var_2.b.x, true, true), vec3<bool>(false, true, any(vec3<bool>(true, true, true))), false)), ((any(vec3<bool>(true, false, true)) | false) != true) && any(vec2<bool>(true, true)));
    let var_5 = ~(select(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, global4.x, -1i), vec3<i32>(global0.a, u_input.a.x, var_2.c)), _wgslsmith_div_vec3_i32(vec3<i32>(global4.x, var_0, -1i), vec3<i32>(u_input.a.x, var_2.c, global0.c)), -vec3<i32>(1i, var_0, 1i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(-54783i, 1i, global0.c), ~vec3<i32>(29653i, -1i, -26028i)), ~8336u != abs(u_input.b.x)) >> (vec3<u32>(select(reverseBits(var_3.a.a.x), select(u_input.b.x, 24618u, false), all(vec2<bool>(true, false))), ~var_3.a.a.x >> (~var_3.a.a.x % 32u), ~(~17814u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1u), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_5.x, _wgslsmith_sub_i32(2147483647i, var_0), ~global0.a), -2147483647i, -abs(41080i)), ~(vec3<i32>(-51252i, var_0, 0i) | countOneBits(vec3<i32>(2147483647i, var_5.x, global0.a)))));
}

