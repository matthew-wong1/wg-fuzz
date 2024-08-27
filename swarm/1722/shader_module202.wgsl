struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, -1019f, Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -10496i), vec4<i32>(46540i, 27670i, i32(-2147483648), 13735i), -1i, vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i)), 25741u, Struct_1(vec4<i32>(16611i, -21176i, -1i, 2147483647i), vec4<i32>(-1i, 28729i, -40536i, 41826i), -56105i, vec3<i32>(1i, i32(-2147483648), 9144i)), vec3<u32>(0u, 13909u, 53276u), -1000f), 0u);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(vec2<bool>(false, false), vec3<bool>(true, false, true), vec3<f32>(-2224f, 744f, -1162f), Struct_4(Struct_3(false, 235f, Struct_2(Struct_1(vec4<i32>(-17752i, 2147483647i, 0i, -16198i), vec4<i32>(-1i, 0i, 6258i, 23926i), 10156i, vec3<i32>(41618i, 6513i, 3676i)), 17214u, Struct_1(vec4<i32>(-10062i, 13073i, 12485i, -24840i), vec4<i32>(1i, -32664i, 38666i, -22799i), -11354i, vec3<i32>(-8935i, 4953i, -51315i)), vec3<u32>(4294967295u, 0u, 0u), -415f), 39822u), false, true)), Struct_5(vec2<bool>(true, false), vec3<bool>(true, false, false), vec3<f32>(-1120f, 735f, 840f), Struct_4(Struct_3(true, -716f, Struct_2(Struct_1(vec4<i32>(7601i, 1i, 5060i, -20370i), vec4<i32>(-1i, 0i, -5629i, 6908i), 0i, vec3<i32>(0i, 41134i, 0i)), 67403u, Struct_1(vec4<i32>(0i, 25898i, 0i, 1i), vec4<i32>(-1i, i32(-2147483648), 1i, 17534i), 46609i, vec3<i32>(-2439i, -4544i, 7304i)), vec3<u32>(4294967295u, 32253u, 4294967295u), -896f), 1u), false, false)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_2(Struct_1(global0.c.a.b, abs(_wgslsmith_add_vec4_i32(-global0.c.a.b, reverseBits(vec4<i32>(global0.c.a.a.x, 2147483647i, global0.c.a.a.x, -44954i)))), 16091i, countOneBits(vec3<i32>(_wgslsmith_sub_i32(global0.c.c.b.x, global0.c.a.c), -20813i, 1i))), 47481u, Struct_1(vec4<i32>(global0.c.a.b.x, abs(-27773i), i32(-1i) * -1i, -20670i) | _wgslsmith_div_vec4_i32(-global0.c.a.a, ~vec4<i32>(global0.c.a.b.x, global0.c.c.d.x, global0.c.a.d.x, 0i)), vec4<i32>(_wgslsmith_clamp_i32(31439i, 28141i, global0.c.c.c), global0.c.c.c, global0.c.a.d.x, _wgslsmith_mult_i32(global0.c.a.d.x, -global0.c.c.b.x)), ~(-global0.c.a.b.x | ~global0.c.c.a.x), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global0.c.a.c, -2147483647i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.a.b.x, 0i, global0.c.c.a.x, global0.c.a.a.x), global0.c.c.a)), _wgslsmith_mult_i32(-2147483647i, global0.c.a.a.x & global0.c.a.a.x), -_wgslsmith_mod_i32(global0.c.a.c, -1i))), global0.c.d, global0.c.e);
    let var_1 = global0.c.d.x;
    global1 = select(!select(vec3<bool>(arg_1.x, arg_0.x, true), select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(arg_1.x, arg_1.x, true), false), arg_1.yxx, any(vec4<bool>(arg_0.x, arg_1.x, true, true))), arg_1.x), vec3<bool>(any(vec3<bool>(true, global0.a, global0.a)), (global0.c.d.x > ~18367u) | false, true), vec3<bool>(!(!all(arg_1)), any(vec4<bool>(false, !arg_1.x, !global1.x, false)), global0.a));
    let var_2 = Struct_4(Struct_3(any(arg_0.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-728f, 1810f))), Struct_2(var_0.a, 88u, Struct_1(vec4<i32>(-27656i, var_0.a.a.x, -9416i, global0.c.a.a.x) & vec4<i32>(var_0.a.a.x, var_0.c.d.x, 1i, var_0.a.c), ~global0.c.c.a, -var_0.a.b.x, vec3<i32>(var_0.c.b.x, var_0.c.c, global0.c.c.b.x) & global0.c.a.a.zwz), vec3<u32>(abs(var_0.d.x), 17337u, _wgslsmith_div_u32(global0.c.d.x, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -969f)), var_0.b | ~_wgslsmith_mod_u32(u_input.a, var_0.b)), true, !all(arg_1.yyx));
    global0 = var_2.a;
    return _wgslsmith_add_u32(~(~18537u), 1u) < _wgslsmith_mult_u32(~var_2.a.c.b, ~(~(~var_0.b)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = Struct_3(global0.a != all(vec3<bool>(all(vec2<bool>(global0.a, global0.a)), func_3(vec4<bool>(false, true, global1.x, global0.a), vec4<bool>(true, true, true, global0.a)), all(vec2<bool>(false, false)))), 777f, Struct_2(global0.c.a, firstTrailingBit(_wgslsmith_mod_u32(81385u, reverseBits(54655u))), global0.c.a, vec3<u32>(0u, ~(~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.c.d.x, arg_2), abs(global0.c.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.e)))), ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.d.x, 4294967295u, 0u), firstTrailingBit(global0.c.d)), arg_0));
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 2u)];
    global0 = var_0;
    global2 = array<Struct_5, 2>();
    var var_2 = Struct_4(Struct_3(any(select(vec2<bool>(true, true), !global1.zx, !global1.yx)), 1272f, Struct_2(var_1.d.a.c.c, 13764u, global0.c.a, _wgslsmith_mod_vec3_u32(max(var_0.c.d, global0.c.d), var_1.d.a.c.d), var_0.b), 50840u), select(var_1.d.b, true, any(vec2<bool>(true | global0.a, true))), !global0.a);
    return var_2.a.c.e;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_3 {
    global0 = Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4294967295u, -14288i, 1u))), global0.c, global0.d);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.e) + _wgslsmith_f_op_f32(arg_1 - 1226f)) - 1190f);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.c.b, firstTrailingBit(31210u)), 2u)];
    var var_2 = global0.c.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(global0.b * -1236f))), var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c.x, var_1.d.a.c.e, var_0), var_1.c))), vec3<f32>(1000f, _wgslsmith_f_op_f32(func_2(57649u, -30009i, global0.c.d.x)), _wgslsmith_f_op_f32(step(var_1.c.x, var_1.c.x)))) + _wgslsmith_f_op_vec3_f32(select(var_1.c, vec3<f32>(_wgslsmith_f_op_f32(-468f - -968f), var_1.d.a.c.e, _wgslsmith_div_f32(var_0, var_1.c.x)), !var_1.b.x && !global0.a)))));
    return Struct_3(true, _wgslsmith_f_op_f32(trunc(var_0)), global0.c, 95843u);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = abs(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_clamp_i32(~55631i, -1i, 40722i)), arg_0.a.c.a.a.x));
    var var_1 = Struct_1(-vec4<i32>(countOneBits(global0.c.a.b.x), abs(1i), firstTrailingBit(var_0), _wgslsmith_sub_i32(var_0, 2147483647i)) | global0.c.a.a, -abs(-min(vec4<i32>(12623i, var_0, arg_0.a.c.a.d.x, arg_0.a.c.c.b.x), arg_0.a.c.c.b)), arg_0.a.c.c.b.x, select(vec3<i32>(1i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 4775i, arg_0.a.c.a.a.x), global0.c.a.a.yzy), -27536i), arg_0.a.c.c.d.x), -arg_0.a.c.a.b.zxw, !(_wgslsmith_dot_vec2_i32(arg_0.a.c.c.b.yz, vec2<i32>(var_0, global0.c.c.b.x)) < arg_0.a.c.a.a.x)));
    var var_2 = arg_0.a.c.a;
    global1 = select(vec3<bool>(arg_2.x, false, func_1(var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -169f)).a), vec3<bool>(true, true, global1.x), select(vec3<bool>(!global0.a, any(!vec3<bool>(arg_1, arg_2.x, arg_1)), select(!arg_2.x, global1.x | false, var_0 < -28149i)), vec3<bool>(!arg_0.c, true, !(global0.d <= global0.c.d.x)), all(vec2<bool>(true, func_3(vec4<bool>(true, true, true, false), vec4<bool>(global1.x, global1.x, arg_0.b, true))))));
    var var_3 = Struct_1(vec4<i32>(var_1.a.x & 0i, -7257i, _wgslsmith_mult_i32(select(global0.c.c.c >> (4294967295u % 32u), firstLeadingBit(var_1.b.x), true), abs(68077i)), countOneBits(var_0)), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(~var_2.b, -vec4<i32>(var_0, 20971i, 1i, 1i)), -39207i, ~(2147483647i & var_0), var_1.b.x)), reverseBits(select(_wgslsmith_add_i32(global0.c.c.b.x, _wgslsmith_mult_i32(var_2.a.x, -2147483647i)), reverseBits(-7075i), false)), var_1.a.xxz & vec3<i32>(11775i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c.c.d.x, 1i, var_2.d.x, -72433i), -vec4<i32>(-25970i, var_1.b.x, -20220i, 0i))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(any(select(!(!vec4<bool>(global1.x, global0.a, global1.x, global0.a)), select(select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global0.a, global1.x, global1.x, false), vec4<bool>(global0.a, global0.a, global0.a, true)), vec4<bool>(false, global0.a, true, false), !global1.x), global0.a && true)), !global1.x, false);
    let var_0 = global0.c;
    var var_1 = func_4(Struct_4(func_1(var_0.c.a.wxy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-946f - global0.b) * _wgslsmith_f_op_f32(ceil(1161f)))), true, true), func_1(reverseBits(abs(global0.c.c.a.zxx)), 381f).a, !select(global1.yy, !vec2<bool>(global0.a, false), select(!global1.zz, !vec2<bool>(global0.a, global0.a), global1.zx)));
    let var_2 = abs(firstTrailingBit(global0.c.d));
    var var_3 = vec4<u32>(func_4(func_4(Struct_4(Struct_3(true, var_1.a.c.e, var_1.a.c, 9861u), var_1.a.d < 330u, all(vec4<bool>(true, global1.x, global0.a, global0.a))), false, vec2<bool>(true, all(vec4<bool>(false, false, true, false)))), ~60953u != abs(~var_0.b), !select(vec2<bool>(var_1.b, false), select(global1.zx, global1.zy, global1.xz), !vec2<bool>(global1.x, false))).a.d, ~var_1.a.d, u_input.b, select(func_1((var_0.a.a.xxy << (var_0.d % vec3<u32>(32u))) << (select(var_1.a.c.d, vec3<u32>(31020u, u_input.b, global0.c.b), global1.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)).c.b, 64050u, any(!select(vec4<bool>(global1.x, true, true, var_1.c), vec4<bool>(global1.x, global0.a, global1.x, global1.x), vec4<bool>(true, false, true, false)))));
    var var_4 = abs(vec2<i32>(-1i, -33641i));
    var var_5 = var_1.a.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.e))))));
}

