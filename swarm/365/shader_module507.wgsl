struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<bool>, 3>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    var var_0 = arg_1;
    let var_1 = 37189i;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(var_0.a.b.zx, arg_2.yy));
    let var_3 = Struct_3(Struct_1(var_0.a.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1266f), -322f, arg_3), arg_2), -_wgslsmith_div_i32(global0.a.c, max(var_1, arg_1.a.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.x, arg_1.a.b.x, -2285f, arg_1.a.e))) - global2.a.d), -3735f), _wgslsmith_f_op_f32(f32(-1f) * -282f), global2.d, all(vec3<bool>(!all(vec2<bool>(false, global0.d)), true, var_1 < 0i)), vec2<f32>(-830f, _wgslsmith_f_op_f32(floor(-137f))));
    let var_4 = vec2<i32>(min(countOneBits(_wgslsmith_mult_i32(var_3.a.c, 1i)), 1i), -2147483647i ^ (firstLeadingBit(var_3.a.c) & -(global0.a.c & -1i)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(136f - arg_1.a.a.x), 641f));
}

fn func_3() -> vec4<u32> {
    global2 = Struct_3(global2.a, 156f, all(global1[_wgslsmith_index_u32(~1u, 3u)]), global0.d, _wgslsmith_f_op_vec2_f32(-global2.a.b.xx));
    global0 = Struct_3(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1037f - global2.e.x)))), all(vec2<bool>(u_input.b.x >= _wgslsmith_div_u32(u_input.a, 26851u), all(vec4<bool>(true, global0.c, true, global0.d)))), false, global0.e);
    let var_0 = global0.a;
    let var_1 = vec2<bool>(all(select(vec3<bool>(global2.d, any(global1[_wgslsmith_index_u32(26013u, 3u)]), true), vec3<bool>(global0.c, true | global0.d, !global0.d), !(!vec3<bool>(global0.d, false, global0.d)))), global0.d);
    global2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.d.zxw, global0.a.a)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, global2.e.x, 2149f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a.e - -986f), global0.e.x, 645f)), 1i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a.d + var_0.d)))), 1f), _wgslsmith_f_op_f32(sign(1f)), global2.c, !global2.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, _wgslsmith_f_op_f32(-1526f - _wgslsmith_f_op_f32(-global2.b)))));
    return _wgslsmith_clamp_vec4_u32(~(reverseBits(~vec4<u32>(1u, 25739u, 31470u, u_input.d.x)) & (vec4<u32>(u_input.a, 46848u, 0u, 2620u) | reverseBits(vec4<u32>(u_input.b.x, 53035u, 2891u, u_input.d.x)))), vec4<u32>(6575u ^ (_wgslsmith_mult_u32(4294967295u, u_input.a) & ~4294967295u), 4294967295u, u_input.b.x, ~16347u), vec4<u32>(u_input.a, ~(_wgslsmith_mult_u32(4294967295u, 0u) ^ abs(u_input.d.x)), ~0u >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(78690u, 85979u, 27409u), u_input.b) << (26209u % 32u)) % 32u), countOneBits(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, u_input.a))) | 4294967295u));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<u32>) -> vec4<i32> {
    var var_0 = vec4<f32>(1000f, -556f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, Struct_2(Struct_1(global0.a.a, vec3<f32>(arg_1.x, 1974f, global2.e.x), 44445i, global0.a.d, arg_1.x)), global2.a.b, global2.b)) - _wgslsmith_f_op_f32(global0.b - global2.b)) + -1111f) - _wgslsmith_div_f32(-835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.e.x, arg_1.x, global2.c))))), -807f);
    var var_1 = func_3();
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(465f, -454f))))))), global2.d != false, any(vec2<bool>(true, global2.d)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(global0.a.d.wx)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * -283f)), _wgslsmith_f_op_f32(597f + _wgslsmith_f_op_f32(func_2(arg_2, Struct_2(Struct_1(vec3<f32>(-1388f, 651f, -1114f), var_0.wzw, global0.a.c, global0.a.d, -536f)), vec3<f32>(arg_1.x, global0.e.x, global2.b), -1000f)))), true)));
    var var_2 = u_input.b;
    let var_3 = !global1[_wgslsmith_index_u32(72273u, 3u)];
    return reverseBits(select(vec4<i32>(i32(-1i) * -1i, 1i, countOneBits(global0.a.c), 1i), _wgslsmith_clamp_vec4_i32(u_input.c << (vec4<u32>(arg_0, arg_0, 88317u, 0u) % vec4<u32>(32u)), ~u_input.c, u_input.c), select(vec4<bool>(true, arg_2, global2.d, true), select(vec4<bool>(true, arg_2, true, true), vec4<bool>(arg_2, arg_2, true, global2.c), vec4<bool>(var_3.x, arg_2, global2.c, false)), !vec4<bool>(global0.d, false, var_3.x, arg_2)))) ^ u_input.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = ~u_input.b << (vec3<u32>(~min(u_input.b.x, u_input.a) << ((20430u >> (u_input.a % 32u)) % 32u), u_input.b.x, abs(u_input.b.x)) % vec3<u32>(32u));
    var var_1 = global2.a;
    let var_2 = _wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(var_1.a.x + global0.a.a.x));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_1.d.wzz - vec3<f32>(global0.a.b.x, 835f, -627f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_2, var_1.b.x))), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -2147483647i, -1i, arg_0.x), _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -2147483647i, 2147483647i, arg_1))), var_1.d, _wgslsmith_f_op_f32(abs(var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.e)))), true, any(vec4<bool>(_wgslsmith_f_op_f32(select(-197f, 175f, global0.c)) == _wgslsmith_f_op_f32(f32(-1f) * -1000f), !(!global2.c), false, false)), global2.a.a.xy);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = !(!vec2<bool>(!any(vec2<bool>(true, true)), !global0.d));
    let var_1 = _wgslsmith_mod_i32((-25212i ^ arg_0.a.c) | countOneBits(-1i), _wgslsmith_div_i32(~0i, -1i));
    let var_2 = func_4(vec4<i32>(_wgslsmith_sub_i32(arg_1, -1i), 2147483647i | global2.a.c, global0.a.c, firstLeadingBit(_wgslsmith_sub_i32(var_1, u_input.c.x) << (~u_input.a % 32u))), global2.a.c, select(select(select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, global2.c), true), global1[_wgslsmith_index_u32(u_input.b.x, 3u)], false), select(vec2<bool>(arg_0.c, arg_0.d), select(vec2<bool>(true, global2.d), vec2<bool>(var_0.x, true), var_0), vec2<bool>(global2.d, true)), !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.b.x), 3u)]), !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.d.x), 3u)], false));
    let var_3 = firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.b.x, u_input.a, u_input.d.x, u_input.a)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(47948u, u_input.a, 0u, u_input.b.x)), vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.b.x))), 0u, ~(~firstLeadingBit(u_input.a))));
    global2 = Struct_3(global0.a, 657f, _wgslsmith_add_u32(abs(var_3.x), u_input.a) >= func_3().x, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.a.d.yz))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) - _wgslsmith_f_op_f32(593f * 1373f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1051f - global2.b) * 1263f))));
    return Struct_3(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_clamp_i32(global2.a.c, 1i, -41304i), _wgslsmith_clamp_i32(-1129i, global2.a.c, -1i), firstTrailingBit(var_2.a.c)), u_input.c), select(_wgslsmith_dot_vec2_i32(vec2<i32>(25944i, arg_1), u_input.c.wz), 2147483647i, !all(vec3<bool>(true, var_0.x, false))), !select(!global1[_wgslsmith_index_u32(u_input.d.x, 3u)], !vec2<bool>(global2.c, true), vec2<bool>(var_0.x, false))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))) - global2.a.b.x), !all(vec3<bool>(var_0.x, global2.d, true)), false | all(!vec4<bool>(true, true, global0.c, arg_0.c)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.a.x), _wgslsmith_f_op_f32(-global2.b)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    var var_0 = func_4(vec4<i32>(-52040i, -29048i, ~2147483647i, arg_1.a.c), arg_0.a.c, vec2<bool>(true, all(!(!vec3<bool>(global2.c, false, true))))).a;
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(func_3().zw, vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, arg_3, 21174u, 2511u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3, arg_3, 110940u, arg_3), vec4<u32>(arg_3, u_input.d.x, 48017u, 0u))), u_input.d.x)), vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(1u, 92731u)));
    let var_2 = Struct_2(func_4(func_1(_wgslsmith_div_u32(1u, firstLeadingBit(var_1.x)), vec4<f32>(-1502f, _wgslsmith_f_op_f32(select(1124f, 299f, true)), arg_1.a.a.x, _wgslsmith_f_op_f32(step(global2.e.x, -302f))), true & (1u >= u_input.a), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(arg_3, var_1.x, arg_3)), vec3<u32>(72256u, 0u, u_input.d.x))), abs(_wgslsmith_sub_i32(-global0.a.c, 1i)), select(global1[_wgslsmith_index_u32(var_1.x, 3u)], global1[_wgslsmith_index_u32(~1u, 3u)], !vec2<bool>(arg_1.d, true))).a);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(max(arg_2.a.d.yxx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(2263f, 451f, var_2.a.e) * func_4(u_input.c, u_input.c.x, vec2<bool>(false, false)).a.a)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), arg_1.e.x, _wgslsmith_f_op_f32(arg_2.a.b.x + 1000f)), _wgslsmith_f_op_vec3_f32(-global2.a.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-587f, var_0.a.x, -110f), var_2.a.d.xzw)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-278f, 1000f, arg_0.a.a.x) * global0.a.a), arg_0.d)))))), 0i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a.x, arg_1.e.x, -279f, arg_2.a.d.x) * _wgslsmith_f_op_vec4_f32(var_2.a.d + vec4<f32>(arg_0.e.x, arg_1.a.b.x, arg_1.e.x, global0.a.a.x))) - vec4<f32>(arg_1.e.x, -614f, -808f, 617f)))), _wgslsmith_div_f32(1145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_2.b + arg_0.a.d.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.e)))));
    let var_4 = _wgslsmith_div_u32(~_wgslsmith_div_u32(70664u, ~0u), firstLeadingBit(arg_3));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(_wgslsmith_clamp_vec4_i32(func_1(0u, vec4<f32>(global0.a.e, global0.a.d.x, -361f, 1741f), global0.c, u_input.b), vec4<i32>(global2.a.c, global2.a.c, 2147483647i, 0i), min(vec4<i32>(6380i, -2147483647i, 1042i, u_input.c.x), u_input.c)), u_input.c.x, !vec2<bool>(global2.c, true)), (select(global0.a.c, -1i, true) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-9631i, global0.a.c, u_input.c.x, -1i), vec4<i32>(global0.a.c, -29269i, u_input.c.x, global0.a.c))) ^ ~global0.a.c, global0.a.b), Struct_3(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.e.x))), any(select(vec2<bool>(global2.c, true), select(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], vec2<bool>(false, true), vec2<bool>(true, global0.d)), global1[_wgslsmith_index_u32(u_input.b.x, 3u)])), ~select(u_input.a, 40352u, true) > (firstTrailingBit(39928u) ^ 1u), func_4(reverseBits(vec4<i32>(2147483647i, -31403i, global2.a.c, global2.a.c)), global0.a.c, select(!global1[_wgslsmith_index_u32(4294967295u, 3u)], vec2<bool>(false, false), select(vec2<bool>(global2.d, global0.c), vec2<bool>(false, false), true))).e), func_4(~u_input.c, 0i, vec2<bool>(1i <= global0.a.c, true)), 4294967295u);
    global2 = var_0;
    var var_1 = !select(!select(vec3<bool>(false, global2.d, false), select(vec3<bool>(false, true, true), vec3<bool>(global0.c, false, global0.d), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, global0.c), vec3<bool>(true, global0.d, global0.c), false)), select(vec3<bool>(!global2.c, var_0.c, !global0.d), vec3<bool>(true, func_6(Struct_3(var_0.a, -1317f, var_0.d, global0.d, var_0.e), Struct_3(Struct_1(vec3<f32>(global0.e.x, global0.b, -1042f), global2.a.a, 1i, global0.a.d, global2.e.x), -297f, true, true, global0.a.d.yy), var_0, u_input.a).d, true), select(!vec3<bool>(true, global2.c, true), select(vec3<bool>(global0.d, true, global2.c), vec3<bool>(true, global2.c, global2.d), vec3<bool>(global0.d, global0.c, true)), !vec3<bool>(true, true, var_0.d))), true);
    let var_2 = abs(vec2<u32>(~(_wgslsmith_mod_u32(u_input.a, 35539u) ^ ~u_input.b.x), ~(~68387u)));
    global0 = func_6(var_0, func_6(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a.a), _wgslsmith_f_op_vec3_f32(-global0.a.b), 47636i, _wgslsmith_f_op_vec4_f32(-var_0.a.d), _wgslsmith_f_op_f32(-424f - var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f + global2.e.x)), var_0.c, false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(408f, var_0.a.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1014f, 379f) - vec2<f32>(global2.a.e, 896f)))), Struct_3(func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.a.c, 1i, -24946i, -1i), u_input.c), -14337i, var_1.yz).a, _wgslsmith_f_op_f32(func_2(all(vec4<bool>(true, true, true, var_0.c)), Struct_2(Struct_1(global2.a.a, var_0.a.b, -48871i, vec4<f32>(var_0.e.x, global0.e.x, var_0.e.x, global0.e.x), var_0.a.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.e, global2.e.x, global2.b), var_0.a.a), _wgslsmith_f_op_f32(global2.b + -639f))), 32925u <= u_input.a, false, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global2.e)))), Struct_3(global2.a, var_0.e.x, !(!global0.d), global0.c, var_0.e), u_input.a), var_0, _wgslsmith_sub_u32(u_input.d.x, ~0u));
    var var_3 = Struct_2(global2.a);
    var_1 = vec3<bool>(~_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.a.c, -60399i), 2147483647i) > (i32(-1i) * -global0.a.c), !(763f <= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(649f, global2.a.d.x), 536f))), any(vec4<bool>(false, !(!var_1.x), !(508f != var_0.a.b.x), !var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.c, 651f, global2.e, vec2<u32>(var_2.x, _wgslsmith_div_u32(select(~32280u, ~1u, !var_0.c), 70350u)));
}

