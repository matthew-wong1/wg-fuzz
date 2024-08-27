struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 25>;

var<private> global2: array<u32, 9>;

var<private> global3: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-743f - 916f) + global3.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))))), ~_wgslsmith_add_vec3_u32(~u_input.d, u_input.d >> (vec3<u32>(arg_0.c.x, 0u, u_input.d.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1719f + global3.x)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = vec4<bool>(true, true, !select(true, true | (u_input.c < 0i), max(u_input.b.x, 0i) <= _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(0i, u_input.c, -13653i, u_input.c))), 1f == arg_1.b);
    var var_1 = ~(~35623u);
    var var_2 = -332f;
    var var_3 = arg_1;
    let var_4 = !var_0.x;
    return vec2<u32>(4294967295u, 44862u);
}

fn func_2(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(~41142u, 1u << (u_input.a % 32u)), u_input.a), u_input.d.xx | _wgslsmith_mod_vec2_u32(arg_0.xy, func_3(arg_0.x, func_1(Struct_1(global1[_wgslsmith_index_u32(arg_0.x, 25u)], global3.x, u_input.d, global3.x)))));
    let var_1 = global3.x;
    let var_2 = !(!vec2<bool>(true, any(vec4<bool>(true, true, true, true))));
    var var_3 = _wgslsmith_div_vec4_u32(~max(max(vec4<u32>(82545u, u_input.d.x, var_0.x, global2[_wgslsmith_index_u32(14442u, 9u)]), abs(vec4<u32>(19645u, 9836u, var_0.x, 0u))), ~(~vec4<u32>(arg_0.x, u_input.d.x, 4294967295u, u_input.a))), ~(~select(select(vec4<u32>(global2[_wgslsmith_index_u32(1u, 9u)], 32241u, var_0.x, 844u), vec4<u32>(1u, var_0.x, 4294967295u, global2[_wgslsmith_index_u32(arg_0.x, 9u)]), true), ~vec4<u32>(1656u, global2[_wgslsmith_index_u32(0u, 9u)], arg_0.x, 0u), !vec4<bool>(false, var_2.x, false, var_2.x))));
    let var_4 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(1u, 25u)] * vec2<f32>(global3.x, -1001f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -1000f) + global1[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(4294967295u, 25u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * -268f))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, global3.x)) * _wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_f_op_vec2_f32(var_4.a - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.a.x + 163f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = func_1(arg_0);
    var var_1 = vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-860f - 1103f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x - arg_2.a.x))), _wgslsmith_f_op_vec2_f32(func_2(u_input.d)).x) * arg_1.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1238f - _wgslsmith_f_op_f32(var_0.a.x - -769f)), -299f, false)), var_0.a.x, all(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), true))))));
    var var_2 = ~(~(13404u | _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 9u)], arg_1.c.x, arg_2.c.x, 1u), vec4<u32>(var_0.c.x, 1u, 42128u, var_0.c.x)))) >= var_0.c.x;
    global2 = array<u32, 9>();
    let var_3 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 25u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 709f))), _wgslsmith_f_op_f32(f32(-1f) * -962f), ~(~vec3<u32>(12886u, u_input.a, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -1862f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(u_input.d)))), _wgslsmith_f_op_f32(-global3.x), u_input.d, _wgslsmith_f_op_f32(max(981f, _wgslsmith_f_op_f32(global3.x - global3.x)))), Struct_1(vec2<f32>(-1453f, -220f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1018f))), func_1(Struct_1(global1[_wgslsmith_index_u32(u_input.d.x, 25u)], global3.x, u_input.d, global3.x)).c >> (vec3<u32>(98255u, reverseBits(0u), ~u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), 791f))), vec3<u32>(1u, 45811u, firstLeadingBit(~_wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(u_input.d.x, 9u)]))));
    let var_1 = select(vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), min(~u_input.c, ~0i) <= -8335i, any(vec3<bool>(true, all(vec4<bool>(true, true, true, false)), true))), vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -22786i, -2147483647i, u_input.b.x), vec4<i32>(u_input.c, u_input.b.x, -2147483647i, u_input.b.x)) == u_input.b.x, select(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false)), true, false), false), !vec3<bool>(false, true, all(vec2<bool>(true, false)) & false));
    var var_2 = -u_input.b.zww ^ _wgslsmith_clamp_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.c, u_input.c, u_input.b.x)) ^ min(_wgslsmith_div_vec3_i32(vec3<i32>(-18738i, u_input.b.x, u_input.c), u_input.b.yzw), ~u_input.b.zyx), vec3<i32>(2147483647i, u_input.c, ~abs(u_input.c)), select(~min(u_input.b.wzw, u_input.b.wzy), vec3<i32>(u_input.c, u_input.c, -u_input.c), var_1.x));
    var var_3 = func_4(func_1(Struct_1(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(0u >> (u_input.a % 32u), 25u)], _wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(-191f, -162f))), -1000f, func_1(Struct_1(var_0.a, global3.x, var_0.c, var_0.b)).c, global3.x)), func_4(Struct_1(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -723f), (u_input.d | vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(var_0.c.x, 9u)], u_input.a)) >> (vec3<u32>(2428u, 13405u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)]) % vec3<u32>(32u)), 1698f), Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(179f, 379f)), var_0.a.x, u_input.d, _wgslsmith_f_op_f32(sign(-883f))), func_1(func_1(Struct_1(vec2<f32>(-800f, var_0.a.x), var_0.d, u_input.d, var_0.b))), ~(~(~vec3<u32>(70636u, 4294967295u, 1u)))), Struct_1(global1[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - 1000f)), ~var_0.c, _wgslsmith_f_op_f32(-global3.x)), vec3<u32>(_wgslsmith_div_u32(var_0.c.x, ~u_input.a), u_input.d.x, 0u));
    global0 = _wgslsmith_f_op_f32(trunc(1036f));
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-1f), func_1(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, -993f) + vec2<f32>(1361f, global3.x)), 124f, u_input.d, 372f))).b);
    let x = u_input.a;
    s_output = StorageBuffer(-51529i, _wgslsmith_f_op_vec2_f32(-func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 25u)]), -1193f, vec3<u32>(1u, 66844u, 1u), 552f), func_4(func_4(Struct_1(var_0.a, var_3.b, var_0.c, 174f), Struct_1(global1[_wgslsmith_index_u32(0u, 25u)], var_0.d, var_3.c, -448f), Struct_1(vec2<f32>(-1258f, global3.x), var_0.a.x, u_input.d, var_3.a.x), u_input.d), Struct_1(vec2<f32>(var_0.d, global3.x), -124f, u_input.d, var_0.d), Struct_1(vec2<f32>(-1582f, global3.x), var_0.b, vec3<u32>(u_input.d.x, 4294967295u, 39762u), -1000f), min(var_0.c, u_input.d)), func_4(func_4(Struct_1(vec2<f32>(-627f, 986f), var_3.d, vec3<u32>(var_3.c.x, var_3.c.x, u_input.d.x), global3.x), Struct_1(var_3.a, 1382f, var_0.c, 748f), Struct_1(var_3.a, global3.x, var_3.c, 603f), u_input.d), func_4(Struct_1(vec2<f32>(-1177f, var_3.d), var_3.b, vec3<u32>(0u, var_3.c.x, global2[_wgslsmith_index_u32(4294967295u, 9u)]), -892f), Struct_1(var_3.a, -1000f, vec3<u32>(80020u, global2[_wgslsmith_index_u32(var_0.c.x, 9u)], var_3.c.x), -215f), Struct_1(var_3.a, -163f, vec3<u32>(u_input.a, 40881u, 1u), -268f), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.x, 9u)], 9u)], 4294967295u, 4294967295u)), func_1(Struct_1(vec2<f32>(var_3.a.x, var_3.d), -716f, u_input.d, -1075f)), var_3.c), u_input.d).a), 1333f, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(var_0.a, var_3.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(578f, var_3.a.x)))), var_3.d, vec3<u32>(u_input.a & 19707u, var_3.c.x, u_input.a), 839f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(21944u, 25u)], var_0.a)), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(floor(var_3.b))), abs(var_3.c & u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d, -708f)))), func_1(func_4(Struct_1(var_0.a, global3.x, u_input.d, var_0.a.x), func_4(Struct_1(vec2<f32>(var_0.a.x, var_0.b), -1672f, var_3.c, 495f), Struct_1(var_0.a, var_3.d, var_0.c, var_3.a.x), Struct_1(var_3.a, -491f, vec3<u32>(0u, 4294967295u, u_input.d.x), -656f), var_3.c), func_1(Struct_1(vec2<f32>(global3.x, global3.x), 496f, vec3<u32>(76822u, 0u, 48649u), global3.x)), abs(vec3<u32>(var_0.c.x, 0u, 4294967295u)))), min(var_0.c, ~(var_3.c | var_0.c))).c, vec2<f32>(_wgslsmith_f_op_f32(abs(-106f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))));
}

