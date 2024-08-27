struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec3<i32> {
    var var_0 = Struct_1(arg_0.a, arg_2.x, !arg_0.c);
    global1 = 4294967295u;
    let var_1 = !(!arg_1.c);
    var var_2 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(reverseBits(u_input.a.x), ~u_input.a.x), u_input.c), 1u), 46476u, u_input.a.x);
    let var_3 = vec4<i32>(~_wgslsmith_mod_i32(var_0.a.x & _wgslsmith_clamp_i32(0i, 2147483647i, arg_0.a.x), select(min(47447i, 31463i), countOneBits(-19217i), all(vec2<bool>(false, false)))), ~_wgslsmith_mod_i32(~arg_0.a.x, 2147483647i) >> (_wgslsmith_dot_vec4_u32(min(vec4<u32>(74825u, var_2.x, 4294967295u, 4451u), vec4<u32>(var_2.x, u_input.b.x, 71928u, 57148u)) & ~vec4<u32>(u_input.b.x, 1u, var_2.x, var_2.x), ~countOneBits(vec4<u32>(39449u, var_2.x, 0u, var_2.x))) % 32u), firstLeadingBit(-(~arg_0.a.x)), firstLeadingBit(_wgslsmith_add_i32(3183i, 1i)));
    return var_3.xyy;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 2147483647i, -25946i), vec3<i32>(5455i, -69765i, -19823i), vec3<i32>(-2147483647i, -1i, 10640i))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-23126i, 13973i, -23851i)) << (vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x) % vec3<u32>(32u)), func_3(Struct_1(vec3<i32>(-1i, 27941i, 0i), -310f, vec4<bool>(false, false, true, false)), Struct_1(vec3<i32>(-37256i, -1i, 22737i), 1078f, vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(70681u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-802f, 1133f, -1025f, -1799f)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)]), vec3<bool>(false, false, true), true)))), 1000f, vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 22u)], true, true)), select(true, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 22u)]) | global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(~(~u_input.c), 22u)], true));
    global1 = u_input.b.x;
    var var_1 = countOneBits(var_0.a.x);
    var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-521f, var_0.b, 1176f, var_0.b))))))));
    return vec3<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(-var_0.a.zz), var_0.a.zx), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<i32>(0i, -1i, 16996i, var_0.a.x)))), ~_wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, 1i, 21655i), var_0.a)), var_0.a));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(~(-(~func_2())), _wgslsmith_f_op_f32(f32(-1f) * -748f), arg_0.c);
    var var_1 = _wgslsmith_f_op_f32(1822f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.b, var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))))));
    return Struct_1(abs(var_0.a), 1136f, var_0.c);
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-func_1(Struct_1(arg_0.a, arg_0.b, vec4<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(4442u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), vec3<f32>(arg_0.b, arg_0.b, arg_0.b)).b), 271f, -604f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-583f, -622f, arg_0.b) - _wgslsmith_div_vec3_f32(vec3<f32>(159f, arg_0.b, 839f), vec3<f32>(arg_0.b, -1307f, arg_0.b))) + vec3<f32>(arg_0.b, -574f, -1050f)) - vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b)), 340f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-572f, 351f))))));
    var var_1 = vec3<i32>(min(~(-(~arg_0.a.x)), _wgslsmith_mult_i32(arg_0.a.x, 3347i)), -29560i, arg_0.a.x);
    var_1 = vec3<i32>(_wgslsmith_div_i32(30848i, arg_0.a.x), -19471i, -(0i ^ (var_1.x ^ var_1.x)));
    let var_2 = arg_0;
    let var_3 = abs(~(~vec4<u32>(max(u_input.a.x, 0u), ~0u, u_input.c, u_input.a.x)));
    return func_2() ^ abs(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c;
    var var_0 = global0[_wgslsmith_index_u32(~abs(1u), 22u)] && select(true, false, _wgslsmith_div_f32(187f, _wgslsmith_f_op_f32(select(-478f, -131f, global0[_wgslsmith_index_u32(u_input.b.x, 22u)]))) <= _wgslsmith_f_op_f32(abs(-100f)));
    let var_1 = func_4(func_1(Struct_1(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 26788i, -1i, -2147483647i), vec4<i32>(-39311i, 1i, -1i, 0i)), -1i), 1f, vec4<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.c, u_input.b.x, u_input.b.x)), 22u)], select(false, global0[_wgslsmith_index_u32(0u, 22u)], true), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-558f, -1557f, 1513f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, 579f, -1000f)))));
    let var_2 = func_1(func_1(func_1(func_1(func_1(Struct_1(var_1, -670f, vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.c, 22u)])), vec3<f32>(601f, -1559f, 186f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(514f, 806f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-253f, 668f, 1338f), vec3<f32>(-1000f, -112f, 725f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(917f, -1111f, -320f) - vec3<f32>(-2451f, 2160f, 1264f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(920f, 1702f, 1000f) * vec3<f32>(-828f, 1000f, -909f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1379f, 470f, -1329f), vec3<f32>(119f, -129f, -1000f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1317f), _wgslsmith_f_op_f32(f32(-1f) * -346f), -655f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1032f, 1846f, -436f), vec3<f32>(-179f, -2094f, -122f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-300f, 1134f, -1000f), vec3<f32>(1476f, -1573f, 583f))))), select(vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.c, 22u)], false, global0[_wgslsmith_index_u32(1843u, 22u)]), all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 22u)], false)), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], false))), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), func_1(Struct_1(vec3<i32>(var_1.x, var_1.x, -1i), -1575f, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], false, true, true)), vec3<f32>(626f, -665f, 812f)).c.zxz, all(vec2<bool>(false, false))), !vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 22u)], false)))));
    global0 = array<bool, 22>();
    var var_3 = !select(vec3<bool>(func_1(func_1(Struct_1(vec3<i32>(1i, var_2.a.x, -10207i), 361f, var_2.c), vec3<f32>(var_2.b, 119f, 1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-610f, 1000f, var_2.b)))).c.x, !(!var_2.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.a) > (30081u | u_input.c)), var_2.c.zwx, _wgslsmith_mult_i32(~(-10788i), var_2.a.x << (1u % 32u)) < (firstTrailingBit(-52900i) << (8496u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(u_input.b.x, ~0u)), ~18542u, ~_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_1.xx, ~var_1.zy), _wgslsmith_mod_vec2_i32(var_2.a.zx, var_2.a.yz) & func_3(var_2, Struct_1(var_1, -1271f, var_2.c), vec4<f32>(var_2.b, 1096f, var_2.b, var_2.b), vec3<bool>(true, false, var_2.c.x)).yx), ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 2704u, 94465u), _wgslsmith_sub_vec3_u32(u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a), ~u_input.a));
}

