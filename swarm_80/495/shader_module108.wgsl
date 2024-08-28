struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

var<private> global1: array<bool, 23>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global1 = array<bool, 23>();
    let var_0 = !(!(!vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), 23u)], false)));
    var var_1 = 2580f;
    let var_2 = i32(-1i) * -1i;
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, _wgslsmith_mult_i32(-arg_0.x, _wgslsmith_mult_i32(arg_0.x, reverseBits(21016i)))), abs(vec3<i32>(1i, ~(-1i), var_2)) | -arg_0);
    return u_input.a.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_2(select(select(vec3<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(arg_2.b, 23u)], false)), any(vec2<bool>(false, false))), select(select(vec3<bool>(global1[_wgslsmith_index_u32(27565u, 23u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true, global1[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(54911u, 23u)], true)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true, false), vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 23u)], global1[_wgslsmith_index_u32(4165u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), !vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(arg_1.x, 23u)])), 66961i != (-2147483647i & arg_0.x)), select(vec3<bool>(0u <= u_input.a.x, false, false), !select(vec3<bool>(global1[_wgslsmith_index_u32(46676u, 23u)], false, global1[_wgslsmith_index_u32(arg_1.x, 23u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_2.b, 23u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(arg_1.x, 23u)])), vec3<bool>(0u < arg_2.c.x, global1[_wgslsmith_index_u32(~1u, 23u)], false)), false), -_wgslsmith_dot_vec2_i32(-vec2<i32>(8511i, 1i), max(vec2<i32>(-1i, arg_0.x), global0[_wgslsmith_index_u32(49618u, 24u)])) >> (0u % 32u), -vec2<i32>(arg_2.a.x, arg_2.a.x ^ _wgslsmith_sub_i32(0i, arg_2.a.x)));
    var var_1 = Struct_4(arg_2.b, Struct_2(vec3<bool>(all(select(vec4<bool>(var_0.a.x, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(42784u, 23u)], true, var_0.a.x, false), vec4<bool>(global1[_wgslsmith_index_u32(87772u, 23u)], var_0.a.x, false, global1[_wgslsmith_index_u32(arg_2.b, 23u)]))), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(arg_2.c.x, 23u)])) || true, true), arg_2.a.x, _wgslsmith_add_vec2_i32(vec2<i32>(~(-1i), 2147483647i), arg_0.zz)), reverseBits(~select(u_input.a.xy, vec2<u32>(u_input.a.x, 18856u), true)), Struct_1(-1000f, !(arg_0.x <= _wgslsmith_mod_i32(var_0.c.x, 0i)), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 23u)], false, false)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1872f + 1837f))), !(!var_0.a.x && global1[_wgslsmith_index_u32(54589u ^ u_input.a.x, 23u)]), vec4<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], var_0.a.x, global1[_wgslsmith_index_u32(10710u, 23u)])) || all(vec4<bool>(true, global1[_wgslsmith_index_u32(1130u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], var_0.a.x)), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(arg_2.c.x, 0u, u_input.a.x)), 23u)], global1[_wgslsmith_index_u32(1u, 23u)] | var_0.a.x)));
    let var_2 = var_1.b;
    global1 = array<bool, 23>();
    var var_3 = arg_1.x;
    return select(vec4<bool>(!(!all(var_1.d.c.wxx)), !global1[_wgslsmith_index_u32(~16378u & u_input.a.x, 23u)], true && global1[_wgslsmith_index_u32(~(~u_input.a.x), 23u)], all(select(vec4<bool>(false, var_1.b.a.x, false, var_2.a.x), !var_1.e.c, any(vec2<bool>(var_2.a.x, false))))), var_1.e.c, select(!(!vec4<bool>(true, var_0.a.x, true, global1[_wgslsmith_index_u32(arg_2.c.x, 23u)])), vec4<bool>(global1[_wgslsmith_index_u32(~arg_1.x, 23u)], global1[_wgslsmith_index_u32(~u_input.a.x, 23u)], var_1.b.a.x, var_0.a.x), vec4<bool>(0u > func_2(vec3<i32>(16271i, -1i, -45127i)), true, any(vec4<bool>(true, true, var_1.d.c.x, false)), true)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_3 {
    global0 = array<vec2<i32>, 24>();
    let var_0 = u_input.a.x;
    var var_1 = vec4<u32>(func_2(arg_1.xxz ^ select(~arg_1.xyz, ~arg_1.yyz, !vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], true))), u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, func_2(_wgslsmith_mod_vec3_i32(~arg_1.zyz, ~arg_1.yzx))));
    var var_2 = firstTrailingBit(~vec4<u32>(0u, abs(var_1.x), ~4294967295u, abs(_wgslsmith_clamp_u32(var_0, var_0, 17414u))));
    let var_3 = select(vec2<bool>(all(!func_3(vec3<i32>(19503i, 3351i, arg_1.x), vec2<u32>(5091u, u_input.a.x), Struct_3(vec4<i32>(arg_1.x, 30149i, arg_1.x, arg_1.x), u_input.a.x, vec2<u32>(var_0, var_2.x)))), false), !(!select(!vec2<bool>(global1[_wgslsmith_index_u32(var_0, 23u)], false), vec2<bool>(true, false), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))), true);
    return Struct_3(reverseBits(arg_1) & arg_1, ~_wgslsmith_add_u32(max(~var_0, u_input.a.x), countOneBits(u_input.a.x & u_input.a.x)), abs(~var_1.zz));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_2 {
    global0 = array<vec2<i32>, 24>();
    global1 = array<bool, 23>();
    return Struct_2(!func_3(_wgslsmith_clamp_vec3_i32(-arg_3.a.www, abs(arg_3.a.wwx), arg_3.a.zzy | arg_3.a.wzx), ~select(vec2<u32>(44372u, 33697u), arg_3.c, global1[_wgslsmith_index_u32(29399u, 23u)]), Struct_3(arg_3.a, _wgslsmith_mod_u32(62601u, 20378u), vec2<u32>(1u, 36530u))).zyy, 12607i, _wgslsmith_mod_vec2_i32(-reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(33488i, arg_3.a.x), vec2<i32>(arg_3.a.x, 1i))), countOneBits(global0[_wgslsmith_index_u32(~(~37684u), 24u)])));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(arg_0.d.c.yzy, -34844i, abs(func_1(-294f, vec4<i32>(13342i << (u_input.a.x % 32u), i32(-1i) * -35183i, func_1(-219f, vec4<i32>(arg_0.b.b, 0i, -13325i, -7673i)).a.x, _wgslsmith_div_i32(arg_0.b.c.x, 1i))).a.wy));
    global0 = array<vec2<i32>, 24>();
    var var_1 = Struct_4(_wgslsmith_mult_u32(u_input.a.x, arg_0.a), arg_0.b, ~vec2<u32>(27984u, arg_2), Struct_1(-1708f, any(func_3(vec3<i32>(3305i, -16823i, -24572i), vec2<u32>(4294967295u, u_input.a.x), Struct_3(vec4<i32>(-8804i, arg_0.b.c.x, var_0.c.x, 0i), 4294967295u, arg_0.c))), vec4<bool>(!global1[_wgslsmith_index_u32(arg_2, 23u)] | any(var_0.a.yy), arg_0.d.b | !arg_0.b.a.x, true, true)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1642f)), _wgslsmith_f_op_f32(abs(arg_1.x)), true)))), var_0.a.x, func_3(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b.c.x, var_0.b, -16028i), firstTrailingBit(vec3<i32>(-1i, -1i, 1i))), arg_0.c, func_1(_wgslsmith_div_f32(arg_1.x, 265f), vec4<i32>(14840i, 34445i, arg_0.b.c.x, -75639i) >> (vec4<u32>(4294967295u, arg_2, arg_0.c.x, 4373u) % vec4<u32>(32u))))));
    var var_2 = Struct_2(vec3<bool>(true, any(var_1.b.a.xy), all(var_1.d.c.zwx)), arg_0.b.c.x, vec2<i32>(~_wgslsmith_sub_i32(max(arg_0.b.c.x, var_0.c.x), -13856i), -4009i));
    var var_3 = ~vec4<u32>(~max(34380u, _wgslsmith_mod_u32(arg_2, arg_0.a)), ~_wgslsmith_mult_u32(arg_2, 1778u), ~arg_0.a, 1u);
    return Struct_2(vec3<bool>(!var_1.b.a.x, !any(arg_0.d.c.zx), any(func_4(func_4(true, true, vec3<bool>(arg_0.d.c.x, true, arg_0.d.b), Struct_3(vec4<i32>(-2147483647i, 1830i, var_0.b, -24159i), arg_0.a, var_3.xz)).a.x, true, vec3<bool>(true, true, true), func_1(373f, vec4<i32>(var_0.c.x, var_0.b, var_1.b.c.x, -12680i))).a.yx)), var_0.b, var_1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 23>();
    global0 = array<vec2<i32>, 24>();
    let var_0 = Struct_4(~23196u, func_5(Struct_4(_wgslsmith_div_u32(u_input.a.x, firstLeadingBit(84062u)), func_4(7051u >= u_input.a.x, any(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(13008u, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(25966u, 23u)], global1[_wgslsmith_index_u32(32367u, 23u)], false), global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), func_1(-201f, vec4<i32>(2147483647i, -12938i, -1i, -15760i))), u_input.a.zy ^ max(u_input.a.xz, vec2<u32>(14592u, 0u)), Struct_1(_wgslsmith_div_f32(997f, -923f), false, !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true, false, global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), Struct_1(_wgslsmith_f_op_f32(step(-969f, -1000f)), 103283u >= u_input.a.x, vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], false, global1[_wgslsmith_index_u32(34187u, 23u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1019f, 183f, -1641f), vec3<f32>(-900f, -942f, 590f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-192f, 197f, -1264f)))), reverseBits(1u)), countOneBits(min(min(u_input.a.yz << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(63116u, u_input.a.x))), u_input.a.zy)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-2224f, -344f)))), true, vec4<bool>(global1[_wgslsmith_index_u32(countOneBits(0u), 23u)], -519f < _wgslsmith_f_op_f32(select(-1142f, -1258f, true)), any(func_3(vec3<i32>(-14077i, 39922i, 2418i), u_input.a.xx, Struct_3(vec4<i32>(2147483647i, -41482i, -2147483647i, -1i), u_input.a.x, u_input.a.yz)).xy), true)), Struct_1(-1081f, global1[_wgslsmith_index_u32(~111051u, 23u)], select(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(35755u, 23u)], true), select(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(17278u, 23u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), !global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), func_3(select(vec3<i32>(0i, -34277i, 2509i), vec3<i32>(2147483647i, 2147483647i, 13772i), vec3<bool>(global1[_wgslsmith_index_u32(12587u, 23u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), ~vec2<u32>(u_input.a.x, 28759u), func_1(-2126f, vec4<i32>(-12836i, 5321i, -2147483647i, 2147483647i))))));
    global1 = array<bool, 23>();
    let var_1 = false;
    let var_2 = var_0.e.a;
    var var_3 = func_3(_wgslsmith_div_vec3_i32(func_1(_wgslsmith_f_op_f32(-var_2), ~vec4<i32>(2147483647i, -39721i, 41356i, -13889i)).a.wwx, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.c.x, var_0.b.c.x, var_0.b.b), vec3<i32>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x), vec3<i32>(1i, 3667i, 2147483647i)) >> (~u_input.a % vec3<u32>(32u))), ~(~firstLeadingBit(var_0.c)), Struct_3(vec4<i32>(var_0.b.b, -42104i, var_0.b.c.x, ~(-35642i)), 4294967295u, ~u_input.a.yx)).x & func_4(!var_0.b.a.x, func_5(Struct_4(4294967295u, func_5(var_0, vec3<f32>(165f, -612f, 430f), var_0.c.x), vec2<u32>(u_input.a.x, var_0.a), Struct_1(var_2, var_1, vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 23u)], false, true)), var_0.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1938f, var_2, -467f))) + vec3<f32>(var_0.d.a, -1318f, 272f)), 1u).a.x, var_0.e.c.xzy, func_1(-875f, vec4<i32>(var_0.b.c.x, var_0.b.b, func_4(true, global1[_wgslsmith_index_u32(32718u, 23u)], vec3<bool>(var_1, var_1, false), Struct_3(vec4<i32>(var_0.b.b, 81992i, var_0.b.c.x, -31121i), 4294967295u, u_input.a.xz)).c.x, abs(var_0.b.b)))).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(942f)), -582f, _wgslsmith_f_op_f32(exp2(var_2)), var_2))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.a.x, 0u) << (var_0.c % vec2<u32>(32u)), vec2<u32>(13350u, 1u) & u_input.a.yy, var_0.b.a.xx), select(vec2<u32>(u_input.a.x, 4294967295u), var_0.c | vec2<u32>(0u, u_input.a.x), var_0.e.c.zx)), abs(_wgslsmith_div_vec2_u32(min(var_0.c, vec2<u32>(u_input.a.x, var_0.c.x)), vec2<u32>(86330u, u_input.a.x)))), vec4<u32>(3100u & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 11348u), vec2<u32>(0u, var_0.c.x)), 38238u), var_0.c.x, ~57637u, _wgslsmith_sub_u32(~func_2(vec3<i32>(-48916i, var_0.b.b, var_0.b.b)), ~func_2(vec3<i32>(11946i, -23644i, 4554i)))), -1i);
}

