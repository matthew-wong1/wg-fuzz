struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = firstTrailingBit(~_wgslsmith_div_i32(-arg_0.b, i32(-1i) * -arg_1.b));
    let var_1 = Struct_1(vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_1.d.x)))), arg_0.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 547f))))), var_0, -1309f, _wgslsmith_f_op_vec3_f32(abs(arg_1.d)), countOneBits(arg_1.e << ((vec2<u32>(arg_0.e.x, 36184u) << ((arg_0.e << (vec2<u32>(0u, arg_0.e.x) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = 5284u ^ ~var_1.e.x;
    var var_2 = arg_1.d.x;
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(~(-(-20648i ^ arg_3.x)), arg_0.b), _wgslsmith_mult_i32(arg_1.b, u_input.b), -(25018i & (_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 6576i, 0i), vec3<i32>(0i, var_0, arg_3.x)) ^ var_0)), -(~arg_3.x));
    return vec3<u32>(arg_1.e.x, _wgslsmith_clamp_u32(7227u, arg_1.e.x, 1u), ~(~(~max(arg_0.e.x, arg_1.e.x))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec3<u32> {
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>((4294967295u & _wgslsmith_clamp_u32(1u, 0u, 4294967295u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 14580u)), ~(~(~4294967295u)), ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 26686u, 4294967295u, 1u), vec4<u32>(54921u, 31908u, 39140u, 0u))), 52154u), vec4<u32>(4294967295u, abs(~1u), countOneBits(max(firstTrailingBit(11928u), ~14446u)), 0u));
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_1.b + arg_0.b)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(494f)), var_0.x, true)) - 621f);
    global0 = _wgslsmith_clamp_u32(4294967295u, ~1u, reverseBits(49348u));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + 1059f)), 202f));
    return reverseBits(vec3<u32>(183u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(1u, 0u, 0u, 4294967295u)), 0u), reverseBits(~21971u)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    global0 = abs(_wgslsmith_sub_u32(~26466u, min(1u << (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(0u, 51553u)))));
    var var_0 = ~_wgslsmith_add_vec3_u32(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-613f, -843f, -327f, -798f) - vec4<f32>(733f, 1126f, -1107f, 466f)), -6596i, 124f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(595f, -600f, -168f))), reverseBits(vec2<u32>(1u, 0u))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(112f, -114f, 1138f, 1112f))), u_input.b, -165f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(413f, 1461f, -891f), vec3<f32>(2492f, 656f, -845f))), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 50624u), vec2<u32>(81485u, 1u))), -778f, select(vec2<i32>(-1i, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(-24042i, u_input.a), vec2<i32>(u_input.b, u_input.b)), all(vec4<bool>(true, false, false, true)))), abs(~(~vec3<u32>(0u, 1u, 4294967295u))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1247f * _wgslsmith_f_op_f32(round(2030f))) - -1016f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(805f + _wgslsmith_f_op_f32(-1374f * -768f)), -245f)), -752f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-532f, 1f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1351f), -2322f))), _wgslsmith_f_op_f32(abs(1506f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1415f))))));
    var var_2 = Struct_3(Struct_2(reverseBits(reverseBits(vec3<i32>(-2147483647i, 12595i, u_input.a) ^ vec3<i32>(-1i, 63i, 25439i))), var_1.zz, !vec4<bool>(arg_0.x, select(false, false, arg_0.x), all(vec4<bool>(false, false, arg_0.x, false)), !arg_0.x)), -_wgslsmith_add_i32(2147483647i, -min(2147483647i, u_input.b)), vec3<u32>(~0u, ~(~21807u), var_0.x));
    var var_3 = !select(any(!vec3<bool>(true, false, var_2.a.c.x)), any(!vec3<bool>(var_2.a.c.x, var_2.a.c.x, true)), true);
    return Struct_3(var_2.a, -1i, func_3(var_2.a, var_2.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(all(vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), true, false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -130f))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-294f, -1126f))));
    global0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.c.xy, var_0.c.zy), ~var_0.c.x);
    global0 = _wgslsmith_sub_u32(46014u, ~firstTrailingBit(var_0.c.x));
    var var_1 = var_0.a.c.zyz;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, reverseBits(4294967295u));
}

