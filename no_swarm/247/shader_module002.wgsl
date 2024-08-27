struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, false), 462f, vec4<f32>(-1808f, 701f, -151f, 234f), vec4<bool>(true, false, true, true));

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, false, false), 817f, vec4<f32>(532f, -1151f, 1964f, -322f), vec4<bool>(false, false, true, false)));

var<private> global3: array<bool, 10> = array<bool, 10>(false, true, true, true, true, false, true, true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    var var_0 = -1956f;
    return -1368f <= _wgslsmith_f_op_f32(-global1.c);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = func_3();
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.d.xxw), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * _wgslsmith_f_op_f32(floor(arg_1.d.x))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(456f))))))));
    var var_2 = u_input.c;
    var var_3 = vec4<i32>(arg_0.x, _wgslsmith_add_i32(-1i, 9841i), arg_0.x, 31621i);
    var var_4 = arg_1;
    return global2[_wgslsmith_index_u32(4294967295u << (u_input.a % 32u), 1u)];
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(~u_input.b, 1u)];
    var var_1 = func_2(vec2<i32>(_wgslsmith_div_i32(1i, u_input.c.x & u_input.c.x), 0i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i >> (1u % 32u), 0i), ~u_input.c.yx), arg_3, firstTrailingBit(~(~vec3<u32>(arg_0, 1u, arg_0))) & ~max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, u_input.a, 1u), vec3<u32>(u_input.a, u_input.b, 0u)), ~vec3<u32>(u_input.b, 0u, u_input.b)), !any(!vec2<bool>(false, arg_3.a.x)));
    let var_2 = false;
    global2 = array<Struct_1, 1>();
    let var_3 = -_wgslsmith_add_vec2_i32(u_input.c.xx, _wgslsmith_add_vec2_i32(u_input.c.zz, _wgslsmith_mod_vec2_i32(u_input.c.xy, vec2<i32>(32521i, -2147483647i))) | u_input.c.xy);
    return global1.e.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = vec2<bool>(true, false && func_3());
    global2 = array<Struct_1, 1>();
    global2 = array<Struct_1, 1>();
    var var_1 = arg_1;
    var_1 = Struct_1(arg_0.b.wyx, vec4<bool>(true, any(vec2<bool>(arg_1.b.x, var_1.e.x)), _wgslsmith_f_op_f32(round(var_1.d.x)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-214f, arg_0.c))), !var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0.d, _wgslsmith_f_op_vec4_f32(-global1.d))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_0.d.x, -1000f, -683f))))), vec4<bool>(true & all(func_2(vec2<i32>(-2199i, 2147483647i), global2[_wgslsmith_index_u32(u_input.b, 1u)], vec3<u32>(arg_2, 14464u, 127392u), arg_0.e.x).b), !(_wgslsmith_f_op_f32(ceil(arg_1.c)) == 2759f), func_2(_wgslsmith_sub_vec2_i32(~u_input.c.yx, abs(u_input.c.xz)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 12530u), vec3<u32>(u_input.b, arg_2, arg_2)), 1u)], vec3<u32>(0u, abs(u_input.a), 1u), global3[_wgslsmith_index_u32(1u, 10u)]).e.x, true));
    return !vec4<bool>(!any(!arg_1.b), -22738i <= _wgslsmith_mult_i32(32234i, -u_input.c.x), arg_0.e.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global1.d.wwz);
    let var_1 = Struct_1(global1.a, func_4(Struct_1(vec3<bool>(!global1.a.x, func_1(u_input.a, global2[_wgslsmith_index_u32(45211u, 1u)], global1.d, global2[_wgslsmith_index_u32(u_input.b, 1u)]), global3[_wgslsmith_index_u32(select(56576u, 4294967295u, false), 10u)]), !select(vec4<bool>(false, global1.a.x, global1.b.x, false), vec4<bool>(global3[_wgslsmith_index_u32(29981u, 10u)], global1.a.x, true, true), vec4<bool>(global1.a.x, global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(u_input.b, 10u)], true)), global1.c, global1.d, !vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(u_input.b, 10u)], false)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~21655u, 4294967295u, ~(~u_input.a)), 1u)], u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -188f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-267f - -149f)))))), vec4<f32>(-523f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(var_0.x, 2455f, u_input.c.x < u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x * 1098f)), _wgslsmith_f_op_f32(sign(-722f))), global1.e);
    global0 = array<Struct_1, 9>();
    let var_2 = Struct_1(global1.b.wyz, var_1.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(751f * var_0.x))))))), global1.d, !var_1.b);
    var var_3 = var_2;
    var var_4 = ~(-7137i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(select(vec4<i32>(2147483647i, ~u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 16711i), _wgslsmith_div_i32(27770i, u_input.c.x)), -vec4<i32>(6608i, -1i, 22291i, u_input.c.x), var_3.e), vec4<i32>(-_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), _wgslsmith_div_i32(-2147483647i, u_input.c.x), u_input.c.x, 1i)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b & 45138u, ~0u), 0u, countOneBits(47162u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 23841u))), abs(u_input.a >> (u_input.b % 32u))), ~(~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(0u, u_input.a)) ^ reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(56479u, u_input.a), vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b)))), u_input.a, vec2<i32>(1i, ~countOneBits(u_input.c.x)));
}

