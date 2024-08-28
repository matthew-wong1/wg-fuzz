struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global1: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(21364i, -24465i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -9979i), vec3<i32>(-3699i, i32(-2147483648), 0i), vec3<i32>(-49934i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1856i, -25675i), vec3<i32>(14247i, 50069i, i32(-2147483648)), vec3<i32>(-23408i, 2147483647i, -1i), vec3<i32>(0i, -39291i, 48619i), vec3<i32>(30970i, 1i, 2147483647i), vec3<i32>(24076i, -3590i, 1i), vec3<i32>(-21173i, -16902i, 14388i), vec3<i32>(0i, 1i, 16973i), vec3<i32>(-9471i, 1i, 89144i), vec3<i32>(7391i, 1i, -30191i), vec3<i32>(23768i, -8471i, 1i), vec3<i32>(1i, i32(-2147483648), 32434i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), -27548i, 2147483647i), vec3<i32>(19537i, -58345i, i32(-2147483648)), vec3<i32>(57884i, 9337i, 2147483647i), vec3<i32>(17775i, -42722i, -1i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, 28103i, 0i));

var<private> global2: array<bool, 29> = array<bool, 29>(false, false, true, false, true, true, false, false, true, false, true, true, true, true, false, true, true, false, true, false, false, false, true, false, false, false, true, true, true);

var<private> global3: array<bool, 13>;

var<private> global4: array<vec3<bool>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = !all(vec4<bool>(!any(vec2<bool>(true, false)), global3[_wgslsmith_index_u32(min(93179u, u_input.a), 13u)], global2[_wgslsmith_index_u32(arg_1.x, 29u)], true));
    var var_1 = !vec4<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(firstTrailingBit(79845u), u_input.d), 13u)], global2[_wgslsmith_index_u32(0u, 29u)], true, !global3[_wgslsmith_index_u32(6156u, 13u)]);
    global4 = array<vec3<bool>, 10>();
    global3 = array<bool, 13>();
    var var_2 = all(!select(var_1.zw, vec2<bool>(true, false), var_1.yz));
    return global0[_wgslsmith_index_u32(u_input.d, 20u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = arg_2;
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 13u)], false), select(vec2<bool>(true, false), vec2<bool>(any(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 29u)], true), vec2<bool>(global2[_wgslsmith_index_u32(15159u, 29u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.c, 13u)]))), global2[_wgslsmith_index_u32(u_input.c, 29u)]), !(!select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 13u)]), global3[_wgslsmith_index_u32(u_input.a, 13u)]))));
    global3 = array<bool, 13>();
    let var_2 = false;
    var var_3 = arg_3 != max(_wgslsmith_mod_i32(1i, ~_wgslsmith_clamp_i32(arg_3, arg_1.x, arg_2.a)), var_0.a);
    return ~(~1u);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_2(countOneBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, u_input.b), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, u_input.b)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(45658i, -202i))))));
    let var_1 = var_0;
    global4 = array<vec3<bool>, 10>();
    let var_2 = _wgslsmith_f_op_f32(max(arg_2, arg_2));
    var var_3 = reverseBits(~abs(vec4<u32>(u_input.a << (u_input.c % 32u), ~u_input.c, u_input.d, func_3(arg_1, vec2<i32>(71969i, 10944i), Struct_2(-25054i), 0i))));
    return Struct_2(var_0.a);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, min(1i, 0i)), _wgslsmith_div_i32(1i, u_input.b));
    var var_1 = -(i32(-1i) * -func_2(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 13u)], false, arg_0), Struct_1(1118f), _wgslsmith_div_f32(-1000f, 747f)).a);
    global3 = array<bool, 13>();
    var_1 = 821i;
    let var_2 = func_2(global0[_wgslsmith_index_u32(~u_input.a, 20u)], Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1864f, 184f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(762f, -316f) - 965f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(-112f)))))));
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    var var_1 = Struct_2(0i);
    var_0 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, 203f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~1u | ~(~u_input.a), 10u)];
    let var_1 = 1i;
    global4 = array<vec3<bool>, 10>();
    let var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -394f)), select(vec4<bool>(true, true, true, true), vec4<bool>(any(func_1(Struct_2(17801i), vec4<u32>(u_input.c, u_input.a, 10373u, u_input.a), Struct_1(-1052f))), (-28875i >> (u_input.a % 32u)) != (-30809i | var_1), select(select(false, false, global3[_wgslsmith_index_u32(u_input.d, 13u)]), false, select(true, global3[_wgslsmith_index_u32(58476u, 13u)], false)), global3[_wgslsmith_index_u32(~1u, 13u)]), vec4<bool>(any(vec3<bool>(true, true, true)), func_4(all(var_0.zz), func_2(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 13u)], true), Struct_1(-3522f), -286f)), true, global2[_wgslsmith_index_u32(~u_input.c, 29u)] && any(vec4<bool>(var_0.x, true, global3[_wgslsmith_index_u32(1u, 13u)], true)))), u_input.c, -vec4<i32>(-23098i, 2843i, ~(-2147483647i), 9546i));
    var var_3 = func_2(!vec3<bool>(any(!global4[_wgslsmith_index_u32(3243u, 10u)]), all(select(var_0.zx, var_0.zy, vec2<bool>(false, var_0.x))), global2[_wgslsmith_index_u32(u_input.d, 29u)]), var_2, _wgslsmith_f_op_f32(trunc(var_2.a)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f + var_2.a)))), _wgslsmith_f_op_f32(-var_2.a)) * _wgslsmith_f_op_f32(max(func_5(Struct_1(_wgslsmith_f_op_f32(var_2.a - var_2.a)), vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), false, var_0.x | false, 59442u > u_input.a), u_input.c, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(8991i, u_input.b, -1i, u_input.b), vec4<i32>(u_input.b, 802i, 1i, -1i)), ~vec4<i32>(u_input.b, 2147483647i, u_input.b, var_3.a))).a, func_5(Struct_1(var_2.a), vec4<bool>(true, true, true, true), u_input.d, vec4<i32>(u_input.b ^ var_3.a, _wgslsmith_add_i32(58661i, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-48880i, 0i)), firstTrailingBit(-1i))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1 >> (7311u % 32u), var_3.a, -_wgslsmith_mult_i32(var_1, var_3.a) ^ -(~(-69307i)), max(var_1, 0i)), _wgslsmith_div_f32(var_2.a, -762f), abs(1u) << (u_input.a % 32u), reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(9615u, 53492u, 100627u, 12820u), vec4<u32>(0u, 7817u, u_input.d, 30649u), vec4<u32>(u_input.d, 23336u, 1u, u_input.a)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.c, 54196u), vec4<u32>(40300u, 67845u, u_input.d, 77926u)), ~(vec4<u32>(u_input.c, 887u, u_input.c, 65477u) >> (vec4<u32>(57757u, u_input.c, u_input.d, 33898u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.d), vec4<u32>(1u, u_input.c, 4294967295u, u_input.a) << (vec4<u32>(u_input.a, 2115u, u_input.a, 1u) % vec4<u32>(32u))))), vec3<i32>(_wgslsmith_sub_i32(var_1, -2147483647i) & var_3.a, min(~var_1, max(reverseBits(-24287i), -var_3.a)), var_1));
}

