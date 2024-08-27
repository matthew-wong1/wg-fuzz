struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-456f, -1712f, 226f, 1793f), vec4<f32>(555f, -431f, -175f, -192f), vec4<f32>(-1221f, -854f, 1728f, 1522f), vec4<f32>(-148f, -686f, 737f, 1000f), vec4<f32>(308f, 1932f, -158f, 226f), vec4<f32>(-1705f, -1482f, 1427f, 1293f), vec4<f32>(361f, 785f, -298f, -527f), vec4<f32>(1097f, 1000f, 105f, 1063f), vec4<f32>(384f, 147f, -1083f, 1516f), vec4<f32>(-169f, 1000f, -700f, -706f), vec4<f32>(771f, 452f, 234f, 1097f), vec4<f32>(1082f, 1248f, -488f, 1591f), vec4<f32>(-717f, -1241f, 376f, 1137f), vec4<f32>(1957f, -392f, -1167f, -341f), vec4<f32>(-2333f, -990f, -174f, 914f), vec4<f32>(-996f, 1264f, -1346f, 1040f), vec4<f32>(143f, 254f, 1589f, -1374f), vec4<f32>(-120f, 1000f, -819f, 510f));

var<private> global1: array<i32, 15>;

var<private> global2: array<u32, 2> = array<u32, 2>(43522u, 11814u);

var<private> global3: array<Struct_2, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = abs(u_input.a.xz);
    let var_1 = 1579f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1464f + arg_2.c.x)), _wgslsmith_f_op_f32(-124f * arg_2.c.x)));
    global2 = array<u32, 2>();
    global0 = array<vec4<f32>, 18>();
    let var_2 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 18u)];
    return arg_2.c.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec2<bool> {
    global1 = array<i32, 15>();
    return vec2<bool>(select(!(global1[_wgslsmith_index_u32(1u, 15u)] == 2147483647i) | true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), _wgslsmith_add_i32(-40863i, max(arg_2, arg_2)) < firstLeadingBit(1i)), true && (true & any(vec4<bool>(true, false, true, false))));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = !(!(arg_0.c.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - -757f) + _wgslsmith_f_op_f32(ceil(-1809f)))));
    var_0 = countOneBits(arg_0.a.a) <= u_input.a.x;
    global3 = array<Struct_2, 6>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.c.x)), _wgslsmith_f_op_f32(-230f * 1090f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) * -1454f))), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1026f)))));
    let var_2 = all(!func_4(abs(_wgslsmith_div_vec2_i32(vec2<i32>(12482i, 26931i), u_input.a.zz)), arg_0.b, (-59553i & global1[_wgslsmith_index_u32(1u, 15u)]) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(33603u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], 0u, global2[_wgslsmith_index_u32(11081u, 2u)]), vec4<u32>(2859u, 4294967295u, 30488u, 1u)) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(arg_0.e, global2[_wgslsmith_index_u32(60087u, 2u)], Struct_2(arg_0.b, arg_0.b, arg_0.c, arg_0.e, arg_0.b))), _wgslsmith_div_f32(920f, arg_0.c.x)))));
    return global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~abs(global2[_wgslsmith_index_u32(11063u, 2u)] >> (22167u % 32u)) ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(48757u, 13940u), 2u)], 2u)], 2u)] ^ ~min(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]), 2u)], 2u)], 2u)], 2u)] >> (~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(2877u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global2[_wgslsmith_index_u32(87738u, 2u)]) & ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 4294967295u, 4294967295u, 1u), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], 1u, 1u, 17497u)), 2u)] % 32u);
}

fn func_1() -> i32 {
    var var_0 = vec4<u32>(min(1u, _wgslsmith_mod_u32(func_2(Struct_2(Struct_1(-35647i), Struct_1(38395i), vec4<f32>(-268f, -183f, -879f, -746f), Struct_1(global1[_wgslsmith_index_u32(41201u, 15u)]), Struct_1(u_input.a.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9463u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77496u, 2u)], 2u)], 2u)]))) ^ ~global2[_wgslsmith_index_u32(~85883u, 2u)]), ~(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48406u, 2u)], 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52793u, 2u)], 2u)]), 2u)] | 3787u) >> (max(~(~global2[_wgslsmith_index_u32(46278u, 2u)]), global2[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(0u, 2u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58190u, 2u)], 2u)], 2u)], 2u)] % 32u)), 2u)]) % 32u), func_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33296u, 2u)], 2u)], 0u, 8204u)), 34628u, 1u), 6u)]), ~abs(1u));
    let var_1 = vec3<bool>(global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(71648u, 2u)], abs(~3598u), !all(vec3<bool>(true, true, false))), 2u)] != (_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(29865u, 2u)]), 0u) ^ countOneBits(4294967295u)), false, false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1234f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -700f))) + _wgslsmith_f_op_f32(f32(-1f) * -159f)))));
    var_0 = vec4<u32>(36929u, 22030u, _wgslsmith_sub_u32(var_0.x, var_0.x), 53u);
    var var_3 = Struct_1(-1i);
    return global1[_wgslsmith_index_u32(~0u | _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, var_0.x), var_0.x, func_2(global3[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], 4294967295u), 6u)]), 1u), select(~min(vec4<u32>(4294967295u, 34484u, 40466u, 63120u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 2u)], 1u, var_0.x, global2[_wgslsmith_index_u32(9259u, 2u)])), ~(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(65831u, 2u)], 2u)], 1u, 37957u, 4294967295u) ^ vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)), any(vec3<bool>(true, var_1.x, false)) & all(var_1))), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 6>();
    let var_0 = ~_wgslsmith_mod_i32(select(abs(1i), u_input.a.x >> (35359u % 32u), any(vec3<bool>(true, false, false))), func_1()) | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(u_input.a.zx, u_input.a.xy, vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(-2147483647i, u_input.a.x) | vec2<i32>(u_input.a.x, 0i));
    global0 = array<vec4<f32>, 18>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-324f + _wgslsmith_f_op_f32(1079f - -320f)));
    var var_2 = global3[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(~0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14718u, 2u)], 2u)], 2u)], 2u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 22114u), reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45841u, 2u)], 2u)], 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], global2[_wgslsmith_index_u32(5771u, 2u)]))), 2u)]), 2u)]), 6u)];
    var var_3 = var_2.b;
    var_2 = global3[_wgslsmith_index_u32(countOneBits(~global2[_wgslsmith_index_u32(firstTrailingBit(0u) >> (37182u % 32u), 2u)]), 6u)];
    var var_4 = abs(_wgslsmith_mult_i32(var_0, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec4<i32>(var_2.e.a, 2147483647i, 2147483647i, var_3.a) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(16909u, 0u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)]), vec4<u32>(42159u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], 4294967295u), vec4<u32>(1u, 1u, global2[_wgslsmith_index_u32(55078u, 2u)], 1u)) % vec4<u32>(32u))), max(_wgslsmith_sub_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20735u, 2u)], 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6725u, 2u)], 2u)], 29112u)) << (abs(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)]) | vec2<u32>(12691u, 23896u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 106625u), _wgslsmith_div_vec2_u32(vec2<u32>(98074u, global2[_wgslsmith_index_u32(42654u, 2u)]), vec2<u32>(58463u, 0u))), abs(~global2[_wgslsmith_index_u32(25830u, 2u)]))));
}

