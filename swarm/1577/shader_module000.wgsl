struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2>;

var<private> global1: array<u32, 26> = array<u32, 26>(0u, 0u, 10860u, 81990u, 4294967295u, 1u, 1u, 1u, 4294967295u, 27103u, 0u, 37020u, 1u, 64624u, 21440u, 1u, 1u, 20812u, 1058u, 22326u, 0u, 1u, 4294967295u, 19829u, 4294967295u, 0u);

var<private> global2: vec3<f32> = vec3<f32>(491f, 745f, -671f);

var<private> global3: bool;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> vec4<f32> {
    global3 = true;
    let var_0 = global0[_wgslsmith_index_u32(20676u, 2u)];
    let var_1 = !arg_1.x || ((firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(arg_3, 1u))) > global1[_wgslsmith_index_u32(4294967295u, 26u)]) && arg_2);
    let var_2 = _wgslsmith_f_op_f32(global2.x + 417f);
    global0 = array<Struct_4, 2>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1483f, -1127f, 1000f, -1570f), vec4<f32>(global2.x, global2.x, var_2, var_0.c))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_2, 385f, 719f) - vec4<f32>(global2.x, -637f, global2.x, var_0.c))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2 + 414f))), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-var_0.c)), -980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, 347f)) + -848f))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    global0 = array<Struct_4, 2>();
    var var_0 = Struct_3(vec4<bool>(false, !any(!arg_1.a.wxw), true && select(arg_3.a != arg_2.a, arg_1.c.x, false), _wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(49476u, 4294967295u)) > ~75100u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1739f, 923f))) * global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.c)) * -1067f) - _wgslsmith_f_op_f32(round(1946f))), all(vec2<bool>(!arg_1.a.x, all(vec4<bool>(arg_1.c.x, true, true, arg_1.a.x)))))), !vec2<bool>(!all(vec2<bool>(true, false)), arg_1.c.x), Struct_2(Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_2.a, arg_2.a, -2147483647i), vec4<i32>(-67847i, -1i, 2147483647i, 2147483647i)), arg_2.b.x), abs(arg_2.b)), ~(vec2<u32>(global1[_wgslsmith_index_u32(arg_3.b, 26u)], arg_3.b) ^ countOneBits(u_input.a.yx)), arg_1.d.a, vec3<i32>(abs(_wgslsmith_mult_i32(-20048i, arg_2.a)), arg_3.a, ~(-arg_1.d.a.a)), vec3<f32>(-1058f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2311f), 993f, arg_1.c.x != true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(-arg_1.d.e.x)))), Struct_2(Struct_1(25460i, firstLeadingBit(abs(arg_2.b))), ~arg_0, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.a, 1i), vec2<i32>(4931i, 11115i)) >> ((arg_0.x & u_input.e.x) % 32u), reverseBits(arg_2.b & arg_1.e.c.b)), -(arg_1.d.d << (~vec3<u32>(14658u, 6810u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, global2.x))))));
    let var_1 = var_0.e;
    return abs(var_1.c.a << (var_1.b.x % 32u));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(!all(vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, select(true, true, false))), true, all(vec3<bool>((u_input.d ^ -1i) >= 0i, false, true && any(vec2<bool>(false, true)))), false);
    var var_1 = vec3<u32>(4294967295u, u_input.c, 1u);
    var var_2 = ~_wgslsmith_add_vec2_u32(arg_1.yz, arg_1.wx);
    global3 = any(!vec3<bool>(any(select(var_0.xy, vec2<bool>(true, var_0.x), var_0.yw)), true, any(vec4<bool>(var_0.x, true, true, false))));
    var_0 = !select(vec4<bool>(var_0.x, true, all(var_0.xwz) | all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), all(!vec3<bool>(false, var_0.x, false))), select(select(!vec4<bool>(false, var_0.x, false, false), !vec4<bool>(true, true, var_0.x, true), !vec4<bool>(var_0.x, true, true, var_0.x)), select(!vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, var_0.x, true)), true), ~min(global1[_wgslsmith_index_u32(13054u, 26u)], 0u) > (select(1096u, 4294967295u, var_0.x) | _wgslsmith_mod_u32(17145u, global1[_wgslsmith_index_u32(var_1.x, 26u)])));
    return Struct_1(i32(-1i) * -arg_3.a, -(~arg_3.b));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_4, 2>();
    var var_0 = !(!arg_0.x);
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.x, 475f, global2.x, -761f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 749f, -381f, 1553f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_0.x, vec3<bool>(true, true, arg_0.x), true, global1[_wgslsmith_index_u32(37055u, 26u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.x, arg_2.x, 1361f, -2784f), vec4<f32>(216f, 1000f, 2791f, -1839f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(910f, 395f, arg_2.x, arg_2.x) * vec4<f32>(arg_3.x, arg_3.x, global2.x, 1000f))), arg_0)), arg_0)), u_input.e, Struct_4(~18275i, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))) * _wgslsmith_f_op_f32(f32(-1f) * -1132f))), Struct_1(0i, vec2<i32>(func_3(u_input.a.xw, Struct_3(vec4<bool>(arg_0.x, true, false, arg_0.x), global2.x, vec2<bool>(arg_0.x, false), Struct_2(Struct_1(u_input.d, vec2<i32>(u_input.d, -40205i)), u_input.a.xy, Struct_1(39047i, vec2<i32>(1i, -2147483647i)), vec3<i32>(u_input.b, -26682i, u_input.d), arg_3), Struct_2(Struct_1(u_input.b, vec2<i32>(1i, u_input.d)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50630u, 26u)], 26u)], 5104u), Struct_1(-37538i, vec2<i32>(u_input.d, 1i)), vec3<i32>(u_input.d, 1i, 48085i), vec3<f32>(arg_3.x, 1360f, 194f))), Struct_1(-1i, vec2<i32>(u_input.b, -1i)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(1u, 26u)]), 2u)]), abs(~u_input.d))));
    global1 = array<u32, 26>();
    var var_2 = u_input.b;
    return func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, 808f, -248f, arg_2.x), vec4<f32>(global2.x, global2.x, 139f, global2.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1040f, arg_2.x, global2.x, -1861f)))), vec4<f32>(_wgslsmith_div_f32(global2.x, -2163f), _wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_div_f32(arg_2.x, -1452f), _wgslsmith_f_op_f32(-arg_2.x)))), vec4<f32>(1240f, global2.x, _wgslsmith_f_op_vec4_f32(func_2(any(vec3<bool>(arg_0.x, false, arg_0.x)), select(vec3<bool>(arg_0.x, false, arg_0.x), arg_0.zxz, true), true, firstTrailingBit(21101u))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - 2093f))), !(1i == -u_input.b))), u_input.a, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 2u)], func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_3.x + -705f), _wgslsmith_f_op_f32(885f - 352f), _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_mod_vec4_u32(abs(u_input.e), vec4<u32>(~arg_1.x, _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(global1[_wgslsmith_index_u32(arg_1.x, 26u)], 4294967295u, global1[_wgslsmith_index_u32(0u, 26u)])), 24905u, _wgslsmith_mod_u32(52978u, 53499u))), global0[_wgslsmith_index_u32(19924u, 2u)], var_1));
}

fn func_5(arg_0: Struct_5) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(199f, arg_0.b, global2.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-819f, arg_0.b, arg_0.b)))))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, arg_0.b, 1499f))))))));
    global0 = array<Struct_4, 2>();
    return func_4(vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), 1000f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_div_f32(arg_0.b, global2.x)))), arg_0.b, 121f), u_input.a, global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(1u, firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)])) ^ _wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.zz)), 2u)], func_1(!vec4<bool>(true, u_input.c < 49808u, all(vec4<bool>(true, false, true, false)), true), u_input.e.xyz, global2.xz, vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), 2250f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<bool>(all(vec3<bool>(true, true, true)), !(global1[_wgslsmith_index_u32(1u, 26u)] != 0u), true, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(floor(global2.x)), !vec2<bool>(false, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)))), Struct_2(func_5(Struct_5(func_1(vec4<bool>(false, true, false, false), u_input.a.yzw, global2.zy, vec3<f32>(global2.x, global2.x, global2.x)), 140f, ~u_input.d, -u_input.b)), abs(_wgslsmith_mod_vec2_u32(u_input.e.wx, ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 26u)], 26u)], 39405u))), func_1(vec4<bool>(-569f <= global2.x, true, true, 1u >= global1[_wgslsmith_index_u32(74282u, 26u)]), vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 26267u, global1[_wgslsmith_index_u32(1u, 26u)]), 26u)], 4294967295u, countOneBits(global1[_wgslsmith_index_u32(16235u, 26u)])), _wgslsmith_div_vec2_f32(global2.yy, vec2<f32>(903f, -574f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-680f, -659f, -310f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1026f, global2.x, 1034f)))), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 24543i) >> (u_input.a.xzz % vec3<u32>(32u)), vec3<i32>(-1i, -2147483647i, u_input.d) << (u_input.e.yxy % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x)), Struct_2(func_5(Struct_5(Struct_1(u_input.d, vec2<i32>(u_input.b, u_input.b)), -182f, _wgslsmith_mult_i32(u_input.b, 29461i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.b, -1i), vec3<i32>(u_input.d, 36283i, -1i)))), vec2<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)] >> (105729u % 32u)), ~select(u_input.a.x, 36233u, true)), Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-5688i, u_input.b, 2147483647i, u_input.d)), vec2<i32>(-27032i, ~1i)), vec3<i32>(u_input.b, i32(-1i) * -u_input.d, func_4(vec4<f32>(2352f, -703f, global2.x, global2.x), ~vec4<u32>(u_input.c, u_input.a.x, 45294u, 4294967295u), Struct_4(-2147483647i, 1u, global2.x), Struct_1(-18189i, vec2<i32>(-2147483647i, u_input.b))).a), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(255f - global2.x))))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(281f)), -1330f, global2.x);
    let var_1 = any(vec4<bool>(var_0.a.x, all(var_0.a), var_0.a.x, all(!(!var_0.c))));
    let var_2 = Struct_3(select(!select(var_0.a, var_0.a, false), select(!var_0.a, vec4<bool>(var_0.d.b.x != u_input.e.x, var_1, global2.x == var_0.e.e.x, all(var_0.a)), select(var_0.a.x && false, select(false, true, var_1), var_1)), var_0.a), _wgslsmith_f_op_f32(1462f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1276f * _wgslsmith_f_op_f32(round(-564f))))), select(select(select(var_0.a.ww, !var_0.a.wx, !vec2<bool>(false, var_0.a.x)), select(select(vec2<bool>(var_0.a.x, var_0.c.x), var_0.a.xy, vec2<bool>(var_0.a.x, false)), vec2<bool>(true, true), true), true || !var_1), vec2<bool>(all(var_0.a.xwx), var_0.a.x), true), var_0.e, Struct_2(var_0.e.a, var_0.e.b, Struct_1(var_0.d.c.b.x, var_0.d.a.b), vec3<i32>(var_0.e.d.x, u_input.d << (max(u_input.c, var_0.d.b.x) % 32u), 13809i), var_0.d.e));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(591f + var_2.b)))) + _wgslsmith_f_op_f32(global2.x + 639f)), _wgslsmith_f_op_f32(f32(-1f) * -730f), global2.x);
    global2 = var_0.e.e;
    let x = u_input.a;
    s_output = StorageBuffer(1i, global1[_wgslsmith_index_u32(var_2.d.b.x, 26u)], vec3<i32>(-1i) * -(~vec3<i32>(1i, u_input.b, var_0.d.a.b.x) ^ max(var_2.e.d, vec3<i32>(2147483647i, u_input.b, -47767i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, var_2.e.e.x)) * global2.x), _wgslsmith_div_f32(var_0.d.e.x, -2234f), _wgslsmith_f_op_f32(step(-469f, _wgslsmith_div_f32(-1000f, var_2.e.e.x)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1093f, var_0.b)), _wgslsmith_f_op_f32(sign(var_2.d.e.x))), global2.x, _wgslsmith_f_op_f32(sign(162f)))));
}

