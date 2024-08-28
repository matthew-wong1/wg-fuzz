struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: array<u32, 22>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 14>;

var<private> global4: vec3<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec2<u32> {
    global3 = array<Struct_1, 14>();
    let var_0 = Struct_1(global2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2228f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(min(global2.b, -1000f))))))));
    var var_1 = countOneBits(vec3<u32>(global0.x, select(0u, _wgslsmith_mult_u32(14487u, global1[_wgslsmith_index_u32(global0.x, 22u)] >> (global0.x % 32u)), any(select(vec3<bool>(arg_1, arg_1, global4.x), vec3<bool>(true, true, true), vec3<bool>(global4.x, arg_1, global4.x)))), global1[_wgslsmith_index_u32(72423u, 22u)] & 28243u));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 22u)], (global1[_wgslsmith_index_u32(108626u, 22u)] | 0u) & ~8996u, 27853u, abs(~global1[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 22u)], 22u)], 20348u, 4294967295u), vec4<u32>(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 22u)], 22u)], global1[_wgslsmith_index_u32(var_1.x, 22u)], var_1.x), vec3<u32>(4294967295u, var_1.x, 0u)), ~1u, ~var_1.x), countOneBits(~vec4<u32>(var_1.x, global1[_wgslsmith_index_u32(global0.x, 22u)], 51311u, 0u)))), vec4<u32>(21370u, ~4294967295u, _wgslsmith_div_u32(reverseBits(_wgslsmith_mod_u32(var_1.x, 4294967295u)), countOneBits(38757u)), ~(var_1.x >> (~global0.x % 32u)))), 14u)];
    global4 = vec3<bool>(arg_1, all(!vec2<bool>(global4.x, true)), false);
    return ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u >> (1u % 32u), global0.x), abs(firstTrailingBit(select(var_1.yy, vec2<u32>(4294967295u, global0.x), vec2<bool>(true, arg_1)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = !(!arg_2.x) && true;
    global4 = !(!vec3<bool>(false, !var_1, var_1));
    global0 = abs(vec2<u32>(~global0.x, global0.x) & _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global0.x, 4294967295u), 1u), ~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 104527u)), ~vec2<u32>(1u, 1u)));
    var var_2 = _wgslsmith_add_vec2_u32(abs((abs(vec2<u32>(global0.x, global0.x)) & func_3(global4.x, global4.x)) & (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 22u)], 22u)], global0.x) >> ((vec2<u32>(global0.x, global1[_wgslsmith_index_u32(88012u, 22u)]) >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 22u)], 22u)], 76834u) % vec2<u32>(32u))) % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(64591u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48300u, 22u)], 22u)])), abs(firstTrailingBit(vec2<u32>(0u, 25941u)))) & _wgslsmith_mult_vec2_u32(vec2<u32>(111325u, global0.x) | firstLeadingBit(vec2<u32>(global0.x, global1[_wgslsmith_index_u32(91312u, 22u)])), abs(vec2<u32>(global0.x, global0.x)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(15861u, global0.x), vec2<u32>(0u, 12251u)) % vec2<u32>(32u))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global1[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_sub_vec2_u32(~(~(vec2<u32>(30188u, global0.x) << (vec2<u32>(global0.x, global1[_wgslsmith_index_u32(global0.x, 22u)]) % vec2<u32>(32u)))), abs(~reverseBits(vec2<u32>(arg_1, 0u)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    global4 = select(select(select(vec3<bool>(false != global4.x, global4.x, global2.b <= global2.b), !(!vec3<bool>(global4.x, true, global4.x)), vec3<bool>(true, true, !global4.x)), !vec3<bool>(false, global4.x, true), select(select(select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(global4.x, false, true), global4.x), !vec3<bool>(global4.x, true, global4.x), select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, true, global4.x), vec3<bool>(global4.x, global4.x, true))), !(!vec3<bool>(global4.x, global4.x, true)), global4.x)), select(vec3<bool>(true, true, func_2(global2.b, arg_0, vec3<bool>(global4.x, false, false)).b <= _wgslsmith_f_op_f32(round(arg_2.b))), vec3<bool>(false, global1[_wgslsmith_index_u32(global0.x, 22u)] == (global1[_wgslsmith_index_u32(61825u, 22u)] << (39819u % 32u)), !global4.x), global4.x), arg_2.b <= _wgslsmith_f_op_f32(-global2.b));
    let var_0 = _wgslsmith_sub_vec3_u32(select(~(min(vec3<u32>(1u, 76345u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 22u)], 22u)]), vec3<u32>(28913u, 4294967295u, 1u)) | vec3<u32>(4294967295u, 1u, 15202u)), ~(vec3<u32>(51217u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44883u, 22u)], 22u)], 458u) | vec3<u32>(0u, global1[_wgslsmith_index_u32(40808u, 22u)], 1u)), global4.x), countOneBits(vec3<u32>(_wgslsmith_mod_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 22u)], 22u)], global1[_wgslsmith_index_u32(global0.x, 22u)], global4.x), ~0u), func_3(!global4.x, all(vec4<bool>(global4.x, global4.x, global4.x, true))).x, global1[_wgslsmith_index_u32(select(0u, 18548u, true), 22u)])));
    var var_1 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-643f - _wgslsmith_f_op_f32(-arg_0.b)) * arg_0.b), 1f), func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b - arg_2.b))))), arg_2, !vec3<bool>(true, global4.x, global2.b == -1000f)), vec3<bool>(true, global4.x, true));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(select(-938f, _wgslsmith_f_op_f32(exp2(arg_2.b)), all(vec4<bool>(global4.x, true, true, false))))))));
    return 1u & firstLeadingBit(_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(73565u, global1[_wgslsmith_index_u32(24307u, 22u)]), 22u)], global1[_wgslsmith_index_u32(~firstLeadingBit(global0.x), 22u)]));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(func_5(Struct_1(global2.a >> (vec3<u32>(global0.x, global1[_wgslsmith_index_u32(global0.x, 22u)], global0.x) % vec3<u32>(32u)), 450f), global2.a.x, global3[_wgslsmith_index_u32(func_4(func_2(1189f, Struct_1(global2.a, 1234f), vec3<bool>(false, arg_1, global4.x)), 47429u, func_2(-248f, global3[_wgslsmith_index_u32(global0.x, 14u)], vec3<bool>(arg_2, true, true))), 14u)]), countOneBits(_wgslsmith_sub_u32(~14876u, abs(global0.x)))), firstLeadingBit(func_3(any(select(vec3<bool>(true, false, global4.x), vec3<bool>(global4.x, false, global4.x), vec3<bool>(arg_2, global4.x, arg_1))), !any(vec4<bool>(arg_1, arg_2, false, false)))));
    return 970f;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = arg_1;
    let var_1 = abs(~(_wgslsmith_dot_vec4_u32(vec4<u32>(83585u, 4294967295u, global1[_wgslsmith_index_u32(global0.x, 22u)], 49917u), vec4<u32>(global1[_wgslsmith_index_u32(40559u, 22u)], 771u, global1[_wgslsmith_index_u32(global0.x, 22u)], 120763u)) << (138173u % 32u)));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(16139u, _wgslsmith_mult_u32(var_1, ~4294967295u)), 14u)];
    let var_3 = arg_1.a.x;
    var var_4 = _wgslsmith_mod_vec4_u32(abs(~firstTrailingBit(select(vec4<u32>(42879u, global1[_wgslsmith_index_u32(global0.x, 22u)], global0.x, 4294967295u), vec4<u32>(var_1, 9449u, global0.x, 51876u), vec4<bool>(false, global4.x, false, global4.x)))), vec4<u32>(1u, ~_wgslsmith_sub_u32(~45040u, 0u), 1u, _wgslsmith_mod_u32(~global0.x, var_1)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 14u)];
    let var_0 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14368u, 22u)], 14u)];
    let var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-79296i, var_0.a.x, ~_wgslsmith_div_i32(-2147483647i, global2.a.x)), -(vec3<i32>(-1i, 1i, 5868i) | -vec3<i32>(-2147483647i, var_0.a.x, -1i)));
    var var_2 = vec2<f32>(100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(397f, var_0.b)), _wgslsmith_f_op_f32(select(var_0.b, var_0.b, true))))));
    global4 = !vec3<bool>(false, func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(-210f, 1098f, -1407f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -745f, var_0.b))), Struct_1(vec3<i32>(var_0.a.x, -26039i, u_input.b) ^ var_0.a, _wgslsmith_div_f32(var_2.x, global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(234f, var_0.b, -695f), false, true, vec2<f32>(-707f, 386f))))), false);
    global4 = vec3<bool>(-1i >= -_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 59946i), firstTrailingBit(vec2<i32>(var_1, -25859i))), !(true | !(!global4.x)), true);
    let var_3 = ~(~(-vec2<i32>(-1i, global2.a.x & global2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_2.x)), func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b, -339f))))), func_2(-203f, func_2(_wgslsmith_f_op_f32(func_1(vec3<f32>(-1427f, -1180f, 1000f), true, true, vec2<f32>(var_2.x, var_2.x))), func_2(1503f, global3[_wgslsmith_index_u32(global0.x, 14u)], vec3<bool>(global4.x, global4.x, global4.x)), vec3<bool>(true, true, true)), select(vec3<bool>(global4.x, false, global4.x), vec3<bool>(global4.x, false, false), true)), !(!(!vec3<bool>(false, global4.x, true)))).a.x, abs(~vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(53507u, 22u)], 25817u, 92342u), vec4<u32>(global0.x, global0.x, 4294967295u, global1[_wgslsmith_index_u32(global0.x, 22u)])), 22u)], firstTrailingBit(38486u), global0.x, 1u)));
}

