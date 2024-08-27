struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30>;

var<private> global1: i32;

var<private> global2: array<vec4<bool>, 2>;

var<private> global3: array<f32, 22> = array<f32, 22>(422f, -127f, 1000f, -1000f, 618f, -1365f, -839f, -797f, -1415f, -1569f, 328f, 362f, 277f, 112f, 776f, 1789f, -750f, 431f, -173f, -1866f, -821f, -1103f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_mult_vec4_i32(select(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, arg_0.e, -1i, 0i), vec4<i32>(arg_0.e, 1i, u_input.b, -36795i)), firstTrailingBit(-vec4<i32>(arg_0.e, u_input.d, arg_0.b.x, -1189i)), vec4<bool>(false, false, all(vec3<bool>(arg_1.x, false, false)), arg_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -arg_0.e, firstTrailingBit(-4616i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e, arg_0.e, -2147483647i, arg_0.b.x), vec4<i32>(-37376i, arg_0.e, -2147483647i, -2147483647i))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.e, 2147483647i, u_input.b), vec4<i32>(arg_0.e, u_input.d, -1i, 0i)), max(vec4<i32>(-1i, u_input.b, arg_0.e, 0i), vec4<i32>(-27234i, u_input.d, arg_0.b.x, -10460i))), -select(vec4<i32>(arg_0.b.x, arg_0.b.x, -38021i, -2147483647i), vec4<i32>(-21517i, -2147483647i, 13929i, 21715i), false))) ^ select(vec4<i32>(arg_0.e >> ((4294967295u << (arg_0.a % 32u)) % 32u), abs(i32(-1i) * -7746i), _wgslsmith_sub_i32(u_input.b, ~(-9683i)), 61297i), vec4<i32>(0i, arg_0.e, 2147483647i | select(1i, 0i, true), -2147483647i), any(vec2<bool>(true, !arg_0.d)));
    var var_1 = arg_0;
    global3 = array<f32, 22>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2960f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~0u, 22u)], 1f), -229f))));
    var_2 = _wgslsmith_f_op_f32(-102f * _wgslsmith_f_op_f32(trunc(-1026f)));
    return -1i;
}

fn func_2() -> Struct_1 {
    var var_0 = ~(max(-min(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 15918i)), vec2<i32>(-33009i, i32(-1i) * -70284i)) & vec2<i32>(-(~u_input.d), reverseBits(_wgslsmith_mult_i32(24588i, 44393i))));
    var var_1 = ~vec3<i32>(u_input.b, u_input.d ^ 35617i, func_3(Struct_1(u_input.a.x, ~vec2<i32>(85404i, var_0.x), u_input.a.zz, any(vec3<bool>(true, false, true)), u_input.b), !(!global2[_wgslsmith_index_u32(1520u, 2u)])));
    global1 = ~_wgslsmith_add_i32(u_input.b, ~(-59311i));
    global0 = array<vec2<i32>, 30>();
    var var_2 = Struct_1(abs(1u), abs(~(-global0[_wgslsmith_index_u32(1u, 30u)])), vec2<u32>(countOneBits(_wgslsmith_div_u32(0u, u_input.c)), ~abs(~1u)), all(vec2<bool>(true, true)), ~(-2147483647i));
    return Struct_1(firstLeadingBit(~(_wgslsmith_mod_u32(var_2.a, 18721u) ^ ~0u)), vec2<i32>(abs(-14909i), -2147483647i), u_input.a.xy, var_2.d | all(!select(vec2<bool>(true, true), vec2<bool>(true, var_2.d), false)), -2147483647i);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = -405f;
    global3 = array<f32, 22>();
    var var_2 = func_2();
    var var_3 = 32235u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(all(!global2[_wgslsmith_index_u32(91257u, 2u)]));
    global0 = array<vec2<i32>, 30>();
    let var_1 = func_1(var_0.d).c.x;
    global1 = u_input.d;
    global3 = array<f32, 22>();
    let var_2 = func_1(_wgslsmith_mod_i32(-16177i, -10082i) > ((~0i & (var_0.b.x & u_input.d)) << (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-217f)) * global3[_wgslsmith_index_u32(reverseBits(~0u), 22u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(var_0.c.x, 1u, var_2.d), 22u)]), _wgslsmith_f_op_f32(674f + -1136f), true)), global3[_wgslsmith_index_u32(var_2.c.x, 22u)], 750f), u_input.a.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(272f, -368f), global3[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 22u)], 0u >= u_input.a.x))) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(62244u, 22u)] + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x & 78311u, 22u)]))));
}

