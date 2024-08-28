struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<f32>(953f, 644f), -1372f), Struct_1(vec2<f32>(895f, 183f), -1922f), Struct_1(vec2<f32>(212f, 2245f), -1940f), Struct_1(vec2<f32>(-806f, -1059f), -385f), Struct_1(vec2<f32>(591f, 1589f), -453f), Struct_1(vec2<f32>(1469f, -1170f), -1576f), Struct_1(vec2<f32>(1759f, -742f), 168f), Struct_1(vec2<f32>(934f, -1332f), -1723f), Struct_1(vec2<f32>(-1090f, 447f), 1133f), Struct_1(vec2<f32>(1000f, -633f), 474f), Struct_1(vec2<f32>(-477f, -186f), -750f), Struct_1(vec2<f32>(-822f, 563f), 365f), Struct_1(vec2<f32>(566f, -811f), -1047f), Struct_1(vec2<f32>(2003f, -1551f), -279f), Struct_1(vec2<f32>(-401f, 460f), 1000f), Struct_1(vec2<f32>(-2733f, 1820f), -212f), Struct_1(vec2<f32>(-448f, 1000f), -1296f), Struct_1(vec2<f32>(1000f, 161f), 1609f), Struct_1(vec2<f32>(316f, 525f), -524f), Struct_1(vec2<f32>(-911f, 335f), 247f), Struct_1(vec2<f32>(-1429f, -108f), -1021f), Struct_1(vec2<f32>(-447f, 924f), -1882f), Struct_1(vec2<f32>(-1673f, 2169f), 690f), Struct_1(vec2<f32>(-357f, 1471f), 260f), Struct_1(vec2<f32>(-1771f, -303f), 723f));

var<private> global2: Struct_2;

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, 11552i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<i32> {
    var var_0 = 409f;
    global3 = vec3<i32>(abs(abs(-57941i)), arg_0, _wgslsmith_clamp_i32(-2147483647i, abs(1i) ^ global3.x, abs(_wgslsmith_clamp_i32(u_input.b, -u_input.d.x, min(2147483647i, arg_0)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -560f), -1574f));
    var_0 = 1f;
    let var_2 = Struct_2(global2.a, global2.a, _wgslsmith_f_op_vec4_f32(select(global2.c, global2.c, vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), true, true, arg_1 > (u_input.d.x & arg_0)))));
    return -max(firstLeadingBit(abs(select(vec3<i32>(-1i, arg_1, global3.x), u_input.d.xzw, true))), vec3<i32>(max(-arg_1, ~(-1i)), arg_0 >> (abs(17806u) % 32u), reverseBits(u_input.d.x)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_3(vec4<bool>(false, max(~u_input.d.x, u_input.b & 59621i) >= arg_3.x, true, any(vec2<bool>(true, all(vec3<bool>(true, true, false))))), Struct_2(Struct_1(global2.a.a, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-arg_2))), global1[_wgslsmith_index_u32(arg_0, 25u)], vec4<f32>(_wgslsmith_f_op_f32(-arg_2), -1420f, _wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_2)))))));
    var var_1 = var_0.a.xyy;
    let var_2 = Struct_3(select(select(var_0.a, vec4<bool>(true, true, var_0.a.x, arg_3.x > 35119i), vec4<bool>(!var_0.a.x, true, true, global2.c.x != 262f)), select(vec4<bool>(true, any(vec3<bool>(var_1.x, false, var_0.a.x)), arg_3.x >= global3.x, !var_1.x), select(!vec4<bool>(true, var_0.a.x, true, true), vec4<bool>(var_1.x, var_0.a.x, var_1.x, var_1.x), !var_0.a), var_0.a), vec4<bool>(!var_1.x, any(vec4<bool>(false, true, false, var_0.a.x)), var_1.x, all(vec2<bool>(var_1.x, var_0.a.x)))), Struct_2(var_0.b.b, Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_0.b.c.xx, vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a.x, global2.b.b)))), _wgslsmith_f_op_f32(f32(-1f) * -341f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(global2.c)))), vec4<f32>(1097f, _wgslsmith_f_op_f32(f32(-1f) * -1351f), _wgslsmith_f_op_f32(1121f - global2.a.a.x), var_0.b.b.b))));
    global3 = abs(vec3<i32>(-2147483647i, global3.x, u_input.b));
    return select(!select(vec4<bool>(any(vec4<bool>(var_1.x, var_2.a.x, var_2.a.x, false)), !var_0.a.x, var_1.x, var_2.a.x), select(var_2.a, select(var_2.a, vec4<bool>(var_1.x, false, false, true), false), !var_1.x), var_0.a), !(!var_2.a), select(!var_0.a, select(select(vec4<bool>(false, var_0.a.x, var_0.a.x, false), vec4<bool>(var_1.x, var_0.a.x, var_0.a.x, var_0.a.x), !vec4<bool>(var_1.x, true, var_2.a.x, var_0.a.x)), select(select(vec4<bool>(false, var_0.a.x, var_2.a.x, true), var_2.a, var_1.x), vec4<bool>(true, false, var_0.a.x, var_2.a.x), vec4<bool>(var_0.a.x, false, false, var_1.x)), !var_0.a), vec4<bool>(var_1.x, false, any(!vec2<bool>(var_2.a.x, var_1.x)), true)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<f32> {
    global0 = array<vec3<i32>, 15>();
    var var_0 = arg_0.b;
    let var_1 = true;
    let var_2 = global2.c;
    let var_3 = Struct_3(vec4<bool>((_wgslsmith_f_op_f32(global2.b.a.x * var_0.a.x) != _wgslsmith_f_op_f32(abs(var_0.a.x))) & all(arg_1.yxy), !arg_1.x, false, true), arg_0);
    return var_3.b.c.wyw;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(Struct_2(global2.b, global1[_wgslsmith_index_u32(4294967295u, 25u)], _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.a.x, -1091f, 1228f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(289f, -1223f, 1333f, global2.b.a.x)))), func_4(select(arg_1, u_input.c ^ u_input.c, any(vec3<bool>(false, arg_0.x, arg_0.x))), 105604u, _wgslsmith_f_op_f32(abs(-1173f)), _wgslsmith_mod_vec3_i32(u_input.d.zxy, func_3(arg_2, u_input.b))), arg_0, global1[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(arg_1)), 25u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, 183f, 459f)))))) - global2.c.yyx));
    var var_1 = Struct_3(vec4<bool>(true, false, any(vec4<bool>(arg_0.x, all(vec4<bool>(arg_0.x, false, false, arg_0.x)), false, true)), true), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_vec3_f32(func_5(Struct_2(Struct_1(vec2<f32>(-588f, var_0.x), 108f), global1[_wgslsmith_index_u32(arg_1, 25u)], global2.c), vec4<bool>(true, arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, true, true), Struct_1(var_0.yx, -685f))).x), _wgslsmith_f_op_f32(f32(-1f) * -1757f)), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.yx + vec2<f32>(var_0.x, -1000f)))), _wgslsmith_div_f32(-416f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(705f)), _wgslsmith_f_op_f32(select(global2.c.x, 609f, true)), var_0.x, -731f))));
    global3 = vec3<i32>(~_wgslsmith_mult_i32(-firstLeadingBit(0i), firstLeadingBit(func_3(1i, arg_2).x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-8820i, 2147483647i) >> (vec2<u32>(137056u, u_input.c) % vec2<u32>(32u)), firstTrailingBit(~vec2<i32>(-24317i, -58355i))), vec2<i32>(u_input.d.x ^ -global3.x, _wgslsmith_add_i32(arg_2, -25719i))), arg_2);
    let var_2 = -(~1i);
    global0 = array<vec3<i32>, 15>();
    return countOneBits(u_input.c) & (abs(~(~arg_1)) >> ((u_input.a.x >> (~(~52941u) % 32u)) % 32u));
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c.x)) - arg_0.b.a.a.x)), arg_0.b.c.x);
    var var_1 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(reverseBits(u_input.a.x), func_2(arg_0.a.wzx, 4294967295u, 24809i))), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a.x), ~vec2<u32>(u_input.c, 20217u) >> (_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a) % vec2<u32>(32u))));
    let var_2 = arg_0.b;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(35559u << (1u % 32u), _wgslsmith_add_u32(~(~42495u), func_1(Struct_3(vec4<bool>(false, false, true, true), Struct_2(global2.a, Struct_1(global2.a.a, 341f), global2.c))) << (_wgslsmith_mod_u32(u_input.c, u_input.a.x) % 32u))), 25u)], global2.c);
    let var_1 = vec2<bool>(true == all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), false);
    global2 = Struct_2(global1[_wgslsmith_index_u32(select(countOneBits(u_input.c), min(u_input.c, 11837u), false), 25u)], Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.ww + vec2<f32>(232f, var_0.b.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-198f, 1513f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, global2.a.a.x), vec2<f32>(331f, global2.c.x)) - vec2<f32>(1075f, -419f)), _wgslsmith_f_op_f32(step(var_0.b.b, -449f)) <= _wgslsmith_f_op_f32(select(var_0.a.a.x, var_0.b.b, var_1.x)))), global2.c.x), _wgslsmith_f_op_vec4_f32(-global2.c));
    var var_2 = var_0.c.zzw;
    let var_3 = vec3<i32>(_wgslsmith_div_i32(~(-global3.x) >> (~(~1u) % 32u), global3.x), 67021i, global3.x);
    var var_4 = ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), vec2<u32>(firstLeadingBit(u_input.c), ~0u));
    var var_5 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(600f, var_0.a.b) * _wgslsmith_f_op_vec2_f32(-var_0.c.yx))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(639f, 1518f), global2.b.a.x), vec2<f32>(-192f, _wgslsmith_f_op_f32(var_2.x - -524f)))), _wgslsmith_f_op_f32(-var_0.c.x));
    let var_6 = max(_wgslsmith_div_i32(24917i, var_3.x), ~1484i);
    let var_7 = min(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(5734i, 1i, u_input.d.x, -42708i), select(firstLeadingBit(vec4<i32>(0i, -194i, var_3.x, var_6)) | u_input.d, vec4<i32>(_wgslsmith_mod_i32(u_input.b, 10051i), 1i, -u_input.d.x, -10674i), vec4<bool>(var_1.x || true, select(true, var_1.x, var_1.x), true, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d), vec4<i32>(func_3(_wgslsmith_add_i32(global3.x, var_6), ~var_3.x).x, var_3.x, abs(firstTrailingBit(1i)), _wgslsmith_div_i32(firstTrailingBit(-2147483647i), -18641i)) >> (vec4<u32>(_wgslsmith_sub_u32(u_input.c, var_4.x) & ~57326u, 50917u, _wgslsmith_add_u32(u_input.a.x, min(var_4.x, 11823u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 1u, var_4.x), vec3<u32>(60003u, var_4.x, 581u))) % vec4<u32>(32u)));
}

