struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<vec2<bool>, 28>;

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>) -> i32 {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_0 = global0[_wgslsmith_index_u32(90953u, 17u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) + _wgslsmith_f_op_f32(var_0.c * -381f)) + _wgslsmith_f_op_f32(exp2(var_0.c))))));
    let var_2 = -580f;
    return -abs(min(var_0.b.x, -_wgslsmith_mult_i32(var_0.b.x, var_0.b.x)));
}

fn func_2() -> i32 {
    var var_0 = -343f;
    global3 = global2[_wgslsmith_index_u32(4294967295u, 28u)];
    let var_1 = Struct_1(~(~(~u_input.a.x)), firstTrailingBit(abs(min(vec2<i32>(1i, -71839i) << (u_input.a.xx % vec2<u32>(32u)), countOneBits(vec2<i32>(0i, 0i))))), 682f);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c)) + _wgslsmith_f_op_f32(var_1.c * -751f)), var_1.c))), _wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * 693f) * _wgslsmith_f_op_f32(select(var_1.c, _wgslsmith_f_op_f32(var_1.c - 1284f), true)))));
    global2 = array<vec2<bool>, 28>();
    return _wgslsmith_mult_i32((-_wgslsmith_sub_i32(15039i, 1i) & -_wgslsmith_mod_i32(var_1.b.x, 30536i)) >> (var_1.a % 32u), func_3(select(vec4<bool>(any(vec4<bool>(global3.x, false, global3.x, global3.x)), any(vec4<bool>(false, true, false, false)), false, global3.x), select(vec4<bool>(false, true, global3.x, true), !vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, true)), true), vec2<bool>(true, true)));
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = ~(~vec4<u32>(_wgslsmith_div_u32(~u_input.a.x, abs(u_input.a.x)), ~u_input.a.x, u_input.a.x, 1u));
    global2 = array<vec2<bool>, 28>();
    var var_1 = 22026i;
    var var_2 = arg_0;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, min(u_input.a.x, u_input.a.x)), 11u)];
    return Struct_1(~var_3.a, _wgslsmith_mult_vec2_i32(vec2<i32>(-29660i, -2147483647i), min(-firstLeadingBit(vec2<i32>(1i, 27415i)), vec2<i32>(~arg_0, var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-698f * 287f), var_3.c, global3.x)) * _wgslsmith_f_op_f32(var_3.c * -593f)));
}

fn func_1(arg_0: bool, arg_1: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-197f, 1000f, -557f, -2038f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1339f, 682f, -1015f, -529f)))))));
    var var_1 = func_4(-func_2());
    var_1 = func_4(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-var_1.b.x, i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.b.x, -1i, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_1.b.x, 15114i), vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x)))), func_4(40383i).b.x));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), 966f, any(global2[_wgslsmith_index_u32(0u, 28u)])));
    var_1 = func_4(~_wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.b.x, -2147483647i, -6824i), vec3<i32>(0i, var_1.b.x, 2147483647i))));
    return min(vec3<i32>(0i, var_1.b.x, 23216i << (var_1.a % 32u)), ~vec3<i32>(1i, 0i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0u, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-22245i, -2147483647i), vec2<i32>(-11358i, -2147483647i), ~vec2<i32>(-2147483647i, -2147483647i)) << (vec2<u32>(~1u, _wgslsmith_sub_u32(~u_input.a.x, ~u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -120f));
    let var_1 = func_1(all(!vec3<bool>(global3.x, global3.x, any(vec4<bool>(global3.x, false, global3.x, true)))), false);
    var var_2 = ~(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36448u, var_0.a, 0u, 69679u), vec4<u32>(75503u, u_input.a.x, 125280u, var_0.a)), 1875u), var_0.a, min(var_0.a, 31451u), ~(~u_input.a.x)) >> (_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_0.a, u_input.a.x, 0u, 30344u) & vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), ~vec4<u32>(var_0.a, u_input.a.x, 14553u, 0u), select(false, true, global3.x)), vec4<u32>(func_4(var_1.x).a, ~1u, ~36725u, u_input.a.x)) % vec4<u32>(32u)));
    global2 = array<vec2<bool>, 28>();
    let var_3 = -(~max(abs(vec4<i32>(-1i, 19788i, 2147483647i, var_1.x) >> (vec4<u32>(60468u, var_2.x, var_0.a, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_1.x, var_1.x, 0i, var_0.b.x), vec4<i32>(-2147483647i, var_1.x, var_1.x, 2147483647i), global3.x), select(vec4<i32>(-7028i, 2147483647i, var_1.x, var_0.b.x), vec4<i32>(var_1.x, var_1.x, var_0.b.x, -20136i), false), -vec4<i32>(var_1.x, var_1.x, 1i, 26099i))));
    var var_4 = Struct_1(0u, ~vec2<i32>(2010i, ~(-17974i) | var_0.b.x), var_0.c);
    var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(29858u, var_2.x, 1u, var_4.a) & vec4<u32>(var_0.a, 1u, 57865u, var_0.a)), ~(~vec4<u32>(var_0.a, var_4.a, 32111u, u_input.a.x)), global3.x), vec4<u32>(15788u, var_4.a >> (var_0.a % 32u), ~(~4294967295u), u_input.a.x)), _wgslsmith_mult_u32(~(~(~32225u)), u_input.a.x), ~4294967295u, var_2.x);
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec4<u32>(var_2.x, _wgslsmith_dot_vec3_u32(u_input.a, var_2.zxz), _wgslsmith_sub_u32(var_0.a, var_0.a), ~17220u)));
}

