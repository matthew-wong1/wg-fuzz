struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1((arg_3.a & vec2<u32>(reverseBits(u_input.a.x), ~arg_3.a.x)) & vec2<u32>(4294967295u, u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1249f, arg_3.b.x)) + arg_1.e), arg_3.e), select(vec3<bool>(arg_3.a.x == u_input.b, _wgslsmith_f_op_f32(sign(620f)) <= arg_1.b.x, global0[_wgslsmith_index_u32(98558u, 24u)]), !vec3<bool>(arg_0.x, u_input.e.x >= -1906i, !global0[_wgslsmith_index_u32(1u, 24u)]), arg_0), _wgslsmith_sub_vec2_i32(~vec2<i32>(~u_input.e.x, min(-51053i, u_input.e.x)), firstTrailingBit(abs(arg_1.d))), arg_3.b.x);
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> vec4<u32> {
    let var_0 = ~26253u;
    global0 = array<bool, 24>();
    var var_1 = vec4<f32>(734f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0.e)), 1223f, true)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.e)), _wgslsmith_f_op_f32(arg_0.e - 1401f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 191f, -513f, arg_0.b.x)) - vec4<f32>(arg_0.b.x, 837f, -409f, -200f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1168f, arg_2, arg_0.e, 1183f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, arg_2, arg_2, var_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-364f)), -825f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(round(-360f))), var_1.x)));
    let var_2 = arg_0;
    return min(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x >> (~16240u % 32u), var_0, var_2.a.x << (1u % 32u), func_3(vec3<bool>(false, arg_1.x, arg_1.x), Struct_1(arg_0.a, vec2<f32>(-1159f, -373f), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.x, 24u)], arg_0.c.x), vec2<i32>(22423i, u_input.e.x), 123f), -u_input.e.x, Struct_1(vec2<u32>(arg_0.a.x, u_input.b), var_2.b, vec3<bool>(global0[_wgslsmith_index_u32(103279u, 24u)], arg_0.c.x, true), arg_0.d, 392f))), ~vec4<u32>(var_0, var_2.a.x, 4294967295u >> (var_0 % 32u), firstTrailingBit(1u))), abs(vec4<u32>(39829u, 0u, select(9343u, 26458u, false), var_0)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<i32> {
    global0 = array<bool, 24>();
    var var_0 = arg_1.x;
    let var_1 = Struct_1(abs(func_2(arg_2, select(arg_2.c.zz, !vec2<bool>(arg_2.c.x, true), !arg_2.c.zy), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(456f, arg_2.b.x), -889f))).xy), vec2<f32>(arg_2.b.x, arg_2.b.x), arg_2.c, arg_2.d, -659f);
    let var_2 = arg_2;
    let var_3 = Struct_1(arg_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e, -1000f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, 229f) * vec2<f32>(arg_2.b.x, var_2.b.x)), select(arg_2.c.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], var_2.c.x))), arg_2.b, all(vec2<bool>(true, false))))), select(vec3<bool>(true, true, true), arg_2.c, all(vec4<bool>(true, true, select(false, false, arg_2.c.x), true))), -vec2<i32>(firstTrailingBit(var_2.d.x), var_1.d.x), var_2.e);
    return select(vec4<i32>(45055i, -58614i, 19427i, _wgslsmith_clamp_i32(50087i, 0i, 4873i) | 28042i) | u_input.e, _wgslsmith_div_vec4_i32(vec4<i32>(var_2.d.x ^ arg_0, 1i, _wgslsmith_mult_i32(var_1.d.x, -67299i), -arg_2.d.x) & vec4<i32>(-2127i, -6414i, 1i, var_3.d.x), -u_input.e), select(vec4<bool>(!(-30932i == var_2.d.x), global0[_wgslsmith_index_u32(func_3(var_3.c, var_3, 0i, Struct_1(vec2<u32>(0u, 1u), vec2<f32>(-1000f, -236f), var_3.c, vec2<i32>(-1i, 11859i), -529f)) ^ (4294967295u & var_2.a.x), 24u)], !global0[_wgslsmith_index_u32(var_2.a.x, 24u)], (false & global0[_wgslsmith_index_u32(5878u, 24u)]) != false), vec4<bool>(false, !(!arg_2.c.x), false || all(vec2<bool>(var_3.c.x, global0[_wgslsmith_index_u32(4294967295u, 24u)])), all(vec4<bool>(var_3.c.x, var_2.c.x, arg_2.c.x, global0[_wgslsmith_index_u32(var_3.a.x, 24u)]))), false));
}

fn func_1() -> vec3<bool> {
    let var_0 = ~(~vec2<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(13810u, u_input.a.x, u_input.d.x), u_input.d), vec3<u32>(u_input.b, 64479u, 9024u))));
    var var_1 = ~(-37586i);
    var var_2 = _wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -15870i) >> (((vec4<u32>(var_0.x, u_input.c.x, var_0.x, var_0.x) & vec4<u32>(u_input.d.x, 4952u, u_input.b, 46684u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 44147u), vec4<u32>(var_0.x, u_input.c.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 1u, 0u, 1u))) % vec4<u32>(32u))), func_4(firstLeadingBit(51120i), abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u), func_2(Struct_1(vec2<u32>(var_0.x, u_input.d.x), vec2<f32>(1000f, 323f), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 24u)], true), u_input.e.xw, 344f), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 24u)]), -994f))), Struct_1(vec2<u32>(11043u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1421f, 343f) + vec2<f32>(1000f, -302f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(216f, -1640f))), vec3<bool>(false, false, true), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), u_input.e.zw), vec2<i32>(30357i, u_input.e.x) >> (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-232f, 696f, true)))))));
    var_1 = 30737i;
    let var_3 = true;
    return vec3<bool>(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1044f, 1347f)) - _wgslsmith_f_op_f32(728f - 988f)) * 1f) > 377f, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = Struct_1(select(u_input.a, select(_wgslsmith_mult_vec2_u32(u_input.d.yx, u_input.a >> (u_input.d.yy % vec2<u32>(32u))), ~(~u_input.a), true), all(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)])))), vec2<f32>(1000f, 323f), select(vec3<bool>(false, any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 24u)])) && select(true, global0[_wgslsmith_index_u32(4119u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), false), select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.c.x, 24u)], true), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], false, false)), !select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<bool>(true, false, true)), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(63142u, 24u)])), func_1()), _wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(1i, -2147483647i)), u_input.e.wz), ~(max(vec2<i32>(2147483647i, 1i), u_input.e.zy) | select(u_input.e.wy, vec2<i32>(-7010i, u_input.e.x), vec2<bool>(false, true)))), 1340f);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(var_1.d.x << (var_1.a.x % 32u), 576i, select(-7829i, 2725i, true)) >> (select(_wgslsmith_add_vec3_u32(u_input.d, u_input.d), ~u_input.d, true) % vec3<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(-1923i, _wgslsmith_add_i32(var_1.d.x, -2147483647i)), ~u_input.e.x | var_1.d.x, -47155i, -11117i) << (_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(0u, 9687u, 7577u, u_input.c.x) << (vec4<u32>(17963u, 69481u, 0u, var_1.a.x) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(18005u, 51219u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(~u_input.e, vec4<i32>(-31306i, -25781i, -41046i, u_input.e.x)) << ((_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.x, 0u, u_input.d.x, 1u), countOneBits(vec4<u32>(var_1.a.x, 15189u, u_input.c.x, var_1.a.x))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, var_1.a.x, 1u, u_input.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, var_1.a.x, u_input.c.x), vec4<u32>(23u, var_1.a.x, 4294967295u, u_input.d.x))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(trunc(-478f)), -1574f, -2142f))), max(~(~_wgslsmith_mult_u32(4294967295u, var_1.a.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_1.a, vec2<u32>(var_1.a.x, u_input.d.x), vec2<u32>(0u, var_1.a.x)), vec2<u32>(var_1.a.x, countOneBits(82210u)))));
}

