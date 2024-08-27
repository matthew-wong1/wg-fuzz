struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_3, 22>;

var<private> global3: array<vec4<u32>, 10>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> vec3<f32> {
    global0 = ~(~u_input.a);
    var var_0 = Struct_1(u_input.a, 1i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1760f, 281f, -699f) - vec3<f32>(730f, arg_2.b, -1000f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, -1534f, -101f) + arg_0)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 955f, 818f)) * vec3<f32>(var_0.c.x, var_0.c.x, -1016f)))));
    global3 = array<vec4<u32>, 10>();
    global1 = vec3<u32>(firstTrailingBit(26536u), ~_wgslsmith_mult_u32(46106u, ~u_input.a), max(1u, _wgslsmith_sub_u32(u_input.a, abs(_wgslsmith_mult_u32(4294967295u, global1.x)))));
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(-(~(vec3<i32>(arg_2, arg_2, arg_2) ^ vec3<i32>(arg_2, 26886i, -1i))), reverseBits(~abs(vec3<i32>(0i, 34535i, -9660i)))), -_wgslsmith_sub_i32(~(arg_1.b.b << (u_input.a % 32u)), _wgslsmith_mult_i32(-3464i, arg_1.b.b)), -2147483647i);
    global0 = arg_1.b.a;
    var var_1 = ~(~(vec4<u32>(abs(u_input.a), ~global1.x, ~arg_1.b.a, 80173u) << (~min(global3[_wgslsmith_index_u32(1u, 10u)], vec4<u32>(global1.x, 33327u, global1.x, 5928u)) % vec4<u32>(32u))));
    var var_2 = arg_1.c.b;
    let var_3 = true;
    return u_input.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_4) -> vec2<bool> {
    global2 = array<Struct_3, 22>();
    var var_0 = (firstTrailingBit(abs(arg_3.a.b.b)) > abs(arg_3.a.b.b)) != !any(select(arg_0.yz, !arg_0.yy, arg_0.zz));
    global1 = arg_3.b.zxy;
    let var_1 = ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, arg_2.x), vec2<u32>(1u, arg_2.x)), reverseBits(~vec2<u32>(0u, u_input.a))));
    var var_2 = reverseBits(firstLeadingBit(vec4<i32>(max(arg_3.a.b.b, i32(-1i) * -4222i), -(~(-37118i)), abs(min(7892i, -26600i)), -countOneBits(2147483647i))));
    return select(select(!select(vec2<bool>(false, arg_1), select(vec2<bool>(true, arg_1), arg_0.xz, arg_0.xx), arg_1), arg_0.yx, arg_0.xy), vec2<bool>(false, !arg_0.x & arg_0.x), ~(-7180i) >= _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(var_2.xxw, vec3<i32>(0i, -32416i, -2147483647i)), ~vec3<i32>(var_2.x, 0i, arg_3.a.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(21092u, 2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -283f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -790f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-397f, -554f)) + _wgslsmith_f_op_f32(abs(-328f)))) - _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(793f, -230f, -972f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1425f, -939f, -1440f) - vec3<f32>(-1404f, -840f, -1000f))), !any(vec3<bool>(true, false, false)), Struct_2(true, _wgslsmith_f_op_f32(-455f + -1571f))))));
    var var_1 = ~var_0.a;
    global3 = array<vec4<u32>, 10>();
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-var_0.c.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(373f * 1153f) - -1398f)), select(vec2<bool>(true, true), func_3(vec3<bool>(true, true, true), false, ~select(global1.yx, vec2<u32>(32377u, global1.x), vec2<bool>(true, false)), Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a, u_input.a), 22u)], ~vec4<u32>(var_0.a, 0u, 4294967295u, global1.x), func_2(false, global2[_wgslsmith_index_u32(1u, 22u)], -44738i))), true));
    global1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(abs(global1.zz) ^ ~vec2<u32>(u_input.a, 1u), ~vec2<u32>(global1.x, u_input.a)), func_2(!var_2.a, Struct_3(Struct_2(true, 1000f), Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, -134f, var_0.c.x)), Struct_2(false, var_0.c.x)), var_0.b), 20389u), ~(~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_0.a, 50555u, 1u), vec3<u32>(u_input.a, 78677u, 27056u), false), abs(vec3<u32>(4294967295u, 18812u, 1u)), vec3<u32>(0u, 10439u, 13654u))), abs(firstTrailingBit(~vec3<u32>(1u, u_input.a, 1u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -761f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 551f, -168f, -351f), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x))))));
    var var_4 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.a, u_input.a, u_input.a), vec3<u32>(global1.x, var_0.a, 19428u)), ~max(vec3<u32>(u_input.a, global1.x, 35262u), _wgslsmith_mod_vec3_u32(vec3<u32>(53295u, 52010u, 1u), vec3<u32>(1u, var_0.a, 4294967295u)))), 22u)], global3[_wgslsmith_index_u32(24454u, 10u)], ~0u);
    var var_5 = var_4.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(682f, _wgslsmith_f_op_f32(-1207f - 693f)))), vec2<f32>(-1271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f) - var_5.b)))), firstLeadingBit(~vec3<u32>(max(u_input.a, 0u), _wgslsmith_dot_vec3_u32(var_4.b.yxx, vec3<u32>(var_4.a.b.a, 4294967295u, 97468u)), ~global1.x)));
}

