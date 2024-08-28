struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<u32>(0u, 108848u, 110233u, 4294967295u), 2147483647i, vec3<bool>(false, true, true)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 23358u), -1607i, vec3<bool>(false, true, true)), Struct_1(vec4<u32>(73540u, 4294967295u, 4294967295u, 61489u), 2147483647i, vec3<bool>(false, true, true)), Struct_1(vec4<u32>(54417u, 67299u, 37498u, 31826u), -2049i, vec3<bool>(true, true, true)), Struct_1(vec4<u32>(1u, 1u, 33528u, 0u), -103782i, vec3<bool>(false, true, false)), Struct_1(vec4<u32>(19145u, 27213u, 1u, 17491u), -2930i, vec3<bool>(false, true, true)), Struct_1(vec4<u32>(30500u, 0u, 4294967295u, 1u), -33034i, vec3<bool>(true, true, false)), Struct_1(vec4<u32>(1u, 0u, 32888u, 57551u), 37328i, vec3<bool>(false, false, true)), Struct_1(vec4<u32>(4272u, 23850u, 57564u, 1738u), 13210i, vec3<bool>(true, false, true)), Struct_1(vec4<u32>(55518u, 0u, 54300u, 3633u), 18695i, vec3<bool>(false, true, false)), Struct_1(vec4<u32>(1u, 31242u, 0u, 4717u), 0i, vec3<bool>(false, false, false)), Struct_1(vec4<u32>(1u, 4625u, 2054u, 1u), i32(-2147483648), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(37138u, 55184u, 1u, 1u), i32(-2147483648), vec3<bool>(true, false, false)), Struct_1(vec4<u32>(10446u, 4294967295u, 25367u, 32872u), -1i, vec3<bool>(true, true, false)), Struct_1(vec4<u32>(4294967295u, 1179u, 39637u, 4294967295u), 1i, vec3<bool>(false, false, true)), Struct_1(vec4<u32>(1u, 1u, 18053u, 1u), 11715i, vec3<bool>(false, true, true)), Struct_1(vec4<u32>(0u, 4294967295u, 26190u, 0u), -5932i, vec3<bool>(false, false, true)), Struct_1(vec4<u32>(5551u, 32360u, 16497u, 4294967295u), 13708i, vec3<bool>(true, true, true)), Struct_1(vec4<u32>(1u, 0u, 0u, 0u), -18112i, vec3<bool>(false, true, true)), Struct_1(vec4<u32>(4068u, 4294967295u, 0u, 0u), 12613i, vec3<bool>(true, true, false)), Struct_1(vec4<u32>(1u, 610u, 0u, 1u), -10174i, vec3<bool>(false, false, false)), Struct_1(vec4<u32>(47763u, 37761u, 66835u, 49230u), 31334i, vec3<bool>(false, false, false)));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(43898u, 13534u, 1u, 1u), 20716i, vec3<bool>(false, false, false)), Struct_1(vec4<u32>(4294967295u, 1u, 82438u, 0u), -1i, vec3<bool>(false, false, true)), Struct_1(vec4<u32>(6287u, 0u, 16462u, 9939u), 67894i, vec3<bool>(false, false, false)), Struct_1(vec4<u32>(1u, 1u, 10740u, 1u), 1i, vec3<bool>(true, true, true)), Struct_1(vec4<u32>(60222u, 123794u, 1u, 14138u), 2147483647i, vec3<bool>(true, true, false)), Struct_1(vec4<u32>(73043u, 1u, 4294967295u, 69014u), -20163i, vec3<bool>(true, false, false)), Struct_1(vec4<u32>(4294967295u, 94927u, 71068u, 0u), -233i, vec3<bool>(false, false, true)), Struct_1(vec4<u32>(70342u, 0u, 1u, 8665u), 32869i, vec3<bool>(false, false, false)), Struct_1(vec4<u32>(35379u, 0u, 41235u, 34728u), 14669i, vec3<bool>(true, false, false)), Struct_1(vec4<u32>(103287u, 4294967295u, 90770u, 4294967295u), 18793i, vec3<bool>(true, true, true)), Struct_1(vec4<u32>(0u, 36951u, 63394u, 1u), i32(-2147483648), vec3<bool>(false, true, true)), Struct_1(vec4<u32>(6974u, 25638u, 1u, 26525u), 0i, vec3<bool>(false, false, false)));

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1310f, global3.x, -441f))))), vec3<f32>(-151f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(global3.x))), global3.x)))));
    var var_1 = !vec3<bool>(any(vec2<bool>(any(vec3<bool>(false, false, false)), true)), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), any(vec2<bool>(true, true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)) - _wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0), vec3<f32>(var_0.x, var_0.x, -569f), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, true), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0, var_0))))));
    var var_3 = global3.x;
    var var_4 = !(!select(select(!vec4<bool>(var_1.x, true, var_1.x, true), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true), true), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x), false), all(vec2<bool>(false, var_1.x))), select(select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x), select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(false, false, var_1.x, true), vec4<bool>(true, var_1.x, true, false)), any(var_1.yy))));
    return var_4.zyx;
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-270f * 199f), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(165f - global3.x)) + _wgslsmith_div_f32(859f, global3.x)));
    global3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, 398f)) + _wgslsmith_f_op_f32(f32(-1f) * -799f))), _wgslsmith_f_op_f32(-131f - _wgslsmith_f_op_f32(var_0.x + 1644f)))));
    global0 = select(0u & arg_2.x, arg_2.x, !(countOneBits(u_input.a) > _wgslsmith_sub_i32(-1i, ~u_input.a)));
    global3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-965f, 1050f)));
    var var_1 = arg_0;
    return ~(~7609u);
}

fn func_1(arg_0: f32) -> u32 {
    global2 = array<Struct_1, 12>();
    let var_0 = Struct_1(vec4<u32>(~(~firstLeadingBit(1u)), 1u, 0u, _wgslsmith_div_u32(firstLeadingBit(23631u), 46740u)), ~1i, !func_2());
    global0 = 1u;
    var var_1 = _wgslsmith_sub_u32(func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.a, var_0.a), var_0.a.x | 4294967295u), ~_wgslsmith_mult_vec2_u32(var_0.a.wx, vec2<u32>(var_0.a.x, 4294967295u))), _wgslsmith_clamp_u32(var_0.a.x, 63855u, countOneBits(var_0.a.x)), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 60671u, 34484u, 0u), vec4<u32>(var_0.a.x, 4294967295u, 2481u, 94272u)), var_0.a, select(vec4<bool>(false, var_0.c.x, false, var_0.c.x), !vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), false))), var_0.a.x);
    let var_2 = global2[_wgslsmith_index_u32(16666u, 12u)];
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(10605u, 51803u), _wgslsmith_sub_u32(~28550u, func_1(global3.x))), ~(~1u), ~min(_wgslsmith_mult_u32(13673u, 9998u), ~52494u), reverseBits(~1u)), -2147483647i ^ u_input.a, select(vec3<bool>(func_2().x, !select(false, false, false), true), select(func_2(), vec3<bool>(true, true, true), func_2().x), all(vec4<bool>(global3.x <= global3.x, false, true, true))));
    let var_1 = -(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-15288i, -7626i) ^ vec2<i32>(u_input.b, var_0.b), vec2<i32>(0i, u_input.a))));
    var var_2 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer((1i << (((var_0.a.x >> (var_0.a.x % 32u)) >> (1u % 32u)) % 32u)) & _wgslsmith_div_i32(var_0.b, var_1), var_0.b);
}

