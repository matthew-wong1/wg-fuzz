struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, true, true, false), 1559f, vec3<u32>(1u, 1696u, 37306u), vec4<u32>(24734u, 4294967295u, 1u, 50153u), Struct_1(vec2<u32>(48172u, 0u), 1546f, 2258u, vec4<bool>(true, false, false, false)));

var<private> global3: array<i32, 21> = array<i32, 21>(i32(-2147483648), i32(-2147483648), 50006i, 1i, 0i, 2147483647i, 1i, -27736i, 2147483647i, 24805i, 1i, -1i, 2147483647i, i32(-2147483648), -29037i, -51246i, 36659i, -31762i, -53008i, 0i, 57177i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: Struct_4) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-633f, global2.b)))))));
    global1 = all(vec3<bool>(!(!any(global2.a.xx)), global2.e.d.x, all(!vec2<bool>(global2.a.x, false))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1075f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)));
    global3 = array<i32, 21>();
    var var_1 = global2.e;
    return vec4<i32>(u_input.a, _wgslsmith_clamp_i32(39198i, 7953i, _wgslsmith_mod_i32(~31439i, arg_0.a)), -firstTrailingBit(-_wgslsmith_sub_i32(15229i, arg_3.b.a)), arg_2.a);
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global1 = global2.e.d.x;
    global1 = true;
    return select(func_3(Struct_3(max(0i & u_input.c, select(u_input.a, 1i, false))), true, Struct_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(arg_0.a.x, 21u)], global3[_wgslsmith_index_u32(global2.c.x, 21u)]), 5870i)), Struct_4(~(~u_input.b.x), Struct_3(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(0u, 21u)], u_input.a)), global2.e.d.x)), ~(~abs(vec4<i32>(88163i, -1i, -911i, global3[_wgslsmith_index_u32(arg_0.c, 21u)]))) & ~max(-vec4<i32>(global3[_wgslsmith_index_u32(u_input.d, 21u)], -19176i, global3[_wgslsmith_index_u32(1u, 21u)], u_input.a), vec4<i32>(-1i, -1i, global3[_wgslsmith_index_u32(arg_0.c, 21u)], global3[_wgslsmith_index_u32(1u, 21u)])), vec4<bool>(true, any(select(global2.a, select(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.e.a.x, 29u)], true, false), vec4<bool>(arg_0.d.x, true, arg_0.d.x, global2.a.x), false), !vec4<bool>(global2.e.d.x, arg_0.d.x, global0[_wgslsmith_index_u32(global2.c.x, 29u)], true))), (arg_0.c >= arg_0.a.x) | false, global0[_wgslsmith_index_u32(abs(~global2.d.x) | global2.e.a.x, 29u)]));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = ~((~vec4<i32>(u_input.c, -29409i, -32172i, 8219i) >> (vec4<u32>(1u, arg_1.c, arg_1.a.x, 52940u) % vec4<u32>(32u))) | (min(vec4<i32>(0i, global3[_wgslsmith_index_u32(global2.c.x, 21u)], -1i, u_input.c), vec4<i32>(u_input.c, -60876i, 415i, global3[_wgslsmith_index_u32(global2.d.x, 21u)])) & (vec4<i32>(global3[_wgslsmith_index_u32(537u, 21u)], -29636i, global3[_wgslsmith_index_u32(0u, 21u)], u_input.a) << (vec4<u32>(1u, arg_2, u_input.b.x, 1u) % vec4<u32>(32u))))) | _wgslsmith_clamp_vec4_i32(func_2(arg_1), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(global3[_wgslsmith_index_u32(1u, 21u)], -19188i, 2147483647i, global3[_wgslsmith_index_u32(arg_1.c, 21u)])), vec4<i32>(-9945i, u_input.c, u_input.c, -44443i)) << (((vec4<u32>(48938u, 27515u, 21867u, 4294967295u) << (vec4<u32>(4294967295u, 36702u, 1u, arg_2) % vec4<u32>(32u))) << (vec4<u32>(0u, arg_2, arg_2, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(vec4<i32>(31977i, global3[_wgslsmith_index_u32(31660u, 21u)], u_input.a, global3[_wgslsmith_index_u32(39128u, 21u)]) >> (vec4<u32>(arg_1.c, arg_1.c, 27395u, 36902u) % vec4<u32>(32u)))));
    var var_1 = vec4<u32>(29714u, abs(firstLeadingBit(min(global2.d.x, arg_1.a.x) & ~arg_2)), _wgslsmith_mult_u32(firstLeadingBit(0u), global2.d.x), (select(87883u, 0u, global2.a.x) ^ ((global2.d.x << (arg_2 % 32u)) & arg_1.c)) & 4294967295u);
    var_0 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-u_input.a, reverseBits(global3[_wgslsmith_index_u32(1u, 21u)]) ^ -2147483647i), ~u_input.c ^ _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.d, 21u)], 20551i)), -_wgslsmith_clamp_i32(2147483647i, 1i, u_input.a), _wgslsmith_mod_i32(6152i, ~728i) & -countOneBits(func_2(arg_1).x), select(-u_input.c, global3[_wgslsmith_index_u32(~countOneBits(arg_2), 21u)], true) | u_input.c);
    var var_2 = true;
    global0 = array<bool, 29>();
    return !(!(!((1u << (1u % 32u)) == global2.c.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_4 {
    global1 = select(!(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(28617u, global2.c.x), 21u)] >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 21u)], arg_2.x))) & global0[_wgslsmith_index_u32(~arg_3.d.x, 29u)], arg_3.a.x, !(any(!vec2<bool>(global0[_wgslsmith_index_u32(8464u, 29u)], false)) || select(true, true, any(vec2<bool>(global2.e.d.x, true)))));
    var var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -782f), global2.e, abs(_wgslsmith_mod_u32(~1u ^ arg_3.e.c, arg_3.c.x)));
    let var_1 = arg_3;
    let var_2 = true;
    let var_3 = vec4<i32>(global3[_wgslsmith_index_u32(~min(1u, ~1u), 21u)], _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~abs(global3[_wgslsmith_index_u32(7212u, 21u)]), ~(~0i)), _wgslsmith_add_i32(~(~(-29869i)), -23983i), ~(23040i << (0u % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(-global3[_wgslsmith_index_u32(0u, 21u)] << (countOneBits(u_input.d) % 32u), arg_2.x), vec2<i32>(-abs(arg_2.x), func_2(Struct_1(global2.c.yx, 1742f, var_1.c.x, global2.a)).x)), _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(max(vec2<i32>(9783i, u_input.a), arg_2), vec2<i32>(global3[_wgslsmith_index_u32(u_input.d, 21u)], 5131i)), vec2<i32>(abs(i32(-1i) * -43096i), _wgslsmith_add_i32(~(-2147483647i), u_input.c & 37160i))));
    return Struct_4(93734u, Struct_3(2147483647i), !func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global2.b)))), Struct_1(~vec2<u32>(global2.d.x, var_1.e.c), 472f, ~1u, global2.e.d), global2.e.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4119u;
    global1 = any(select(vec2<bool>(all(global2.a.zx), 26104u >= global2.d.x), global2.e.d.xy, !(-1771f < global2.e.b)));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-434f * global2.b), -467f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.b, global2.e.b))) * vec2<f32>(-468f, global2.e.b))))))));
    global3 = array<i32, 21>();
    var var_2 = func_4(vec3<bool>(true, any(!vec3<bool>(false, global2.a.x, global0[_wgslsmith_index_u32(35422u, 29u)])), !(func_1(-224f, global2.e, global2.e.c) && global0[_wgslsmith_index_u32(global2.d.x, 29u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(var_1.x)))))), vec2<i32>(abs(u_input.c) ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(54850u, 21u)]), vec2<i32>(1i, 0i)), -41259i, -44570i), _wgslsmith_mod_i32(-global3[_wgslsmith_index_u32(abs(u_input.d), 21u)], _wgslsmith_div_i32(global3[_wgslsmith_index_u32(49518u, 21u)], global3[_wgslsmith_index_u32(u_input.b.x, 21u)]))), Struct_2(!select(global2.e.d, select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(global2.d.x, 29u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 29u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), false), _wgslsmith_f_op_f32(249f - _wgslsmith_f_op_f32(round(-1603f))), vec3<u32>(u_input.b.x, reverseBits(~53503u), ~(~12816u)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, u_input.d), max(u_input.d, u_input.d)), 22952u, _wgslsmith_dot_vec2_u32(~u_input.b.zz, global2.c.xy), 1u), Struct_1(global2.c.zy, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.e.b), _wgslsmith_f_op_f32(-var_1.x))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(13040u, u_input.d), u_input.b.yy), select(select(global2.a, vec4<bool>(global2.a.x, true, false, true), global2.a), select(global2.a, vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(37198u, 29u)], global2.a.x), vec4<bool>(global0[_wgslsmith_index_u32(global2.c.x, 29u)], global0[_wgslsmith_index_u32(global2.c.x, 29u)], global2.a.x, global0[_wgslsmith_index_u32(1u, 29u)])), u_input.b.x < u_input.d))));
    global1 = !select(~(i32(-1i) * -30176i) > var_2.b.a, global0[_wgslsmith_index_u32(~func_4(!global2.a.xzz, _wgslsmith_f_op_f32(-var_1.x), func_3(Struct_3(-2147483647i), var_2.c, var_2.b, Struct_4(4294967295u, Struct_3(-69566i), true)).xx, Struct_2(global2.e.d, 1102f, u_input.b, vec4<u32>(36430u, var_2.a, u_input.d, 76905u), global2.e)).a, 29u)], func_4(global2.a.zxz, global2.e.b, select(vec2<i32>(19697i, -4210i), vec2<i32>(u_input.a, var_2.b.a) | vec2<i32>(u_input.c, var_2.b.a), var_2.a >= 4294967295u), Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(17280u, 29u)], true, false, var_2.c), global2.e.b, ~vec3<u32>(u_input.b.x, 1u, global2.c.x), vec4<u32>(global2.e.a.x, global2.c.x, u_input.b.x, global2.e.a.x), Struct_1(global2.e.a, global2.b, var_2.a, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false, var_2.c, var_2.c)))).c);
    var var_3 = vec2<bool>(all(select(vec2<bool>(var_2.c, !global0[_wgslsmith_index_u32(1u, 29u)]), vec2<bool>(func_1(global2.e.b, Struct_1(vec2<u32>(global2.c.x, 1u), -473f, 1u, global2.e.d), global2.e.a.x), true), true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(302f, 1329f, -681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - -2897f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global2.e.b)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.e.b))), -791f)));
}

