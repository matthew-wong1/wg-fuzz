struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> vec2<f32> {
    global0 = array<Struct_2, 17>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(f32(-1f) * -701f)));
    global0 = array<Struct_2, 17>();
    var var_1 = Struct_3(var_0.a);
    let var_2 = true && arg_2;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -868f), _wgslsmith_f_op_f32(round(var_0.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -1000f))));
}

fn func_2(arg_0: u32) -> Struct_5 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3(~vec4<u32>(u_input.b.x, 0u, arg_0, 1u), u_input.a.x, true)), _wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(0u, 4294967295u, 1u, arg_0) >> (vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u) % vec4<u32>(32u)), -1i, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(172f, 174f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1065f, 948f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1088f, -1415f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, -2022f)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-314f, -3130f) + vec2<f32>(-233f, -322f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(376f, -1424f)))))));
    var var_1 = u_input.b;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1447f), vec2<f32>(-569f, var_0.x)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-229f, -1241f), vec2<f32>(-1000f, var_0.x)))))));
    let var_2 = global0[_wgslsmith_index_u32(~abs(0u), 17u)];
    global0 = array<Struct_2, 17>();
    return Struct_5(false, var_2.b.x);
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_5) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 67127u, _wgslsmith_dot_vec2_u32(abs(select(u_input.b.xy, vec2<u32>(arg_0, 23921u), true)), u_input.b.xy)), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(u_input.b), ~u_input.b), u_input.b >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), 11685u, 0u));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var var_1 = Struct_4(Struct_2(44119u, _wgslsmith_f_op_vec2_f32(sign(arg_1.ww)), var_0, _wgslsmith_f_op_f32(-func_2(8339u).b)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(arg_1.yzx, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, 755f, 2268f) - vec3<f32>(arg_2.b, arg_2.b, 1848f))), _wgslsmith_f_op_vec3_f32(max(arg_1.zyx, _wgslsmith_f_op_vec3_f32(arg_1.yxz * arg_1.yyz))))), vec4<bool>(any(vec2<bool>(arg_2.a, false)), true, func_2(_wgslsmith_sub_u32(var_0, var_0)).a, true), (vec4<u32>(4094u, 0u, 1u, arg_0) | vec4<u32>(31804u, 67667u, var_0, 92031u)) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(67722u, 7154u, u_input.b.x, arg_0)), ~vec4<u32>(1u, var_0, 32386u, arg_0), vec4<u32>(0u, 32212u, arg_0, 46803u)) % vec4<u32>(32u)), vec2<i32>(~(-22433i), max(2147483647i & u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 7934i)))), (u_input.b.x << (_wgslsmith_mod_u32(var_0 | 52040u, var_0) % 32u)) << (u_input.b.x % 32u), Struct_3(_wgslsmith_f_op_f32(select(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1109f, -1167f) + _wgslsmith_f_op_f32(abs(-443f))), 1u > select(14099u, var_0, true)))));
    var var_2 = _wgslsmith_f_op_f32(634f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return ~_wgslsmith_dot_vec4_i32(u_input.a ^ vec4<i32>(-4296i, -16053i, -2684i, _wgslsmith_mod_i32(6446i, u_input.a.x)), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-43172i, -20589i, -39612i, u_input.a.x)));
}

fn func_1() -> u32 {
    let var_0 = 13314i;
    var var_1 = ~_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -951i, i32(-1i) * -2147483647i, -u_input.a.x >> (u_input.b.x % 32u)));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var_1 = vec4<i32>(~func_4(max(~u_input.b.x, ~u_input.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1601f, -1000f, 713f, 751f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, 1259f, -989f, -415f)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)))), func_2(u_input.b.x)), countOneBits(-(~1i)), abs(var_0), -18848i);
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1116f;
    var var_1 = u_input.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-493f, -439f, -596f)))))), select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true), vec4<bool>(true, true, true, true), true)), select(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 28541u), ~vec4<u32>(55207u, u_input.b.x, u_input.b.x, u_input.b.x), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true))), vec4<u32>(_wgslsmith_mult_u32(u_input.b.x >> (4294967295u % 32u), func_1()), ~u_input.b.x, firstLeadingBit(1464u), ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), (select(0i, 2147483647i, false) >= countOneBits(-2147483647i)) || true), ~firstTrailingBit(_wgslsmith_div_vec2_i32(select(u_input.a.yw, u_input.a.ww, vec2<bool>(false, true)), -u_input.a.xw)));
    let var_3 = Struct_4(Struct_2(var_2.c.x, _wgslsmith_f_op_vec2_f32(func_3(var_2.c, u_input.a.x, true)), u_input.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - 326f)), _wgslsmith_f_op_f32(2314f * func_2(var_2.c.x).b), true))), var_2, _wgslsmith_mod_u32(~4294967295u, ~(~1u)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(-1000f * var_2.a.x)) * _wgslsmith_f_op_f32(trunc(-337f)))));
    var_1 = 21570u;
    var_0 = var_3.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a, _wgslsmith_f_op_vec2_f32(var_2.a.xz * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1310f, var_2.a.x) * _wgslsmith_f_op_vec2_f32(func_3(var_2.c, -2147483647i, var_2.b.x)))), -_wgslsmith_mult_vec4_i32(-vec4<i32>(-26523i, var_3.b.d.x, var_2.d.x, var_3.b.d.x), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xxz, u_input.a.zwz), -13377i | u_input.a.x, max(0i, 26178i), 64121i)), _wgslsmith_f_op_vec2_f32(var_2.a.xx + var_2.a.zy));
}

