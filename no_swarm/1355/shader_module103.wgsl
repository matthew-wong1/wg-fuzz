struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(50185u), Struct_2(54546u), Struct_2(1310u), Struct_2(70320u), Struct_2(6707u), Struct_2(0u), Struct_2(45113u));

var<private> global1: Struct_4;

var<private> global2: array<vec2<f32>, 2>;

var<private> global3: array<f32, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = 25613u;
    let var_1 = ~_wgslsmith_mod_vec2_u32(~firstLeadingBit(vec2<u32>(0u, 13858u)), vec2<u32>(~firstLeadingBit(global1.b.a), ~_wgslsmith_sub_u32(38660u, u_input.a)));
    var var_2 = Struct_2(u_input.a);
    var var_3 = Struct_4(vec4<f32>(1115f, _wgslsmith_f_op_f32(exp2(global1.a.x)), 811f, _wgslsmith_f_op_f32(max(global1.a.x, 1228f))), Struct_2(reverseBits(~u_input.b.x)), ~min(~global1.c, vec3<u32>(1u, 1u, 1u)) | select(vec3<u32>(0u, 0u, ~var_1.x), reverseBits(min(vec3<u32>(u_input.b.x, var_2.a, var_1.x), vec3<u32>(74356u, 1u, global1.c.x))), true), ~global1.d);
    var var_4 = !(!vec2<bool>(any(vec3<bool>(false, false, false)) || true, true & all(vec2<bool>(false, true))));
    return vec4<bool>(true, true, firstLeadingBit(-var_3.d | (var_3.d ^ var_3.d)) > (i32(-1i) * -27832i), var_4.x);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, 101273u) ^ vec3<u32>(u_input.a, global1.b.a, u_input.b.x), ~vec3<u32>(4294967295u, u_input.a, global1.c.x)), vec3<u32>(global1.b.a, 9959u, ~19952u)), _wgslsmith_div_vec3_u32(global1.c, _wgslsmith_add_vec3_u32(~global1.c, vec3<u32>(global1.c.x, 9727u, 14284u)))), -(~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(global1.d, 22474i, global1.d, -39549i)), vec4<i32>(-19473i, global1.d, 0i, global1.d))));
    let var_1 = Struct_3(~_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 83028u) ^ vec4<u32>(u_input.b.x, 4294967295u, 25778u, var_0.a)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, 0u, 1u, 1u)), ~vec4<u32>(1u, var_0.a, global1.c.x, 4294967295u))), Struct_1(7156u, var_0.b), ~global1.b.a, var_0.b.wxw, any(select(func_3(), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, func_3().x, all(vec4<bool>(false, true, false, true))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(min(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.b, vec4<i32>(-1i, 73488i, 0i, 2147483647i), vec4<i32>(global1.d, 2147483647i, var_0.b.x, 1i)), select(var_0.b, vec4<i32>(var_1.b.b.x, 31941i, global1.d, 19733i), var_1.e)), reverseBits(_wgslsmith_add_vec4_i32(var_1.b.b, var_0.b))), var_1.b.b), 40695i, abs(~select(~24246i, -1i, true)), _wgslsmith_add_i32(min(~0i, 30959i), -2147483647i));
    global1 = Struct_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, 994f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.a.x, 21u)] * global1.a.x), -558f), global1.a, !(!var_1.e))), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 7u)], vec3<u32>(23703u, var_1.a.x, global1.b.a), _wgslsmith_clamp_i32(abs(var_0.b.x), ~0i, var_3.x));
    return global0[_wgslsmith_index_u32(~u_input.a, 7u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(824f * -1948f)))))), _wgslsmith_f_op_f32(-105f * _wgslsmith_f_op_f32(max(272f, 1522f))), -319f);
    var var_1 = arg_2.x;
    let var_2 = global1.b;
    let var_3 = Struct_4(global1.a, func_2(), vec3<u32>(u_input.b.x, arg_0.a, global1.b.a), ~2147483647i);
    let var_4 = Struct_2(1u);
    return 1i;
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    var var_0 = vec2<bool>(1787f > global1.a.x, true);
    var var_1 = arg_0;
    var var_2 = Struct_1(arg_0.a, vec4<i32>(_wgslsmith_clamp_i32(~arg_0.b.x & ~var_1.b.x, firstLeadingBit(-25406i & arg_0.b.x), var_1.b.x), var_1.b.x, arg_0.b.x, _wgslsmith_mod_i32(arg_0.b.x, 0i)));
    var var_3 = true;
    var var_4 = Struct_3(vec4<u32>(reverseBits(0u), _wgslsmith_div_u32(4294967295u, 61650u), 33352u | _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, 12366u, arg_0.a), global1.c | global1.c), global1.b.a), arg_0, min(max(4294967295u, min(var_1.a, 49529u)), reverseBits(arg_0.a)) ^ global1.c.x, var_1.b.zwy, true);
    return Struct_4(global1.a, func_2(), ~global1.c, ~22437i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 2>();
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_mod_vec3_i32(-reverseBits(_wgslsmith_add_vec3_i32(select(vec3<i32>(-23539i, -1i, global1.d), vec3<i32>(-2147483647i, -40379i, 54511i), false), firstLeadingBit(vec3<i32>(-1i, global1.d, -11053i)))), min(min(vec3<i32>(global1.d, global1.d, global1.d), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(10648i, 5859i, -9046i), vec3<i32>(global1.d, 1i, 1i)))), _wgslsmith_add_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-20112i, 67193i, global1.d), vec3<i32>(global1.d, 1i, 1i)), -vec3<i32>(global1.d, -45180i, global1.d), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -18548i), vec2<i32>(1i, global1.d)), global1.d, global1.d))));
    let var_2 = ~vec2<i32>(select(var_1.x, -var_1.x >> (~4294967295u % 32u), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))), global1.d);
    var var_3 = global1.c & global1.c;
    var var_4 = true;
    var_1 = ~min(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-2147483647i, var_2.x, 468i)), vec3<i32>(1i, countOneBits(global1.d), -11773i)), vec3<i32>(~(-60209i), 0i, ~1i) >> (global1.c % vec3<u32>(32u)));
    let var_5 = func_4(Struct_1(~(global1.c.x ^ ~global1.b.a), _wgslsmith_div_vec4_i32(vec4<i32>(func_1(Struct_1(u_input.a, vec4<i32>(var_2.x, 1i, global1.d, 25748i)), global1.c, vec4<bool>(false, false, true, false)), var_1.x | -4059i, global1.d, -2147483647i), vec4<i32>(~var_2.x, 31160i, -37265i, -11128i))));
    var var_6 = -63163i >> (~(u_input.b.x ^ firstTrailingBit(1u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~max(vec2<u32>(var_3.x, 0u), vec2<u32>(0u, 4294967295u)))), var_2.x, vec4<i32>(_wgslsmith_clamp_i32(min(var_2.x, var_2.x), 1i, max(1i, var_5.d)), -2147483647i | ~global1.d, var_1.x, _wgslsmith_sub_i32(~func_4(Struct_1(1u, vec4<i32>(global1.d, global1.d, var_5.d, var_5.d))).d, (-2147483647i >> (var_5.c.x % 32u)) | var_2.x)), var_5.d);
}

