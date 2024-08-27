struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: vec2<f32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(-35265i, 2147483647i)), vec4<i32>(-1i, 57505i, 1i, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec3<u32> {
    var var_0 = all(!(!global1[_wgslsmith_index_u32(4294967295u, 26u)]));
    let var_1 = u_input.b.x;
    global3 = Struct_2(global3.a, global3.b);
    let var_2 = _wgslsmith_add_i32(u_input.c.x, -2147483647i);
    var_0 = false;
    return vec3<u32>(u_input.b.x, 0u, var_1);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(Struct_1(select(!vec3<bool>(global3.a.a.x, arg_1, false), vec3<bool>(false, arg_1, false), select(global3.a.a, global3.a.a, false)), u_input.c.xz), -_wgslsmith_mult_vec4_i32(select(global3.b, global3.b, vec4<bool>(global3.a.a.x, arg_1, global3.a.a.x, false)), vec4<i32>(u_input.c.x, global3.a.b.x, u_input.c.x, global3.b.x))), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(1u, u_input.d.x, u_input.d.x), 4294967295u, 1u) ^ u_input.d, abs(vec4<u32>(u_input.d.x >> (u_input.b.x % 32u), 40309u, min(0u, u_input.b.x), 0u))));
    let var_1 = ~var_0.b;
    let var_2 = global3.b;
    let var_3 = _wgslsmith_dot_vec3_u32(~reverseBits(abs(u_input.d.wzz)), func_3());
    var var_4 = ~(~(~(~vec3<u32>(var_3, var_1, var_3))));
    return Struct_1(vec3<bool>(true, var_0.a.a.a.x, var_0.a.a.a.x), (var_0.a.b.yw | max(vec2<i32>(global3.b.x, var_0.a.b.x) << (vec2<u32>(u_input.a, 5120u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, global3.a.b.x), vec2<i32>(9663i, -1i)))) ^ firstTrailingBit(~(-u_input.c.zz)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, u_input.d.x, u_input.d.x), vec3<u32>(20523u, _wgslsmith_mod_u32(1u, arg_1.x), (~arg_1.x << (~arg_1.x % 32u)) << ((~44791u >> (_wgslsmith_dot_vec3_u32(u_input.d.yzy, u_input.b) % 32u)) % 32u)));
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-292f, global2.x, global2.x))) + vec3<f32>(global2.x, 172f, -949f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(771f, 101f, global2.x) + vec3<f32>(global2.x, global2.x, global2.x)))), !global3.a.a.x), ~_wgslsmith_div_vec4_i32(~arg_2.b, global3.b));
    let var_2 = Struct_3(vec4<u32>(~(11025u & select(1117u, arg_1.x, var_1.a.a.x)), ~(_wgslsmith_clamp_u32(27902u, u_input.b.x, arg_1.x) | (4294967295u & u_input.a)), u_input.a, ~(~(~u_input.a))), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, 844f, 369f)))), arg_2.a.a.x), firstLeadingBit(_wgslsmith_div_vec4_i32(global3.b, var_1.b)) | (~var_1.b ^ -vec4<i32>(2147483647i, -2147483647i, arg_2.b.x, global3.b.x))), 0i);
    var var_3 = 1u;
    global1 = array<vec2<bool>, 26>();
    return global3.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> Struct_3 {
    global0 = !(_wgslsmith_f_op_f32(-global2.x) < _wgslsmith_f_op_f32(f32(-1f) * -2487f));
    var var_0 = func_4(arg_3, ~select(vec2<u32>(_wgslsmith_sub_u32(arg_2, 4294967295u), arg_0.x), ~u_input.d.wz | vec2<u32>(32264u, 30144u), true), Struct_2(func_2(vec3<f32>(1944f, arg_1, 467f), true), _wgslsmith_add_vec4_i32(-select(global3.b, vec4<i32>(arg_3.x, -16812i, 1i, 0i), vec4<bool>(false, true, false, global3.a.a.x)), min(vec4<i32>(0i, global3.a.b.x, 2147483647i, -2147483647i), global3.b) ^ min(global3.b, vec4<i32>(-2147483647i, arg_3.x, 2147483647i, arg_3.x)))), _wgslsmith_sub_i32(max(-global3.b.x ^ 0i, max(u_input.c.x, 14702i) & ~u_input.c.x), -1i));
    var var_1 = var_0.a.x;
    let var_2 = !(!(!(!select(vec4<bool>(var_0.a.x, global3.a.a.x, false, false), vec4<bool>(false, var_0.a.x, var_0.a.x, false), true))));
    let var_3 = true;
    return Struct_3(~vec4<u32>(1u, _wgslsmith_mod_u32(u_input.a, 66611u), 73041u, u_input.a) << (~countOneBits(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(arg_2, 10676u, 1u, 29698u))) % vec4<u32>(32u)), Struct_2(func_4(vec3<i32>(38576i, func_2(vec3<f32>(arg_1, global2.x, global2.x), var_0.a.x).b.x, arg_3.x), arg_0, Struct_2(global3.a, global3.b), ~(-1i)), -vec4<i32>(var_0.b.x, var_0.b.x, 10281i, -global3.a.b.x)), 1i);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1704f, _wgslsmith_f_op_f32(exp2(global2.x))) * vec3<f32>(global2.x, global2.x, global2.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1855f * _wgslsmith_f_op_f32(global2.x - -1271f)) - _wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + -398f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1611f + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-1253f + var_0.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global2.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1101f, global2.x, -267f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global2.x, var_0.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, 982f), vec3<f32>(var_0.x, var_0.x, var_0.x), arg_2.b.a.a)))))))), vec3<f32>(_wgslsmith_f_op_f32(638f - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-786f, 1508f))))))));
    var var_2 = false;
    global2 = var_1.zy;
    let var_3 = arg_2.b.a.a;
    return func_1(u_input.d.zw, 819f, abs(~arg_2.a.x), _wgslsmith_add_vec3_i32(func_1(vec2<u32>(_wgslsmith_add_u32(21800u, 73312u), 122489u), _wgslsmith_f_op_f32(f32(-1f) * -736f), 1u, vec3<i32>(u_input.c.x, u_input.c.x, ~arg_2.c)).b.b.xwz, ((arg_2.b.b.zww ^ vec3<i32>(0i, arg_2.b.a.b.x, arg_1)) | global3.b.zzz) ^ arg_2.b.b.xzy)).b;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    var var_0 = global2.x;
    let var_1 = arg_0.b;
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(func_5(32222i, firstTrailingBit(-global3.b.x), Struct_3(max(arg_0.a, vec4<u32>(1u, u_input.a, arg_0.a.x, 1u)), Struct_2(Struct_1(vec3<bool>(arg_0.b.a.a.x, var_1.a.a.x, var_1.a.a.x), u_input.c.yz), vec4<i32>(1i, global3.a.b.x, global3.b.x, 0i)), countOneBits(2147483647i))).b.yzz, arg_0.b.b.wzy), ~(~vec3<i32>(-2147483647i, func_1(vec2<u32>(u_input.b.x, u_input.b.x), 384f, u_input.d.x, var_1.b.wzy).c, arg_0.b.a.b.x)));
    var var_3 = func_4(_wgslsmith_sub_vec3_i32(abs(var_1.b.xwz), vec3<i32>(_wgslsmith_mod_i32(var_1.a.b.x, _wgslsmith_mult_i32(u_input.c.x, arg_0.c)), _wgslsmith_mult_i32(global3.b.x, ~1i), _wgslsmith_sub_i32(0i, arg_0.c << (16354u % 32u)))), arg_0.a.xy, Struct_2(Struct_1(vec3<bool>(all(global3.a.a), !global3.a.a.x, false), max(vec2<i32>(20350i, 1i), firstTrailingBit(u_input.c.yz))), vec4<i32>(_wgslsmith_add_i32(-arg_0.b.b.x, func_4(global3.b.xzz, u_input.b.yy, Struct_2(Struct_1(var_1.a.a, vec2<i32>(-57131i, -2147483647i)), var_1.b), -9406i).b.x), -41959i, _wgslsmith_add_i32(u_input.c.x >> (u_input.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.b.x, u_input.c.x, arg_0.b.a.b.x), vec3<i32>(2147483647i, u_input.c.x, arg_0.c))), u_input.c.x)), _wgslsmith_mod_i32(arg_0.c, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(select(vec2<i32>(36722i, var_1.b.x), arg_0.b.b.wz, arg_0.b.a.a.x), vec2<i32>(0i, arg_0.b.b.x)), vec2<i32>(_wgslsmith_clamp_i32(arg_0.b.a.b.x, 11616i, -4704i), -arg_0.b.a.b.x))));
    var var_4 = _wgslsmith_clamp_u32(~arg_0.a.x, ~u_input.b.x, 4294967295u);
    return -458f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_6(Struct_3(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 43346u, u_input.d.x, u_input.a), vec4<u32>(20671u, 30311u, 51899u, u_input.d.x)), _wgslsmith_sub_u32(46211u, u_input.d.x), u_input.d.x, u_input.a), func_5(_wgslsmith_mod_i32(firstTrailingBit(global3.a.b.x), global3.a.b.x), -11948i, func_1(u_input.b.xx >> (u_input.d.zx % vec2<u32>(32u)), _wgslsmith_div_f32(global2.x, global2.x), 45834u, -vec3<i32>(-8659i, -38775i, 0i))), global3.b.x), !global3.a.a.x, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1073f)), -1192f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1472f, -1018f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, global2.x, global2.x)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, global2.x, -510f), vec3<f32>(-286f, global2.x, global2.x)))))))));
    let var_1 = global3.a.a;
    let var_2 = abs(vec4<u32>(abs(u_input.b.x), ~46660u, _wgslsmith_dot_vec2_u32(~u_input.d.yz, vec2<u32>(u_input.b.x, u_input.d.x)), ~(u_input.b.x << (u_input.d.x % 32u))) | countOneBits(select(vec4<u32>(37702u, u_input.a, 19492u, 0u), u_input.d, true) & abs(u_input.d)));
    var_0 = -867f;
    var var_3 = _wgslsmith_f_op_f32(-global2.x);
    var_0 = _wgslsmith_f_op_f32(-global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(trunc(1130f)), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1409f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-992f, -211f, -1000f, global2.x), vec4<f32>(1729f, global2.x, -1401f, -1320f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, 1772f, -1720f, global2.x), vec4<f32>(global2.x, global2.x, global2.x, global2.x))))))), 1704f, (~var_2 & _wgslsmith_sub_vec4_u32(~u_input.d, u_input.d)) | u_input.d);
}

