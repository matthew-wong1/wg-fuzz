struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1 = Struct_1(1000f);

var<private> global2: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false));

var<private> global3: array<Struct_1, 31>;

var<private> global4: array<f32, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(-917f);
    global2 = array<vec4<bool>, 27>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(max(global1.a, 1232f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) - _wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 3u)], 276f))))));
    let var_2 = vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x << (~(~u_input.c.x) % 32u), countOneBits(4294967295u | u_input.a.x)), 3u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -748f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.a.x, 3u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a * var_1.x), _wgslsmith_f_op_f32(round(var_0.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f)))))));
    global0 = _wgslsmith_mod_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(arg_0.x, arg_0.x, 15915i, 2247i))), ~vec4<i32>(arg_0.x, global0.x, arg_0.x, arg_0.x) & abs(abs(vec4<i32>(1i, global0.x, arg_0.x, 35303i)))) >> (abs(_wgslsmith_mult_vec4_u32(u_input.d, ~u_input.c >> (_wgslsmith_mult_vec4_u32(u_input.d, u_input.d) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(round(var_1.x));
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_i32(global0.zw, _wgslsmith_div_vec2_i32(arg_0.a.yw, ~(~global0.wx))), global0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(0i, global0.x)), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1294f) + -1000f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(arg_0.b, 3u)], global4[_wgslsmith_index_u32(5679u, 3u)]), vec2<f32>(global4[_wgslsmith_index_u32(0u, 3u)], -629f)))))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.xzx, _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.a.x), u_input.c.zxx), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(2023u, 4294967295u, u_input.a.x), u_input.d.yzz), u_input.c.yxz >> (vec3<u32>(u_input.b, u_input.a.x, 65671u) % vec3<u32>(32u)), vec3<u32>(arg_0.b, arg_0.b, 4294967295u) | vec3<u32>(4294967295u, 1u, 43998u)))), 31u)]);
    global0 = vec4<i32>(arg_0.a.x, i32(-1i) * -((var_0.b & -77948i) << ((13063u | arg_0.b) % 32u)), ~countOneBits(arg_0.a.x), var_0.a);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-515f, _wgslsmith_f_op_f32(max(-477f, 586f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(arg_0.b, 3u)], var_0.d.a) + vec2<f32>(_wgslsmith_f_op_f32(-1003f - _wgslsmith_f_op_f32(var_0.c.x * 704f)), global4[_wgslsmith_index_u32(29930u, 3u)]))));
    var var_3 = u_input.c.x;
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(-min(countOneBits(vec4<i32>(25993i, arg_0.a.x, var_1.a.x, arg_0.a.x)), vec4<i32>(var_1.a.x, 1i, global0.x, 1i))), firstTrailingBit(~min(-var_1.a, var_1.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = firstLeadingBit(func_2(Struct_2(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0.x, global0.x, 21625i), vec4<i32>(global0.x, 53534i, 0i, -6561i)), ~u_input.b | 1u)));
    let var_1 = 0i;
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, min(~firstLeadingBit(0u), 1u), arg_1, 1u), vec4<u32>(34349u, u_input.c.x, _wgslsmith_dot_vec2_u32(min(~vec2<u32>(u_input.b, u_input.a.x), abs(u_input.c.yy)), u_input.a & ~vec2<u32>(398u, arg_1)), 11694u));
    var var_3 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), true), select(vec3<bool>(all(vec2<bool>(true, true)) == true, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 3u)] - -263f) <= _wgslsmith_f_op_f32(-arg_0.x)), select(vec3<bool>(all(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, true, false, false)), false), vec3<bool>(any(vec4<bool>(false, false, true, true)), arg_1 < 1u, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)), true), vec3<bool>(_wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(var_0, var_1)) == _wgslsmith_mult_i32(global0.x, _wgslsmith_clamp_i32(4278i, 1i, var_1)), _wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(15748i, global0.x)) < ~_wgslsmith_add_i32(global0.x, 10359i), all(!global2[_wgslsmith_index_u32(var_2.x, 27u)]) | select(all(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)), true)));
    return var_3.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, global4[_wgslsmith_index_u32(u_input.b, 3u)], -1074f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(u_input.c.x, 3u)], global1.a, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-434f + -227f)), global4[_wgslsmith_index_u32(reverseBits(36590u) ^ _wgslsmith_mod_u32(4294967295u, u_input.c.x), 3u)])) - vec3<f32>(1284f, _wgslsmith_f_op_f32(-252f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(41486u, 3u)]) + 123f)), _wgslsmith_f_op_f32(exp2(global1.a))));
    global2 = array<vec4<bool>, 27>();
    var var_1 = _wgslsmith_sub_i32(-35716i, _wgslsmith_div_i32(-2147483647i, 7405i >> (max(u_input.d.x, 645u) % 32u))) & firstLeadingBit(_wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(~global0.x, _wgslsmith_sub_i32(0i, arg_1))));
    let var_2 = all(!select(vec4<bool>(arg_0.x != false, any(vec2<bool>(arg_0.x, true)), any(vec3<bool>(arg_0.x, arg_0.x, true)), false), !select(vec4<bool>(true, true, arg_0.x, arg_0.x), global2[_wgslsmith_index_u32(9837u, 27u)], vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), arg_0.x));
    let var_3 = !var_2;
    return Struct_4(arg_0, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(-1i, -1i | ~_wgslsmith_add_i32(-14754i, global0.x)) > (select(33120i, _wgslsmith_add_i32(global0.x, global0.x), true) & ~global0.x);
    let var_1 = func_4(vec2<bool>(select(false, func_1(vec3<f32>(-1628f, -543f, 2279f), u_input.d.x, global4[_wgslsmith_index_u32(u_input.c.x, 3u)]) && false, select(true, var_0, any(global2[_wgslsmith_index_u32(u_input.c.x, 27u)]))), u_input.d.x < ~_wgslsmith_sub_u32(u_input.b, 1u)), 2147483647i);
    var var_2 = global0.x;
    global0 = abs(vec4<i32>(_wgslsmith_clamp_i32(~(~global0.x), _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, 2147483647i), _wgslsmith_sub_i32(1i, 11668i)), _wgslsmith_sub_i32(global0.x, _wgslsmith_add_i32(-1i, global0.x))), 0i, firstTrailingBit(global0.x), abs(select(~global0.x, -23838i ^ global0.x, !var_1.b))));
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(u_input.a.x), 4294967295u, 7194u), 31u)];
    let var_3 = Struct_2(vec4<i32>(global0.x, _wgslsmith_mult_i32(global0.x, _wgslsmith_mod_i32(~global0.x, 1i)), max(-(i32(-1i) * -2147483647i), 0i), global0.x), 1u);
    var_2 = countOneBits(abs(var_3.a.x >> (_wgslsmith_sub_u32(1u, firstLeadingBit(u_input.c.x)) % 32u)));
    global0 = firstTrailingBit(countOneBits((_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), var_3.a) << (~u_input.c % vec4<u32>(32u))) << (countOneBits(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 17682u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~abs(u_input.c)), _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(24348u, 17379u, 100865u, var_3.b)), min(vec4<u32>(u_input.a.x, 4294967295u, 33491u, u_input.d.x), max(vec4<u32>(var_3.b, u_input.d.x, 20661u, 10332u), u_input.c))), global2[_wgslsmith_index_u32(countOneBits(57328u), 27u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a, 440f, -837f, 1422f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(0u, 3u)], global1.a, global4[_wgslsmith_index_u32(u_input.d.x, 3u)], global1.a)), !global2[_wgslsmith_index_u32(0u, 27u)])))), var_3.a.x & (i32(-1i) * -24738i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 3u)], global1.a, 825f, global4[_wgslsmith_index_u32(var_3.b, 3u)]) - vec4<f32>(1689f, 787f, global1.a, -759f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1460f, global4[_wgslsmith_index_u32(u_input.b, 3u)], global1.a, global4[_wgslsmith_index_u32(12461u, 3u)]))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~86987u, 3u)] + _wgslsmith_f_op_f32(min(858f, -220f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(func_3(vec2<i32>(var_3.a.x, -2147483647i), vec3<bool>(var_0, true, false), Struct_1(-623f)))))));
}

