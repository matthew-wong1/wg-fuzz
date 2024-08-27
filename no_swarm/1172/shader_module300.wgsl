struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_4,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

var<private> global1: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(0i, 25653i, 2147483647i, 13638i), vec4<i32>(24642i, 4139i, 2147483647i, 42394i), vec4<i32>(-40266i, -49890i, -1980i, -1i), vec4<i32>(-48116i, -1i, 0i, 61467i), vec4<i32>(-1i, -66147i, 2147483647i, 10401i), vec4<i32>(i32(-2147483648), i32(-2147483648), 23028i, 15898i), vec4<i32>(-1i, 3197i, -6911i, 31513i), vec4<i32>(9722i, -483i, -1i, 28790i), vec4<i32>(-50905i, -30414i, -40690i, 12622i), vec4<i32>(i32(-2147483648), -28678i, 1i, 62602i), vec4<i32>(2147483647i, i32(-2147483648), 0i, -52457i), vec4<i32>(1i, -8058i, 2147483647i, 5497i), vec4<i32>(14234i, 21054i, 16498i, 1i), vec4<i32>(-35680i, -1894i, -22255i, -80643i));

var<private> global2: array<Struct_5, 3>;

var<private> global3: Struct_4 = Struct_4(vec3<i32>(0i, i32(-2147483648), 1i), Struct_3(Struct_2(12995i, Struct_1(true, vec2<i32>(11512i, 0i), 0i, false, false), vec4<u32>(17795u, 0u, 1u, 0u))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> f32 {
    let var_0 = select(vec4<bool>(all(!select(vec3<bool>(true, global3.b.a.b.e, false), vec3<bool>(arg_1.b.a, false, true), vec3<bool>(arg_1.b.d, global3.b.a.b.a, true))), arg_1.b.d, true, !(arg_2 == _wgslsmith_f_op_f32(arg_2 + arg_0))), vec4<bool>(any(select(select(vec4<bool>(global3.b.a.b.d, global3.b.a.b.e, arg_1.b.a, false), vec4<bool>(arg_1.b.d, global3.b.a.b.d, arg_1.b.d, true), arg_1.b.d), !vec4<bool>(true, global3.b.a.b.e, true, arg_1.b.a), true)), false, !global3.b.a.b.a, true), global3.b.a.b.d);
    global2 = array<Struct_5, 3>();
    let var_1 = global3.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -466f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(1353f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(912f + arg_2) - _wgslsmith_f_op_f32(-1150f + arg_2)))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    var var_0 = -283f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(900f, Struct_2(-28144i, Struct_1(global3.b.a.b.a, arg_1.yx, u_input.e, false, false), ~vec4<u32>(u_input.b.x, 7672u, u_input.d, u_input.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(438f)))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-982f + 653f), Struct_2(43461i, global3.b.a.b, vec4<u32>(u_input.d, 22051u, 65792u, 0u)), -1626f)))));
    let var_1 = Struct_1(any(select(!(!vec4<bool>(false, global3.b.a.b.a, global3.b.a.b.d, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false)))), min(arg_1.zy, _wgslsmith_add_vec2_i32(vec2<i32>(1i, -56031i), u_input.c)) & vec2<i32>(~u_input.a.x, ~(-u_input.c.x)), arg_1.x | firstLeadingBit(arg_1.x), false, true);
    global0 = array<vec2<u32>, 31>();
    let var_2 = -11426i;
    let var_3 = _wgslsmith_f_op_f32(select(351f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-895f, -231f) - _wgslsmith_f_op_f32(f32(-1f) * -748f)))), false)) < -2363f;
    return _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1766f))), global3.b.a, -118f));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(func_2(~arg_1.c.b.a.c.x, ~(~vec3<i32>(-43288i, u_input.e, arg_1.d.x) >> (select(~arg_3.yyx, arg_3.xzz, vec3<bool>(false, arg_2, global3.b.a.b.d)) % vec3<u32>(32u)))));
    var var_1 = vec3<bool>(true, global3.b.a.b.e, all(vec2<bool>((78457u >= u_input.d) && all(vec4<bool>(false, global3.b.a.b.e, arg_1.c.b.a.b.d, false)), arg_1.c.b.a.b.e)));
    let var_2 = arg_0.a.b;
    let var_3 = ~_wgslsmith_mod_u32(min(18034u, arg_1.c.b.a.c.x), ~4294967295u);
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.a)), _wgslsmith_f_op_f32(398f - _wgslsmith_f_op_f32(floor(arg_1.a)))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * -1284f))), 1145f))));
    return Struct_4(arg_1.c.a, Struct_3(arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global3.b, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.b.x, 26687u), 9437u), 3u)], false, vec4<u32>(reverseBits(_wgslsmith_div_u32(0u, ~global3.b.a.c.x)), ~_wgslsmith_sub_u32(firstLeadingBit(u_input.d), 24377u), reverseBits(~1u), u_input.d));
    let var_1 = min(~abs(_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(66387u, 14u)], vec4<i32>(-2147483647i, 56602i, 49344i, 2147483647i)) | countOneBits(vec4<i32>(global3.b.a.a, global3.b.a.b.c, 1015i, u_input.a.x))), -_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(func_1(global3.b, global2[_wgslsmith_index_u32(func_1(Struct_3(var_0.b.a), global2[_wgslsmith_index_u32(u_input.b.x, 3u)], var_0.b.a.b.d, global3.b.a.c).b.a.c.x, 3u)], true, ~vec4<u32>(1u, 1u, u_input.b.x, 58952u)).b.a.c.x, 14u)], (global1[_wgslsmith_index_u32(1414u, 14u)] ^ global1[_wgslsmith_index_u32(4294967295u, 14u)]) ^ global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.d, var_0.b.a.c.x, global3.b.a.c.x)), 14u)]));
    var var_2 = -1000f;
    let var_3 = Struct_2(~min(_wgslsmith_add_i32(abs(global3.b.a.b.c), 11608i), var_0.b.a.b.c), Struct_1(all(select(!vec3<bool>(global3.b.a.b.d, var_0.b.a.b.d, var_0.b.a.b.d), vec3<bool>(var_0.b.a.b.d, false, global3.b.a.b.a), true)), var_1.zx, min(75i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, 2147483647i) ^ vec3<i32>(global3.b.a.b.b.x, global3.a.x, 17909i), var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -502f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-479f, -1000f, global3.b.a.b.e))), !global3.b.a.b.e), global3.b.a.c);
    let var_4 = var_3.b.d && !any(vec3<bool>(true | var_0.b.a.b.e, true, false));
    var var_5 = func_1(Struct_3(func_1(Struct_3(Struct_2(-3040i, var_3.b, var_3.c)), Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -267f), ~global3.b.a.c.x, Struct_4(global3.a, global3.b), abs(global1[_wgslsmith_index_u32(var_3.c.x, 14u)])), any(select(vec2<bool>(true, var_4), vec2<bool>(false, false), vec2<bool>(var_4, false))), abs(global3.b.a.c) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global3.b.a.c.x, global3.b.a.c.x, 0u, global3.b.a.c.x), vec4<u32>(u_input.b.x, 4294967295u, global3.b.a.c.x, global3.b.a.c.x)) % vec4<u32>(32u))).b.a), global2[_wgslsmith_index_u32(0u, 3u)], !any(vec2<bool>(all(vec4<bool>(var_0.b.a.b.d, false, false, var_4)), all(vec2<bool>(var_3.b.a, true)))), _wgslsmith_div_vec4_u32(~vec4<u32>(abs(49140u), 121734u, var_0.b.a.c.x, ~4294967295u), global3.b.a.c));
    global0 = array<vec2<u32>, 31>();
    global1 = array<vec4<i32>, 14>();
    var_5 = Struct_4(select(vec3<i32>(-1i, -10349i, reverseBits(var_0.b.a.b.b.x)), var_0.a, vec3<bool>(true, true, true)), func_1(func_1(func_1(Struct_3(var_0.b.a), global2[_wgslsmith_index_u32(global3.b.a.c.x, 3u)], var_3.b.e, var_3.c).b, Struct_5(1000f, 4294967295u, Struct_4(vec3<i32>(-46239i, 35651i, 0i), Struct_3(var_5.b.a)), global1[_wgslsmith_index_u32(0u, 14u)] ^ var_1), any(select(vec3<bool>(var_3.b.d, true, var_0.b.a.b.d), vec3<bool>(false, global3.b.a.b.a, var_4), true)), ~vec4<u32>(0u, global3.b.a.c.x, global3.b.a.c.x, var_5.b.a.c.x)).b, Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-436f, Struct_2(1i, var_5.b.a.b, var_0.b.a.c), -626f)) * _wgslsmith_f_op_f32(-1037f - 2060f)), 1u, var_0, select(var_1, var_1, false) | _wgslsmith_clamp_vec4_i32(vec4<i32>(3109i, -8298i, u_input.e, var_0.b.a.a), global1[_wgslsmith_index_u32(1u, 14u)], vec4<i32>(global3.b.a.a, var_1.x, -2147483647i, 2147483647i))), var_0.b.a.b.e, global3.b.a.c >> (max(vec4<u32>(var_5.b.a.c.x, 14676u, var_0.b.a.c.x, 4294967295u), var_0.b.a.c) % vec4<u32>(32u))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1381f, -1712f, var_5.b.a.b.d)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(771f)) * -1344f))), -32905i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-14664i, -23355i), -vec2<i32>(var_5.b.a.a, var_5.b.a.b.b.x), global3.b.a.b.e), abs(~var_0.a.xz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-861f, -286f, 1705f, -1542f) - vec4<f32>(1000f, 1083f, 1533f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, 734f, -1640f, 293f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, -1000f, 1279f, 394f)), vec4<f32>(-1138f, 777f, -483f, 1707f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c.x, var_0.b.a.c.x), u_input.b.zx) | (0u >> (1u % 32u)), var_1.wyy)) + _wgslsmith_f_op_f32(func_2(var_5.b.a.c.x, _wgslsmith_mod_vec3_i32(var_5.a, vec3<i32>(global3.a.x, -1i, -1i))))));
}

