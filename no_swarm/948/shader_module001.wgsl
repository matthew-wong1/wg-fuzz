struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: u32,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: array<i32, 21>;

var<private> global2: array<f32, 12> = array<f32, 12>(412f, 1820f, 668f, 207f, 2345f, -1734f, 1176f, 1453f, 856f, 372f, 1112f, 603f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global0 = array<vec4<bool>, 26>();
    var var_0 = vec4<bool>(true, true, (0i >= -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.c.x), u_input.c.wxx), 21u)]) && false, true);
    global0 = array<vec4<bool>, 26>();
    let var_1 = Struct_3(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_sub_i32(-(global1[_wgslsmith_index_u32(u_input.a, 21u)] << (u_input.a % 32u)), _wgslsmith_add_i32(-2147483647i >> (1u % 32u), global1[_wgslsmith_index_u32(u_input.c.x, 21u)]))), vec4<u32>(u_input.c.x, ~_wgslsmith_div_u32(0u, abs(u_input.a)), 4294967295u, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 12u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2070f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1164f), ~vec2<u32>(abs(u_input.c.x), u_input.c.x | 15367u), select(vec2<bool>(var_0.x, any(vec2<bool>(var_0.x, var_0.x))), !var_0.yy, vec2<bool>(true, var_0.x)), var_0.zw, -vec3<i32>(_wgslsmith_add_i32(u_input.b.x, -9965i), _wgslsmith_div_i32(2147483647i, 6628i), -11627i)), Struct_2(any(select(var_0.zyx, select(vec3<bool>(true, true, var_0.x), var_0.yzx, vec3<bool>(false, var_0.x, true)), var_0.wxz)), Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(13478u, 4476u), 12u)] + _wgslsmith_f_op_f32(abs(1630f))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(4294967295u, 1u)), ~1u), select(vec2<bool>(var_0.x, var_0.x), var_0.yy, all(var_0.wy)), select(var_0.zy, !var_0.zw, var_0.yz), -select(vec3<i32>(1i, u_input.b.x, 1i), vec3<i32>(-1i, -2147483647i, u_input.b.x), true)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 12u)]))), max(_wgslsmith_sub_vec2_u32(vec2<u32>(65615u, u_input.a), u_input.c.yx), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c.x), vec2<u32>(13432u, u_input.a))), vec2<bool>(select(var_0.x, var_0.x, false), !var_0.x), select(select(vec2<bool>(var_0.x, var_0.x), var_0.xz, false), !var_0.wx, !vec2<bool>(var_0.x, var_0.x)), -vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], -25385i, u_input.b.x))));
    var var_2 = var_1.e;
    return var_0.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2) -> Struct_4 {
    var var_0 = !any(vec4<bool>(_wgslsmith_f_op_f32(trunc(1258f)) >= -1138f, any(vec3<bool>(true, true, true)), global2[_wgslsmith_index_u32(6555u >> (0u % 32u), 12u)] > _wgslsmith_f_op_f32(floor(199f)), false));
    var var_1 = Struct_1(-1021f, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.c.b.x, u_input.c.x), min(_wgslsmith_clamp_vec2_u32(u_input.c.xw, arg_2.c.b, _wgslsmith_mult_vec2_u32(vec2<u32>(1463u, arg_1), vec2<u32>(arg_0.x, 1u))), vec2<u32>(44010u, ~15685u)), reverseBits(vec2<u32>(arg_1, 1u))), select(vec2<bool>(!(!arg_2.b.c.x), true), vec2<bool>(any(vec3<bool>(arg_2.a, arg_2.c.d.x, true)), func_3()), arg_2.c.d), !vec2<bool>(!(arg_2.a & true), all(select(vec2<bool>(arg_2.a, arg_2.c.d.x), arg_2.c.c, arg_2.a))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(101089u, 21u)], -73080i) ^ u_input.b.x, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_2.b.b.x, arg_1), 21u)]), _wgslsmith_dot_vec3_i32(arg_2.c.e, -arg_2.b.e) >> (9658u % 32u), arg_2.c.e.x));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1, 12u)])));
    return Struct_4(~(~(~u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.c.a)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(554f, 1000f, var_1.d.x))))))), u_input.c.x, Struct_3(2147483647i, ~firstLeadingBit(u_input.c >> (vec4<u32>(36706u, var_1.b.x, u_input.c.x, var_1.b.x) % vec4<u32>(32u))), -1000f, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-836f, global2[_wgslsmith_index_u32(1u, 12u)]))), arg_0.xz, var_1.c, select(vec2<bool>(arg_2.c.c.x, true), vec2<bool>(true, true), arg_2.b.d), select(vec3<i32>(1i, var_1.e.x, u_input.b.x) | var_1.e, ~arg_2.c.e, select(vec3<bool>(false, true, true), vec3<bool>(arg_2.a, var_1.c.x, var_1.d.x), false))), Struct_2(var_1.d.x, Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, arg_0.x), 12u)], var_1.b >> (arg_0.xy % vec2<u32>(32u)), !arg_2.c.d, !var_1.d, vec3<i32>(global1[_wgslsmith_index_u32(arg_1, 21u)], arg_2.b.e.x, u_input.b.x)), Struct_1(arg_2.b.a, arg_2.b.b, select(var_1.c, arg_2.b.c, arg_2.a), arg_2.c.d, arg_2.c.e))), ~4294967295u);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_5, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.e.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-888f, 1635f)))), _wgslsmith_f_op_f32(ceil(-110f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(571f))) * global2[_wgslsmith_index_u32(~arg_1.e, 12u)])));
    let var_1 = _wgslsmith_f_op_f32(-904f + func_2(~select(_wgslsmith_sub_vec3_u32(arg_1.d.b.xww, arg_1.d.b.wwy), ~u_input.c.xwy, select(arg_2.e.yzw, arg_0, arg_2.e.wxz)), abs(arg_2.b.b.x), func_2(vec3<u32>(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_clamp_u32(u_input.c.x, arg_1.e, 41914u), ~arg_2.b.b.x), firstLeadingBit(0u), Struct_2(!arg_1.d.d.d.x, Struct_1(-825f, arg_1.d.d.b, arg_2.e.zy, vec2<bool>(true, arg_1.d.d.d.x), vec3<i32>(arg_2.b.e.x, arg_3, arg_2.a.e.x)), func_2(u_input.c.xyz, 29188u, Struct_2(true, Struct_1(var_0.x, vec2<u32>(u_input.a, 4294967295u), vec2<bool>(true, false), vec2<bool>(arg_1.d.d.d.x, arg_0.x), vec3<i32>(-15063i, arg_3, 1i)), Struct_1(arg_2.b.a, u_input.c.zx, vec2<bool>(arg_0.x, false), vec2<bool>(true, false), vec3<i32>(-17165i, arg_3, -1i)))).d.d)).d.e).d.d.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(-1389f, 1498f)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.d.b.wxx, arg_1.d.b.xwx), vec3<u32>(arg_1.e, arg_2.b.b.x, 0u) | vec3<u32>(arg_1.d.e.c.b.x, u_input.a, 110u)), arg_1.d.b.zxz), 4294967295u), select(select(vec2<bool>(false | arg_0.x, true), vec2<bool>(true, false), any(!arg_2.e)), !(!func_2(vec3<u32>(arg_1.e, arg_2.a.b.x, 45788u), 0u, arg_1.d.e).d.e.c.c), !(!arg_0.x) && true), select(func_2(vec3<u32>(_wgslsmith_mod_u32(0u, 85511u), 41450u, arg_1.c), arg_1.e, arg_1.d.e).d.d.d, vec2<bool>(!(43938u <= u_input.c.x), arg_2.e.x), all(!select(vec4<bool>(arg_2.e.x, arg_2.b.d.x, arg_1.d.e.b.c.x, arg_0.x), vec4<bool>(arg_2.b.d.x, false, true, arg_1.d.d.c.x), vec4<bool>(arg_1.d.d.d.x, arg_0.x, false, arg_2.e.x)))), ~vec3<i32>(~arg_2.c.x & abs(u_input.b.x), ~u_input.b.x, -2147483647i >> ((u_input.c.x | 7036u) % 32u)));
    global1 = array<i32, 21>();
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b, arg_1.b)))))));
    return _wgslsmith_sub_u32(4294967295u, firstLeadingBit(select(_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_mod_u32(var_2.b.x, select(106785u, 54727u, arg_0.x)), all(!arg_0))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.c.x, 12u)]));
    global0 = array<vec4<bool>, 26>();
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(16716u, func_4(vec3<bool>(true, true, true), func_2(_wgslsmith_sub_vec3_u32(u_input.c.xyz, u_input.c.zyz), ~u_input.a, Struct_2(true, Struct_1(global2[_wgslsmith_index_u32(2591u, 12u)], u_input.c.xy, vec2<bool>(true, false), vec2<bool>(true, false), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], 29999i, -6412i)), Struct_1(1505f, u_input.c.yw, vec2<bool>(true, true), vec2<bool>(true, false), vec3<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 21u)], 1645i)))), Struct_5(Struct_1(-361f, u_input.c.yy, vec2<bool>(true, true), vec2<bool>(false, true), vec3<i32>(u_input.b.x, u_input.b.x, 1i)), Struct_1(-1054f, vec2<u32>(u_input.c.x, u_input.a), vec2<bool>(false, false), vec2<bool>(false, false), vec3<i32>(-1i, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.b.x, 0i, u_input.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(-310f, global2[_wgslsmith_index_u32(28616u, 12u)]), vec2<f32>(572f, 972f)), vec4<bool>(true, true, true, true)), ~_wgslsmith_add_i32(0i, u_input.b.x))), u_input.a);
    let var_2 = vec4<f32>(-221f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1065f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 12u)] * global2[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a, 12u)])))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 12u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1086f) - global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(u_input.c.xyy, u_input.c.x, Struct_2(true, Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], vec2<u32>(u_input.c.x, var_1.x), vec2<bool>(true, true), vec2<bool>(true, false), vec3<i32>(-4128i, -8538i, global1[_wgslsmith_index_u32(var_1.x, 21u)])), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 12u)], vec2<u32>(1u, var_1.x), vec2<bool>(true, false), vec2<bool>(false, false), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))).e, 1u), 12u)]))), global2[_wgslsmith_index_u32(~var_1.x, 12u)]);
    let var_3 = func_2(vec3<u32>(1u, select(1u, abs(var_1.x), any(vec3<bool>(true, false, true))), u_input.a), ~(92402u >> (select(4294967295u, 35285u >> (var_1.x % 32u), true) % 32u)), func_2(vec3<u32>(_wgslsmith_add_u32(4294967295u, var_1.x ^ 0u), ~var_1.x, var_1.x), var_1.x, func_2(_wgslsmith_clamp_vec3_u32(u_input.c.yyw, ~u_input.c.wxz, vec3<u32>(u_input.a, 47632u, 1u)), _wgslsmith_dot_vec2_u32(var_1 & u_input.c.zx, abs(var_1)), Struct_2(select(false, true, true), func_2(u_input.c.xzx, 68190u, Struct_2(false, Struct_1(1044f, u_input.c.yz, vec2<bool>(false, true), vec2<bool>(true, true), vec3<i32>(-48828i, u_input.b.x, -18678i)), Struct_1(var_2.x, u_input.c.yz, vec2<bool>(false, false), vec2<bool>(true, false), vec3<i32>(-56707i, global1[_wgslsmith_index_u32(var_1.x, 21u)], u_input.b.x)))).d.d, func_2(u_input.c.xxy, var_1.x, Struct_2(true, Struct_1(1332f, u_input.c.yy, vec2<bool>(true, true), vec2<bool>(true, true), vec3<i32>(u_input.b.x, -1i, global1[_wgslsmith_index_u32(var_1.x, 21u)])), Struct_1(global2[_wgslsmith_index_u32(0u, 12u)], vec2<u32>(var_1.x, 6494u), vec2<bool>(false, true), vec2<bool>(true, true), vec3<i32>(1i, global1[_wgslsmith_index_u32(21418u, 21u)], -185i)))).d.d)).d.e).d.e).d.e.b.d;
    return _wgslsmith_dot_vec2_i32(-(-u_input.b | u_input.b), vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a, 21u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 26>();
    global0 = array<vec4<bool>, 26>();
    var var_0 = u_input.b.x != -_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(99346u, 21u)]), _wgslsmith_mult_i32(-1i, global1[_wgslsmith_index_u32(1u, 21u)])), -31289i);
    let var_1 = vec3<bool>(any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))), func_1() <= -1i, true);
    global1 = array<i32, 21>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-658f, _wgslsmith_f_op_f32(trunc(-454f)), _wgslsmith_div_f32(func_2(u_input.c.zxy, 1u, Struct_2(var_1.x, Struct_1(-1197f, u_input.c.zy, vec2<bool>(var_1.x, false), var_1.yy, vec3<i32>(-25478i, u_input.b.x, 1i)), Struct_1(-574f, u_input.c.xy, var_1.zz, vec2<bool>(true, var_1.x), vec3<i32>(21360i, u_input.b.x, 58702i)))).d.c, -245f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, global2[_wgslsmith_index_u32(44601u, 12u)], global2[_wgslsmith_index_u32(2974u, 12u)]))))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1403f)))), 824f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -277f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zzw, ~59149u, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(34736u, 21u)], -1i)), ~(~u_input.b)), max(~select(min(u_input.c, u_input.c), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.c.x), select(vec4<bool>(true, var_1.x, false, var_1.x), global0[_wgslsmith_index_u32(u_input.a, 26u)], var_1.x)), u_input.c), abs(_wgslsmith_mult_i32(i32(-1i) * -38806i, u_input.b.x)) >> (u_input.a % 32u));
}

