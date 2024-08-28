struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 16>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(213f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(521f + 1388f), _wgslsmith_f_op_f32(abs(784f)))), 1738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2936f)) * 1f)), _wgslsmith_div_f32(-1953f, _wgslsmith_f_op_f32(f32(-1f) * -1688f))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_0.wzy, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * var_0.xyx))), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.zwy + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-871f, var_0.x, 404f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.x, -1073f, -804f))))))));
    let var_2 = ~_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(global0.a.x, ~_wgslsmith_mod_u32(0u, u_input.a.x)));
    let var_3 = 0i;
    return firstLeadingBit(_wgslsmith_add_vec3_u32(abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global0.b.x, global0.b.x), u_input.a)), ~vec3<u32>(firstTrailingBit(27655u), select(4294967295u, 1u, true), var_2)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a, ~vec3<u32>(global0.a.x, arg_0.x, global0.b.x)), _wgslsmith_clamp_vec3_u32(arg_0.yyw, func_3(), u_input.a ^ vec3<u32>(global0.a.x, global0.b.x, 7207u)) << (vec3<u32>(abs(46587u), ~4294967295u, arg_0.x) % vec3<u32>(32u))), vec3<u32>(reverseBits(1u), abs(u_input.a.x) & global0.a.x, 1u));
    global1 = array<i32, 16>();
    let var_1 = any(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, true, true), any(vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))) || !all(vec4<bool>(false, any(vec4<bool>(false, true, false, false)), true, true));
    global1 = array<i32, 16>();
    return Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(573f)))), -1406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f + 1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f - 128f))), -780f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = arg_2;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 16u)] != _wgslsmith_sub_i32(reverseBits(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(12135u, arg_1.x), 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(firstTrailingBit(1u), 16u)])), 2147483647i);
    global1 = array<i32, 16>();
    let var_3 = !select(select(!(!vec4<bool>(true, var_0.a, true, var_2)), !select(vec4<bool>(var_2, arg_0.a, arg_0.a, true), vec4<bool>(true, var_2, false, true), vec4<bool>(false, var_0.a, false, var_0.a)), all(vec3<bool>(false, var_0.a, var_2)) & !var_0.a), select(!vec4<bool>(arg_0.a, true, var_0.a, arg_0.a), !(!vec4<bool>(var_2, var_2, false, true)), false), select(!vec4<bool>(var_2, false, true, arg_0.a), vec4<bool>(true, global1[_wgslsmith_index_u32(30138u, 16u)] <= global1[_wgslsmith_index_u32(1737u, 16u)], arg_0.a, arg_0.a), false));
    return Struct_3(vec4<bool>(var_2, true, (global0.b.x ^ u_input.a.x) < 42084u, (arg_1.x << (~arg_1.x % 32u)) != (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1.x, 4294967295u, global0.b.x)) | global0.b.x)), i32(-1i) * -global1[_wgslsmith_index_u32(min(~u_input.a.x, _wgslsmith_mod_u32(global0.b.x, 4294967295u)), 16u)], func_2(~(~vec4<u32>(global0.b.x, 0u, arg_1.x, 3892u))), all(var_3.ww), Struct_2(~(~u_input.a.zz), ~vec2<u32>(19194u, ~4294967295u)));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = arg_0;
    var var_1 = func_4(func_2(~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(46258u, 20534u, 1u, arg_0), vec4<u32>(global0.b.x, u_input.a.x, u_input.a.x, 30276u)))), _wgslsmith_add_vec2_u32(abs(~global0.a), func_3().zy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-848f, 1387f, 1168f))))), vec2<f32>(func_2(max(reverseBits(vec4<u32>(4448u, var_0, u_input.a.x, u_input.a.x)), vec4<u32>(23098u, 34728u, var_0, 0u) ^ vec4<u32>(var_0, u_input.a.x, 47717u, 1u))).b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(vec4<u32>(0u, 4294967295u, var_0, 0u)).b.x), _wgslsmith_f_op_f32(min(1103f, _wgslsmith_f_op_f32(-603f + 1146f)))))));
    let var_2 = func_4(func_4(Struct_1(any(func_4(Struct_1(var_1.d, var_1.c.b), global0.a, vec3<f32>(var_1.c.b.x, 534f, -647f), var_1.c.b.zy).a), vec4<f32>(_wgslsmith_f_op_f32(124f + var_1.c.b.x), 2419f, _wgslsmith_div_f32(var_1.c.b.x, 207f), _wgslsmith_f_op_f32(-var_1.c.b.x))), global0.b, var_1.c.b.yyz, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.c.b.yz), var_1.c.b.zz, select(var_1.a.zy, var_1.a.yy, var_1.a.wz)))))).c, _wgslsmith_mod_vec2_u32(~var_1.e.a, u_input.a.xy & ~vec2<u32>(1u, global0.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(vec4<u32>(arg_0, u_input.a.x, 33826u, var_1.e.b.x)).b.x, var_1.c.b.x, _wgslsmith_f_op_f32(1000f + 206f))), _wgslsmith_f_op_vec3_f32(var_1.c.b.yxy - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_1.c.b.zxz - vec3<f32>(-304f, 592f, 313f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, _wgslsmith_f_op_f32(-702f + var_1.c.b.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.c.b.yx, var_1.c.b.yx))))).e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b.x) * _wgslsmith_f_op_f32(-func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(4972u, 1u, var_1.e.a.x, 0u) | vec4<u32>(1u, global0.a.x, global0.b.x, arg_0), vec4<u32>(var_2.a.x, var_1.e.a.x, 15673u, 21187u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.x, var_2.a.x, global0.a.x, 12589u), vec4<u32>(4383u, var_2.b.x, arg_0, var_1.e.b.x)))).b.x));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> bool {
    let var_0 = 10073i;
    global0 = Struct_2(func_4(func_4(Struct_1(-34004i <= arg_2, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_1.x, arg_1.x), arg_1)), max(~u_input.a.yx, u_input.a.yz | global0.a), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, 1627f, -1458f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-563f, -470f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1421f, 821f), vec2<f32>(644f, arg_0), vec2<bool>(false, false))))).c, vec2<u32>(0u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, -1000f), arg_1.ywy, true)), vec3<f32>(-316f, arg_0, -734f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.yw), _wgslsmith_div_vec2_f32(arg_1.xx, arg_1.wz))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 318f)))).e.a, global0.b);
    let var_1 = func_4(func_4(func_2(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, global0.a.x, global0.b.x) | vec4<u32>(1u, 27852u, 10154u, 1u), vec4<u32>(global0.a.x, global0.a.x, 10467u, 4294967295u))), ~select(vec2<u32>(global0.a.x, u_input.a.x), ~vec2<u32>(u_input.a.x, global0.b.x), true), _wgslsmith_f_op_vec3_f32(sign(arg_1.yzw)), vec2<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(401f, arg_0, true)), -494f))).c, func_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(select(arg_1, vec4<f32>(arg_1.x, arg_1.x, arg_0, arg_0), all(vec4<bool>(true, true, true, false))))), _wgslsmith_mult_vec2_u32(~u_input.a.xy, ~abs(vec2<u32>(u_input.a.x, 1u))), arg_1.wzz, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1030f, -996f)))).e.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.yxx, arg_1.yyz))))), arg_1.yz);
    var var_2 = var_1;
    var var_3 = Struct_3(vec4<bool>(any(!select(var_1.a, vec4<bool>(false, var_2.d, var_1.d, true), vec4<bool>(var_1.a.x, false, true, true))), !var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(floor(var_1.c.b.x))) > 1081f, !(!func_2(vec4<u32>(global0.b.x, 110567u, 13284u, var_1.e.b.x)).a)), 1i, var_1.c, false, func_4(func_4(var_2.c, ~vec2<u32>(var_2.e.a.x, 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(649f, arg_0, -1015f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -1169f) * vec2<f32>(-673f, -252f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1026f, arg_0) * arg_1.xy))).c, u_input.a.yz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1411f, -1326f, var_2.c.b.x)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, var_2.c.b.x, arg_1.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -407f)), _wgslsmith_f_op_vec2_f32(var_1.c.b.xy * vec2<f32>(774f, -2107f)))))).e);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_5(_wgslsmith_f_op_f32(func_1(9912u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, 182f, _wgslsmith_f_op_f32(abs(535f)), 736f)), 43397i), true, false);
    var var_1 = -589f;
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 24469u), _wgslsmith_sub_vec2_u32(func_4(func_4(Struct_1(false, vec4<f32>(-912f, -1081f, 1000f, 146f)), vec2<u32>(global0.a.x, 5046u), vec3<f32>(409f, -1117f, 1371f), vec2<f32>(-1930f, -669f)).c, ~vec2<u32>(global0.a.x, 38912u), vec3<f32>(109f, 266f, 539f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-362f, -533f) - vec2<f32>(-314f, 641f))).e.b, global0.b & reverseBits(vec2<u32>(4294967295u, 29124u)))), 16u)];
    var var_3 = Struct_1(true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_4(Struct_1(true, vec4<f32>(-810f, -1137f, -256f, 844f)), vec2<u32>(u_input.a.x, global0.a.x), vec3<f32>(-608f, -1240f, 131f), vec2<f32>(602f, -1363f)).c.b) * vec4<f32>(_wgslsmith_f_op_f32(sign(928f)), _wgslsmith_div_f32(1563f, 637f), -268f, _wgslsmith_f_op_f32(-432f - 369f))))));
    var_0 = var_3.a;
    var_0 = var_3.a;
    global0 = Struct_2(max(~(~global0.a) << (~vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)), u_input.a.xx), ~u_input.a.xy);
    let var_4 = abs(min(-(~vec4<i32>(24746i, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global0.a.x, 16u)], 0i)), ~abs(vec4<i32>(-2147483647i, 35825i, 9213i, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, var_4.wy, _wgslsmith_dot_vec4_u32(firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global0.a.x, global0.b.x), vec4<u32>(u_input.a.x, 47502u, 4294967295u, 46730u))), abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.b.x, u_input.a.x, global0.b.x), vec4<u32>(65569u, 13325u, 6097u, global0.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 17057u, u_input.a.x, 22541u), firstTrailingBit(vec4<u32>(13693u, 48599u, 45484u, u_input.a.x))))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_4.x, min(global1[_wgslsmith_index_u32(global0.a.x, 16u)], var_4.x)), var_4.x, global1[_wgslsmith_index_u32(~(~4294967295u), 16u)], max(20420i, -54302i)), var_4), reverseBits(~vec3<u32>(global0.b.x, ~5888u, 3844u | u_input.a.x)));
}

