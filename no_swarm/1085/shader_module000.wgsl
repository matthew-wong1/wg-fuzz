struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-25291i, 2147483647i), vec2<i32>(23767i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(5302i, -1i), vec2<i32>(-5710i, -11426i), vec2<i32>(0i, 1641i), vec2<i32>(81726i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, 23392i), vec2<i32>(i32(-2147483648), 2147483647i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-796f, _wgslsmith_f_op_f32(f32(-1f) * -345f)));
    var var_1 = Struct_2(Struct_1(!global2.a, u_input.b.yxy, vec2<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b)), reverseBits(~_wgslsmith_clamp_vec4_i32(global2.d, global2.d, vec4<i32>(2147483647i, 0i, global2.d.x, global2.d.x))), !select(vec2<bool>(true, true), vec2<bool>(true, true), global2.c.x != u_input.a.x)), min(firstLeadingBit(global2.c.x), 51750u));
    let var_2 = -1020f;
    var_0 = _wgslsmith_f_op_f32(select(440f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-337f, 1411f) * _wgslsmith_f_op_f32(abs(var_2)))) - _wgslsmith_f_op_f32(min(var_2, -1123f))), var_1.a.b.x >= var_1.b));
    var_0 = 966f;
    return !select(global1.wz, !global2.e, !vec2<bool>(false, !global1.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<bool> {
    global2 = Struct_1(vec3<bool>(arg_0.x, any(vec4<bool>(arg_0.x, all(arg_0), arg_2.x, global2.d.x == global2.d.x)), _wgslsmith_mult_u32(arg_3.b.x, 50989u) <= u_input.b.x), ~vec3<u32>(_wgslsmith_div_u32(arg_1.x, global2.c.x), ~4294967295u, ~_wgslsmith_mult_u32(23489u, 57929u)), countOneBits(vec2<u32>(~15721u, ~arg_1.x)), global2.d, select(select(vec2<bool>(false, true), vec2<bool>(arg_0.x, arg_3.a.x && global2.a.x), select(!vec2<bool>(false, global2.e.x), vec2<bool>(false, global2.a.x), select(arg_3.e, global2.a.zy, global1.x))), vec2<bool>(true, true), all(global1.xyw)));
    var var_0 = Struct_3(Struct_2(arg_3, arg_3.c.x));
    global4 = array<vec2<i32>, 10>();
    var var_1 = !vec4<bool>(!((arg_1.x > 9301u) & true), true, var_0.a.a.e.x, !any(vec2<bool>(true, global1.x)));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(max(arg_3.d.yy, select(_wgslsmith_mod_vec2_i32(var_0.a.a.d.wz, global4[_wgslsmith_index_u32(arg_3.c.x, 10u)]), vec2<i32>(1i, global2.d.x), !global1.zx)), vec2<i32>(29485i, ~select(var_0.a.a.d.x, -2147483647i, true)), ~vec2<i32>(-26075i | var_0.a.a.d.x, i32(-1i) * -2147483647i)), min(~global4[_wgslsmith_index_u32(firstTrailingBit(1u) & (arg_3.c.x ^ var_0.a.b), 10u)], _wgslsmith_sub_vec2_i32(arg_3.d.zx, select(global2.d.yz, vec2<i32>(-36136i, -2147483647i) & vec2<i32>(var_0.a.a.d.x, var_0.a.a.d.x), var_0.a.a.a.xy))));
    return vec3<bool>(!select((arg_3.c.x | 0u) == 19952u, -1441f <= _wgslsmith_f_op_f32(trunc(-1000f)), any(select(var_1.wwy, arg_2.zxy, false))), true, arg_0.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    global1 = vec4<bool>(any(!vec4<bool>(true, arg_1, !global1.x, !global1.x)), any(global2.a), true, any(select(select(!vec3<bool>(arg_1, global1.x, false), vec3<bool>(true, true, true), global1.wzz), func_4(func_3(), min(u_input.a, u_input.b), select(vec4<bool>(true, arg_1, global1.x, false), vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(false, arg_1, arg_1, global2.e.x)), Struct_1(vec3<bool>(arg_1, false, arg_1), vec3<u32>(u_input.b.x, u_input.a.x, 4585u), u_input.a.ww, global2.d, global1.wx)), global1.wxy)));
    let var_0 = select(!vec4<bool>(false, true, _wgslsmith_div_f32(arg_0.x, arg_0.x) < _wgslsmith_f_op_f32(1789f + arg_0.x), all(select(vec2<bool>(global1.x, global1.x), global2.a.zy, vec2<bool>(false, false)))), vec4<bool>(true, true, all(vec4<bool>(true | arg_1, func_4(vec2<bool>(false, global2.e.x), vec4<u32>(30446u, 0u, 61059u, global2.b.x), vec4<bool>(global2.e.x, arg_1, false, global1.x), Struct_1(global1.xxz, global2.b, u_input.a.zw, global2.d, vec2<bool>(true, global2.e.x))).x, true, arg_1)), select(_wgslsmith_f_op_f32(sign(1110f)) == _wgslsmith_f_op_f32(step(arg_0.x, -127f)), any(vec2<bool>(true, false)), false && all(vec4<bool>(false, true, true, arg_1)))), false);
    global4 = array<vec2<i32>, 10>();
    let var_1 = _wgslsmith_sub_i32(global2.d.x, i32(-1i) * -(~(-1i)));
    global0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1, 27872i), vec3<i32>(-12275i, var_1, global2.d.x)), ~11840i, true) & ~(~global2.d.x), global2.d.x), _wgslsmith_sub_i32(abs(global2.d.x), ~global2.d.x));
    return Struct_1(vec3<bool>(func_4(!var_0.zy, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, global2.b.x, u_input.a.x, 13999u), vec4<u32>(12173u, global2.c.x, 0u, 61676u)), min(u_input.b, vec4<u32>(47971u, u_input.b.x, global2.c.x, 48523u))), vec4<bool>(!global2.a.x, global1.x, global2.e.x, true), Struct_1(!global1.zxz, max(u_input.b.wzz, vec3<u32>(1u, u_input.b.x, 0u)), vec2<u32>(0u, 1u), global2.d, select(global1.xz, var_0.xx, global1.zy))).x, all(func_4(global2.e, vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x), !vec4<bool>(arg_1, arg_1, true, false), Struct_1(var_0.ywx, global2.b, u_input.b.wz, global2.d, vec2<bool>(global1.x, global1.x)))), var_0.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(21861u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, global2.c.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.a.x, 4294967295u)), _wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_clamp_u32(u_input.a.x, 38323u, global2.b.x)), u_input.a), u_input.b.x & 60696u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 1u, global2.c.x, global2.b.x) ^ vec4<u32>(u_input.b.x, 46719u, u_input.a.x, u_input.b.x)) | u_input.b.x), ~(~vec2<u32>(u_input.a.x, 41720u)), firstLeadingBit(_wgslsmith_sub_vec4_i32(~global2.d, _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(var_1, -2147483647i, global2.d.x, 0i)), abs(vec4<i32>(-2147483647i, -11632i, -26222i, 1729i))))), global2.e);
}

fn func_1(arg_0: i32, arg_1: u32) -> f32 {
    global1 = vec4<bool>(true, any(global1.www), global1.x, false);
    global3 = arg_0;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1061f, 841f, 1205f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2116f), _wgslsmith_f_op_f32(-923f + 275f), 143f))));
    var var_1 = Struct_2(func_2(var_0.zy, false), _wgslsmith_mod_u32(arg_1 << (60303u % 32u), ~24476u));
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(~global2.d.x, 16083i), ~var_1.a.d.x | var_1.a.d.x) >> (~vec2<u32>(_wgslsmith_clamp_u32(arg_1, global2.c.x, 0u), _wgslsmith_add_u32(87561u, global2.b.x)) % vec2<u32>(32u)), ~(~(var_1.a.d.xw ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.d.x, arg_0), vec2<i32>(arg_0, -47032i)))));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1730f * -367f), _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(-668f + arg_0)) + vec4<f32>(arg_0, -942f, arg_0, _wgslsmith_f_op_f32(ceil(arg_0)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(891f, arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1165f, arg_0, -838f, -2034f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1251f, -586f) + vec4<f32>(arg_0, 256f, arg_0, arg_0)) - vec4<f32>(-1272f, arg_0, -905f, 1986f)), vec4<bool>(arg_1, any(global1.xxx), true, any(global1.wwx))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(917f, -1542f, arg_0, arg_0) - vec4<f32>(arg_0, -565f, 204f, 985f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -1018f) + vec4<f32>(1688f, arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(467f, 1004f, arg_0, arg_0) + vec4<f32>(arg_0, -953f, -2439f, arg_0)))))));
    var var_1 = !all(vec4<bool>(any(!vec2<bool>(false, global2.a.x)), true, select(!global1.x, true, func_4(vec2<bool>(true, arg_1), u_input.a, vec4<bool>(global2.e.x, true, global1.x, arg_1), Struct_1(global1.zwy, u_input.a.wzw, vec2<u32>(1u, 68129u), vec4<i32>(arg_2.x, global2.d.x, global2.d.x, 1i), global2.e)).x), global2.e.x));
    let var_2 = vec3<u32>(global2.b.x, 18112u, ~(4294967295u ^ u_input.b.x));
    let var_3 = Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(761f, 1132f), var_0.zx)), false), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(func_2(vec2<f32>(1000f, -179f), arg_1).b, global2.b), vec3<u32>(min(0u, 24891u), firstTrailingBit(u_input.a.x), u_input.b.x | 28505u))));
    let var_4 = _wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(select(-global4[_wgslsmith_index_u32(0u, 10u)], -arg_3, global1.zy), min(func_2(var_0.zw, global2.e.x).d.yx, func_2(var_0.zw, false).d.zz)), vec2<i32>(~(-arg_2.x), -2147483647i));
    return vec3<bool>(true, global1.x, !(!func_4(vec2<bool>(false, false), u_input.a, vec4<bool>(global1.x, var_3.a.a.a.x, true, false), Struct_1(vec3<bool>(arg_1, global1.x, global1.x), u_input.b.xxw, vec2<u32>(4294967295u, u_input.b.x), global2.d, global1.yw)).x != true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(func_5(_wgslsmith_f_op_f32(func_1(global2.d.x, ~4294967295u)), 1u >= global2.c.x, countOneBits(reverseBits(global4[_wgslsmith_index_u32(47542u, 10u)])), global2.d.yz), select(vec3<u32>(global2.b.x, global2.b.x, 4294967295u), ~global2.b, !vec3<bool>(false, global2.e.x, true)) | vec3<u32>(~global2.b.x, 0u, _wgslsmith_mult_u32(86067u, u_input.a.x)), vec2<u32>(~_wgslsmith_mod_u32(global2.c.x, global2.b.x), _wgslsmith_dot_vec2_u32(~global2.b.xy, vec2<u32>(global2.c.x, u_input.a.x))), min(~firstTrailingBit(vec4<i32>(-2147483647i, global2.d.x, global2.d.x, global2.d.x)), vec4<i32>(-global2.d.x, _wgslsmith_sub_i32(global2.d.x, global2.d.x), global2.d.x, global2.d.x & global2.d.x)), vec2<bool>(true, global2.a.x)), countOneBits(u_input.b.x) & global2.b.x);
    var var_1 = Struct_1(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(661f - 229f)), var_0.a.e.x, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~0u), ~1u), 10u)], global4[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-698f, -219f))), true).b.x, 10u)]), max(global2.b, _wgslsmith_mult_vec3_u32(u_input.a.xwz, select(vec3<u32>(global2.c.x, u_input.a.x, var_0.b), var_0.a.b, false))), max(firstTrailingBit(_wgslsmith_mult_vec2_u32(~global2.b.xx, ~vec2<u32>(39989u, 62864u))), global2.b.yx), _wgslsmith_add_vec4_i32(global2.d, ~(~vec4<i32>(-51612i, -1i, 27796i, -1i))), global2.a.yx);
    global3 = ~func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-345f, 1000f), vec2<f32>(1000f, -995f)) + vec2<f32>(-320f, -446f)))), global1.x).d.x;
    let var_2 = vec3<i32>(abs(-2667i), -reverseBits(-1i), -39499i << (select(global2.c.x << (_wgslsmith_clamp_u32(10463u, u_input.b.x, 0u) % 32u), 0u, true) % 32u));
    var var_3 = Struct_1(!select(select(!vec3<bool>(var_0.a.e.x, var_0.a.e.x, true), vec3<bool>(true, true, true), false), var_1.a, global1.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(~(~u_input.a.x), u_input.a.x, abs(var_0.a.b.x)), func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(-1907f, 783f))), all(select(vec4<bool>(false, global2.e.x, false, global1.x), vec4<bool>(global2.e.x, false, var_0.a.a.x, var_1.e.x), vec4<bool>(var_0.a.a.x, true, true, var_0.a.e.x)))).b, ~var_0.a.b), (vec2<u32>(_wgslsmith_div_u32(1u, global2.c.x), 4294967295u) | ~(~vec2<u32>(100934u, var_1.c.x))) << (var_1.b.yz % vec2<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i >> (1u % 32u), ~var_2.x, 2147483647i >> (u_input.a.x % 32u), 16763i), global2.e);
    let var_4 = Struct_4(var_0.a.d, select(!vec4<bool>(select(global2.a.x, var_3.e.x, false), global2.e.x, true, global2.e.x | false), select(select(select(vec4<bool>(global1.x, true, var_0.a.e.x, false), vec4<bool>(var_1.e.x, var_0.a.a.x, false, true), true), !vec4<bool>(global1.x, true, true, var_1.a.x), true), vec4<bool>(global2.e.x, !global2.e.x, global2.a.x, true), select(vec4<bool>(false, var_3.e.x, false, false), vec4<bool>(var_3.a.x, true, global2.e.x, true), true)), vec4<bool>(!(!var_0.a.e.x), true, 1u >= (0u | var_3.c.x), true)), Struct_2(Struct_1(!func_5(-263f, true, global2.d.yx, var_1.d.yy), vec3<u32>(var_0.a.b.x, _wgslsmith_mod_u32(0u, global2.b.x), 16785u << (1u % 32u)), vec2<u32>(var_3.b.x, 1u), firstTrailingBit(min(vec4<i32>(0i, 0i, -42584i, var_3.d.x), var_3.d)), !(!var_0.a.a.yx)), u_input.b.x), Struct_1(select(global2.a, global2.a, !(true || global2.e.x)), var_0.a.b, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(var_3.c.x, 34035u), reverseBits(4294967295u)), ~(~global2.c.x)), countOneBits(-reverseBits(global2.d)), global1.zw), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1249f)) * _wgslsmith_f_op_f32(sign(-1234f))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1151f * 1416f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, var_4.e.x, max(~vec3<u32>(1u, u_input.b.x, max(var_1.c.x, global2.c.x)), func_2(vec2<f32>(326f, 1000f), -455f < var_4.e.x).b & _wgslsmith_mod_vec3_u32(~var_4.c.a.b, ~var_0.a.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.e.x, 782f, var_4.e.x), _wgslsmith_f_op_vec3_f32(-var_4.e), var_4.d.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(341f, -1219f, -535f) * vec3<f32>(1000f, -115f, 165f)), _wgslsmith_f_op_vec3_f32(var_4.e * vec3<f32>(var_4.e.x, var_4.e.x, 503f)), global1.x)))));
}

