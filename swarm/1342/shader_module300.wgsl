struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: array<vec4<u32>, 24>;

var<private> global2: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(4294967295u, 0u, 43000u, 89279u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(1u, 3729u, 1u, 69621u), vec4<u32>(4294967295u, 4294967295u, 0u, 9384u), vec4<u32>(1u, 45428u, 58660u, 32111u), vec4<u32>(4294967295u, 1u, 95069u, 43562u), vec4<u32>(27606u, 0u, 4294967295u, 0u), vec4<u32>(0u, 1u, 4247u, 4294967295u), vec4<u32>(0u, 6626u, 16201u, 0u), vec4<u32>(4294967295u, 3482u, 0u, 4294967295u), vec4<u32>(0u, 1u, 49123u, 1u), vec4<u32>(1u, 0u, 8648u, 0u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> u32 {
    global2 = array<vec4<u32>, 12>();
    var var_0 = Struct_2(arg_0.yy, Struct_1(global2[_wgslsmith_index_u32(abs(~0u), 12u)] ^ select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 74935u), vec4<u32>(global0[_wgslsmith_index_u32(50897u, 24u)], global0[_wgslsmith_index_u32(24414u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(44524u, 24u)])), global1[_wgslsmith_index_u32(19122u, 24u)] >> (vec4<u32>(global0[_wgslsmith_index_u32(31056u, 24u)], 4294967295u, 72112u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30280u, 24u)], 24u)], 24u)], 24u)]) % vec4<u32>(32u)), all(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x))), ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(70756u, 73642u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67293u, 24u)], 24u)], 24u)], 24u)]), vec3<u32>(100082u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 4294967295u)))), u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x));
    global1 = array<vec4<u32>, 24>();
    var_0 = Struct_2(!vec2<bool>(!all(vec4<bool>(true, true, true, var_0.a.x)), var_0.a.x), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~5037u, global0[_wgslsmith_index_u32(var_0.b.a.x, 24u)], 3589u, 4294967295u), vec4<u32>(~103383u, 4294967295u, 1u, 1u)), ~var_0.b.b), var_0.c, min(firstTrailingBit(-20131i), -_wgslsmith_add_i32(abs(var_0.d), countOneBits(var_0.d))));
    global1 = array<vec4<u32>, 24>();
    return var_0.b.b.x;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(-u_input.a.x, -2147483647i), 1i) ^ vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a.x), abs(-2147483647i));
    var var_1 = vec3<i32>(countOneBits(abs(-5465i)) & u_input.a.x, u_input.a.x, 80352i);
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(41963u, _wgslsmith_dot_vec4_u32(firstLeadingBit(global2[_wgslsmith_index_u32(arg_2.x, 12u)]), global1[_wgslsmith_index_u32(1u, 24u)]), ~50027u, firstLeadingBit(_wgslsmith_div_u32(4294967295u, 13722u))), firstLeadingBit(~vec4<u32>(0u, arg_2.x & 60737u, global0[_wgslsmith_index_u32(4294967295u, 24u)], abs(1u))));
    global1 = array<vec4<u32>, 24>();
    let var_3 = Struct_1(abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(arg_2.x, 24u)], arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)])), firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 12u)])), 12u)] >> (global2[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 12u)] % vec4<u32>(32u))), arg_2);
    return ~(~32743u);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1448f, 429f) - vec2<f32>(-932f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1716f, -1386f))))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1439f), -599f));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2418f * 535f)))), var_0.x);
    let var_2 = -2603f;
    var var_3 = vec4<i32>(25271i, -15257i, -38715i, u_input.a.x >> (~abs(11955u) % 32u));
    var_1 = var_0.x;
    return func_4(var_0.x, select(vec2<bool>(any(arg_1.b), true), arg_1.b.zz, arg_1.b.x), vec3<u32>(func_3(vec4<bool>(arg_1.b.x, arg_1.b.x, false, true), !vec4<bool>(arg_1.b.x, true, false, false)), global0[_wgslsmith_index_u32(113897u, 24u)], firstTrailingBit(39984u)), vec2<bool>(true, !all(vec4<bool>(true, false, arg_1.b.x, arg_1.b.x)))) ^ ~arg_1.c.a.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(max(countOneBits(~vec4<u32>(arg_3.b.a.x, global0[_wgslsmith_index_u32(14524u, 24u)], 0u, global0[_wgslsmith_index_u32(1u, 24u)])), vec4<u32>(abs(abs(0u)), ~0u, ~arg_1.b.x, abs(arg_3.b.a.x))), vec3<u32>(func_2(~vec3<u32>(arg_3.b.a.x, 1u, 103986u), Struct_3(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33949u, 24u)], 24u)] << (vec4<u32>(18357u, 56679u, 20404u, 4294967295u) % vec4<u32>(32u)), vec3<bool>(true, arg_0, arg_0), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 24u)], arg_1.b), arg_1, _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_3.c, 3565i, arg_3.d), vec4<i32>(2147483647i, 2147483647i, u_input.a.x, 11367i)))), (select(global0[_wgslsmith_index_u32(arg_1.a.x, 24u)], arg_3.b.a.x, arg_3.a.x) << ((0u << (0u % 32u)) % 32u)) & global0[_wgslsmith_index_u32(~arg_1.b.x, 24u)], 4468u));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(652f, 1025f) + _wgslsmith_f_op_f32(-334f + _wgslsmith_f_op_f32(abs(1316f)))))));
    var var_1 = Struct_3(min(global2[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(51489u, 1u), 24u)], 24u)]), !vec3<bool>(1u != (global0[_wgslsmith_index_u32(0u, 24u)] >> (4294967295u % 32u)), any(vec2<bool>(true, true)), true), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41575u, 24u)], 24u)], reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(58431u, 24u)], 15u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43061u, 24u)], 24u)], 24u)]), firstTrailingBit(vec3<u32>(25233u, 0u, 92232u)), countOneBits(vec3<u32>(0u, 1u, 6164u))))), Struct_1(~(global2[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)]), 12u)] << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 46008u, global0[_wgslsmith_index_u32(15370u, 24u)]) % vec4<u32>(32u))), vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 24u)], select(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19044u, 24u)], 24u)], 24u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], false))), _wgslsmith_sub_vec4_i32(abs(-abs(vec4<i32>(29779i, -2147483647i, 63334i, 1i))), ~vec4<i32>(-u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)));
    let var_2 = func_1(false, var_1.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 - -625f))), _wgslsmith_f_op_f32(-785f - var_0)))), Struct_2(vec2<bool>(true, true), var_1.c, abs(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.x, -var_1.e.x), -var_1.e.zw)));
    let var_3 = var_0;
    var_1 = Struct_3(abs(vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4294967295u, 28457u)), select(vec3<u32>(var_2.b.a.x, 17613u, var_1.d.a.x), vec3<u32>(var_2.b.a.x, 0u, global0[_wgslsmith_index_u32(var_1.d.b.x, 24u)]), var_1.b)), var_2.b.b.x, var_1.a.x, var_2.b.b.x)), var_1.b, var_2.b, Struct_1(_wgslsmith_div_vec4_u32(max(vec4<u32>(22400u, var_1.d.b.x, 10649u, var_2.b.b.x), var_2.b.a), ~vec4<u32>(34899u, 18873u, global0[_wgslsmith_index_u32(var_2.b.a.x, 24u)], 4294967295u) >> ((vec4<u32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.d.b.x, 24u)], 24u)], 1u, var_1.a.x) >> (vec4<u32>(var_2.b.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.b.a.x, 24u)], 24u)], var_1.d.b.x, var_2.b.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), max(_wgslsmith_sub_vec3_u32(var_1.a.yzy, var_1.d.a.yww), countOneBits(~var_1.a.xxx))), vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -u_input.a.x, func_1(true, func_1(var_1.b.x, Struct_1(global1[_wgslsmith_index_u32(12495u, 24u)], vec3<u32>(66956u, var_2.b.b.x, 48892u)), vec3<f32>(-370f, 1146f, 592f), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(1u, 31841u, var_2.b.b.x, var_1.d.b.x), var_2.b.a.zyw), 5384i, 13341i)).b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1770f, var_3, var_3), vec3<f32>(-1243f, var_3, var_0))), var_2).c), u_input.a.x >> (func_2(~var_2.b.a.yww, Struct_3(var_1.a, vec3<bool>(var_2.a.x, true, var_1.b.x), Struct_1(vec4<u32>(var_2.b.b.x, 39588u, var_2.b.b.x, var_1.d.b.x), var_2.b.a.xwx), var_1.d, var_1.e)) % 32u), var_2.d, _wgslsmith_dot_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-43115i, var_2.c), u_input.a, var_1.e.ww), _wgslsmith_mod_vec2_i32(vec2<i32>(40306i, u_input.a.x), vec2<i32>(48077i, u_input.a.x))), _wgslsmith_mult_vec2_i32(u_input.a ^ vec2<i32>(40390i, u_input.a.x), -u_input.a))));
    global2 = array<vec4<u32>, 12>();
    global2 = array<vec4<u32>, 12>();
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) - 1143f))), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-156f)), -173f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(u_input.a.x, ~(-2147483647i), 0i, min(var_2.d, u_input.a.x))), vec2<i32>(var_1.e.x >> (~(1u & global0[_wgslsmith_index_u32(0u, 24u)]) % 32u), -var_1.e.x), -733f, vec3<u32>(var_2.b.a.x, 23031u, var_1.a.x));
}

