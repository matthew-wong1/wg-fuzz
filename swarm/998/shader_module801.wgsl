struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(0i, 47749i, -1i, -1i, 1i, -52411i, 63961i, -26311i, -5706i, -37759i, -10746i, -1i, 17402i, 37141i, -1i, -62847i, -82522i, -3082i, 8124i, -3859i, -47830i, 10434i, -27420i);

var<private> global1: array<vec2<i32>, 15>;

var<private> global2: bool = true;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = arg_0.e;
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(~0u, 15u)], arg_0.e.x, Struct_1(vec3<u32>(arg_0.d, ~(u_input.b ^ 4294967295u), firstTrailingBit(0u)), (vec4<u32>(4294967295u, 21888u, arg_0.b.x, 4294967295u) >> (~arg_0.b % vec4<u32>(32u))) << (arg_0.b % vec4<u32>(32u)), select(select(arg_0.c, vec4<bool>(arg_0.e.x, true, false, false), arg_0.c), select(select(vec4<bool>(false, true, arg_0.e.x, false), vec4<bool>(arg_0.c.x, global3.x, global3.x, false), global3.x), select(arg_0.c, vec4<bool>(arg_0.c.x, global3.x, arg_0.c.x, global3.x), arg_0.c), select(arg_0.c, arg_0.c, arg_0.c)), !arg_0.c.x), 1u, vec2<bool>(true, (global3.x || false) && all(vec4<bool>(global3.x, global3.x, global3.x, false)))), max(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_0.d), ~vec3<u32>(u_input.e, arg_0.a.x, arg_0.d)), 0u), max(firstTrailingBit(_wgslsmith_div_vec2_u32(arg_0.b.yx, vec2<u32>(1981u, arg_0.a.x))), vec2<u32>(~71126u, abs(58367u)))), Struct_2(!(false && arg_0.c.x) | any(vec2<bool>(true, true)), 36582u, vec4<bool>(true, true, false, 1u != ~arg_0.d), Struct_1(arg_0.b.yzy | arg_0.b.xzz, vec4<u32>(~3049u, arg_0.d, ~u_input.d, firstLeadingBit(arg_0.b.x)), vec4<bool>(false, true, false, !arg_0.e.x), ~u_input.e, select(!arg_0.c.wz, !vec2<bool>(arg_0.c.x, true), false))));
    global3 = vec2<bool>(any(select(!(!vec4<bool>(false, arg_0.e.x, false, false)), vec4<bool>(all(vec3<bool>(false, arg_0.e.x, global3.x)), global3.x && arg_0.e.x, all(var_0.c.c.xzy), false), vec4<bool>(true, !var_0.b, true, true))), (~(~0u) >= _wgslsmith_div_u32(18270u, u_input.d)) == false);
    let var_1 = 1i;
    global0 = array<i32, 23>();
    return ~(var_0.d.x << ((max(arg_0.d, ~u_input.e) ^ abs(4294967295u)) % 32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec2<f32>) -> bool {
    global2 = true;
    var var_0 = u_input.a;
    var var_1 = true;
    global3 = vec2<bool>(any(arg_1.a.c), arg_1.a.e.x);
    var var_2 = Struct_3(vec2<i32>(global0[_wgslsmith_index_u32(~(~func_3(arg_1.a)), 23u)], u_input.a), any(select(arg_1.a.c, select(arg_1.a.c, !vec4<bool>(global3.x, false, arg_1.a.c.x, true), !arg_1.a.c), true)), Struct_1(vec3<u32>(_wgslsmith_sub_u32(u_input.e, 64372u), ~(~0u), _wgslsmith_div_u32(0u, 4294967295u)), vec4<u32>(~reverseBits(u_input.b), _wgslsmith_mult_u32(~20911u, reverseBits(arg_1.a.d)), func_3(arg_1.a), 43916u), arg_1.a.c, 56462u, !(!(!arg_1.a.e))), arg_1.a.a.zz >> (vec2<u32>(~arg_1.a.d, 4294967295u) % vec2<u32>(32u)), Struct_2(false, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.d) ^ arg_1.a.a.xy, vec2<u32>(1u, 1u)), select(arg_1.a.c, arg_1.a.c, arg_1.a.c.x), Struct_1(arg_1.a.a, ~vec4<u32>(1u, 25788u, u_input.e, 0u), select(select(vec4<bool>(global3.x, true, true, false), arg_1.a.c, true), arg_1.a.c, vec4<bool>(global3.x, arg_1.a.e.x, global3.x, false)), 36467u, !arg_1.a.c.yz)));
    return global3.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_3 {
    global1 = array<vec2<i32>, 15>();
    var var_0 = Struct_2(true, u_input.b, !vec4<bool>(true, true, all(!vec3<bool>(global3.x, global3.x, global3.x)), true), Struct_1(vec3<u32>(~4294967295u, 1u >> (0u % 32u), u_input.b), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(31315u, 4294967295u, 0u, u_input.b)) | (vec4<u32>(1u, u_input.d, 0u, 36969u) >> (vec4<u32>(u_input.e, 0u, 43659u, 41073u) % vec4<u32>(32u))), select(~vec4<u32>(1u, 44361u, 43964u, 0u), ~vec4<u32>(u_input.d, u_input.e, u_input.b, 20921u), any(vec3<bool>(global3.x, true, global3.x)))), !vec4<bool>(u_input.d < u_input.d, 1000f < arg_1, u_input.e < u_input.d, true), ~(~u_input.e) << (1u % 32u), vec2<bool>(!global3.x || global3.x, true)));
    let var_1 = !(!select(!var_0.c.xzx, select(!vec3<bool>(true, global3.x, global3.x), var_0.c.zyx, var_0.b == var_0.b), !func_2(vec4<f32>(arg_1, 1261f, arg_1, arg_1), Struct_5(var_0.d), vec2<f32>(arg_1, 355f))));
    let var_2 = 4294967295u;
    global3 = select(!select(select(vec2<bool>(var_0.c.x, global3.x), var_1.zy, var_0.d.c.x), select(select(var_1.zx, vec2<bool>(var_0.a, false), true), vec2<bool>(false, var_0.a), true), vec2<bool>(select(false, var_0.d.e.x, var_0.c.x), true)), vec2<bool>(var_1.x, all(var_0.c.wyy)), true);
    return Struct_3(vec2<i32>(32255i, 1i >> (u_input.b % 32u)), any(select(select(select(vec3<bool>(true, false, var_0.a), vec3<bool>(var_1.x, true, var_0.c.x), true), !var_0.d.c.zyx, vec3<bool>(false, var_1.x, false)), select(select(vec3<bool>(var_0.d.e.x, true, true), var_1, global3.x), !vec3<bool>(var_0.d.c.x, false, global3.x), !vec3<bool>(var_0.c.x, var_0.c.x, global3.x)), var_0.d.e.x)), Struct_1(vec3<u32>(~(~4294967295u), var_0.d.b.x, ~var_0.d.a.x >> ((var_2 ^ 0u) % 32u)), _wgslsmith_mod_vec4_u32(abs(var_0.d.b), var_0.d.b) | vec4<u32>(41843u, ~u_input.b, 119489u << (1u % 32u), var_0.b), !select(var_0.d.c, vec4<bool>(true, global3.x, var_1.x, var_1.x), select(global3.x, var_1.x, true)), ~0u, !(!vec2<bool>(var_0.a, var_1.x))), var_0.d.b.yx, Struct_2(var_0.c.x, max(var_0.b, var_2) >> ((_wgslsmith_mult_u32(u_input.e, var_2) ^ max(79259u, u_input.e)) % 32u), !(!vec4<bool>(false, global3.x, true, var_0.a)), var_0.d));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> vec3<bool> {
    let var_0 = Struct_5(Struct_1(~(~arg_1.c.b.zyz), min(arg_1.e.d.b, reverseBits(vec4<u32>(0u, u_input.d, 4294967295u, 6567u))), vec4<bool>(~u_input.b < func_3(Struct_1(arg_1.e.d.a, arg_1.e.d.b, arg_1.c.c, arg_1.c.b.x, arg_1.e.d.c.xx)), global3.x, func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-538f, arg_0, 506f, -1829f))), Struct_5(arg_1.e.d), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, 759f))), false), select(u_input.b, 18278u, true), func_1(vec3<i32>(global0[_wgslsmith_index_u32(1u, 23u)], -1i, 6494i) >> ((vec3<u32>(arg_1.d.x, arg_1.e.b, 12600u) << (vec3<u32>(5350u, u_input.e, 51865u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(-1572f, arg_0))).e.c.wx));
    let var_1 = arg_0 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 982f))))));
    global1 = array<vec2<i32>, 15>();
    let var_2 = select(select(vec3<u32>(u_input.b, abs(4294967295u), countOneBits(arg_1.c.b.x)), firstLeadingBit(var_0.a.a), !global3.x || !var_1), ~arg_1.e.d.b.xww, true || (true && func_1(vec3<i32>(27283i, 0i, u_input.c.x), arg_0).c.c.x)) & max(~(var_0.a.b.xxx ^ vec3<u32>(21416u, arg_1.d.x, 39344u)), ~_wgslsmith_div_vec3_u32(~var_0.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(12271u, u_input.e, 9819u), var_0.a.b.zww)));
    return vec3<bool>(false, all(select(arg_1.c.c.wzy, select(vec3<bool>(false, true, false), arg_1.c.c.yxy, vec3<bool>(true, var_1, true)), all(func_1(vec3<i32>(arg_1.a.x, 2147483647i, arg_1.a.x), arg_0).c.c.zxy))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec3<u32>(24405u, firstLeadingBit(u_input.d), _wgslsmith_sub_u32(1u, u_input.e)), vec3<u32>(4294967295u, 38511u, ~41901u), func_4(_wgslsmith_f_op_f32(f32(-1f) * -574f), func_1(vec3<i32>(1i, -9305i, global0[_wgslsmith_index_u32(14923u, 23u)]), 314f), global3.x)) | ~(~vec3<u32>(u_input.b, u_input.b, 53068u)), ~vec4<u32>(u_input.b, u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 1u), vec3<u32>(1u, u_input.b, u_input.e)), 1u), select(!func_1(~vec3<i32>(0i, u_input.c.x, global0[_wgslsmith_index_u32(u_input.d, 23u)]), _wgslsmith_f_op_f32(round(-1298f))).c.c, vec4<bool>(global3.x, !global3.x, global3.x, true), select(!select(vec4<bool>(global3.x, false, false, global3.x), vec4<bool>(global3.x, true, global3.x, global3.x), true), vec4<bool>(global3.x, !global3.x, true, global3.x), vec4<bool>(global3.x || true, global3.x != global3.x, false, true))), (~(~12934u) >> (_wgslsmith_add_u32(abs(u_input.e), 1u) % 32u)) | ~u_input.b, vec2<bool>(!func_2(vec4<f32>(-663f, 1136f, 661f, -876f), Struct_5(Struct_1(vec3<u32>(u_input.e, 36122u, 30278u), vec4<u32>(1u, u_input.e, 35339u, u_input.d), vec4<bool>(true, global3.x, global3.x, global3.x), u_input.d, vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(499f, -1557f))), !(!(!global3.x))));
    let var_1 = abs(~_wgslsmith_mult_vec2_u32(var_0.a.yx & vec2<u32>(4294967295u, u_input.d), vec2<u32>(39003u, var_0.a.x) & vec2<u32>(32840u, var_0.d))) & var_0.b.xx;
    global1 = array<vec2<i32>, 15>();
    let var_2 = func_1(abs(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, global1[_wgslsmith_index_u32(49247u, 15u)]), 60224i, 16024i))), -278f).e;
    global1 = array<vec2<i32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 1u, ~u_input.d);
}

