struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 30>;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<u32>(48395u, 51445u, 0u, 53832u)), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), Struct_2(vec4<u32>(88523u, 1u, 89212u, 4294967295u)), Struct_2(vec4<u32>(40353u, 4294967295u, 0u, 0u)), Struct_2(vec4<u32>(4294967295u, 86625u, 4294967295u, 33948u)), Struct_2(vec4<u32>(92811u, 37066u, 0u, 0u)), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 57264u)), Struct_2(vec4<u32>(16454u, 4294967295u, 0u, 33551u)), Struct_2(vec4<u32>(19772u, 44329u, 19855u, 18369u)), Struct_2(vec4<u32>(6946u, 4294967295u, 36922u, 1u)), Struct_2(vec4<u32>(6695u, 1u, 30828u, 31827u)), Struct_2(vec4<u32>(78687u, 4294967295u, 4294967295u, 0u)), Struct_2(vec4<u32>(38021u, 1u, 15076u, 56999u)), Struct_2(vec4<u32>(34747u, 26944u, 0u, 0u)), Struct_2(vec4<u32>(1u, 1u, 4294967295u, 0u)), Struct_2(vec4<u32>(5073u, 30993u, 1u, 50336u)), Struct_2(vec4<u32>(0u, 63424u, 1u, 0u)), Struct_2(vec4<u32>(37867u, 1880u, 786u, 46035u)), Struct_2(vec4<u32>(18961u, 16239u, 4294967295u, 0u)), Struct_2(vec4<u32>(3752u, 13251u, 4294967295u, 49827u)), Struct_2(vec4<u32>(4294967295u, 78703u, 16789u, 0u)), Struct_2(vec4<u32>(4294967295u, 10348u, 6863u, 5773u)), Struct_2(vec4<u32>(0u, 54752u, 72462u, 4294967295u)));

var<private> global3: array<u32, 20> = array<u32, 20>(17112u, 63323u, 3525u, 45564u, 53703u, 4294967295u, 4294967295u, 51491u, 28187u, 42178u, 1u, 4294967295u, 0u, 0u, 38812u, 0u, 4555u, 3998u, 14718u, 4698u);

var<private> global4: Struct_1 = Struct_1(vec2<u32>(1u, 32591u), 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = false;
    let var_1 = ~_wgslsmith_mod_u32(arg_1.b.a.x, 55651u);
    let var_2 = arg_1.b;
    let var_3 = var_1;
    var var_4 = Struct_3(arg_1.a, arg_1.b, var_1 & 0u, ~u_input.c, arg_0.x);
    return _wgslsmith_f_op_f32(select(arg_1.e, 1018f, any(!vec4<bool>(var_0, var_0, !var_0, 1u > var_1))));
}

fn func_2() -> u32 {
    global3 = array<u32, 20>();
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, global4.a.x) >> (vec3<u32>(global4.a.x, global4.b, 66056u) % vec3<u32>(32u)), vec3<u32>(countOneBits(4294967295u), ~0u, global4.b)), global4.a.x) | 0u;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(183f, -1294f, 915f, -1805f), Struct_3(vec3<i32>(u_input.b, 34118i, -1i), Struct_1(global4.a, 13956u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53430u, 20u)], 20u)], u_input.a, 849f), Struct_1(vec2<u32>(global4.b, global3[_wgslsmith_index_u32(0u, 20u)]), global3[_wgslsmith_index_u32(74558u, 20u)]), vec4<u32>(22017u, global3[_wgslsmith_index_u32(global4.b, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)], 0u))) - _wgslsmith_f_op_f32(f32(-1f) * -270f)))));
    return global4.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> i32 {
    global4 = Struct_1(arg_0.a.xx, func_2());
    global3 = array<u32, 20>();
    var var_0 = min(abs(u_input.a), _wgslsmith_sub_i32(-60919i, -22414i)) & (min(_wgslsmith_div_i32(u_input.b, i32(-1i) * -3120i), u_input.c) | -min(2147483647i, _wgslsmith_clamp_i32(1i, 2147483647i, u_input.b)));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(global4.b, arg_0.a.x), ~63155u)), ~(58888u >> ((0u << (global4.b % 32u)) % 32u))), 20u)];
    var var_2 = global1[_wgslsmith_index_u32(global4.a.x, 30u)];
    return max(u_input.c, i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(1u, 30u)];
    var var_1 = var_0.a.xz;
    var_1 = vec2<i32>(-_wgslsmith_clamp_i32(2147483647i, 30211i, _wgslsmith_mod_i32(~16945i, ~57716i)), -(var_1.x >> (_wgslsmith_div_u32(var_0.b.b, global3[_wgslsmith_index_u32(25855u, 20u)]) % 32u)) ^ abs(_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.d, u_input.a), func_1(global2[_wgslsmith_index_u32(4294967295u, 23u)], var_1.x))));
    var_1 = -vec2<i32>(_wgslsmith_div_i32(14293i, -62439i), select(-u_input.a, var_0.d, true)) | vec2<i32>(-32679i, 2147483647i & -_wgslsmith_sub_i32(10786i, var_1.x));
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.a >> ((vec2<u32>(1u, global4.a.x) << (firstLeadingBit(var_0.b.a ^ vec2<u32>(var_0.b.a.x, 43150u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-722f * 1f))), var_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(993f + var_0.e)) + var_0.e)), vec3<u32>(~global4.b, ~(~4294967295u), 0u) << (~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global4.b, 20u)], 20u)], ~global4.a.x, 4294967295u) % vec3<u32>(32u)));
}

