struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: bool = false;

var<private> global2: Struct_1 = Struct_1(-929f);

var<private> global3: Struct_1;

var<private> global4: array<u32, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_vec3_u32(~(min(~vec3<u32>(arg_0, arg_0, 25752u), abs(vec3<u32>(arg_0, 0u, 37355u))) ^ ~(~vec3<u32>(36931u, 1u, arg_0))), vec3<u32>(16267u, abs(69762u), ~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)] & arg_0, 17208u)), vec3<u32>(arg_0, firstLeadingBit(~select(61602u, 56362u, true)), firstLeadingBit(55423u)));
    var var_1 = vec3<bool>(true, true, true);
    var_1 = !vec3<bool>(true || var_1.x, !(!var_1.x || any(vec4<bool>(var_1.x, true, true, var_1.x))), any(!vec3<bool>(var_1.x, var_1.x, true)));
    let var_2 = ~reverseBits(-(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -43060i, u_input.b.x, 37029i)));
    var var_3 = _wgslsmith_div_i32(u_input.c, ~19492i << (arg_0 % 32u));
    return select(!vec4<bool>(true, false, !var_1.x && (global2.a <= global2.a), true), select(vec4<bool>(true, any(select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x))), any(!var_1.yz), true), !(!(!vec4<bool>(var_1.x, true, true, var_1.x))), select(vec4<bool>(global4[_wgslsmith_index_u32(73075u, 23u)] == var_0.x, all(vec2<bool>(false, var_1.x)), var_1.x, true), !vec4<bool>(var_1.x, false, false, true), var_1.x)), var_1.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global3.a));
    var var_1 = !(!(!func_3(~arg_2.x)));
    var var_2 = arg_3;
    var var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, _wgslsmith_sub_u32(arg_2.x | arg_0.x, 48497u), firstTrailingBit(48576u << (arg_2.x % 32u)), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(61615u, 0u << (1u % 32u), arg_2.x | 85987u), 23u)]), ~vec4<u32>(arg_2.x, abs(_wgslsmith_clamp_u32(0u, 101706u, 25259u)), 29968u, global4[_wgslsmith_index_u32(~arg_0.x, 23u)]));
    var_3 = _wgslsmith_sub_u32(arg_2.x, ~arg_2.x);
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(arg_0.a)));
    var var_1 = reverseBits(_wgslsmith_add_vec2_u32(abs(vec2<u32>(global4[_wgslsmith_index_u32(arg_1, 23u)], arg_1)) << (vec2<u32>(global4[_wgslsmith_index_u32(26u, 23u)], 4380u) % vec2<u32>(32u)), firstLeadingBit(countOneBits(vec2<u32>(12443u, arg_1)))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, 20445u >> (global4[_wgslsmith_index_u32(1u, 23u)] % 32u)), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], _wgslsmith_add_u32(27279u, global4[_wgslsmith_index_u32(0u, 23u)]))));
    var var_2 = global0[_wgslsmith_index_u32(1u, 2u)];
    let var_3 = -105f;
    var var_4 = select(!select(select(!vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(true, arg_2, arg_2, true), !vec4<bool>(arg_2, arg_2, arg_2, true)), !(!vec4<bool>(false, true, arg_2, arg_2)), !select(vec4<bool>(false, true, arg_2, false), vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(false, true, arg_2, arg_2))), !vec4<bool>((17002u << (arg_1 % 32u)) < arg_1, true, !(!arg_2), arg_2 || true), arg_2);
    return func_2(vec3<u32>(var_1.x, _wgslsmith_add_u32(arg_1, arg_1), _wgslsmith_add_u32(38663u, 0u) << (arg_1 % 32u)) & vec3<u32>(arg_1, countOneBits(var_1.x), ~11808u), u_input.b.x, ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(arg_1, var_1.x, arg_1)), ~vec3<u32>(71881u, 1u, 0u)), arg_0);
}

fn func_1() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 2u)];
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(21888u, min(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 0u), 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19574u, 23u)], 23u)], 23u)], 23u)] << (global4[_wgslsmith_index_u32(15719u, 23u)] % 32u)) | global4[_wgslsmith_index_u32(1u, 23u)]), ~select(_wgslsmith_sub_vec2_u32(select(vec2<u32>(62019u, global4[_wgslsmith_index_u32(51648u, 23u)]), vec2<u32>(global4[_wgslsmith_index_u32(26649u, 23u)], 34876u), true), abs(vec2<u32>(1u, 69993u))), ~vec2<u32>(50888u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)]), false));
    let var_2 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, _wgslsmith_sub_u32(var_1.x, global4[_wgslsmith_index_u32(1u, 23u)]), var_1.x | 4294967295u), vec3<u32>(4294967295u, 32183u, ~4294967295u)), ~(~vec3<u32>(var_1.x, global4[_wgslsmith_index_u32(1u, 23u)], var_1.x)));
    var var_3 = func_4(func_2(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, 47861u, 64244u), vec3<u32>(1u, global4[_wgslsmith_index_u32(var_2.x, 23u)], 0u))), u_input.a, var_2, Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(global2.a + global3.a)))), firstLeadingBit(0u) | var_2.x, true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.a, -1273f, global3.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, _wgslsmith_f_op_f32(ceil(global2.a)), -255f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1162f, -417f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, global3.a, 708f)), false))), all(select(func_3(var_2.x).wwx, vec3<bool>(true, true, true), vec3<bool>(true, true, true))))));
    var_1 = abs(var_2.zy);
    return func_2(firstTrailingBit(min(~vec3<u32>(2059u, var_1.x, global4[_wgslsmith_index_u32(93221u, 23u)]), _wgslsmith_mod_vec3_u32(var_2, var_2))) << (max(~select(vec3<u32>(var_2.x, var_2.x, 21721u), var_2, vec3<bool>(true, false, false)), ~(var_2 ^ var_2)) % vec3<u32>(32u)), u_input.c, vec3<u32>(~(~var_1.x), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.x | ~global4[_wgslsmith_index_u32(21618u, 23u)], 23u)], 23u)], _wgslsmith_add_u32(abs(79239u), firstTrailingBit(4294967295u))) | var_2, global0[_wgslsmith_index_u32(reverseBits(var_1.x) ^ 1u, 2u)]);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, _wgslsmith_f_op_f32(f32(-1f) * -376f), -785f, arg_1.a) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1313f))), _wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2(vec3<u32>(16982u, 70500u, 37738u), -1i, vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(22910u, 23u)], 23u)], 23u)]), Struct_1(471f)).a)) - _wgslsmith_f_op_f32(-1692f + arg_2.a)), global2.a, -1491f));
    var var_1 = ~1u << (global4[_wgslsmith_index_u32(4294967295u, 23u)] % 32u);
    global4 = array<u32, 23>();
    var var_2 = _wgslsmith_div_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-20444i, u_input.c, u_input.b.x << (42439u % 32u)), -min(vec3<i32>(u_input.c, 38127i, -44899i), vec3<i32>(u_input.c, u_input.b.x, -19719i)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1878i, _wgslsmith_div_i32(0i & u_input.b.x, 1i), countOneBits(-6225i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, u_input.b.x, -35463i), firstTrailingBit(vec3<i32>(-25114i, -2537i, u_input.c))), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.c, 0i, u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.a), vec3<i32>(u_input.a, 66645i, 5520i))), vec3<i32>(-1i, u_input.b.x ^ -30678i, _wgslsmith_add_i32(u_input.a, u_input.b.x)))));
    return ~(~(~(~25760u))) ^ ~_wgslsmith_clamp_u32(firstLeadingBit(1u), firstTrailingBit(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(87864u, 23u)], 23u)]), firstTrailingBit(_wgslsmith_clamp_u32(0u, 8780u, 20114u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(func_5(vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.a, global3.a))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true)), 8557u <= _wgslsmith_dot_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(0u, 23u)], 4294967295u, global4[_wgslsmith_index_u32(36149u, 23u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(10610u, 23u)], 23u)]), vec3<u32>(0u, 1u, 0u))), !(any(vec4<bool>(false, false, true, true)) | true)), func_1(), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(global4[_wgslsmith_index_u32(0u, 23u)], 6400u, 4294967295u, 1u)), ~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 61938u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 18443u), vec4<u32>(54409u, global4[_wgslsmith_index_u32(0u, 23u)], 0u, 0u)))), 2u)]), 2u)];
    var var_1 = vec2<u32>(18785u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(43765u, 1u, 4741u, 4294967295u), vec4<u32>(1u, 19383u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 0u)) | 74078u, 23u)], 23u)] | countOneBits(~4294967295u), 12515u, ~(abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7533u, 23u)], 23u)], 23u)], 23u)]) & ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(17429u, 23u)], 23u)], 23u)])), 23u)], 23u)]);
    global0 = array<Struct_1, 2>();
    global3 = global0[_wgslsmith_index_u32(~1u, 2u)];
    global3 = global0[_wgslsmith_index_u32(1u << ((var_1.x & global4[_wgslsmith_index_u32(func_5(vec4<bool>(true, all(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, false, true)), true), global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(16373u, 23u)]), 23u)], 2u)], func_2(vec3<u32>(37481u, 58448u, 1u), -2147483647i, _wgslsmith_div_vec3_u32(vec3<u32>(14515u, 1u, global4[_wgslsmith_index_u32(0u, 23u)]), vec3<u32>(var_1.x, 4294967295u, var_1.x)), func_4(global0[_wgslsmith_index_u32(var_1.x, 2u)], 0u, true, vec3<f32>(var_0.a, global2.a, -563f)))), 23u)]) % 32u), 2u)];
    var var_2 = ~vec2<u32>(var_1.x, global4[_wgslsmith_index_u32(~(1u & var_1.x), 23u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b >> (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.x, var_2.x), select(vec2<u32>(1u, global4[_wgslsmith_index_u32(9045u, 23u)]), vec2<u32>(var_1.x, global4[_wgslsmith_index_u32(var_1.x, 23u)]), vec2<bool>(false, true))), reverseBits(firstLeadingBit(vec2<u32>(global4[_wgslsmith_index_u32(12462u, 23u)], var_2.x)))) % vec2<u32>(32u)));
}

