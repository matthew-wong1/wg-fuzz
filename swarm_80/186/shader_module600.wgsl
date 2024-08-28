struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(28543u, false, -772f, -27215i, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: bool) -> vec4<f32> {
    var var_0 = firstTrailingBit(arg_1.zxy >> (u_input.c.wwy % vec3<u32>(32u)));
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 1u)];
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, var_1.c, var_1.c, 936f)) * vec4<f32>(var_1.c, -105f, -1000f, -315f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1283f, var_1.c, -1479f, var_1.c), vec4<f32>(var_1.c, var_1.c, -938f, var_1.c), arg_0))))))), max(abs(_wgslsmith_mod_u32(u_input.a, 38292u) | 23641u), ~(~(~46854u))), Struct_1(var_1.a, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c))))), var_0.x, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))))), select(countOneBits(vec3<u32>(var_1.a, 2896u, var_1.a)), select(~u_input.c.xww, vec3<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(47020u, 2282u, var_1.a), vec3<u32>(var_1.a, 21538u, 0u)), ~u_input.c.x), arg_0.xzz), vec3<bool>(arg_0.x, _wgslsmith_add_u32(var_1.a, 43571u) > u_input.c.x, var_1.e)));
    global0 = -2147483647i;
    let var_3 = reverseBits(~countOneBits(max(-u_input.d, countOneBits(vec2<i32>(20763i, var_1.d)))));
    return _wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(473f, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -860f), 225f) + _wgslsmith_div_vec4_f32(var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.c, var_2.c.c, var_1.c, var_2.d) * vec4<f32>(808f, -306f, var_2.a.x, var_1.c))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_1(u_input.c.x, all(!select(vec4<bool>(false, false, false, arg_0.e), vec4<bool>(true, true, arg_0.b, arg_0.e), all(vec4<bool>(arg_0.e, arg_0.b, true, arg_0.e)))), -1815f, min(arg_0.d, -18023i), true);
    let var_1 = 44136i << (firstTrailingBit(32345u) % 32u);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, true, true, true), _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, var_0.d, 2147483647i, arg_0.d) | vec4<i32>(-2147483647i, var_0.d, -1i, var_0.d), ~vec4<i32>(u_input.b, arg_0.d, -6516i, arg_0.d) >> (u_input.c % vec4<u32>(32u))), false)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~38324u, firstLeadingBit(u_input.c.x)), ~firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(2135u, 35928u, 0u)), ~u_input.c.zwx)), u_input.c.zxy), var_0, -318f, ~abs(~(~u_input.c.ywz)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_2.a.wwy)));
    var var_4 = Struct_1(9179u, ~(-var_2.c.d) <= max(_wgslsmith_div_i32(-var_2.c.d, i32(-1i) * -29313i), _wgslsmith_add_i32(abs(u_input.b), -19129i)), 485f, var_0.d, var_2.c.b);
    return vec2<bool>(var_4.e, false);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> vec3<u32> {
    var var_0 = select(vec2<bool>(!(!(arg_3.x == 195f)), true), vec2<bool>(arg_0 == ~arg_0, any(!func_2(global1[_wgslsmith_index_u32(70713u, 1u)], arg_2.x))), vec2<bool>(all(vec4<bool>(false, true, false, true)) == any(vec3<bool>(false, true, false)), all(vec2<bool>(false, all(vec2<bool>(false, false))))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 69875u, 54927u), vec3<u32>(7339u, u_input.c.x, 1u)), u_input.c.xwx)), u_input.c.x), 1u)];
    var var_2 = Struct_2(arg_2, 33190u, global1[_wgslsmith_index_u32(~(~(~(~u_input.a))), 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(var_1.e, true, false, false), vec4<i32>(0i, var_1.d, 2147483647i, arg_1.x), false)).x - _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(false, false, var_1.e, var_0.x), vec4<i32>(u_input.d.x, -9632i, 2147483647i, 17189i), var_1.e)).x)) + arg_2.x), firstTrailingBit(u_input.c.xxw));
    global1 = array<Struct_1, 1>();
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)), u_input.a, global1[_wgslsmith_index_u32(u_input.c.x, 1u)], _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.c.c, _wgslsmith_f_op_f32(round(645f))), _wgslsmith_f_op_f32(sign(var_2.a.x)))), var_2.e);
    return vec3<u32>(_wgslsmith_clamp_u32(~max(firstTrailingBit(1u), max(47464u, 1u)), ~arg_0, ~4294967295u), 89344u, 4294967295u | ~(~arg_0 >> (var_3.c.a % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = u_input.c.x;
    let var_2 = _wgslsmith_mult_i32(53567i, i32(-1i) * -29151i) ^ firstLeadingBit(_wgslsmith_sub_i32(u_input.b, abs(_wgslsmith_sub_i32(u_input.d.x, u_input.b))));
    var var_3 = u_input.b << (4038u % 32u);
    var var_4 = false;
    var_3 = -9383i;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec3_u32(func_1(0u, vec4<i32>(var_2, -11311i, 1i, 0i), vec4<f32>(1369f, 1780f, -1000f, -1166f), vec4<f32>(-1392f, -823f, -1000f, -877f)), abs(u_input.c.zwz)), firstLeadingBit(~0u)) ^ u_input.c.x, u_input.d, vec4<i32>(var_2 & ~_wgslsmith_clamp_i32(2147483647i, 1i, u_input.b), 0i, abs(-1i), u_input.b));
}

