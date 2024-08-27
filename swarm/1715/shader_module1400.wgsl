struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec2<i32>(i32(-2147483648), -1i));

var<private> global1: array<u32, 5> = array<u32, 5>(51849u, 18906u, 1u, 21855u, 4294967295u);

var<private> global2: array<i32, 13> = array<i32, 13>(-39433i, 0i, 0i, 0i, 2147483647i, -1i, i32(-2147483648), 32641i, 2147483647i, i32(-2147483648), -26813i, 43823i, 2943i);

var<private> global3: Struct_1;

var<private> global4: array<vec2<bool>, 31>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global3 = Struct_1(global3.a, vec2<i32>(-1i) * -min(min(global3.b, vec2<i32>(global0.b.x, global0.b.x)), vec2<i32>(2147483647i, 1i)));
    global3 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, ~1u), 5u)], abs(vec2<i32>(select(~(-1i), _wgslsmith_div_i32(-93137i, 2147483647i), true), _wgslsmith_add_i32(2147483647i, global3.b.x) ^ _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a, 13u)], global0.b.x))));
    var var_0 = firstTrailingBit(-(~_wgslsmith_sub_vec2_i32(global3.b, abs(global0.b))));
    var var_1 = Struct_1(4294967295u, firstTrailingBit(global0.b));
    global3 = Struct_1(~(~var_1.a) & (0u & (~global3.a | ~51289u)), select(global0.b, ~vec2<i32>(var_1.b.x, global3.b.x), !any(!global4[_wgslsmith_index_u32(var_1.a, 31u)])));
    return reverseBits(-global0.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    global2 = array<i32, 13>();
    global1 = array<u32, 5>();
    global1 = array<u32, 5>();
    global0 = arg_0;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-arg_2.x)), -1367f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_2.x)), arg_2.x))))), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), 1f, (countOneBits(global2[_wgslsmith_index_u32(1u, 13u)]) | func_3()) <= 1i)), arg_2.x);
    return _wgslsmith_mod_u32(u_input.b.x, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(18163u, 13247u, arg_0.a, 4294967295u), vec4<u32>(21010u, global3.a, 4294967295u, global0.a)), _wgslsmith_clamp_u32(21102u, 1u, u_input.b.x), true), firstLeadingBit(abs(global3.a)), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_3.a, arg_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a, u_input.a, 4294967295u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(7305u, 5u)], global3.a, 22706u, global3.a)))), 5u)]);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(~select(~vec4<u32>(35598u, global3.a, 52477u, 1987u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 5u)], 112687u, 10177u, 4294967295u) ^ vec4<u32>(0u, global3.a, 48736u, 11635u), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true)) & _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, func_2(arg_0, vec2<f32>(-624f, 717f), vec2<f32>(-1207f, 216f), arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, arg_0.a), vec3<u32>(4294967295u, 51474u, 82656u)), reverseBits(global0.a)), vec4<u32>(45938u, ~global1[_wgslsmith_index_u32(51256u, 5u)], arg_0.a, 24713u)), ~(~abs(firstLeadingBit(vec4<u32>(0u, u_input.b.x, 1u, 29984u)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 5>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(abs(countOneBits(-1i)), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.b.x, 17201i), global0.b))), -5194i);
    var var_1 = vec3<bool>(51639u >= global1[_wgslsmith_index_u32(1u, 5u)], all(vec3<bool>(true, true, true)), true);
    var_0 = min(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(select(global2[_wgslsmith_index_u32(global0.a, 13u)], 0i, false), -75421i), ~global2[_wgslsmith_index_u32(~0u, 13u)]), select(reverseBits(abs(global2[_wgslsmith_index_u32(1u, 13u)])), 4836i, false)), -1i);
    global1 = array<u32, 5>();
    var var_2 = func_1(Struct_1(reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], abs(global1[_wgslsmith_index_u32(u_input.b.x, 5u)])), 5u)]), vec2<i32>(-1i) * -(~global3.b)));
    global0 = Struct_1(global1[_wgslsmith_index_u32(var_2.a, 5u)] >> (0u % 32u), min(_wgslsmith_mod_vec2_i32(~var_2.b << (~u_input.b % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(-global0.b, vec2<i32>(7244i, global3.b.x))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 13365i), vec2<i32>(global3.b.x, 9624i)) << (firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global0.a, 21614u), vec2<u32>(var_2.a, var_2.a))) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(37254u, ~(29401u & global1[_wgslsmith_index_u32(47218u, 5u)])) & 2610u, -max(select(vec4<i32>(global3.b.x, 1i, 2147483647i, 1i), vec4<i32>(0i, -20509i, global3.b.x, 765i), vec4<bool>(true, true, var_1.x, var_1.x)), -vec4<i32>(-59596i, global3.b.x, global0.b.x, 0i)) ^ (~firstTrailingBit(vec4<i32>(var_2.b.x, global2[_wgslsmith_index_u32(25623u, 13u)], global0.b.x, -5598i)) & -firstTrailingBit(vec4<i32>(11201i, global2[_wgslsmith_index_u32(70485u, 13u)], -51171i, global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(775f * -824f))), countOneBits(vec4<u32>(func_1(func_1(Struct_1(global1[_wgslsmith_index_u32(1u, 5u)], vec2<i32>(global0.b.x, 1i)))).a, global3.a & ~var_2.a, _wgslsmith_div_u32(4294967295u, 66119u | global0.a), firstTrailingBit(_wgslsmith_sub_u32(var_2.a, 22577u)))));
}

