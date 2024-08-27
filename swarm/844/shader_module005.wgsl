struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: vec2<i32>;

var<private> global2: Struct_2;

var<private> global3: vec2<bool>;

var<private> global4: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-1477f, -410f, 135f, 430f), vec4<f32>(-677f, -274f, 412f, -421f), vec4<f32>(687f, -444f, 1182f, -1000f), vec4<f32>(-292f, -414f, 875f, -654f), vec4<f32>(-496f, -1123f, -277f, -1000f), vec4<f32>(-1232f, -1000f, 1186f, -1313f), vec4<f32>(406f, 2086f, 1495f, 678f), vec4<f32>(265f, 930f, 598f, -1468f), vec4<f32>(1000f, 703f, -1177f, -709f), vec4<f32>(1599f, 620f, -568f, 186f), vec4<f32>(321f, -418f, 456f, -581f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(2147483647i, Struct_2(Struct_1(firstTrailingBit(global1.x) & -76489i, global2.a.b, 18469u, ~(~0u), global3.x)), global2.a, 1158f);
    var var_1 = global2.a.d;
    var var_2 = Struct_1(_wgslsmith_add_i32(u_input.d.x, i32(-1i) * -30879i), !vec3<bool>(false, all(!vec4<bool>(global2.a.b.x, var_0.b.a.e, true, global3.x)), false), 38213u, _wgslsmith_dot_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.d, global2.a.c, global2.a.c, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.a.c, 33859u, var_0.b.a.c, u_input.c), vec4<u32>(39877u, 52887u, 4294967295u, 36357u))), max(firstTrailingBit(vec4<u32>(global2.a.d, u_input.c, u_input.c, 1u)), ~vec4<u32>(73071u, 1u, 0u, 0u))), vec4<u32>(max(min(0u, global2.a.d), firstLeadingBit(1u)), _wgslsmith_mod_u32(countOneBits(var_0.b.a.c), 1u ^ global2.a.d), u_input.c, abs(47311u | global2.a.c))), false);
    let var_3 = Struct_2(var_0.b.a);
    global4 = array<vec4<f32>, 11>();
    return 41538u;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: bool) -> i32 {
    global3 = vec2<bool>(arg_0.b.a.b.x, false);
    var var_0 = reverseBits(abs(vec2<i32>(global2.a.a, min(-u_input.d.x, u_input.d.x))));
    var var_1 = vec2<u32>(u_input.a, global2.a.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1130f, arg_2)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 232f)))))));
    return -2147483647i;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global2 = global0[_wgslsmith_index_u32(~(_wgslsmith_add_u32(_wgslsmith_mult_u32(~arg_0.d, _wgslsmith_mod_u32(u_input.c, 4294967295u)), u_input.c) & u_input.c), 26u)];
    var var_0 = ~vec4<i32>(-2147483647i, 0i, func_4(Struct_3(reverseBits(18964i), global0[_wgslsmith_index_u32(func_3(), 26u)], Struct_1(arg_0.a, vec3<bool>(true, arg_0.b.x, false), 1u, 1058u, global2.a.b.x), -1019f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f * -474f)), !global3.x), -min(firstLeadingBit(-32883i), -73592i));
    var var_1 = global0[_wgslsmith_index_u32(global2.a.c, 26u)];
    let var_2 = Struct_1(-19796i, select(!arg_0.b, vec3<bool>(true, (u_input.c <= 1u) || all(vec4<bool>(true, var_1.a.e, false, true)), true), global2.a.b), min(~(~(~var_1.a.c)), global2.a.d), abs(_wgslsmith_mult_u32(global2.a.d, select(142435u, 86348u, false))), true || !global3.x);
    return u_input.d;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: i32) -> i32 {
    let var_0 = vec2<bool>(global3.x, u_input.e.x <= arg_3);
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(1i, -abs(arg_3)), arg_3, 0i, countOneBits(arg_0.a)) ^ ~abs(vec4<i32>(global1.x, 32647i, 1655i, arg_3) ^ -vec4<i32>(-6766i, -49430i, -1i, -43955i));
    let var_2 = Struct_1(func_4(Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_1, vec4<i32>(-2147483647i, u_input.d.x, 35811i, -41852i)), -var_1), arg_0.b, Struct_1(2147483647i, !vec3<bool>(global2.a.b.x, global2.a.b.x, true), _wgslsmith_mod_u32(90734u, global2.a.d), arg_2.c.c, false), _wgslsmith_f_op_f32(f32(-1f) * -464f)), !global2.a.b.x || var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)), true), !global2.a.b, ~32105u, 1u, false);
    var var_3 = true & !(!(any(vec4<bool>(false, false, false, false)) | any(var_2.b.yy)));
    let var_4 = true;
    return firstLeadingBit(select(abs(_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.x, -2147483647i, arg_1.x), arg_2.a)), func_4(arg_0, true, 811f, global3.x), false || (all(vec3<bool>(true, true, true)) == global2.a.b.x)));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(func_5(Struct_3(global2.a.a, Struct_2(global2.a), Struct_1(15602i, global2.a.b, global2.a.c, global2.a.d, false), _wgslsmith_f_op_f32(max(-129f, -1789f))), reverseBits(func_2(global2.a)), Struct_3(~global2.a.a, global0[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(u_input.b.x, vec3<bool>(true, global2.a.b.x, false), u_input.a, 1u, false), _wgslsmith_f_op_f32(540f - 247f)), global2.a.a >> (firstTrailingBit(106345u) % 32u)), -12190i, select(_wgslsmith_mod_i32(abs(global1.x), 38469i), _wgslsmith_mult_i32(~u_input.b.x, u_input.b.x), all(vec4<bool>(global2.a.e, true, global2.a.b.x, global2.a.e)))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, ~u_input.b.x), 1i), abs(-_wgslsmith_add_i32(u_input.e.x, -9741i)), i32(-1i) * -global2.a.a));
    var_0 = ((~abs(vec3<i32>(4341i, 17447i, global1.x)) & _wgslsmith_div_vec3_i32(-u_input.d, -vec3<i32>(u_input.d.x, var_0.x, global1.x))) | u_input.d) << (firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 4294967295u, global2.a.c), min(vec3<u32>(67128u, u_input.c, 30117u), vec3<u32>(u_input.a, u_input.a, 0u))) << (vec3<u32>(firstLeadingBit(global2.a.c), u_input.a, global2.a.d & u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = global2.a;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(739u, ~abs(0u), firstLeadingBit(~(~4294967295u)), var_1.c), firstLeadingBit(firstTrailingBit(firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 4294967295u, 5038u, 4294967295u))))));
    let var_3 = !all(var_1.b.xy);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = ~u_input.c;
    var var_2 = global2.a.b.x;
    global2 = Struct_2(global2.a);
    var var_3 = max(vec4<i32>(reverseBits(global2.a.a | (-29332i >> (u_input.a % 32u))), firstLeadingBit(37219i << (~var_1 % 32u)), _wgslsmith_div_i32(0i, ~_wgslsmith_div_i32(-7105i, global2.a.a)), u_input.e.x), vec4<i32>(abs(global2.a.a), ~func_1(false), _wgslsmith_mult_i32(~(-global2.a.a), global2.a.a), global2.a.a));
    let var_4 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(30062i, 2147483647i, var_3.x), var_3.x ^ 2147483647i, global2.a.a & 1i, ~var_3.x), vec4<i32>(2147483647i, abs(global1.x), firstLeadingBit(19806i), u_input.d.x << (var_1 % 32u))) ^ reverseBits(~(i32(-1i) * -57324i)), Struct_2(Struct_1(~_wgslsmith_mod_i32(u_input.b.x, global1.x), vec3<bool>(select(global2.a.e, true, global2.a.b.x), global2.a.b.x && global3.x, true | global3.x), ~global2.a.c, ~_wgslsmith_div_u32(97231u, u_input.c), global3.x && any(vec4<bool>(global3.x, global2.a.e, false, true)))), Struct_1(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.d.x), select(select(!global2.a.b, vec3<bool>(false, true, true), global2.a.b), vec3<bool>(global2.a.e, any(vec2<bool>(global3.x, global3.x)), !global2.a.e), !all(vec4<bool>(global2.a.e, false, true, global3.x))), ~abs(1u), 29347u, true), -249f);
    global2 = Struct_2(global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~min(~vec3<u32>(45585u, var_1, global2.a.d), countOneBits(vec3<u32>(u_input.a, var_1, 71362u))) & vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(global2.a.c), ~global2.a.c), global2.a.c, ~var_1), abs(~select(max(vec3<u32>(u_input.c, u_input.a, global2.a.d), vec3<u32>(0u, var_1, 0u)), abs(vec3<u32>(var_1, u_input.c, var_4.c.c)), !global2.a.b)), func_3(), select(_wgslsmith_add_u32(92781u, ~var_1), u_input.c, true), ~abs(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, global2.a.c, 53655u), vec3<u32>(49600u, 1u, var_4.b.a.c)))));
}

