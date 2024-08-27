struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    var var_0 = Struct_2(arg_0.a, arg_0.a.b.wzx);
    let var_1 = _wgslsmith_f_op_f32(step(var_0.a.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, arg_0.a.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.a.x, _wgslsmith_f_op_f32(min(-126f, 902f))))), true))));
    var_0 = arg_0;
    return abs(countOneBits(reverseBits(~(~42299u))));
}

fn func_2() -> Struct_1 {
    var var_0 = countOneBits(vec3<u32>(~1u, 1u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10531u, 0u, 26129u), vec4<u32>(63961u, 4294967295u, 1u, 0u)) & func_3(Struct_2(Struct_1(vec2<f32>(-764f, 305f), vec4<u32>(17379u, 37575u, 12046u, 90915u), vec3<f32>(380f, 1026f, 419f), 1i, 1u), vec3<u32>(0u, 4294967295u, 26471u))))));
    let var_1 = Struct_5(all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), !(var_0.x < 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2149f)) * -957f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f), 603f)), select(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 92952u, 23497u), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)) >> ((vec4<u32>(65852u, var_0.x, var_0.x, var_0.x) ^ vec4<u32>(0u, 1u, var_0.x, var_0.x)) % vec4<u32>(32u)), vec4<u32>(~var_0.x, 0u, 62214u, var_0.x)), vec4<u32>(countOneBits(var_0.x) ^ var_0.x, ~var_0.x, 4294967295u, var_0.x), vec4<bool>(true, !all(vec3<bool>(false, true, true)), true, true)));
    var var_2 = Struct_5(var_1.a, _wgslsmith_div_f32(var_1.b, 948f), vec4<u32>(~0u, 0u, var_1.c.x, reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_1.c.x), var_1.c.yw), var_0.x, ~4294967295u))));
    let var_3 = Struct_5(!(990f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b, var_2.b, true)))), _wgslsmith_f_op_f32(-281f - _wgslsmith_f_op_f32(-2133f * 863f)), vec4<u32>(~var_1.c.x, 4294967295u, abs(~(~var_0.x)), var_2.c.x));
    return Struct_1(vec2<f32>(1579f, _wgslsmith_f_op_f32(-var_2.b)), firstLeadingBit(firstTrailingBit(abs(~vec4<u32>(var_0.x, 18349u, var_3.c.x, var_3.c.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(431f, 718f, var_2.b) - vec3<f32>(-1450f, -1287f, var_2.b)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.b)), _wgslsmith_f_op_f32(2226f * -138f), _wgslsmith_f_op_f32(exp2(var_2.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-245f, var_2.b, 549f), vec3<f32>(-127f, -243f, var_1.b)))), vec3<bool>(true, _wgslsmith_f_op_f32(round(636f)) >= -1037f, !(!var_2.a)))), 83318i, ~reverseBits(var_2.c.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_3, 3>();
    var var_0 = 4684i ^ _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.wxx, firstTrailingBit(vec3<i32>(u_input.c.x, 2147483647i, u_input.d))) >> (vec3<u32>(~arg_1.b.x, _wgslsmith_dot_vec3_u32(arg_1.b.xxz, arg_1.b.zwy), _wgslsmith_div_u32(arg_1.e, 4294967295u)) % vec3<u32>(32u)), max(_wgslsmith_div_vec3_i32(u_input.c.ywx, ~u_input.c.zww), -(u_input.c.xzy ^ vec3<i32>(94138i, -2147483647i, 2147483647i))));
    var var_1 = vec2<i32>(54782i << ((1u << (0u % 32u)) % 32u), _wgslsmith_mod_i32(-(~(~arg_1.d)), -arg_1.d));
    var var_2 = _wgslsmith_f_op_f32(-1098f + -3132f);
    return -arg_1.d;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool) -> u32 {
    global0 = array<Struct_3, 3>();
    let var_0 = vec3<f32>(311f, _wgslsmith_f_op_f32(585f - _wgslsmith_f_op_f32(round(arg_1))), -436f);
    var var_1 = min(-vec4<i32>(-u_input.b, min(u_input.b, -u_input.c.x), func_4(Struct_4(arg_2), func_2()), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 35094i, -2147483647i), u_input.c.wyz)), vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, ~_wgslsmith_div_i32(-69754i, 19909i), u_input.d), -17423i | countOneBits(func_4(Struct_4(true), Struct_1(vec2<f32>(arg_1, 651f), vec4<u32>(60642u, arg_0, arg_0, arg_0), var_0, u_input.c.x, arg_0))), 41319i, u_input.c.x));
    global0 = array<Struct_3, 3>();
    var var_2 = true;
    return ~arg_0 >> (~4294967295u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4916u, 1u, 92080u, 64549u), max(vec4<u32>(56647u, 1u, 55505u, 69946u), vec4<u32>(18107u, 0u, 0u, 1u))), 1f, all(vec4<bool>(false, false, true, false))) << (max(1u, 0u) % 32u), 3u)];
    var var_1 = Struct_5(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(152f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.a.x))) * _wgslsmith_f_op_f32(step(1000f, -194f))))), abs(var_0.c.a.b));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1438f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))))));
    var_0 = global0[_wgslsmith_index_u32(~(abs(var_1.c.x) | (var_1.c.x << (max(var_0.b.b.x | var_0.c.b.x, ~0u) % 32u))), 3u)];
    var var_3 = var_0.c;
    var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(select(firstLeadingBit(func_4(Struct_4(true), var_3.a)), min(var_0.a.x, ~1i), var_1.a), -11513i), _wgslsmith_sub_vec2_i32(u_input.c.xy, -vec2<i32>(1i, 2147483647i) << (vec2<u32>(var_1.c.x, ~var_0.c.b.x) % vec2<u32>(32u))), var_0.c.a.d << (_wgslsmith_dot_vec3_u32(firstTrailingBit(var_3.a.b.xyx), var_0.b.b.xzw) % 32u));
}

