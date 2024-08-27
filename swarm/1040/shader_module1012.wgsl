struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_5;

var<private> global2: vec3<i32>;

var<private> global3: i32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>) -> bool {
    let var_0 = arg_0;
    global3 = _wgslsmith_sub_i32(-1i, global2.x | abs(u_input.a));
    var var_1 = Struct_1(global2.x, select(vec4<bool>(!(arg_1.x == 1950f), !all(vec3<bool>(false, true, true)), true, true), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false)), abs(select(2036i, 1i, true)) == reverseBits(-20411i)));
    global2 = -vec3<i32>(abs(-42718i), u_input.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global2.xx, vec2<i32>(2147483647i, global2.x)), var_1.a), 26720i));
    var var_2 = var_1.b.x;
    return (3091u >= _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global1.a, var_0.a, var_0.a), ~vec3<u32>(arg_0.a, global1.a, arg_0.a)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, 1u, global1.a), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 97656u), vec3<u32>(arg_0.a, var_0.a, global1.a)), vec3<u32>(4294967295u, var_0.a, var_0.a)))) && var_1.b.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<i32> {
    let var_0 = countOneBits(~(-select(vec2<i32>(1i, -2147483647i), _wgslsmith_clamp_vec2_i32(global2.yy, global2.zx, vec2<i32>(-13387i, -45100i)), arg_0)));
    let var_1 = !any(vec2<bool>(false, func_3(Struct_5(0u), arg_2)));
    global0 = all(!select(vec3<bool>(any(vec3<bool>(true, arg_0.x, false)), all(arg_0), any(arg_0)), !select(vec3<bool>(arg_0.x, var_1, false), vec3<bool>(var_1, false, true), vec3<bool>(var_1, false, false)), var_1));
    let var_2 = ~reverseBits(_wgslsmith_clamp_i32(select(u_input.a, ~var_0.x, true), _wgslsmith_add_i32(countOneBits(2147483647i), -global2.x), -1i));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x)))));
    return vec3<i32>((firstTrailingBit(2147483647i) << (116668u % 32u)) >> (4294967295u % 32u), var_0.x, 2147483647i) | vec3<i32>(max(_wgslsmith_div_i32(arg_1.a, 0i), firstTrailingBit(_wgslsmith_mult_i32(global2.x, global2.x))), -9557i, -5986i);
}

fn func_2() -> Struct_5 {
    global0 = all(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))) | (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 26613u, global1.a), true), vec3<u32>(u_input.b.x, 1u, 4294967295u)), countOneBits(u_input.b.x & u_input.b.x)) >= 73104u);
    let var_0 = func_4(select(vec2<bool>(!any(vec2<bool>(false, true)), func_3(Struct_5(45034u), _wgslsmith_div_vec4_f32(vec4<f32>(224f, -1000f, 557f, 680f), vec4<f32>(661f, 1340f, 1308f, 683f)))), vec2<bool>(true, true), true), Struct_2(2147483647i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-1000f - -422f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-386f)) - _wgslsmith_f_op_f32(-436f + -159f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(304f - -268f)) * -592f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1549f))))));
    let var_1 = any(vec3<bool>(select(_wgslsmith_mult_u32(41651u, global1.a) == 9597u, true && func_3(Struct_5(u_input.b.x), vec4<f32>(358f, 168f, 113f, 185f)), !any(vec4<bool>(true, false, false, false))), true, true));
    global1 = Struct_5(global1.a);
    let var_2 = vec3<i32>(2147483647i, -(~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-2147483647i, global2.x, 14860i, var_0.x)), ~vec4<i32>(-4901i, -6875i, -31872i, 0i))), 24271i);
    return Struct_5(global1.a);
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    global2 = firstTrailingBit(vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-21048i, u_input.a, abs(12158i)), abs(vec3<i32>(0i, global2.x, 33801i))), 2147483647i));
    global1 = Struct_5(u_input.b.x | ~(~u_input.b.x));
    global1 = func_2();
    global3 = _wgslsmith_mult_i32(_wgslsmith_div_i32(reverseBits(global2.x), u_input.a), ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global2.x, global2.x), -2147483647i, ~global2.x ^ 1i));
    var var_0 = func_4(select(vec2<bool>(func_3(Struct_5(global1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-950f, -999f, 466f, -326f) * vec4<f32>(-317f, 1501f, -1039f, 684f))), arg_0.x), select(select(vec2<bool>(false, true), !arg_0.xx, !arg_0.xy), !arg_0.zy, func_3(Struct_5(4294967295u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 696f, 299f, -1684f), vec4<f32>(527f, 285f, -246f, -1836f), arg_0.x)))), false), Struct_2(u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, 836f, _wgslsmith_f_op_f32(min(-1026f, 461f)), -274f))).x;
    return Struct_4(_wgslsmith_f_op_f32(max(-275f, -1888f)), (_wgslsmith_mod_i32(_wgslsmith_sub_i32(-34588i, u_input.a), u_input.a) ^ global2.x) >> (22124u % 32u), firstTrailingBit(vec3<u32>(max(u_input.b.x, ~5343u), _wgslsmith_dot_vec3_u32(vec3<u32>(10302u, global1.a, global1.a) & vec3<u32>(4294967295u, 77604u, 4294967295u), ~vec3<u32>(u_input.b.x, global1.a, 0u)), ~(~1u))), Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(-global2.x, 2147483647i), global2.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), -1007f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(806f, 613f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1306f, -1907f) - _wgslsmith_f_op_f32(abs(-752f))))));
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_4) -> vec3<f32> {
    global1 = Struct_5(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 14145u, arg_1.x, 1u), vec4<u32>(arg_3.c.x, 105992u, 30516u, arg_0), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)) >> (firstLeadingBit(vec4<u32>(arg_3.c.x, 4294967295u, u_input.b.x, 12522u)) % vec4<u32>(32u)), abs(~vec4<u32>(arg_2.x, 10251u, 19562u, 67297u))));
    let var_0 = Struct_5(~9984u);
    var var_1 = global2.x;
    global0 = !(false && (((arg_3.e.x > 678f) && true) && any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)), ~u_input.a, arg_3.c, Struct_2(-arg_3.d.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e.x, -816f, arg_3.e.x, _wgslsmith_f_op_f32(floor(arg_3.a)))), arg_3.e)));
    return _wgslsmith_f_op_vec3_f32(exp2(var_2.e.yww));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2147f, -749f, 807f) - vec3<f32>(376f, 1388f, -605f)))), _wgslsmith_f_op_vec3_f32(func_5(1u, abs(vec3<u32>(0u, u_input.b.x, u_input.b.x) >> (vec3<u32>(1u, u_input.b.x, 0u) % vec3<u32>(32u))), ~vec3<u32>(10146u, 4294967295u, 62567u), func_1(vec3<bool>(false, true, false)))), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, !(2147483647i == u_input.a)))), u_input.b.x, -select(max(-vec4<i32>(-2147483647i, -11074i, -2147483647i, 0i), ~vec4<i32>(u_input.a, 43698i, u_input.a, global2.x)), _wgslsmith_add_vec4_i32(max(vec4<i32>(global2.x, -2147483647i, 0i, u_input.a), vec4<i32>(u_input.a, global2.x, 55001i, 1i)), min(vec4<i32>(global2.x, 0i, u_input.a, 63575i), vec4<i32>(u_input.a, global2.x, u_input.a, global2.x))), vec4<bool>(false, true, true, false)), u_input.b.x, vec2<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(5891i, 8988i, global2.x, u_input.a), vec4<i32>(-2147483647i, u_input.a, -2147483647i, global2.x)), 23918i), firstLeadingBit(-u_input.a)) & countOneBits(vec2<i32>(6616i, _wgslsmith_mult_i32(u_input.a, u_input.a))));
}

