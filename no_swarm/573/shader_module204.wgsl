struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 8146u;

var<private> global1: array<vec3<i32>, 10>;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false));

var<private> global3: vec3<f32> = vec3<f32>(1649f, -1830f, -726f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = arg_1.c;
    global0 = ~(~(~_wgslsmith_add_u32(u_input.b, 2595u)));
    global0 = _wgslsmith_dot_vec2_u32(~var_0.a, var_1.a);
    return select(var_0.a, ~(~firstLeadingBit(~var_0.a)), !vec2<bool>(true, (38213u <= var_1.a.x) || !var_1.c));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> i32 {
    global0 = 4294967295u;
    let var_0 = -u_input.c;
    global1 = array<vec3<i32>, 10>();
    let var_1 = Struct_1(~select(vec2<u32>(46985u, ~0u), func_3(25964i, arg_1, true), vec2<bool>(u_input.b < u_input.a, true)), abs(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.c, -18758i, var_0)), arg_1.b)), arg_2);
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(664f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1003f, -601f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.x, -1781f), global3.x, arg_1.c))), _wgslsmith_f_op_f32(-1303f - global3.x)), true));
    return 1i;
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = vec4<i32>(reverseBits(func_2(min(-arg_0.b.x, arg_0.b.x), arg_0, true)), firstTrailingBit(arg_0.b.x) | select(-(u_input.e << (20980u % 32u)), arg_0.b.x, false), -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -71767i), arg_0.b.yz), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), arg_0.b.zy)), u_input.c);
    let var_1 = ~(vec2<u32>(44176u, countOneBits(arg_0.a.x)) ^ vec2<u32>(u_input.b, arg_0.a.x | 1u));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_u32(arg_0.a, func_3(_wgslsmith_dot_vec2_i32(var_0.yx, reverseBits(vec2<i32>(var_0.x, u_input.e))), arg_0, !(49163u > var_1.x))), arg_0.b ^ var_0.yzw, arg_0.c);
    var var_3 = Struct_1(~func_3(u_input.e, arg_0, any(select(vec4<bool>(var_2.c, arg_0.c, false, false), global2[_wgslsmith_index_u32(var_1.x, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]))), -abs(vec3<i32>(_wgslsmith_clamp_i32(-8714i, var_0.x, arg_0.b.x), arg_0.b.x, ~arg_0.b.x)), false);
    let var_4 = Struct_1(_wgslsmith_add_vec2_u32(arg_0.a, ~var_2.a), countOneBits(vec3<i32>(func_2(-8496i, Struct_1(arg_0.a, vec3<i32>(-2147483647i, 1i, 1i), true), !var_3.c), ~_wgslsmith_mod_i32(var_2.b.x, var_2.b.x), var_3.b.x)), all(vec4<bool>(!(0u <= var_2.a.x), arg_0.c, select(any(vec3<bool>(var_2.c, true, true)), true, var_3.c), true)));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, -827f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(ceil(2257f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-105f, global3.x, global3.x, global3.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(338f, global3.x, 1153f, global3.x), vec4<f32>(515f, 2097f, global3.x, -1276f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = vec2<i32>(~(-u_input.c), _wgslsmith_mult_i32(firstLeadingBit(-4869i), u_input.e));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(select(arg_0.x, global3.x, all(vec2<bool>(true, true))))) + -1647f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)), _wgslsmith_f_op_f32(-global3.x))), 753f);
    let var_2 = Struct_1(vec2<u32>(0u, arg_1), abs(abs(-(~global1[_wgslsmith_index_u32(4294967295u, 10u)]))), any(select(!select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), var_1), vec2<bool>(var_1, var_1), var_1)));
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_div_f32(arg_0.x, 514f), global3.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(421f)), -535f, _wgslsmith_f_op_f32(trunc(arg_0.x))), vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), arg_0.x, _wgslsmith_div_f32(arg_0.x, 750f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.ywy))));
    let var_3 = var_2.c;
    return Struct_1(_wgslsmith_mod_vec2_u32(firstLeadingBit(~(~var_2.a)), vec2<u32>(38584u & arg_1, var_2.a.x)), reverseBits(vec3<i32>((2147483647i ^ var_0.x) | -19380i, var_2.b.x, -(u_input.c << (75920u % 32u)))), false);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec3<i32>, 10>();
    let var_0 = -1144f;
    let var_1 = arg_1;
    let var_2 = vec3<u32>(var_1.a.x, var_1.a.x >> (129226u % 32u), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(16156u, u_input.a, u_input.a), vec3<u32>(102u, u_input.b, 808u), vec3<bool>(arg_1.c, var_1.c, false)), vec3<u32>(arg_1.a.x & 52057u, 39988u, arg_1.a.x | arg_1.a.x))) & vec3<u32>(abs(~firstLeadingBit(arg_1.a.x)), ~0u, var_1.a.x);
    var var_3 = var_1;
    return Struct_1(var_1.a, vec3<i32>(arg_1.b.x, 282i, reverseBits(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(-1i, -41395i)) | _wgslsmith_sub_i32(-9124i, -1i))), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~(vec2<i32>(-22253i, u_input.c) | vec2<i32>(-61331i, -1i)) & _wgslsmith_sub_vec2_i32(min(vec2<i32>(u_input.e, -35780i), vec2<i32>(0i, u_input.e)), vec2<i32>(u_input.e, u_input.c))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec2<u32>(4294967295u, u_input.d.x), vec3<i32>(1i, u_input.c, u_input.c), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-281f, 900f, global3.x, global3.x)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(u_input.b), ~u_input.d.x), _wgslsmith_clamp_u32(~u_input.b, _wgslsmith_add_u32(1u, 107738u), 0u))));
    global0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(2264u, select(~(~var_0.a.x), 1u, false)), 1u, min(var_0.a.x, func_4(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), 1f, _wgslsmith_f_op_f32(-230f - -2199f), _wgslsmith_f_op_f32(max(483f, -809f))), 1u).a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x) * vec4<f32>(375f, global3.x, global3.x, 847f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-509f, global3.x), global3.x, _wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(1040f + -1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, -1024f, 323f), vec4<f32>(global3.x, 595f, 1218f, 240f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 569f)))) * _wgslsmith_f_op_vec4_f32(func_1(Struct_1(func_3(var_0.b.x, var_0, var_0.c), -global1[_wgslsmith_index_u32(15828u, 10u)], var_0.c))))));
    let var_2 = Struct_1(min(vec2<u32>(~_wgslsmith_mult_u32(1u, 7451u), ~var_0.a.x), select(max(func_3(-12357i, var_0, var_0.c), min(var_0.a, vec2<u32>(69114u, 13970u))), _wgslsmith_mod_vec2_u32(u_input.d.xz, vec2<u32>(46803u, var_0.a.x)), var_0.c)), vec3<i32>(-1i) * -(~(global1[_wgslsmith_index_u32(0u, 10u)] | var_0.b)), any(vec2<bool>(true, -40369i == -var_0.b.x)));
    let var_3 = Struct_1(var_2.a, abs(var_2.b), any(global2[_wgslsmith_index_u32(u_input.b, 2u)]));
    let var_4 = Struct_1(u_input.d.xy, var_0.b, select(func_4(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), 436f, _wgslsmith_f_op_f32(exp2(var_1.x)), global3.x), countOneBits(var_0.a.x)).c, any(select(select(vec2<bool>(var_2.c, var_2.c), vec2<bool>(var_0.c, var_2.c), true), vec2<bool>(true, true), !var_2.c)), all(select(vec2<bool>(false, var_0.c), vec2<bool>(true, false), !vec2<bool>(var_3.c, var_2.c)))));
    global1 = array<vec3<i32>, 10>();
    var var_5 = vec4<bool>(var_3.c, var_4.c, var_2.c, false);
    global1 = array<vec3<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global3.x * var_1.x), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.a, select(func_5(var_0.b.xx, Struct_1(var_0.a, vec3<i32>(0i, var_4.b.x, 2147483647i), var_0.c)).a, var_4.a, select(var_5.xy, vec2<bool>(false, false), var_5.wz)), var_3.a), ~vec2<u32>(4294967295u, ~52417u)));
}

