struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(266f, -1691f, 595f, -225f, -874f, 523f, 768f, 637f, 1692f, -1114f, -1000f, 605f, -235f, 141f, -150f, 955f, 882f, -370f, 883f, -1250f, 1000f, 900f, 232f, 982f, -724f, 1000f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~1u, 26u)])), true));
    let var_1 = false;
    return ~reverseBits(-2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(~(i32(-1i) * -17278i), ~2147483647i << (reverseBits(arg_0.d.x) % 32u), -53389i, -func_3()), firstTrailingBit(vec4<i32>(arg_2.c | 2012i, _wgslsmith_mult_i32(arg_2.c, -18948i), arg_0.c, arg_0.c))), Struct_3(1234f, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), ~min(arg_1, arg_0.d.zx)), vec3<bool>(true, !any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-arg_0.b) > _wgslsmith_f_op_f32(select(-368f, arg_0.b, false))), arg_2, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.d.x, arg_1.x), arg_2.d.x)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true)));
    let var_1 = vec2<f32>(var_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.d.b)))) * var_0.b.a));
    var var_2 = var_0.b;
    var_0 = Struct_5(-1i, Struct_3(arg_0.b, ~var_2.d.d.x, var_2.c, arg_0, 24129u), select(vec4<bool>(all(vec2<bool>(true, false)), any(var_2.c.yx), var_0.b.c.x, all(!var_2.c)), var_0.c, vec4<bool>(var_0.c.x, var_0.b.c.x, var_2.c.x, any(vec2<bool>(var_0.b.c.x, true)) && true)));
    global0 = array<f32, 26>();
    return var_2.d.d.x >> (_wgslsmith_sub_u32(u_input.a.x, 1u) % 32u);
}

fn func_1() -> f32 {
    global0 = array<f32, 26>();
    let var_0 = !(false & !all(vec3<bool>(false, true, true)));
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, _wgslsmith_add_u32(func_2(Struct_1(vec2<i32>(-10708i, 29148i), global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 14089i, u_input.a), vec2<u32>(6337u, 0u), Struct_1(vec2<i32>(-1608i, 58577i), -1266f, -20382i, u_input.a)), 46569u)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_sub_u32(102955u, u_input.a.x), 0u), _wgslsmith_mod_u32(abs(0u), _wgslsmith_sub_u32(u_input.a.x, 4294967295u))), abs(~vec2<u32>(u_input.a.x, 4294967295u))));
    return _wgslsmith_f_op_f32(-122f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), global0[_wgslsmith_index_u32(1u | u_input.a.x, 26u)])))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = firstLeadingBit(_wgslsmith_div_u32(43517u, max(0u, countOneBits(~76850u))));
    let var_1 = !any(!select(select(vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c.xz, vec2<bool>(true, arg_0.c.x)), arg_0.c.zy, vec2<bool>(arg_0.c.x, arg_0.c.x)));
    var var_2 = _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(44056i, firstLeadingBit(arg_1.a.x), ~(~(-3536i)), abs(1i))), vec4<i32>(1i, 0i, arg_3.a.x, -reverseBits(-31459i)));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2775f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2070f) - _wgslsmith_f_op_f32(-arg_1.b)), -717f, _wgslsmith_f_op_f32(f32(-1f) * -263f)) + vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_1.d.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])), all(select(vec4<bool>(arg_0.c.x, true, false, false), vec4<bool>(arg_0.c.x, arg_0.c.x, false, var_1), true)))), _wgslsmith_div_f32(arg_3.b, 1069f), arg_0.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.d.b)), arg_3.b)) + _wgslsmith_f_op_f32(step(arg_2.x, 573f)))));
    var var_4 = Struct_4(118542u, Struct_2(arg_3.b, countOneBits(vec4<i32>(~var_2.x, arg_0.d.c & 22385i, _wgslsmith_dot_vec2_i32(arg_0.d.a, vec2<i32>(-2147483647i, var_2.x)), countOneBits(arg_3.c))), arg_0.d), 563f);
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1118f), firstTrailingBit(~(~var_0)) ^ max(var_0, ~(~var_0)), select(arg_0.c, vec3<bool>(true, any(!vec2<bool>(true, arg_0.c.x)), !var_1), vec3<bool>(true, true, true)), Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 26u)]) - var_3.x)), 20997i, _wgslsmith_mult_vec3_u32(arg_3.d, arg_1.d) & ~firstLeadingBit(vec3<u32>(u_input.a.x, 0u, 0u))), _wgslsmith_sub_u32(var_4.b.c.d.x, 1u));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_3 {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    var var_0 = reverseBits(~(-vec4<i32>(_wgslsmith_div_i32(21085i, -66786i), arg_0.d.a.x ^ 1i, 19554i, -3987i)));
    global0 = array<f32, 26>();
    var_0 = -vec4<i32>(-1i, ~0i, -1i, -1i);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    let var_0 = func_5(func_4(Struct_3(_wgslsmith_f_op_f32(func_1()), ~u_input.a.x | abs(35155u), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), Struct_1(-vec2<i32>(1i, -1i), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(57094u, 26u)], global0[_wgslsmith_index_u32(100532u, 26u)])), firstTrailingBit(17963i), ~u_input.a), ~(~0u)), Struct_1(~abs(vec2<i32>(8335i, 5356i)), 1f, abs(firstTrailingBit(-9676i)), vec3<u32>(u_input.a.x, ~24634u, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 26u)], 1145f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]) - vec3<f32>(423f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 1540f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2460f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(125884u, 26u)]), vec3<f32>(-1533f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 1000f))))), Struct_1(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-1i, -1i)), -vec2<i32>(-1i, 2147483647i), select(vec2<i32>(15177i, -5648i), vec2<i32>(-2147483647i, 0i), true)), _wgslsmith_f_op_f32(select(-947f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 26u)] - -541f), any(vec4<bool>(true, true, false, true)))), reverseBits(i32(-1i) * -2147483647i), vec3<u32>(u_input.a.x, ~1u, ~10496u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1487u, 26u)] + -750f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u | u_input.a.x, 26u)])) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 133f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 26u)]) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 26u)] + -513f)) - global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), 26u)]), 357f), abs(func_4(Struct_3(632f, u_input.a.x, vec3<bool>(true, true, true), Struct_1(vec2<i32>(0i, 0i), -1452f, 2147483647i, vec3<u32>(u_input.a.x, u_input.a.x, 83485u)), u_input.a.x), Struct_1(vec2<i32>(-24648i, -2147483647i), global0[_wgslsmith_index_u32(u_input.a.x, 26u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -16627i), vec4<i32>(0i, -1i, -2147483647i, -44411i)), min(vec3<u32>(u_input.a.x, u_input.a.x, 23338u), u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 26u)], -545f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]) * vec3<f32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(6969u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))), func_4(func_4(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.a.x, vec3<bool>(true, false, false), Struct_1(vec2<i32>(53786i, -39253i), global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -7073i, u_input.a), 31951u), Struct_1(vec2<i32>(1i, 0i), -719f, 1i, u_input.a), vec3<f32>(1248f, global0[_wgslsmith_index_u32(1u, 26u)], 299f), Struct_1(vec2<i32>(320i, 12470i), global0[_wgslsmith_index_u32(35111u, 26u)], -24436i, vec3<u32>(4294967295u, 4294967295u, u_input.a.x))), func_4(Struct_3(global0[_wgslsmith_index_u32(30194u, 26u)], 0u, vec3<bool>(true, false, false), Struct_1(vec2<i32>(50672i, 2147483647i), -348f, -71668i, u_input.a), 4294967295u), Struct_1(vec2<i32>(2147483647i, -2147483647i), 1000f, -1i, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -226f, -876f), Struct_1(vec2<i32>(24031i, -11699i), -964f, 2147483647i, vec3<u32>(u_input.a.x, 14880u, u_input.a.x))).d, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 756f, -396f) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)])), func_4(Struct_3(1445f, 13139u, vec3<bool>(false, true, true), Struct_1(vec2<i32>(37600i, -2147483647i), global0[_wgslsmith_index_u32(5168u, 26u)], 260i, vec3<u32>(85924u, 93834u, u_input.a.x)), u_input.a.x), Struct_1(vec2<i32>(-2147483647i, 0i), global0[_wgslsmith_index_u32(10267u, 26u)], -1780i, u_input.a), vec3<f32>(-479f, 582f, global0[_wgslsmith_index_u32(4294967295u, 26u)]), Struct_1(vec2<i32>(-6926i, 42620i), global0[_wgslsmith_index_u32(4294967295u, 26u)], 1i, vec3<u32>(45186u, u_input.a.x, 23667u))).d).d).d.d.xx));
    let var_1 = (true || func_4(var_0, var_0.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(348f, var_0.d.b, 826f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(809f, -126f, 1661f) - vec3<f32>(var_0.a, 1103f, global0[_wgslsmith_index_u32(var_0.d.d.x, 26u)]))), var_0.d).c.x) != func_5(var_0, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f), var_0.a), _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-552f, var_0.a)))), max(vec2<u32>(var_0.b, 37990u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, 21690u) << (u_input.a.xz % vec2<u32>(32u)), vec2<u32>(0u, 33671u)))).c.x;
    let var_2 = -834f;
    let var_3 = vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_2));
    global0 = array<f32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.d.a.x, -28643i, var_0.d.a.x, ~9200i));
}

