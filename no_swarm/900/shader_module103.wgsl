struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: bool,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.d.x, arg_0.d.x), _wgslsmith_clamp_i32(0i, arg_0.a.x, arg_0.a.x) << (~1u % 32u));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var var_1 = arg_0;
    var_1 = Struct_1(vec3<i32>(var_1.d.x | min(_wgslsmith_sub_i32(-91168i, var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 0i, var_1.a.x, 43609i), vec4<i32>(var_1.d.x, arg_0.d.x, var_0, var_0))), -43706i, 30239i), vec3<u32>(~(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.b.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.b.x, 0u), arg_0.b)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_0.b.x, var_1.b.x, u_input.a.x, u_input.a.x) | u_input.a), ~u_input.a)), global1.x | !global1.x, var_1.a.xy, !vec4<bool>(any(vec2<bool>(true, true)), all(arg_0.e), true, !global1.x));
    return u_input.a.www;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = -reverseBits(-_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.x, -8302i, -14191i, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1276f, _wgslsmith_f_op_f32(step(-1000f, -307f))))));
    global1 = select(!select(!(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_1.x, 3u)])), !vec3<bool>(true, global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(79262u, 3u)], global1.x))), !vec3<bool>(global1.x, 22944u >= arg_1.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, ~57012u), 3u)]), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_1.x, 21486u), ~(16255u >> (1u % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(38150u, 1u, u_input.a.x, arg_1.x), ~vec4<u32>(60138u, u_input.a.x, 0u, 1u))), 3u)]);
    global0 = array<bool, 3>();
    global1 = select(!(!(!(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 3u)])))), vec3<bool>(!(-1625i <= _wgslsmith_clamp_i32(-2147483647i, var_0, arg_2.x)), !(664f > _wgslsmith_f_op_f32(round(var_1))), global0[_wgslsmith_index_u32(61430u, 3u)] | true), vec3<bool>(false, !select(global1.x, false, !global0[_wgslsmith_index_u32(71241u, 3u)]), any(!(!vec4<bool>(false, global1.x, global0[_wgslsmith_index_u32(46491u, 3u)], global0[_wgslsmith_index_u32(arg_1.x, 3u)])))));
    return firstLeadingBit(-19405i);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    var var_0 = Struct_1(vec3<i32>(-func_4(_wgslsmith_f_op_f32(arg_2 + 743f), func_3(Struct_1(vec3<i32>(-2147483647i, 0i, -48542i), vec3<u32>(18244u, 32617u, u_input.a.x), arg_1.x, vec2<i32>(1924i, 12470i), vec4<bool>(arg_1.x, false, true, true)), Struct_3(Struct_2(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), arg_0.b.b, arg_1.x, vec2<bool>(true, false), arg_0.a.a), Struct_2(vec2<bool>(arg_1.x, false), vec3<bool>(arg_1.x, arg_0.a.c, true), global1.x, vec2<bool>(global0[_wgslsmith_index_u32(39137u, 3u)], global0[_wgslsmith_index_u32(85187u, 3u)]), arg_1), vec4<f32>(arg_2, -2251f, -155f, 1858f))), firstTrailingBit(vec2<i32>(24535i, 1i))), max(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, -1i), 1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(47422i, 2147483647i, -2147483647i, 1i), ~vec4<i32>(2147483647i, 40953i, -7437i, 0i))), ~0i), select(u_input.a.wzx, ~(~u_input.a.zzy), arg_0.b.b) << (vec3<u32>(_wgslsmith_mod_u32(max(u_input.a.x, 22499u), 117775u), ~95551u, ~firstLeadingBit(0u)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(~abs(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 3u)], ~_wgslsmith_add_vec2_i32(select(vec2<i32>(-2631i, -1i), vec2<i32>(-29646i, -1i), vec2<bool>(global1.x, false)) ^ ~vec2<i32>(1i, -42614i), -select(vec2<i32>(1i, 49913i), vec2<i32>(55175i, -16519i), arg_1.x)), !select(vec4<bool>(arg_0.b.e.x, arg_0.a.d.x, true, any(vec4<bool>(true, true, false, false))), vec4<bool>(true, any(vec4<bool>(global1.x, false, true, true)), all(vec4<bool>(true, global1.x, false, arg_1.x)), any(vec3<bool>(arg_0.a.d.x, global1.x, true))), global1.x));
    let var_1 = select(_wgslsmith_mult_i32(var_0.a.x & abs(-21519i), 29476i), var_0.a.x, true && !global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, var_0.b.x), 3u)]);
    let var_2 = arg_2;
    global1 = vec3<bool>(false, true, true);
    var var_3 = vec4<bool>(!(_wgslsmith_mult_i32(func_4(-1641f, u_input.a.wwx, vec2<i32>(var_1, var_1)), var_0.a.x) > _wgslsmith_div_i32(0i, var_1)), any(vec2<bool>(var_0.d.x >= -var_0.a.x, any(var_0.e.yww))), all(!arg_1), true);
    return var_0.b.x;
}

fn func_1() -> Struct_3 {
    let var_0 = !vec3<bool>(any(select(select(global1.xx, global1.xx, vec2<bool>(global0[_wgslsmith_index_u32(32459u, 3u)], false)), vec2<bool>(true, true), true)), global1.x, true);
    global1 = select(vec3<bool>((_wgslsmith_mod_u32(4294967295u, 38643u) ^ func_2(Struct_3(Struct_2(var_0.xx, var_0, global1.x, var_0.xx, vec2<bool>(false, global1.x)), Struct_2(var_0.yy, vec3<bool>(true, global1.x, global1.x), true, var_0.zy, vec2<bool>(false, var_0.x)), vec4<f32>(-529f, 346f, -1731f, 1000f)), var_0.xz, -119f)) != ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 51737u), u_input.a.xx), !global1.x, func_2(Struct_3(Struct_2(var_0.yz, var_0, global0[_wgslsmith_index_u32(2808u, 3u)], global1.zz, var_0.xz), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false), vec3<bool>(true, var_0.x, true), global1.x, global1.xz, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), vec4<f32>(272f, 1140f, 348f, -1312f)), vec2<bool>(false, false), _wgslsmith_f_op_f32(floor(503f))) > (u_input.a.x | 1u)), var_0, select(select(vec3<bool>(var_0.x, all(vec4<bool>(var_0.x, true, false, var_0.x)), any(var_0)), var_0, all(!vec4<bool>(global1.x, global1.x, var_0.x, global0[_wgslsmith_index_u32(36546u, 3u)]))), select(!var_0, vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true, global1.x)), all(global1.yz), false), vec3<bool>(select(true, var_0.x, false), !var_0.x, u_input.a.x > u_input.a.x)), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global1.x, true)));
    let var_1 = _wgslsmith_div_vec3_i32(firstTrailingBit(~firstTrailingBit(min(vec3<i32>(-23687i, 1i, 18261i), vec3<i32>(-27258i, 0i, 17586i)))), vec3<i32>(~(-19327i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(12359i, -9713i, 42118i, 1i))), 0i));
    var var_2 = countOneBits(vec4<i32>(-var_1.x, 2147483647i, _wgslsmith_sub_i32(1i, ~var_1.x), -(i32(-1i) * -24571i)) << (vec4<u32>((u_input.a.x >> (u_input.a.x % 32u)) & ~1u, 1u, 1u, ~(~u_input.a.x)) % vec4<u32>(32u)));
    global0 = array<bool, 3>();
    return Struct_3(Struct_2(select(vec2<bool>(false, true), vec2<bool>(true, false), !(!global1.xy)), var_0, true, select(select(!var_0.yy, select(global1.xx, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], var_0.x), false), any(vec3<bool>(global1.x, false, var_0.x))), var_0.zz, func_4(1229f, u_input.a.wyx, vec2<i32>(var_1.x, 0i)) < var_1.x), vec2<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 3u)], true)), Struct_2(var_0.yz, var_0, true, vec2<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global1.x)), false), select(select(vec2<bool>(false, var_0.x), select(vec2<bool>(global1.x, false), var_0.yz, vec2<bool>(global1.x, global1.x)), var_0.x == global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(73365u, 3u)], global0[_wgslsmith_index_u32(52975u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false), true), var_0.xz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1053f, _wgslsmith_f_op_f32(f32(-1f) * -971f), _wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(f32(-1f) * -275f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, 710f, -102f, 1150f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(403f, -1363f, 432f, -504f), vec4<f32>(-1576f, 441f, 1195f, -985f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1148f, -572f, 406f, -1955f))), !vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(4294967295u, 3u)], true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zx >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.xz & (vec2<u32>(1242u, 17969u) >> (select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(32191u, u_input.a.x), false) % vec2<u32>(32u))), ~(u_input.a.xz & _wgslsmith_div_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, 36696u)))) % vec2<u32>(32u));
    var var_1 = false;
    let var_2 = 14404i;
    let var_3 = Struct_2(global1.zx, !vec3<bool>(global1.x, false, min(21355u, var_0.x) >= ~20383u), all(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)])) || ((var_2 | var_2) != 1i), !(!select(vec2<bool>(true, global1.x), vec2<bool>(false, true), !global1.xx)), vec2<bool>(global1.x && true, global0[_wgslsmith_index_u32(0u, 3u)]));
    var var_4 = vec2<i32>(-38261i, var_2);
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(func_4(var_5.c.x, firstLeadingBit(u_input.a.xyy), firstLeadingBit(vec2<i32>(2147483647i, var_2))), ~(-2147483647i)), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-46992i, var_4.x, var_2, 2147483647i), vec4<i32>(34426i, -17814i, -1i, var_2)), ~firstLeadingBit(1i))), 17171i, abs(~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zyw, vec3<u32>(var_0.x, var_0.x, var_0.x)), var_0.x, _wgslsmith_mult_u32(var_0.x, 61298u))), _wgslsmith_dot_vec4_u32(~u_input.a, ~u_input.a));
}

