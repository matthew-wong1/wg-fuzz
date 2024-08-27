struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: vec4<i32>) -> i32 {
    let var_0 = arg_3;
    let var_1 = global1.x;
    var var_2 = 4294967295u << (~4294967295u % 32u);
    let var_3 = Struct_3(arg_2.c < ~(~40090u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.yz, vec2<f32>(-761f, arg_1)), _wgslsmith_f_op_vec2_f32(ceil(global1.yx))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 872f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.yx), _wgslsmith_f_op_vec2_f32(vec2<f32>(144f, arg_1) - vec2<f32>(global1.x, arg_2.a)))))), vec4<bool>(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), true, false, false & select(true, true, 1u >= arg_2.c)));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(step(-1092f, global0[_wgslsmith_index_u32(countOneBits(45517u), 10u)])), -8119i, countOneBits(4294967295u));
    return ~_wgslsmith_add_i32(select(-1i, ~71187i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_4.b), var_0.zx) > var_0.x), -2147483647i);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = 1u;
    let var_1 = ~u_input.e;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(181f, global1.x, global1.x, global1.x), vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 10u)], -600f, global1.x, 741f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1377f, -1000f, 1000f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(387f, -803f, global0[_wgslsmith_index_u32(arg_1, 10u)], global1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(27247u, 10u)]))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_1.x, 10u)] * _wgslsmith_div_f32(496f, 173f)), _wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-660f * -335f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(286f, global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(34322u, 10u)] * 512f)))), _wgslsmith_f_op_f32(f32(-1f) * -1763f), arg_0.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = arg_1;
    var var_1 = arg_1.b.x;
    let var_2 = _wgslsmith_f_op_f32(func_4(var_0.c.yww, ~firstLeadingBit(arg_0.a.x), _wgslsmith_mod_i32(func_3(countOneBits(min(-2147483647i, arg_0.d.x)), _wgslsmith_f_op_f32(round(-310f)), Struct_4(_wgslsmith_f_op_f32(select(1514f, global0[_wgslsmith_index_u32(u_input.b, 10u)], arg_0.b.x)), 53152i, ~arg_0.c), -vec4<i32>(0i, -1i, arg_0.d.x, arg_0.d.x)), ~2147483647i)));
    var_1 = _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a.x, 10u)])))))));
    var_0 = Struct_3(any(vec4<bool>(all(vec4<bool>(var_0.c.x, true, arg_1.c.x, true)), all(arg_1.c.xyy), arg_0.d.x >= 9886i, false && arg_1.c.x)) && !var_0.a, arg_1.b, vec4<bool>(arg_0.e, false, all(!(!var_0.c.xz)), any(vec4<bool>(arg_0.d.x <= arg_0.d.x, any(var_0.c.zw), false && arg_0.b.x, select(var_0.c.x, var_0.c.x, var_0.c.x)))));
    return 15003i;
}

fn func_1(arg_0: vec3<u32>) -> Struct_5 {
    var var_0 = max(-(~select(-1i, 3744i, true)), select(func_2(Struct_1(u_input.e.yz, vec2<bool>(false, true), 28090u, vec2<i32>(-1i, 0i), false), Struct_3(true, vec2<f32>(global1.x, global0[_wgslsmith_index_u32(u_input.b, 10u)]), vec4<bool>(true, false, true, false))), ~(-1i), true) >> (~(~1u) % 32u)) == ~(~(-10889i) << (u_input.e.x % 32u));
    var_0 = false;
    var var_1 = vec4<u32>(select(arg_0.x, ~firstTrailingBit(~28712u), any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))), _wgslsmith_mod_u32(7760u, u_input.c >> (u_input.b % 32u)), ~(~_wgslsmith_mod_u32(~1u, 73606u)), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(u_input.e.xww, ~(~vec3<u32>(1u, arg_0.x, 58352u)))));
    var var_2 = Struct_1(~var_1.yw, !vec2<bool>(all(vec4<bool>(true, false, true, true)), all(vec2<bool>(true, true))), _wgslsmith_mod_u32(489u, ~arg_0.x), firstTrailingBit(~countOneBits(reverseBits(vec2<i32>(0i, -1i)))), select(true, true, true | !any(vec4<bool>(false, false, true, true))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(262f + _wgslsmith_f_op_f32(f32(-1f) * -523f)))) + global1.x);
    return Struct_5(_wgslsmith_mult_u32(arg_0.x, 0u), select(!(!vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)), select(!select(vec3<bool>(var_2.b.x, var_2.e, true), vec3<bool>(var_2.e, true, false), true), select(!vec3<bool>(var_2.b.x, var_2.e, false), !vec3<bool>(var_2.e, var_2.e, var_2.e), vec3<bool>(true, true, true)), true), !vec3<bool>(all(vec3<bool>(false, true, false)), var_2.e, var_2.d.x > 1i)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1919f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 10u)] - 685f))), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.d.x, var_2.d.x), var_2.d.x), select(~u_input.d.x, reverseBits(1u), var_2.e)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_5) -> bool {
    var var_0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_2.c.b, _wgslsmith_mult_i32(arg_2.c.b, arg_2.c.b) >> (7354u % 32u), arg_2.c.b, -14156i), vec4<i32>(-1i) * -reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(10295i, -44354i, arg_2.c.b, arg_2.c.b), vec4<i32>(0i, arg_2.c.b, -1i, -39252i))));
    var_0 = ~abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.x, var_0.x, var_0.x, -49490i), select(vec4<i32>(-1i, arg_2.c.b, -1i, arg_2.c.b), vec4<i32>(46633i, -2147483647i, 1i, arg_2.c.b), vec4<bool>(arg_2.b.x, true, true, false)))) & vec4<i32>(arg_2.c.b, -1i, -2147483647i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, var_0.x, arg_2.c.b), var_0.wyx), firstLeadingBit(var_0.xww)));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-780f, global0[_wgslsmith_index_u32(arg_0.x, 10u)], arg_1.x) * vec3<f32>(-1483f, global1.x, -899f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.a, var_1.c.a, arg_2.c.a) * vec3<f32>(arg_2.c.a, global0[_wgslsmith_index_u32(arg_0.x, 10u)], arg_2.c.a)))))))));
    var_1 = Struct_5(1u, vec3<bool>(any(!select(vec4<bool>(arg_2.b.x, false, false, var_1.b.x), vec4<bool>(false, false, true, true), vec4<bool>(false, var_1.b.x, arg_2.b.x, false))), var_1.b.x | !arg_2.b.x, var_1.b.x), Struct_4(var_1.c.a, abs(min(i32(-1i) * -23904i, 1i)), ~(~(~35170u))));
    return arg_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(u_input.e.x, countOneBits(u_input.a)), vec2<bool>(!func_5(~vec2<u32>(4294967295u, u_input.c), global1.xy, func_1(u_input.e.www)), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(u_input.a)) <= 19448u), max(abs(~u_input.c >> ((1u ^ u_input.e.x) % 32u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.c, u_input.d.x), u_input.e.zyw))), select(abs(~(-vec2<i32>(-33117i, -1677i))), -firstTrailingBit(vec2<i32>(2147483647i, 0i)), vec2<bool>(false, true)), _wgslsmith_f_op_f32(trunc(global1.x)) == _wgslsmith_f_op_f32(select(-259f, -877f, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(global1.xy, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(211f)), global0[_wgslsmith_index_u32(~(~u_input.a), 10u)]), 2221f), var_0.b));
    let var_2 = vec2<bool>(var_0.b.x, all(func_1(~vec3<u32>(var_0.a.x, u_input.d.x, 4294967295u)).b));
    let var_3 = vec3<i32>(2147483647i, -1i, -var_0.d.x);
    let var_4 = Struct_2(Struct_1(~(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), var_0.a) << (select(vec2<u32>(u_input.b, 56934u), vec2<u32>(59052u, var_0.a.x), true) % vec2<u32>(32u))), !select(select(var_2, vec2<bool>(var_2.x, var_0.e), vec2<bool>(true, var_0.b.x)), !var_2, var_0.e), 1u, _wgslsmith_sub_vec2_i32(~(vec2<i32>(var_3.x, 0i) << (u_input.d % vec2<u32>(32u))), abs(vec2<i32>(-2147483647i, 15823i) | vec2<i32>(0i, var_0.d.x))), func_1(~vec3<u32>(var_0.a.x, u_input.c, 0u)).b.x), vec3<i32>(-1i) * -(~(~vec3<i32>(-34149i, var_3.x, 15428i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_1.x, global0[_wgslsmith_index_u32(var_0.a.x, 10u)]))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-547f, -332f, global0[_wgslsmith_index_u32(u_input.a, 10u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, global1.x) * vec3<f32>(global0[_wgslsmith_index_u32(17678u, 10u)], -373f, global1.x))))), Struct_1(firstLeadingBit(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_0.a.x, u_input.e.x)), min(u_input.e.wy, vec2<u32>(0u, u_input.e.x)))), func_1(~vec3<u32>(4294967295u, 4294967295u, u_input.a) << (u_input.e.xxw % vec3<u32>(32u))).b.zy, 4294967295u, firstLeadingBit(firstTrailingBit(-var_3.yy)), var_2.x), Struct_1(~_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(u_input.c, 8788u)) ^ vec2<u32>(27805u, var_0.c), !func_1(~u_input.e.yyx).b.yy, 4294967295u, _wgslsmith_add_vec2_i32(reverseBits(select(var_3.yx, var_3.yx, vec2<bool>(false, true))), ~(~var_3.xz)), true || select(var_0.a.x > 40486u, func_5(vec2<u32>(u_input.a, u_input.d.x), vec2<f32>(var_1.x, var_1.x), Struct_5(u_input.c, vec3<bool>(true, false, var_2.x), Struct_4(var_1.x, 1i, 0u))), !var_2.x)));
    var var_5 = var_0.d.x ^ var_0.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(-(-vec4<i32>(0i, var_3.x, 0i, var_0.d.x) | ~vec4<i32>(1i, var_4.e.d.x, -2147483647i, 1i)), max(_wgslsmith_mult_vec4_i32(~vec4<i32>(41070i, var_0.d.x, 1i, -20302i), abs(vec4<i32>(var_4.a.d.x, 2147483647i, -27445i, 39539i))), vec4<i32>(2147483647i, var_4.d.d.x, var_3.x, 0i) << (abs(u_input.e) % vec4<u32>(32u)))), 20536u, vec2<i32>(var_4.b.x, ~(-4943i)), ~u_input.e.x, vec4<u32>(var_4.d.c, u_input.c, ~u_input.b, var_0.c));
}

