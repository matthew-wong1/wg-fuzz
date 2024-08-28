struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 6>;

var<private> global2: f32 = 824f;

var<private> global3: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(65169u, 50784u), vec2<u32>(124144u, 4294967295u), vec2<u32>(14714u, 69926u), vec2<u32>(0u, 141542u), vec2<u32>(4294967295u, 36809u), vec2<u32>(0u, 54388u), vec2<u32>(27628u, 14263u), vec2<u32>(43809u, 43113u), vec2<u32>(66142u, 28031u), vec2<u32>(0u, 1u), vec2<u32>(81203u, 83399u), vec2<u32>(1u, 50122u), vec2<u32>(4294967295u, 23750u), vec2<u32>(46545u, 0u), vec2<u32>(21246u, 85265u), vec2<u32>(0u, 58366u), vec2<u32>(0u, 4294967295u), vec2<u32>(348u, 4294967295u), vec2<u32>(55040u, 4294967295u), vec2<u32>(4294967295u, 5028u), vec2<u32>(65132u, 1u), vec2<u32>(1950u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 19115u), vec2<u32>(4294967295u, 1u), vec2<u32>(11890u, 950u), vec2<u32>(9236u, 41935u), vec2<u32>(53458u, 52478u), vec2<u32>(1u, 37569u), vec2<u32>(23770u, 0u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec4<bool> {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-905f)) + _wgslsmith_f_op_f32(-266f + -1000f)), -451f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1889f), _wgslsmith_f_op_f32(ceil(-501f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1676f, -253f, 1000f) * vec3<f32>(-866f, -233f, 1459f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 914f, 922f)))));
    let var_2 = Struct_1(vec2<bool>(all(vec4<bool>(true, all(vec2<bool>(true, false)), u_input.a <= u_input.e, true)), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), -262f), -840f, 1243f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(-784f, var_1.x, -229f, var_1.x)) * vec4<f32>(272f, var_1.x, -1635f, 117f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(789f, var_1.x, 629f, var_1.x), vec4<f32>(965f, 383f, var_1.x, -750f))))));
    let var_3 = var_0.wxw;
    let var_4 = select(!select(vec4<bool>(!var_2.a.x, var_2.a.x, false, !var_2.a.x), vec4<bool>(!var_2.a.x, var_2.a.x, any(vec3<bool>(var_2.a.x, var_2.a.x, false)), false | var_2.a.x), vec4<bool>(u_input.c.x > u_input.c.x, any(vec3<bool>(true, var_2.a.x, false)), all(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), select(true, false, var_2.a.x))), !select(select(!vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x), select(vec4<bool>(var_2.a.x, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, var_2.a.x, false, var_2.a.x)), vec4<bool>(var_2.a.x, var_2.a.x, false, true)), !select(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(false, var_2.a.x, var_2.a.x, false), false), select(select(vec4<bool>(false, false, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, true, true), vec4<bool>(true, false, true, var_2.a.x)), !vec4<bool>(var_2.a.x, true, false, true), true)), !(var_2.b.x > _wgslsmith_f_op_f32(exp2(var_2.b.x))) & any(!vec2<bool>(var_2.a.x, var_2.a.x)));
    return vec4<bool>(!(!all(select(vec4<bool>(true, false, false, var_4.x), var_4, var_4.x))), true, !(var_1.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * var_1.x))), false);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> Struct_2 {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(vec2<bool>(arg_2, all(arg_0.a)), arg_0.b);
    global2 = -1005f;
    return Struct_2(_wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b.x, arg_1.x, u_input.b.x), u_input.c.xww), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, 2147483647i, 15754i), _wgslsmith_mult_vec3_i32(u_input.c.wyz, vec3<i32>(u_input.c.x, arg_1.x, arg_1.x))) >> (vec3<u32>(~4294967295u, abs(var_0), 63713u) % vec3<u32>(32u))), select(func_3(), func_3(), arg_0.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<i32> {
    global0 = arg_3.a.x;
    global3 = array<vec2<u32>, 31>();
    return vec3<i32>(firstTrailingBit(func_2(arg_0, countOneBits(vec2<i32>(-2147483647i, u_input.c.x)) >> (_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(0u, 14310u)) % vec2<u32>(32u)), select(arg_3.b.x, true, arg_3.b.x)).a.x), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(~u_input.b.x, arg_3.a.x)), u_input.b), -2147483647i);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    global0 = u_input.c.x;
    global0 = reverseBits(-2147483647i);
    let var_0 = arg_3;
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> f32 {
    var var_0 = u_input.c.x >> (0u % 32u);
    let var_1 = _wgslsmith_div_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, -59240i), u_input.b) << (select(vec2<u32>(1u, ~u_input.d.x), vec2<u32>(u_input.a, u_input.d.x), vec2<bool>(!arg_0.x, any(vec2<bool>(arg_0.x, arg_0.x)))) % vec2<u32>(32u)), -abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.c.x) ^ vec2<i32>(u_input.b.x, u_input.b.x))));
    let var_2 = Struct_2(vec3<i32>(1i, 2147483647i, -2147483647i), vec4<bool>(!arg_0.x, arg_0.x, all(vec4<bool>(true, arg_0.x, !arg_0.x, all(vec3<bool>(false, false, arg_0.x)))), true));
    var var_3 = func_5(Struct_2(func_4(Struct_1(select(vec2<bool>(arg_0.x, true), vec2<bool>(true, arg_0.x), arg_0.yz), _wgslsmith_f_op_vec4_f32(-arg_1)), -99992i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)), func_2(Struct_1(vec2<bool>(true, arg_0.x), vec4<f32>(arg_1.x, arg_1.x, -495f, 401f)), -var_1, !var_2.b.x)), var_2.b), u_input.c.yzy, Struct_1(vec2<bool>(!(!arg_0.x), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1263f, arg_1.x, arg_1.x, -270f)))), ~52155u);
    let var_4 = func_2(Struct_1(var_3.b.yy, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_1, vec4<f32>(364f, arg_1.x, -733f, -1552f))) + vec4<f32>(685f, -1704f, 1444f, -1035f)), arg_1, var_2.b.x))), -vec2<i32>(var_3.a.x, func_5(func_5(Struct_2(u_input.c.www, var_3.b), vec3<i32>(-45774i, -24641i, 10539i), Struct_1(var_3.b.zw, arg_1), u_input.e), var_2.a, Struct_1(arg_0.yz, arg_1), _wgslsmith_add_u32(u_input.d.x, 0u)).a.x), var_3.b.x);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1075f * -943f)), -1994f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-414f, -254f))), -680f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -483f)))));
    var var_0 = countOneBits(global1[_wgslsmith_index_u32(u_input.a, 6u)]);
    var_0 = vec3<u32>(1u | ~_wgslsmith_clamp_u32(select(u_input.a, 4294967295u, false), firstTrailingBit(4770u), select(0u, 4294967295u, false)), u_input.d.x, 30801u);
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(-1i, firstLeadingBit(~(u_input.b.x >> (0u % 32u)))), -1i);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(var_0.x > u_input.e, !(var_1.x >= u_input.c.x), true), vec4<f32>(950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(622f * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(899f * 1395f) - -1576f), -797f))));
    let var_2 = Struct_1(!select(vec2<bool>(4294967295u < u_input.a, func_5(Struct_2(vec3<i32>(u_input.b.x, u_input.b.x, -4224i), vec4<bool>(true, false, false, true)), u_input.c.xzw, Struct_1(vec2<bool>(false, true), vec4<f32>(1537f, 326f, -522f, 105f)), 19950u).b.x), !func_3().ww, vec2<bool>(true, any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, 483f, 1000f, 1704f)));
    let var_3 = !func_5(func_5(func_2(var_2, vec2<i32>(var_1.x, -34219i), select(var_2.a.x, var_2.a.x, var_2.a.x)), u_input.c.yyw, Struct_1(func_5(Struct_2(vec3<i32>(var_1.x, u_input.b.x, var_1.x), vec4<bool>(true, false, false, false)), u_input.c.wwx, Struct_1(vec2<bool>(false, true), var_2.b), var_0.x).b.xx, var_2.b), _wgslsmith_add_u32(u_input.a, _wgslsmith_clamp_u32(0u, 0u, 52021u))), firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(var_1.x, var_1.x, var_1.x)), Struct_1(!vec2<bool>(true, var_2.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-567f, var_2.b.x, var_2.b.x, -1000f), vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, -1524f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b.x, 1000f, -275f, -1643f), var_2.b)), !vec4<bool>(var_2.a.x, true, var_2.a.x, false)))), 22364u).b;
    var_0 = ~vec3<u32>(var_0.x, 15072u ^ countOneBits(u_input.d.x), 57951u);
    var var_4 = func_5(Struct_2(countOneBits(firstTrailingBit(func_5(Struct_2(vec3<i32>(u_input.b.x, -1i, u_input.c.x), var_3), u_input.c.wyx, Struct_1(vec2<bool>(var_3.x, false), var_2.b), var_0.x).a)), func_5(Struct_2(vec3<i32>(5217i, 1i, u_input.b.x) ^ vec3<i32>(u_input.c.x, var_1.x, u_input.c.x), !vec4<bool>(var_2.a.x, false, var_2.a.x, true)), vec3<i32>(var_1.x, u_input.b.x, abs(0i)), var_2, _wgslsmith_div_u32(31374u, u_input.a)).b), vec3<i32>(firstLeadingBit(-25942i) ^ _wgslsmith_div_i32(u_input.b.x, u_input.b.x), -37049i, min(var_1.x, var_1.x | 19228i)) ^ -_wgslsmith_sub_vec3_i32(u_input.c.zzw << (vec3<u32>(var_0.x, 4294967295u, 19930u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(43252i, -2147483647i, 1152i), vec3<i32>(u_input.b.x, 0i, u_input.b.x))), Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b), var_2.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_2.b))))), ~_wgslsmith_mod_u32(~31732u, 26213u & u_input.d.x) ^ _wgslsmith_clamp_u32(abs(~1u), _wgslsmith_mod_u32(8343u, u_input.d.x), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(1209f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b.x)) + _wgslsmith_f_op_f32(select(var_2.b.x, 796f, var_2.a.x))))), ~(~vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, var_0.x)) << (~(~(~vec4<u32>(var_0.x, var_0.x, 1u, var_0.x))) % vec4<u32>(32u)));
}

