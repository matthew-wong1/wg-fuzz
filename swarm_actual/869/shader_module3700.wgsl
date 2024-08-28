struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(478f, false, -30781i, false, 2001f));

var<private> global1: array<f32, 10>;

var<private> global2: array<f32, 3> = array<f32, 3>(811f, 312f, -616f);

var<private> global3: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1000f, 582f), vec2<f32>(-756f, 1454f), vec2<f32>(-679f, -128f), vec2<f32>(564f, 426f), vec2<f32>(1811f, -2144f), vec2<f32>(-1000f, -1343f), vec2<f32>(1736f, -1522f), vec2<f32>(-372f, -1000f), vec2<f32>(-261f, 1907f), vec2<f32>(-521f, 997f), vec2<f32>(-1080f, 300f), vec2<f32>(-126f, 1032f));

var<private> global4: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = select(vec2<bool>(true || !(global0.a.d | global0.a.d), global0.a.d), select(select(!select(vec2<bool>(false, global0.a.b), vec2<bool>(global0.a.d, true), true), !(!vec2<bool>(global0.a.b, false)), any(vec4<bool>(global0.a.d, global0.a.d, false, false)) && true), select(!select(vec2<bool>(false, global0.a.d), vec2<bool>(true, global0.a.d), vec2<bool>(global0.a.d, false)), vec2<bool>(global0.a.b & false, select(false, global0.a.b, false)), select(select(vec2<bool>(global0.a.d, global0.a.b), vec2<bool>(global0.a.b, false), global0.a.d), vec2<bool>(global0.a.b, global0.a.d), !vec2<bool>(global0.a.b, true))), select(!(!vec2<bool>(false, global0.a.d)), vec2<bool>(all(vec3<bool>(true, true, false)), global0.a.b), true | global0.a.b)), vec2<bool>(true, global0.a.b));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-2563f)), -223f));
    var var_2 = Struct_3(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1559f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], var_1))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 10u)], -347f, var_1, var_1)))))));
    let var_3 = vec2<u32>(u_input.a.x, ~u_input.a.x);
    var var_4 = 1i;
    return 0i;
}

fn func_2(arg_0: vec2<bool>) -> vec3<u32> {
    global3 = array<vec2<f32>, 12>();
    global2 = array<f32, 3>();
    global2 = array<f32, 3>();
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 10u)]))), true, -17922i, !any(vec4<bool>(true, false, arg_0.x, global0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-821f - global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), _wgslsmith_f_op_f32(-1000f + -507f)))), vec3<i32>(_wgslsmith_add_i32(-global0.a.c, -2147483647i) << (_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x) % 32u), func_3() ^ -_wgslsmith_sub_i32(global4.x, global4.x), _wgslsmith_sub_i32(u_input.b, global4.x)), Struct_3(global0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global0.a.a, -987f, global0.a.a), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], 241f, global2[_wgslsmith_index_u32(u_input.a.x, 3u)])) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-346f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec4<f32>(global0.a.e, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -275f, global2[_wgslsmith_index_u32(4294967295u, 3u)]), arg_0.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(997f, -411f, 1803f, 346f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1420f, 216f, 519f, 469f), vec4<f32>(307f, global2[_wgslsmith_index_u32(38281u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))))))), false, select(!select(select(arg_0, arg_0, true), select(arg_0, arg_0, vec2<bool>(false, true)), all(vec3<bool>(false, false, false))), vec2<bool>(true, true), !vec2<bool>(!global0.a.b, -511f != global0.a.e)));
    var var_1 = var_0.c;
    return firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(abs(u_input.a.x)), 35589u, max(u_input.a.x, u_input.a.x) << (~32003u % 32u)), vec3<u32>(4294967295u, 0u << (0u % 32u), firstTrailingBit(u_input.a.x))));
}

fn func_1() -> Struct_3 {
    global1 = array<f32, 10>();
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 28422u, ~(~u_input.a.x)), func_2(vec2<bool>(global0.a.b, !global0.a.d)) & u_input.a);
    global2 = array<f32, 3>();
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 12u)];
    var var_2 = true;
    return Struct_3(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 1000f, global0.a.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(644f * global0.a.a), global2[_wgslsmith_index_u32(~5758u, 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), global1[_wgslsmith_index_u32(~u_input.a.x, 10u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 10u)], 537f, global0.a.e, global2[_wgslsmith_index_u32(47075u, 3u)]) - vec4<f32>(var_1.x, var_1.x, 1296f, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(338f, -155f, 1455f, global2[_wgslsmith_index_u32(var_0.x, 3u)]) * vec4<f32>(global0.a.e, global0.a.e, var_1.x, global0.a.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<f32, 10>();
    let var_1 = Struct_4(Struct_2(Struct_1(1378f, global0.a.d, max(u_input.c.x >> (u_input.a.x % 32u), var_0.a.c), _wgslsmith_div_u32(0u, 4294967295u) < ~u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 10u)]) * -896f))), vec3<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(select(-global4.ww, vec2<i32>(global0.a.c, -6916i), !vec2<bool>(true, var_0.a.d)), ~vec2<i32>(var_0.a.c, -2147483647i) ^ firstTrailingBit(global4.yy)), var_0.a.c), Struct_3(Struct_1(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 10u)] - global2[_wgslsmith_index_u32(u_input.a.x, 3u)])), global0.a.d, 28954i, true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.a.e))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)], var_0.b.x, -411f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 1422f, -663f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 3u)], -275f, var_0.b.x, global0.a.a), vec4<f32>(1000f, 1046f, 289f, -356f)) + _wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(1405f, -120f, 1000f, -637f))))), func_1().a.d, select(vec2<bool>(global0.a.d, !any(vec3<bool>(global0.a.d, var_0.a.d, global0.a.b))), vec2<bool>(!var_0.a.b, any(vec3<bool>(global0.a.d, var_0.a.b, false))), global0.a.d));
    let var_2 = !select(vec2<bool>(false, var_1.a.a.a >= _wgslsmith_f_op_f32(-global0.a.a)), !select(vec2<bool>(var_1.d, global0.a.d), !var_1.e, var_1.e), true);
    var var_3 = _wgslsmith_dot_vec2_u32(~abs(~(~vec2<u32>(4294967295u, 0u))), ~max(vec2<u32>(func_2(var_1.e).x, select(13740u, 4294967295u, var_2.x)), _wgslsmith_mult_vec2_u32(u_input.a.zx >> (u_input.a.xz % vec2<u32>(32u)), abs(vec2<u32>(u_input.a.x, 4294967295u)))));
    var var_4 = Struct_4(var_1.a, var_1.b, Struct_3(var_0.a, func_1().b), global0.a.d, vec2<bool>(var_2.x, var_0.a.d));
    global3 = array<vec2<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

