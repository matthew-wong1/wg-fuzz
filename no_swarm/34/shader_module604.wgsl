struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_3,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec3<f32>(-573f, 549f, 1325f)));

var<private> global1: vec3<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_4(firstLeadingBit(~reverseBits(-u_input.a)), -745f, Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -292f, arg_1.a.x) - arg_1.a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<f32>(arg_1.a.x, 1556f, arg_1.a.x))))), arg_1.a)), !select(!(!vec2<bool>(false, arg_2.x)), !(!arg_2.xx), arg_2.x), Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(232f - -1000f), _wgslsmith_f_op_f32(abs(-1120f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.a, vec3<f32>(arg_1.a.x, 311f, 651f), vec3<bool>(arg_2.x, arg_2.x, false)))), arg_2.xyx))));
    var var_1 = global0[_wgslsmith_index_u32(62521u | u_input.b.x, 1u)];
    let var_2 = 37338u;
    let var_3 = arg_1.a.x;
    global0 = array<Struct_3, 1>();
    return _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(4294967295u, u_input.b.x), u_input.b.x, 1u));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec4<bool>) -> u32 {
    let var_0 = ~_wgslsmith_sub_i32(-13850i, 1i);
    var var_1 = ~1u;
    var var_2 = ~39379u << (abs(firstTrailingBit(u_input.b.x)) % 32u);
    var var_3 = arg_1;
    return ~((u_input.b.x | ~select(1u, 17339u, false)) ^ ~9184u);
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = u_input.a.xyy;
    var var_1 = Struct_1(countOneBits(vec4<u32>(u_input.b.x, ~1u, func_3(func_2(u_input.a.xzz, arg_1, vec4<bool>(true, false, true, true)), Struct_4(u_input.a, arg_0, global0[_wgslsmith_index_u32(1391u, 1u)], vec2<bool>(false, false), arg_1), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(8903u, u_input.b.x)), u_input.b))), vec3<bool>((u_input.b.x > _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) & false, !select(global1.x <= var_0.x, true, 4294967295u == u_input.b.x), true), vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1240f, _wgslsmith_f_op_f32(-443f - arg_0))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, 1745f)), _wgslsmith_f_op_f32(min(-653f, -631f))), _wgslsmith_div_f32(arg_0, arg_0))));
    let var_2 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(650f, 534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)))));
    global0 = array<Struct_3, 1>();
    var_1 = Struct_1(var_1.a, !var_1.b, var_1.c);
    return select(!(!select(!vec2<bool>(false, var_1.b.x), var_1.b.xz, var_1.b.x)), !(!vec2<bool>(var_1.b.x, var_1.b.x)), !var_1.b.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = ~abs(vec3<u32>(0u ^ u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 30667u) ^ ((vec3<u32>(4294967295u, 63567u, u_input.b.x) ^ vec3<u32>(5731u, u_input.b.x, u_input.b.x)) | (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<u32>(u_input.b.x, 10022u, 0u))));
    global0 = array<Struct_3, 1>();
    var var_1 = true;
    let var_2 = Struct_1(~vec4<u32>(~var_0.x, ~(4294967295u >> (var_0.x % 32u)), var_0.x, firstLeadingBit(0u) << (0u % 32u)), select(!select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, arg_2.x, true), arg_2.x), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, arg_2.x, arg_0.x), true), !(!vec3<bool>(arg_2.x, arg_2.x, true)), !arg_2.x), select(select(!vec3<bool>(false, arg_2.x, arg_2.x), select(vec3<bool>(arg_0.x, arg_2.x, arg_0.x), vec3<bool>(arg_0.x, true, true), arg_2.x), arg_0.x), vec3<bool>(true, true, true), !(!vec3<bool>(arg_2.x, arg_2.x, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 121f, -1440f)) * vec3<f32>(arg_1, -372f, -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1000f, arg_1))))));
    var var_3 = Struct_2(var_2, var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - 247f) + _wgslsmith_f_op_f32(step(-1100f, -641f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1049f, arg_1, arg_1) - vec4<f32>(973f, 954f, 160f, arg_1)) * vec4<f32>(-381f, var_2.c.x, 278f, 839f))))));
    return Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_div_vec4_u32(var_3.b.a, var_3.b.a)), var_3.a.a), var_3.b.b, var_3.a.c), Struct_1(var_2.a, select(var_3.b.b, select(var_2.b, vec3<bool>(var_3.a.b.x, arg_2.x, arg_2.x), arg_0.x), any(!vec3<bool>(false, true, arg_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1148f, _wgslsmith_f_op_f32(ceil(var_3.b.c.x)), _wgslsmith_f_op_f32(step(-1346f, -835f))) * _wgslsmith_div_vec3_f32(vec3<f32>(736f, var_2.c.x, 1125f), vec3<f32>(var_2.c.x, arg_1, 1485f)))), _wgslsmith_f_op_vec4_f32(-var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(_wgslsmith_sub_vec3_i32(-u_input.a.wzx, -vec3<i32>(-54323i, i32(-1i) * -1i, 1i)));
    var var_0 = true;
    var var_1 = func_4(!func_1(_wgslsmith_f_op_f32(-1f), global0[_wgslsmith_index_u32(min(~14555u, 24522u), 1u)]), 881f, !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)));
    global0 = array<Struct_3, 1>();
    var var_2 = global1.x;
    var_2 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.yy, -21565i, 1u, _wgslsmith_div_u32(~abs(abs(u_input.b.x)), ~(~(4294967295u >> (var_1.a.a.x % 32u)))));
}

