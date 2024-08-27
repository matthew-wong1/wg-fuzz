struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(315f, 547f), vec2<f32>(1000f, 1005f), vec2<f32>(788f, -474f), vec2<f32>(523f, 1097f), vec2<f32>(-455f, 259f), vec2<f32>(1109f, 1000f), vec2<f32>(-1171f, 189f), vec2<f32>(-386f, -119f), vec2<f32>(-861f, -483f), vec2<f32>(458f, -682f), vec2<f32>(701f, 1000f), vec2<f32>(-100f, 486f), vec2<f32>(644f, -670f), vec2<f32>(-143f, 728f), vec2<f32>(558f, 1148f), vec2<f32>(-115f, 135f), vec2<f32>(2154f, 455f), vec2<f32>(-1206f, -365f), vec2<f32>(792f, -1521f), vec2<f32>(365f, 1386f), vec2<f32>(1253f, 1269f), vec2<f32>(1860f, -132f), vec2<f32>(-418f, 328f), vec2<f32>(-1294f, 314f), vec2<f32>(-776f, 337f), vec2<f32>(-656f, -1772f), vec2<f32>(1655f, 458f), vec2<f32>(815f, -1662f), vec2<f32>(-912f, -182f), vec2<f32>(878f, 715f), vec2<f32>(-1000f, -1152f), vec2<f32>(239f, -1156f));

var<private> global2: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-334f, 615f, 287f, 105f), vec4<f32>(1772f, 265f, 760f, 1000f), vec4<f32>(880f, -2316f, 425f, -1765f), vec4<f32>(1318f, -339f, -755f, -1034f), vec4<f32>(634f, 718f, -439f, 807f), vec4<f32>(1048f, 1358f, -2184f, 240f), vec4<f32>(-495f, -853f, -544f, 573f), vec4<f32>(-605f, -108f, 647f, 566f), vec4<f32>(-603f, 364f, -1000f, 573f), vec4<f32>(966f, -394f, -505f, -1677f), vec4<f32>(229f, -1343f, 1917f, 1338f), vec4<f32>(1000f, -763f, 1000f, -2016f), vec4<f32>(522f, -332f, 1019f, 1634f), vec4<f32>(1145f, -1223f, -1159f, 1749f), vec4<f32>(-144f, -1532f, -358f, -1539f), vec4<f32>(-534f, -1952f, 670f, 1281f), vec4<f32>(-891f, 215f, 2436f, 660f), vec4<f32>(560f, -771f, 373f, -1293f), vec4<f32>(510f, 687f, 2115f, -440f), vec4<f32>(1156f, 394f, 101f, 1531f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_2, 30>();
    var var_0 = Struct_1(4294967295u, _wgslsmith_dot_vec2_u32(u_input.b.wz & u_input.b.zw, firstLeadingBit(min(u_input.b.xy & vec2<u32>(arg_1.a.a, 1u), u_input.b.ww))), arg_1.a.c, !arg_1.a.c.xy, _wgslsmith_f_op_f32(-1507f - 1f));
    let var_1 = Struct_1(58965u, 1u, select(select(var_0.c, arg_1.a.c, arg_1.a.c), vec4<bool>(false, !(false && arg_1.a.d.x), (arg_0.x > u_input.c.x) != true, all(!arg_1.a.d)), select(!(!arg_1.a.c), arg_1.a.c, all(vec3<bool>(false, true, var_0.c.x)))), select(select(!arg_1.a.c.yw, !(!arg_1.a.d), vec2<bool>(arg_1.a.d.x == arg_1.a.d.x, false)), !arg_1.a.d, !var_0.d), -312f);
    return _wgslsmith_add_u32(_wgslsmith_div_u32(countOneBits(u_input.b.x), 23918u), 1u);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = -vec3<i32>(-16580i, u_input.c.x, ~1i);
    let var_2 = global0[_wgslsmith_index_u32(arg_1.b, 30u)];
    var var_3 = !select(var_2.a.c, vec4<bool>(false, var_2.a.c.x, select(select(var_0.d.x, true, true), true, var_2.a.c.x), true), true && var_2.a.c.x);
    let var_4 = ~u_input.b.yz;
    return Struct_1(0u, 1u, vec4<bool>(true, u_input.c.x <= _wgslsmith_clamp_i32(arg_0.x, -50539i << (var_4.x % 32u), u_input.a), (func_3(vec3<i32>(0i, u_input.a, -19239i), global0[_wgslsmith_index_u32(arg_1.a, 30u)]) < u_input.b.x) || all(vec3<bool>(false, var_2.a.d.x, arg_1.d.x)), select(select(all(vec4<bool>(false, arg_1.c.x, var_0.d.x, var_3.x)), u_input.c.x >= 2147483647i, !var_2.a.d.x), ~1u < ~var_2.a.b, false)), select(vec2<bool>(var_3.x, !var_0.c.x), vec2<bool>(true, var_2.a.c.x), var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = Struct_2(func_2(u_input.c.wzw, arg_0));
    var var_1 = select(arg_0.d, !vec2<bool>(all(!vec3<bool>(arg_0.d.x, var_0.a.c.x, var_0.a.c.x)), true), !select(vec2<bool>(false, 0i <= u_input.a), !select(vec2<bool>(arg_0.d.x, true), arg_0.c.xz, vec2<bool>(var_0.a.c.x, arg_0.c.x)), var_0.a.d.x));
    let var_2 = u_input.c.yz;
    let var_3 = -(~u_input.c.wwx);
    var var_4 = func_2(min(vec3<i32>(35291i, ~(~var_3.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_2.x, u_input.a, -1i), -var_2.x)), ~vec3<i32>(_wgslsmith_sub_i32(var_3.x, var_2.x), var_2.x, -2147483647i)), func_2(~var_3, arg_0)).c;
    return _wgslsmith_mult_u32(9788u, u_input.b.x << (abs(80951u) % 32u)) ^ 4294967295u;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(~(func_4(func_2(u_input.c.zxw, Struct_1(38437u, 46158u, vec4<bool>(true, false, true, false), vec2<bool>(true, false), 770f)), _wgslsmith_div_f32(549f, -1000f)) << ((arg_0.x & 0u) % 32u)), _wgslsmith_dot_vec2_u32(arg_0.yy, ~u_input.b.yy), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), select(false, false, true)), vec4<bool>(true, true, true, true), true && func_2(u_input.c.xxy, Struct_1(19488u, u_input.b.x, vec4<bool>(false, true, false, true), vec2<bool>(true, false), -940f)).c.x), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), all(vec4<bool>(true, true, true, false))), func_2(max(vec3<i32>(u_input.a, -1i, -13158i), vec3<i32>(-2147483647i, u_input.a, 37772i)), Struct_1(arg_0.x, arg_0.x, vec4<bool>(false, true, true, false), vec2<bool>(false, false), 1499f)).c.zx, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1172f))));
    var var_1 = Struct_2(func_2(-_wgslsmith_add_vec3_i32(u_input.c.xzy >> (arg_0.zxy % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-35281i, u_input.a, u_input.a))), func_2(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(34957i, u_input.a, -3811i)), abs(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), func_2(u_input.c.xwx, Struct_1(43105u, 0u, vec4<bool>(var_0.d.x, var_0.d.x, var_0.c.x, false), var_0.c.zw, -1153f)))));
    global1 = array<vec2<f32>, 32>();
    var var_2 = Struct_2(Struct_1(~(var_1.a.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(39800u, 4294967295u, arg_0.x), u_input.b.wxy) % 32u)), 5345u, !vec4<bool>(true, true, u_input.a <= 31911i, false), vec2<bool>(func_2(vec3<i32>(u_input.a, 1i, u_input.c.x), var_0).d.x, true), _wgslsmith_f_op_f32(-var_1.a.e)));
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(countOneBits(u_input.b)), select(~vec4<u32>(var_1.a.a, 57986u, var_2.a.b, 16991u), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(4294967295u, var_0.b, var_1.a.a, 10973u)), true)) | (arg_0.x | _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.b, _wgslsmith_mod_u32(var_1.a.b, 12376u)), ~4294967295u)), 30u)];
    return _wgslsmith_f_op_f32(select(var_1.a.e, var_0.e, !var_3.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(abs(u_input.b.x), 30u)];
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, 1i), vec2<i32>(u_input.c.x, firstTrailingBit(abs(u_input.a)))));
    global2 = array<vec4<f32>, 20>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a.e)), _wgslsmith_f_op_f32(-var_0.a.e), _wgslsmith_f_op_f32(-374f * -1000f));
    let var_3 = u_input.c;
    global0 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(~(~u_input.c.zxz), abs(u_input.c.zyz) ^ (vec3<i32>(-1i) * -u_input.c.xzw)), _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b))));
}

