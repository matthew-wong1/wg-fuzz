struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 55424i);

var<private> global3: Struct_1 = Struct_1(1u, vec4<f32>(1813f, 422f, 1561f, -308f));

var<private> global4: array<i32, 5>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global0 = vec2<bool>(select(true, all(vec2<bool>(true, u_input.c > u_input.c)), (-42159i > (0i & u_input.b)) && false), !all(arg_0));
    let var_0 = ~(_wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, global4[_wgslsmith_index_u32(1u, 5u)], global4[_wgslsmith_index_u32(global1.x, 5u)]), vec3<i32>(u_input.b, 10583i, global4[_wgslsmith_index_u32(u_input.c, 5u)])), _wgslsmith_div_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(global3.a, 5u)], -5417i, u_input.b), vec3<i32>(global4[_wgslsmith_index_u32(49033u, 5u)], -78908i, global2.x))) << (countOneBits(~u_input.c) % 32u)) > ~countOneBits(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(24927u, 5u)], 648i), 9457i));
    global0 = vec2<bool>(!(global3.b.x != global3.b.x), all(vec4<bool>(all(vec4<bool>(true, true, true, false)), all(vec2<bool>(false, global0.x)), any(vec3<bool>(true, true, arg_0.x)), global0.x)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-324f + -369f)) + global3.b.x))));
    var var_2 = select(vec4<i32>(-_wgslsmith_clamp_i32(max(global2.x, global2.x), firstTrailingBit(global4[_wgslsmith_index_u32(59780u, 5u)]), global4[_wgslsmith_index_u32(global3.a, 5u)]), select(u_input.b, countOneBits(u_input.b), all(arg_0) & global0.x), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 1u) & 1u, 5u)], u_input.b), u_input.b), vec4<i32>(u_input.b, countOneBits(_wgslsmith_div_i32(global2.x, ~13441i)), firstLeadingBit(-global2.x), global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1394f, global3.b.x, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(global3.b.x + -1511f))) != _wgslsmith_f_op_f32(797f * global3.b.x));
    return var_0;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = func_3(vec2<bool>(false, global0.x));
    var var_1 = u_input.a | ~u_input.a;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(arg_0, (arg_0 ^ ~vec3<u32>(arg_0.x, global1.x, global1.x)) >> (~select(vec3<u32>(0u, global3.a, 31015u), arg_0, vec3<bool>(false, global0.x, var_0)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, 1286f, -281f, -1032f))))));
    var var_3 = var_2;
    var var_4 = min(countOneBits(vec4<i32>(0i, u_input.b, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global4[_wgslsmith_index_u32(28775u, 5u)], global4[_wgslsmith_index_u32(var_2.a, 5u)], global2.x)), -vec3<i32>(u_input.b, global4[_wgslsmith_index_u32(u_input.a, 5u)], global2.x)), -(~u_input.b))), -vec4<i32>(-13330i, u_input.b, 1i, global4[_wgslsmith_index_u32(~firstLeadingBit(53302u), 5u)]));
    return Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1804f + _wgslsmith_f_op_f32(var_3.b.x * 551f)), _wgslsmith_f_op_f32(select(737f, _wgslsmith_f_op_f32(global3.b.x + 725f), arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1204f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f * 703f)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(arg_0)), 190f))));
    global1 = _wgslsmith_mod_vec2_u32(max(~(~(vec2<u32>(global1.x, global1.x) | vec2<u32>(26994u, 0u))), select(vec2<u32>(22346u ^ global3.a, abs(5672u)), ~select(vec2<u32>(global1.x, global3.a), vec2<u32>(u_input.a, 0u), true), !any(vec3<bool>(global0.x, true, global0.x)))), ~(~(~vec2<u32>(arg_2, 1u)) << (~vec2<u32>(0u, 63298u) % vec2<u32>(32u))));
    global3 = func_2(_wgslsmith_mult_vec3_u32(reverseBits(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(102840u, global3.a, arg_3.a), vec3<u32>(1u, arg_2, 48895u)))), ~vec3<u32>(12535u, global1.x, arg_2) << (~vec3<u32>(arg_2, global1.x, arg_1.a) % vec3<u32>(32u))), !vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, global0.x), vec3<bool>(false, false, global0.x))), func_3(select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), vec2<bool>(false, true))), !global0.x));
    var var_1 = vec3<i32>(firstLeadingBit(~global2.x), global2.x, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1.a, ~u_input.c), arg_1.a) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global1.x, 0u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(93536u, 4294967295u, 1u), vec3<u32>(1u, arg_1.a, 41877u)) % vec3<u32>(32u)), abs(~vec3<u32>(77367u, 77983u, 0u))) % 32u), 5u)]);
    let var_2 = arg_3.b;
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a, 0u, 4294967295u, arg_2), vec4<u32>(4294967295u, 0u, arg_3.a, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_3.a, u_input.c, 51370u, global3.a), vec4<u32>(0u, global1.x, u_input.c, global1.x))), vec4<u32>(arg_2 ^ 60721u, reverseBits(4294967295u), 0u >> (arg_2 % 32u), _wgslsmith_sub_u32(u_input.a, 37291u))), vec4<u32>(1u, arg_2 & max(global3.a, u_input.c), 90166u, arg_2));
}

fn func_1() -> f32 {
    var var_0 = max(2147483647i | global2.x, global2.x);
    let var_1 = vec4<u32>(func_4(_wgslsmith_f_op_f32(min(-466f, global3.b.x)), func_2(vec3<u32>(16831u, 4294967295u, 1u), !vec3<bool>(global0.x, false, false)), _wgslsmith_mult_u32(max(global3.a, 125623u), ~54899u), func_2(min(vec3<u32>(1u, global3.a, 4294967295u), vec3<u32>(u_input.a, 28844u, 0u)), vec3<bool>(global0.x, false, true))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), func_2(max(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(u_input.c, 0u, 13282u)), select(vec3<bool>(false, true, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, true))), global1.x, Struct_1(global1.x, vec4<f32>(global3.b.x, 1000f, 131f, global3.b.x))), abs(~_wgslsmith_sub_u32(8472u, 1u)), u_input.a) << (_wgslsmith_add_vec4_u32(vec4<u32>(3948u, ~_wgslsmith_mod_u32(57796u, global3.a), 68467u, global3.a & u_input.a), (~vec4<u32>(0u, 12636u, u_input.a, u_input.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(2094u, 4294967295u, global1.x, u_input.a), vec4<u32>(global3.a, global1.x, 0u, u_input.a)) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(~vec4<u32>(1909u, global1.x, 60187u, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global3.a, 20309u, global1.x), vec4<u32>(52113u, 0u, global1.x, 0u)))) % vec4<u32>(32u));
    let var_2 = Struct_1(~global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(global3.b)), global3.b)))));
    global4 = array<i32, 5>();
    let var_3 = func_2(abs(firstLeadingBit(var_1.xyw | (vec3<u32>(u_input.a, u_input.c, 33672u) << (vec3<u32>(u_input.c, 71836u, var_1.x) % vec3<u32>(32u))))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(!select(vec3<bool>(false, global0.x, false), vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(global0.x && global0.x, global0.x, 519f > global3.b.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, true, true), global0.x), vec3<bool>(false, global0.x, false)))));
    return _wgslsmith_f_op_f32(-var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0u, vec4<f32>(1429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x - global3.b.x) + _wgslsmith_f_op_f32(-480f * global3.b.x))), -1066f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1105f - -1053f))) - global3.b.x)));
    global0 = select(vec2<bool>(true, _wgslsmith_f_op_f32(func_1()) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-924f, 1095f)) - _wgslsmith_f_op_f32(floor(881f)))), vec2<bool>(true, !(select(global0.x, true, false) != any(vec2<bool>(global0.x, false)))), vec2<bool>(global0.x, true));
    global2 = vec2<i32>(-(~(i32(-1i) * -1i)), -16994i);
    let var_1 = 0u;
    global1 = vec2<u32>(_wgslsmith_add_u32(var_0.a, global3.a), var_1);
    let var_2 = global0.x;
    global0 = vec2<bool>(global0.x, !(!global0.x));
    global2 = select(countOneBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-8840i, 1i), max(vec2<i32>(18159i, global4[_wgslsmith_index_u32(1u, 5u)]), vec2<i32>(u_input.b, 0i)), vec2<i32>(u_input.b, global2.x) & vec2<i32>(-2147483647i, 38297i))), -(~(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.x, 2147483647i), vec2<i32>(-50832i, -1i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(global2.x, 2147483647i), vec2<i32>(global2.x, -5850i)))), vec2<bool>(global0.x != (reverseBits(u_input.c) < 4294967295u), !(!(false || global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(575f, global3.b.x, 1f));
}

