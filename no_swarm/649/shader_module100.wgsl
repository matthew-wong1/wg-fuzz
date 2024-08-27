struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<bool>) -> vec2<u32> {
    global1 = array<vec2<f32>, 23>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-586f, _wgslsmith_f_op_f32(-global0.a.x))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))));
    let var_1 = -((_wgslsmith_add_i32(-20661i, -21972i | global0.b.x) | abs(_wgslsmith_dot_vec3_i32(global0.b.xyx, vec3<i32>(u_input.b, u_input.b, global0.b.x)))) | (((arg_0.x << (45207u % 32u)) & u_input.b) | countOneBits(countOneBits(1i))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), arg_2)), _wgslsmith_f_op_f32(min(614f, _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-arg_2))))), false)));
    var var_2 = _wgslsmith_mult_i32(~u_input.a, 69781i);
    return ~vec2<u32>(~(~(~4294967295u)), ~1u);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    return countOneBits(405u);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global1 = array<vec2<f32>, 23>();
    var var_0 = 5296u;
    var var_1 = -758f;
    var var_2 = vec2<u32>(1u, 1u);
    var_2 = _wgslsmith_add_vec2_u32(~select(~vec2<u32>(1u, var_2.x), vec2<u32>(4294967295u, 0u) >> (vec2<u32>(var_2.x, 27173u) % vec2<u32>(32u)), true) << (select(vec2<u32>(4294967295u, 4294967295u), ~reverseBits(vec2<u32>(var_2.x, var_2.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~abs(vec2<u32>(4294967295u, var_2.x)), func_2(vec2<i32>(46427i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 4381i), arg_1.b.yxw)), vec3<bool>(true, false, all(vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -438f)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - 469f) + _wgslsmith_f_op_f32(arg_1.d - global0.a.x))) * -2171f), select(vec2<u32>(func_3(79586u >= var_2.x, vec4<f32>(288f, 1000f, -1849f, global0.a.x)), 4294967295u), (reverseBits(vec2<u32>(22936u, 36917u)) ^ ~vec2<u32>(var_2.x, var_2.x)) | vec2<u32>(var_2.x, var_2.x), !any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), false);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(arg_0.b.x, 155485u, arg_0.b.x)), ~(~vec3<u32>(0u, arg_0.b.x, arg_0.b.x)) & ((vec3<u32>(0u, 4294967295u, 4294967295u) & vec3<u32>(arg_0.b.x, arg_0.b.x, 4294967295u)) << (vec3<u32>(48935u, 0u, 0u) % vec3<u32>(32u)))) >> (~(~vec3<u32>(func_3(arg_0.c, vec4<f32>(arg_0.a, global0.d, -350f, 1000f)), ~4294967295u, 0u)) % vec3<u32>(32u));
    let var_1 = vec4<bool>(arg_0.c, arg_0.c || arg_0.c, true, all(vec3<bool>(false, all(vec3<bool>(false, false, false)), select(arg_0.c, arg_0.c & true, arg_0.c))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(255f + _wgslsmith_f_op_f32(-562f * arg_0.a))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a, -1148f), _wgslsmith_f_op_f32(global0.c + global0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(659f)))))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1382f, var_2, -163f, -1537f))), abs(~select(vec4<i32>(-1i, u_input.b, -24542i, u_input.a) | vec4<i32>(-54523i, 2147483647i, -26167i, 2147483647i), ~global0.b, select(vec4<bool>(true, true, var_1.x, arg_0.c), var_1, arg_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-146f + _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-973f - -435f)), global0.a.x);
    global1 = array<vec2<f32>, 23>();
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(global0.d, _wgslsmith_div_f32(global0.d, -902f)));
    let var_1 = true;
    var var_2 = (_wgslsmith_mod_i32(-u_input.a, 19088i) & ~(~1i)) & max(func_4(func_1(_wgslsmith_div_f32(-447f, global0.d), Struct_1(vec4<f32>(-140f, 553f, -2118f, global0.d), vec4<i32>(u_input.a, 5470i, 928i, 2147483647i), 1009f, global0.d)), global1[_wgslsmith_index_u32(4294967295u, 23u)]), -u_input.b);
    var var_3 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(12402u, abs(46829u)), func_2(~vec2<i32>(35007i, u_input.b), select(vec3<bool>(false, true, var_1), vec3<bool>(var_1, var_1, var_1), true), _wgslsmith_f_op_f32(-global0.a.x), vec3<bool>(true, true, true)).x), vec2<u32>(_wgslsmith_sub_u32(12546u, 4747u), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1294f), Struct_1(global0.a, global0.b, global0.a.x, 1337f)).b.x), ~(select(vec2<u32>(27454u, 55505u), vec2<u32>(1u, 0u), var_1) >> (firstTrailingBit(vec2<u32>(32893u, 0u)) % vec2<u32>(32u))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - global0.a))) * _wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(global0.a, global0.a)))))), global0.b, _wgslsmith_f_op_f32(global0.d + global0.d), -1000f);
    var_2 = abs(_wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.x, -6223i), var_4.b.zw, global0.b.yw), abs(vec2<i32>(2147483647i, 18298i)))) & (i32(-1i) * -5957i);
    var var_5 = _wgslsmith_f_op_f32(func_1(var_4.a.x, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_div_f32(var_4.a.x, 851f), _wgslsmith_f_op_f32(-846f + 1428f), var_4.a.x), global0.b, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(1093f * -342f))))).a - _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-var_4.a.x)));
    var_4 = Struct_1(vec4<f32>(-2727f, -966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, var_4.c) * _wgslsmith_f_op_f32(-1000f * 1754f))), _wgslsmith_f_op_f32(-1302f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-311f)) * global0.a.x))), reverseBits(-(~vec4<i32>(2147483647i, 1978i, -17542i, u_input.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f)))), global0.d);
    let var_6 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c, var_4.d, global0.c, global0.a.x) + global0.a))), var_4.b, var_4.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(826f, global0.d)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.d), _wgslsmith_f_op_f32(var_4.a.x - global0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(var_4.a.ww, _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(0u & _wgslsmith_sub_u32(var_3.x, var_3.x), 23u)]))), ~select(_wgslsmith_mult_u32(~1u, ~var_3.x), 0u << (func_1(var_6.d, var_6).b.x % 32u), var_1), ~global0.b.x, var_6.a.x);
}

