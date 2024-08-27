struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<u32>(0u, 1u), -65010i, 54700u), Struct_1(vec2<u32>(35676u, 63349u), 2147483647i, 80588u), Struct_1(vec2<u32>(70930u, 92190u), 1i, 47094u), Struct_1(vec2<u32>(0u, 89889u), 2147483647i, 11870u), Struct_1(vec2<u32>(58202u, 4294967295u), -14799i, 33939u));

var<private> global2: array<Struct_1, 7>;

var<private> global3: array<Struct_1, 6>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(vec2<u32>(u_input.c, u_input.c));
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    let var_1 = global3[_wgslsmith_index_u32(~min(53894u, _wgslsmith_dot_vec3_u32((vec3<u32>(arg_0.c, u_input.a, 15000u) ^ vec3<u32>(4294967295u, var_0.a.x, u_input.e)) ^ ~vec3<u32>(1u, 0u, 1u), ~(vec3<u32>(arg_0.c, u_input.a, arg_0.a.x) << (vec3<u32>(0u, var_0.a.x, 0u) % vec3<u32>(32u))))), 6u)];
    var var_2 = u_input.d;
    return Struct_2(vec2<u32>(12117u >> (min(var_1.c | u_input.a, ~9117u) % 32u), ~(~10612u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    global1 = array<Struct_1, 5>();
    let var_0 = arg_0;
    var var_1 = func_2(Struct_1(arg_1.zw >> (arg_2.a % vec2<u32>(32u)), u_input.d.x, arg_0.a.x));
    var var_2 = max(~_wgslsmith_div_vec3_u32(arg_1.yzw, _wgslsmith_div_vec3_u32(vec3<u32>(7307u, arg_0.a.x, arg_0.a.x), arg_1.xyz)), _wgslsmith_add_vec3_u32(vec3<u32>(abs(~u_input.e), 1u, arg_0.a.x), arg_1.yxy));
    let var_3 = arg_2;
    return func_2(Struct_1(var_1.a, arg_2.b, var_1.a.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    global3 = array<Struct_1, 6>();
    let var_0 = arg_0.x;
    return 53690u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: f32) -> vec4<f32> {
    var var_0 = vec4<u32>(1u, ~min(arg_1.x | arg_0.c, u_input.c), 48057u, ~func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -1000f, arg_3, 367f)))), _wgslsmith_dot_vec3_u32(countOneBits(arg_1.zyy), ~vec3<u32>(arg_1.x, u_input.a, arg_1.x)), func_3(func_2(Struct_1(arg_1.xy, arg_0.b, 0u)), vec4<u32>(u_input.a, u_input.a, 4294967295u, arg_0.c), Struct_1(arg_1.zw, -1i, arg_0.a.x), ~u_input.d.yz), vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(arg_1.x, 15u)]));
    var var_1 = func_3(func_3(func_3(Struct_2(_wgslsmith_div_vec2_u32(arg_1.xy, vec2<u32>(4167u, arg_0.c))), vec4<u32>(u_input.a, var_0.x, min(1u, 72478u), _wgslsmith_sub_u32(u_input.c, 1u)), global1[_wgslsmith_index_u32(abs(~25614u), 5u)], vec2<i32>(firstTrailingBit(u_input.d.x), ~17639i)), _wgslsmith_mod_vec4_u32(~arg_1, arg_1), Struct_1(firstLeadingBit(vec2<u32>(15598u, arg_1.x)), i32(-1i) * -arg_0.b, func_3(Struct_2(var_0.zy), vec4<u32>(u_input.e, u_input.e, arg_1.x, 28371u), global1[_wgslsmith_index_u32(1u >> (arg_0.c % 32u), 5u)], u_input.b.yy).a.x), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -2147483647i), u_input.b.yz, vec2<i32>(u_input.d.x, 37502i)))), ~vec4<u32>(29501u, _wgslsmith_div_u32(var_0.x, 59318u) & var_0.x, 8878u, ~_wgslsmith_mult_u32(arg_0.c, 20623u)), Struct_1(var_0.xz, -22814i, 91666u), u_input.b.yx >> (~reverseBits(_wgslsmith_clamp_vec2_u32(arg_1.yz, arg_0.a, vec2<u32>(31222u, var_0.x))) % vec2<u32>(32u)));
    global3 = array<Struct_1, 6>();
    var var_2 = !vec3<bool>(true, true && select(any(vec2<bool>(true, true)), arg_0.c >= 4294967295u, true), any(vec2<bool>(false, all(vec2<bool>(true, true)))));
    let var_3 = vec4<i32>(20761i, -17030i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, 24165i), 2147483647i & u_input.d.x, u_input.b.x)), u_input.d), ~(~reverseBits(arg_0.b)));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1227f, -2123f, arg_2) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_3, 2238f, arg_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 222f, 1080f, -269f) - vec4<f32>(964f, arg_2, -308f, arg_3))))))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = func_3(func_2(global3[_wgslsmith_index_u32(37635u, 6u)]), min(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a.x, 1u, arg_3.a.x, 1u) | vec4<u32>(arg_3.a.x, 48602u, u_input.a, arg_1.a.x), vec4<u32>(u_input.a, 0u, 68291u, arg_3.a.x)), firstTrailingBit(vec4<u32>(arg_3.a.x, u_input.c, 0u, 10458u)) ^ ~vec4<u32>(14731u, arg_3.a.x, arg_1.a.x, u_input.e)) | ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e, 14091u, u_input.e, arg_3.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_3.a.x, u_input.e, arg_3.a.x), vec4<u32>(arg_3.a.x, 3681u, arg_3.a.x, arg_3.a.x))), global2[_wgslsmith_index_u32(arg_1.a.x, 7u)], abs(firstLeadingBit(vec2<i32>(34766i, 24285i)) | reverseBits(u_input.d.xz)) | u_input.d.yy);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2), vec4<f32>(1000f, _wgslsmith_f_op_f32(max(-1870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * 397f)))), _wgslsmith_f_op_f32(trunc(1333f)), _wgslsmith_div_f32(-1000f, -1450f)));
    let var_2 = vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(44721u, var_0.a.x), 15u)];
    global0 = array<vec4<i32>, 15>();
    global1 = array<Struct_1, 5>();
    return vec2<u32>(arg_1.a.x, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i), u_input.d, -vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))), u_input.d.x);
    let var_1 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, false, true), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)), select(!vec3<bool>(true, any(vec2<bool>(false, false)), any(vec2<bool>(false, true))), vec3<bool>(true, false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true))), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), !(!any(vec3<bool>(false, false, true))));
    let var_2 = ~u_input.e;
    global3 = array<Struct_1, 6>();
    global1 = array<Struct_1, 5>();
    var var_3 = Struct_2(~func_5(_wgslsmith_f_op_f32(ceil(-512f)), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(12163u, u_input.e), vec2<u32>(var_2, 4294967295u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1215f, 938f, 1436f, 1895f)) + _wgslsmith_f_op_vec4_f32(func_1(global1[_wgslsmith_index_u32(var_2, 5u)], vec4<u32>(85447u, u_input.a, 36954u, u_input.c), 311f, -671f))), Struct_2(vec2<u32>(0u, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(966f * -164f), -1401f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -619f), 663f, all(vec2<bool>(var_1.x, true)))), _wgslsmith_f_op_vec4_f32(func_1(global3[_wgslsmith_index_u32(2794u, 6u)], vec4<u32>(4294967295u, u_input.c, var_3.a.x, 35285u) & vec4<u32>(1u, 0u, var_2, 4294967295u), -908f, -2296f)).x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(396f + -729f), _wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(190f + -727f), _wgslsmith_f_op_f32(select(-1047f, 1212f, var_1.x))))), ~_wgslsmith_sub_u32(u_input.e, ~(0u << (var_3.a.x % 32u))), var_3.a ^ (vec2<u32>(var_3.a.x, 1u) >> (var_3.a % vec2<u32>(32u))), ~u_input.d ^ _wgslsmith_div_vec3_i32(u_input.d, select(u_input.b >> (vec3<u32>(75738u, 1u, 0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.d.x, 1i, 24070i)), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, var_1.x, true), var_1.x))), ~countOneBits(_wgslsmith_mult_i32(u_input.b.x ^ -6810i, 1i << (var_2 % 32u))));
}

