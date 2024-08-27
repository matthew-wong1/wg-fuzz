struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 19> = array<bool, 19>(true, false, true, true, false, true, true, true, true, false, false, true, false, true, true, true, false, true, false);

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    global2 = array<bool, 19>();
    var var_0 = vec2<i32>(abs(_wgslsmith_sub_i32(arg_0, arg_0 & 1i) ^ -1i), abs(22389i));
    global2 = array<bool, 19>();
    global1 = ~u_input.a;
    let var_1 = Struct_3(var_0.x, Struct_2(u_input.a.xyy, vec4<bool>(!all(vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)])), false, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], !(!global2[_wgslsmith_index_u32(global1.x, 19u)])), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(69732u, u_input.a.x, u_input.b, global1.x), u_input.a, vec4<bool>(false, global2[_wgslsmith_index_u32(global1.x, 19u)], global2[_wgslsmith_index_u32(68753u, 19u)], true)), ~u_input.a), 16u)], Struct_1(_wgslsmith_mult_u32(1u, u_input.b | global1.x), _wgslsmith_sub_u32(93601u, _wgslsmith_sub_u32(u_input.b, 0u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-474f, -598f, 1038f, -629f), vec4<f32>(1514f, -1000f, 2487f, -593f), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(global1.x, 19u)], false))))), _wgslsmith_div_i32(max(1i, 0i), -var_0.x), u_input.a.zx)), Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(select(u_input.a.zxz, global1.wyw, vec3<bool>(false, false, false)), vec3<u32>(4294967295u, 31735u, u_input.b)), u_input.a.ywx & select(global1.yyy, vec3<u32>(4087u, 3050u, global1.x), global2[_wgslsmith_index_u32(u_input.a.x, 19u)])), !select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(108636u, 19u)]), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)]), true), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(44016u, 4294967295u), select(global1.x, u_input.b, global2[_wgslsmith_index_u32(global1.x, 19u)]), global1.x), ~24201u, vec4<f32>(1641f, _wgslsmith_f_op_f32(195f - 846f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(729f + -104f)), reverseBits(var_0.x), ~(~vec2<u32>(global1.x, global1.x))), global3[_wgslsmith_index_u32(u_input.b, 16u)]), global3[_wgslsmith_index_u32(min(67317u, u_input.b), 16u)]);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(717f, 895f, select(true, var_1.b.b.x, _wgslsmith_f_op_f32(floor(1663f)) != _wgslsmith_f_op_f32(f32(-1f) * -345f))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    global0 = -207f > _wgslsmith_f_op_f32(func_3(arg_0.x));
    let var_0 = Struct_2(abs(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(49903u, 0u, u_input.b), vec3<u32>(u_input.a.x, u_input.b, global1.x), vec3<u32>(11596u, u_input.a.x, u_input.a.x)))) | vec3<u32>(0u, ~(~global1.x), global1.x), vec4<bool>(arg_1, arg_1, (0u & u_input.a.x) < 0u, !arg_1), Struct_1(_wgslsmith_sub_u32(~global1.x, _wgslsmith_sub_u32(0u, 0u)) | ~(~0u), ~global1.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, arg_2.x, arg_2.x, arg_2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, -1689f, arg_2.x, arg_2.x))), vec4<f32>(-1029f, arg_2.x, _wgslsmith_f_op_f32(arg_2.x * -117f), _wgslsmith_f_op_f32(-arg_2.x)))), -21985i, firstLeadingBit(select(global1.yw, global1.xz, select(vec2<bool>(arg_1, global2[_wgslsmith_index_u32(76195u, 19u)]), vec2<bool>(false, true), true)))), Struct_1(max(1u, 53589u), ~(~u_input.a.x) ^ reverseBits(~3184u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(945f, arg_2.x), _wgslsmith_div_f32(-642f, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1235f, -529f)), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, arg_2.x), arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1839f))), 0i, ~(~u_input.a.zz)));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a | vec4<u32>(0u, global1.x, 0u, 38812u), vec4<u32>(var_0.a.x, 0u, 0u, 4294967295u))), _wgslsmith_div_u32(~min(u_input.b, 47556u), global1.x), 56073u), (_wgslsmith_mult_vec4_u32(vec4<u32>(21691u, 57461u, 4294967295u, 6530u), select(vec4<u32>(var_0.a.x, u_input.b, 0u, 45838u), u_input.a, vec4<bool>(false, false, true, var_0.b.x))) & min(~u_input.a, abs(u_input.a))) ^ ~_wgslsmith_add_vec4_u32(max(vec4<u32>(31680u, var_0.a.x, global1.x, global1.x), vec4<u32>(4294967295u, 41710u, var_0.d.a, u_input.a.x)), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(48122u, global1.x, 4294967295u, 4294967295u), u_input.a)));
    var var_2 = var_0;
    return Struct_2(~(~firstTrailingBit(var_0.a)), vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 19u)], any(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.xwy, var_1.wzx), 19u)], true, var_1.x <= 4294967295u)), -40620i < var_2.c.d, true), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.x, 0u, 1u, global1.x), u_input.a | u_input.a), ~global1.x, _wgslsmith_f_op_vec4_f32(-var_2.c.c), select(-30102i, 1i, false), vec2<u32>(abs(72111u | var_1.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(17197u, 0u, var_0.d.a, global1.x), vec4<u32>(12771u, var_0.d.b, var_2.c.b, 65437u), var_0.b), vec4<u32>(4294967295u, 0u, 0u, 4294967295u)))), var_2.c);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    let var_0 = func_2(~min(abs(vec4<i32>(-40752i, -11601i, 2147483647i, -49713i)) << ((vec4<u32>(79359u, 1u, 39414u, arg_3.x) << (vec4<u32>(arg_0, arg_3.x, arg_3.x, arg_3.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i) >> ((vec4<u32>(u_input.b, u_input.a.x, 53311u, 28203u) ^ vec4<u32>(43044u, 66989u, u_input.b, 0u)) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(~arg_3.x, 19u)] == !arg_1.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(arg_2, -1055f, -172f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1000f, arg_2)))), vec3<f32>(393f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 * arg_2)), all(vec4<bool>(1u <= arg_0, global2[_wgslsmith_index_u32(1u, 19u)], arg_1.x != arg_1.x, false)))));
    var var_1 = ~var_0.c.d;
    var var_2 = Struct_3(var_0.c.d, Struct_2(vec3<u32>(~(~global1.x), 1u >> (arg_0 % 32u), arg_0), arg_1, global3[_wgslsmith_index_u32(~(~arg_0 << (u_input.a.x % 32u)), 16u)], Struct_1(reverseBits(~1u), _wgslsmith_mult_u32(arg_0, _wgslsmith_mult_u32(arg_3.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-var_0.c.c), var_0.d.d, _wgslsmith_sub_vec2_u32(arg_3.yy, arg_3.xy))), Struct_2(max(max(firstTrailingBit(vec3<u32>(21968u, var_0.a.x, arg_3.x)), vec3<u32>(var_0.d.b, 82382u, arg_3.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1.x, u_input.a.x), func_2(vec4<i32>(1i, var_0.c.d, 6307i, 0i), global2[_wgslsmith_index_u32(u_input.b, 19u)], var_0.c.c.zzx).a)), !select(!var_0.b, vec4<bool>(global2[_wgslsmith_index_u32(0u, 19u)], true, true, false), vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(var_0.a.x, 19u)], var_0.b.x, global2[_wgslsmith_index_u32(arg_0, 19u)])), Struct_1(~var_0.c.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, u_input.a.x, 0u), ~vec3<u32>(var_0.d.e.x, var_0.d.b, 17657u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1482f), arg_2, _wgslsmith_f_op_f32(arg_2 + 273f), _wgslsmith_f_op_f32(max(var_0.c.c.x, -174f))), 0i, vec2<u32>(firstLeadingBit(arg_0), arg_3.x)), func_2(select(vec4<i32>(2147483647i, var_0.d.d, -1i, -11517i), ~vec4<i32>(var_0.c.d, 2147483647i, var_0.d.d, var_0.d.d), func_2(vec4<i32>(-2147483647i, var_0.c.d, var_0.c.d, -28453i), false, var_0.d.c.xwy).b), true, var_0.d.c.wxy).c), global3[_wgslsmith_index_u32(arg_3.x, 16u)]);
    let var_3 = Struct_3(var_2.b.c.d << (37142u % 32u), func_2(~vec4<i32>(1i, abs(var_0.d.d), var_2.b.c.d, var_0.d.d), !(arg_1.x & !var_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(floor(564f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1565f - 782f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c.d.c.x))))), func_2(~(-countOneBits(vec4<i32>(var_0.d.d, 0i, var_2.b.c.d, -2147483647i))), true, _wgslsmith_f_op_vec3_f32(floor(var_2.c.c.c.wwy))), Struct_1(_wgslsmith_mod_u32(17657u, select(~var_0.a.x, 1u, true)), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 1641f, var_2.d.c.x) + vec4<f32>(arg_2, arg_2, -347f, var_2.b.c.c.x)) + vec4<f32>(1296f, var_2.c.d.c.x, arg_2, var_2.c.d.c.x)) * var_0.c.c), 2147483647i, _wgslsmith_clamp_vec2_u32(global1.wx, _wgslsmith_add_vec2_u32(vec2<u32>(global1.x, u_input.b), var_0.d.e), select(global1.wy, vec2<u32>(var_0.c.e.x, arg_3.x), true))));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d.c.ww + vec2<f32>(var_0.c.c.x, -1538f)), _wgslsmith_f_op_vec2_f32(ceil(var_2.b.c.c.xz))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.c.xz))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.c.c.x, arg_2)) + _wgslsmith_f_op_vec2_f32(-var_0.d.c.zw)), _wgslsmith_f_op_vec2_f32(-var_2.b.c.c.xz))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, var_4.x), -633f);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(~arg_0.x, arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 624f, arg_2) - vec4<f32>(345f, arg_2, -759f, arg_2)) - vec4<f32>(-311f, arg_2, 227f, arg_2))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-321f, 883f, arg_2, arg_2), vec4<f32>(arg_2, -1535f, arg_2, 107f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-719f, -173f, arg_2, arg_2) + vec4<f32>(1704f, arg_2, 462f, arg_2)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_2, -1000f, arg_2), vec4<f32>(-900f, 307f, arg_2, -1255f))), !global2[_wgslsmith_index_u32(0u, 19u)])))), 11696i << (~_wgslsmith_div_u32(_wgslsmith_mult_u32(52730u, arg_0.x), func_2(vec4<i32>(38599i, 10405i, arg_1, 12688i), false, vec3<f32>(-973f, arg_2, arg_2)).c.b) % 32u), arg_0.ww);
    let var_1 = !any(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u & var_0.a, 89387u), 19u)], false, global2[_wgslsmith_index_u32(0u, 19u)]));
    let var_2 = countOneBits(vec3<u32>(u_input.b, 12776u, 77920u));
    var var_3 = vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 19u)] | (u_input.b >= 0u), var_1, ~var_2.x >= global1.x)), (~(~u_input.a.x) >> (102137u % 32u)) > ~(~(~var_0.a)));
    global1 = arg_0;
    return global3[_wgslsmith_index_u32(21411u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.a, -2147483647i, _wgslsmith_f_op_f32(func_1(global1.x, !select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(u_input.b, 19u)], false, global2[_wgslsmith_index_u32(4294967295u, 19u)]), select(vec4<bool>(false, false, false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(global1.x, 19u)], global2[_wgslsmith_index_u32(80286u, 19u)], true), false), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 19u)], false, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1148f))) + _wgslsmith_f_op_f32(-547f * 1f)), _wgslsmith_mod_vec3_u32(~global1.xyx, u_input.a.yyw))));
    var var_1 = firstTrailingBit(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.d, -13391i) | -vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(4491i, -65152i), vec2<i32>(var_0.d, 15598i)) << (select(var_0.e, vec2<u32>(2056u, var_0.a), vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 19u)], true)) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-252f)) - _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-var_0.c.x)));
    let var_3 = func_2(vec4<i32>(var_1.x, -1i, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-2147483647i, 32978i, var_0.d)), -(~vec3<i32>(var_1.x, var_0.d, var_0.d))), var_1.x), !global2[_wgslsmith_index_u32(0u, 19u)], func_4(max(~(u_input.a ^ vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.b)), vec4<u32>(_wgslsmith_mult_u32(24926u, 0u), 0u, u_input.a.x, 1u)), var_0.d, var_2).c.xyx);
    let var_4 = Struct_3(-2147483647i, func_2(~vec4<i32>(2147483647i & var_0.d, 23165i, var_1.x, 13734i), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_3.c.c.zxw, vec3<f32>(var_0.c.x, var_3.c.c.x, 262f)))))), var_3, var_3.d);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) + 503f) * _wgslsmith_f_op_f32(func_3(1i))), var_4.d.c.x));
    global2 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-var_4.b.c.c.x), _wgslsmith_div_f32(-1582f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) * _wgslsmith_f_op_f32(-var_3.c.c.x)))), select(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-4700i, var_1.x), vec2<i32>(2147483647i, -3912i), vec2<i32>(-1i, var_0.d)), vec2<i32>(var_1.x, -497i) & vec2<i32>(var_3.d.d, var_0.d)), vec2<i32>(_wgslsmith_clamp_i32(var_0.d, 0i, 1i), ~var_1.x), var_4.c.b.xy) ^ abs(max(vec2<i32>(-28257i, 2147483647i), abs(vec2<i32>(var_1.x, var_4.b.d.d)))), ~(~_wgslsmith_sub_vec3_u32(var_3.a, var_3.a)), vec3<i32>(-select(reverseBits(-2147483647i), -2147483647i, true), var_3.d.d, -(~var_3.d.d ^ _wgslsmith_clamp_i32(0i, var_4.b.d.d, 0i))));
}

