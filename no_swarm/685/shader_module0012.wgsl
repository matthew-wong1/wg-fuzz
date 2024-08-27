struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(max(arg_0, 521f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(959f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(arg_0 * 1354f))) - _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1621f))));
    var_0 = vec2<f32>(-167f, _wgslsmith_f_op_f32(513f * arg_0));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -594f) + vec2<f32>(289f, -577f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -671f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_0), vec2<f32>(1292f, -789f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_0) + vec2<f32>(var_0.x, var_0.x))))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -1000f) + -827f), -675f), var_0.x));
    let var_1 = Struct_5(all(vec2<bool>(_wgslsmith_f_op_f32(abs(196f)) >= _wgslsmith_f_op_f32(floor(var_0.x)), -1963f >= _wgslsmith_f_op_f32(-839f - arg_0))), Struct_2(_wgslsmith_div_vec2_u32(select(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, u_input.a), true), vec2<u32>(u_input.a, ~u_input.a)), var_0.x));
    let var_2 = Struct_3(vec4<i32>(1i, -24723i, 0i >> (var_1.b.a.x % 32u), ~firstTrailingBit(2147483647i)) << ((_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 12962u, 4294967295u, var_1.b.a.x), ~vec4<u32>(var_1.b.a.x, 1u, var_1.b.a.x, u_input.a)) & _wgslsmith_mult_vec4_u32(vec4<u32>(21714u, u_input.a, 1u, 4294967295u) >> (vec4<u32>(var_1.b.a.x, u_input.a, 0u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(1u, u_input.a, 4294967295u, var_1.b.a.x))) % vec4<u32>(32u)), Struct_1(_wgslsmith_mod_u32(var_1.b.a.x, ~var_1.b.a.x), -34798i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(561f, arg_0))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) - var_0.x), var_1.b.b))));
    return Struct_2(firstLeadingBit(var_1.b.a), -527f);
}

fn func_1() -> Struct_2 {
    return func_2(_wgslsmith_f_op_f32(1520f - _wgslsmith_f_op_f32(abs(-1028f))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>) -> u32 {
    var var_0 = ~countOneBits(2147483647i);
    let var_1 = Struct_3(~vec4<i32>(_wgslsmith_clamp_i32(arg_0.c.b, -3261i, 2147483647i), -56615i >> (arg_0.a.x % 32u), countOneBits(arg_0.c.b), -22020i) | (_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.b, arg_0.c.b, 17679i, arg_0.c.b) >> (vec4<u32>(4294967295u, arg_0.c.a, 1u, 10641u) % vec4<u32>(32u)), reverseBits(vec4<i32>(arg_0.c.b, 2147483647i, 1i, -1i))) & ~vec4<i32>(arg_0.c.b, -1i, -2147483647i, arg_0.c.b)), arg_0.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-175f, 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-367f, 1403f))) + vec2<f32>(-609f, 1609f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2595f, 1178f))))))));
    var var_2 = arg_1.wwy;
    let var_3 = arg_0;
    var var_4 = Struct_4(func_1().a, 1u, var_3.c);
    return var_4.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = u_input.a;
    var_0 = ~1u;
    var var_2 = func_1();
    var var_3 = vec3<u32>(1u, 1u ^ _wgslsmith_dot_vec3_u32(abs(vec3<u32>(165878u, 36193u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, var_2.a.x, var_2.a.x), vec3<u32>(var_2.a.x, 1u, var_1))), ~39545u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(0u, func_3(Struct_4(vec2<u32>(var_2.a.x, var_2.a.x), 14590u, Struct_1(18288u, 13949i)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), u_input.a), min(vec3<u32>(var_1, var_1, 0u), vec3<u32>(32103u, u_input.a, ~var_2.a.x)));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(-10357i, firstLeadingBit(~0i)));
}

