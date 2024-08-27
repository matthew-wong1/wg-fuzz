struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 28> = array<u32, 28>(4294967295u, 64828u, 1u, 4294967295u, 70879u, 4294967295u, 1u, 9340u, 4294967295u, 4370u, 1u, 50692u, 4294967295u, 11048u, 88505u, 1u, 83419u, 1u, 33152u, 89469u, 10418u, 1u, 34093u, 36657u, 61693u, 0u, 0u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(~(~countOneBits(~vec4<u32>(u_input.a, 39119u, global1[_wgslsmith_index_u32(37534u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)]))), vec4<i32>(-abs(u_input.b), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global0.xxx, vec3<i32>(-34911i, 0i, 1i)), -17110i), -51648i, global0.x), !(!vec3<bool>(select(true, false, true), true, true)), Struct_1(global0.x >> (59828u % 32u)));
    var var_1 = any(var_0.c) | !(var_0.a.x > _wgslsmith_dot_vec2_u32(var_0.a.zz, abs(vec2<u32>(11248u, 4294967295u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(742f, -227f, -2343f)), vec3<f32>(1f, 1f, 1f))));
    global0 = -max(_wgslsmith_sub_vec4_i32(vec4<i32>(30776i, global0.x, u_input.b, var_0.b.x) ^ vec4<i32>(u_input.b, var_0.d.a, u_input.b, global0.x), var_0.b) >> (var_0.a % vec4<u32>(32u)), var_0.b ^ ~var_0.b);
    var var_3 = var_0.b;
    return ~(select(vec3<u32>(4294967295u, ~0u, var_0.a.x), abs(vec3<u32>(0u, u_input.a, var_0.a.x)), false) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<u32>) -> u32 {
    global0 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~max(vec4<i32>(1592i, 1i, 1i, -18617i), vec4<i32>(-62535i, 1i, u_input.b, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-16430i, u_input.b, 35167i, global0.x), vec4<i32>(3406i, 1i, 27484i, global0.x)) << (min(vec4<u32>(arg_0, 18155u, 31834u, arg_0), vec4<u32>(arg_3.x, arg_0, 1u, global1[_wgslsmith_index_u32(4294967295u, 28u)])) % vec4<u32>(32u))) << (~firstLeadingBit(vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 28u)], 3208u, 80031u)) % vec4<u32>(32u)), vec4<i32>(-countOneBits(u_input.b), firstLeadingBit(6882i), -2147483647i, arg_1.a));
    let var_0 = arg_3.xz;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1505f), _wgslsmith_div_f32(-847f, 1962f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2022f)) + _wgslsmith_f_op_f32(f32(-1f) * -511f)), -510f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-900f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1, var_1)), -782f)))));
    var var_3 = arg_1;
    return 1u & _wgslsmith_mult_u32(4294967295u, abs(var_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = Struct_3(reverseBits(vec3<u32>(1u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 8843u), 28u)], 1u), select(u_input.a, ~u_input.a, false))), ~(-vec4<i32>(~(-1i), i32(-1i) * -1i, -28168i, u_input.b >> (u_input.a % 32u))));
    let var_1 = arg_0;
    let var_2 = ~func_4(~reverseBits(0u), Struct_1(u_input.b), vec4<bool>(true, true, true, true), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(func_3(), vec3<u32>(var_0.a.x, 0u, var_0.a.x), vec3<u32>(23479u, u_input.a, u_input.a)), select(max(var_0.a, var_0.a), select(vec3<u32>(u_input.a, 56256u, var_0.a.x), var_0.a, vec3<bool>(false, true, false)), false)));
    var var_3 = arg_0;
    var var_4 = var_1;
    return !((u_input.a < u_input.a) & all(vec3<bool>(true, true, any(vec2<bool>(false, false)))));
}

fn func_5(arg_0: u32, arg_1: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_div_u32(select(arg_0, ~firstTrailingBit(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(30405u, 28u)], u_input.a, 29157u)), arg_1), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 0u, 28945u, arg_0), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), vec4<bool>(arg_1, arg_1, true, arg_1)), vec4<u32>(7398u, 0u, 92216u, arg_0)) | ~5881u, 28u)]);
    var var_1 = u_input.b;
    var var_2 = func_3().yy;
    global1 = array<u32, 28>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(380f + -192f), _wgslsmith_f_op_f32(ceil(199f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-172f)), _wgslsmith_div_f32(-1000f, -1155f))))));
    return vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(~0u, 0u), func_3().x), 1u, _wgslsmith_mult_u32(0u, 0u >> ((~17417u << (_wgslsmith_add_u32(u_input.a, 1u) % 32u)) % 32u)), 56612u);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    global0 = arg_1.b;
    global1 = array<u32, 28>();
    var var_0 = !(arg_1.c.x || !arg_1.c.x);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1351f - 152f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, 557f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(min(-475f, -1379f)), true)))))));
    return Struct_3(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, func_4(~57956u, arg_2, !vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_1.c.x), vec3<u32>(u_input.a, u_input.a, 12842u)), 82915u >> (func_3().x % 32u)), arg_1.a.xzy & vec3<u32>(u_input.a, 129474u | u_input.a, 68597u)), -_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 1i, -4079i, 2147483647i)), vec4<i32>(-1i, u_input.b, -2147483647i, -11551i)) ^ vec4<i32>(arg_1.b.x, -9088i, _wgslsmith_add_i32(arg_2.a, _wgslsmith_mult_i32(var_1.x, u_input.b)), global0.x));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = func_6(global0.ywz, Struct_2(func_5(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(45864u, global1[_wgslsmith_index_u32(56146u, 28u)], 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 38388u, 4294967295u))), !func_2(Struct_1(global0.x), -1403f)), _wgslsmith_div_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -47656i, 2147483647i, -2147483647i), vec4<i32>(-1i, global0.x, 2147483647i, u_input.b)), select(vec4<i32>(u_input.b, u_input.b, -18358i, arg_0), vec4<i32>(arg_0, global0.x, 0i, -2147483647i), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, arg_0, 0i, arg_0)), vec3<bool>(true, true, true), Struct_1(-2147483647i)), Struct_1(~(-22582i)), _wgslsmith_mult_i32(global0.x, _wgslsmith_dot_vec2_i32(~global0.zy, min(_wgslsmith_sub_vec2_i32(global0.zw, global0.yy), ~global0.xz))));
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -(23053i & var_0.b.x), firstLeadingBit(3436i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 12960i), ~(-vec2<i32>(var_0.b.x, var_0.b.x))), firstLeadingBit(_wgslsmith_mod_i32(2147483647i, arg_0)) << (~1u % 32u)), ~(-var_0.b), -abs(firstLeadingBit(-vec4<i32>(u_input.b, global0.x, u_input.b, global0.x))));
    return min(var_0.b.x, -_wgslsmith_mod_i32(global0.x, global0.x) >> (var_0.a.x % 32u)) ^ (select(arg_0, -u_input.b & _wgslsmith_mult_i32(global0.x, 5981i), func_2(Struct_1(-2147483647i), _wgslsmith_div_f32(-584f, -1444f))) >> (func_5(0u, true).x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((_wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, -1i), global0.x) >> (0u % 32u)) << (u_input.a % 32u));
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-205f, -1829f)))));
    var var_2 = ~((_wgslsmith_mod_vec3_u32(vec3<u32>(47192u, u_input.a, 4294967295u), select(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(3888u, 28u)]), vec3<u32>(0u, u_input.a, u_input.a), vec3<bool>(false, true, true))) >> (max(_wgslsmith_div_vec3_u32(vec3<u32>(55026u, 1u, global1[_wgslsmith_index_u32(0u, 28u)]), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 28u)], 0u)), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], 84230u, global1[_wgslsmith_index_u32(u_input.a, 28u)]) ^ vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(990u, 28u)], 0u)) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(54745u, 28u)], 18382u, 517u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(37537u, global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4724u, 28u)], 28u)], 30126u), vec4<u32>(global1[_wgslsmith_index_u32(43689u, 28u)], u_input.a, 4294967295u, global1[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], u_input.a, 9021u, 0u))), global1[_wgslsmith_index_u32(~u_input.a, 28u)] << (u_input.a % 32u), ~4294967295u) % vec3<u32>(32u)));
    global0 = vec4<i32>(func_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, global0.x), var_0.a), countOneBits(var_0.a))), func_6(vec3<i32>(-1i >> (_wgslsmith_mult_u32(var_2.x, 1u) % 32u), select(var_0.a >> (40474u % 32u), ~var_0.a, true), u_input.b), Struct_2(func_5(u_input.a << (var_2.x % 32u), false), vec4<i32>(_wgslsmith_mod_i32(4952i, u_input.b), ~17024i, -2147483647i, select(1i, global0.x, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), var_0), Struct_1(-8880i), -57541i).b.x, _wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(~(-2147483647i), 1i)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-1i, -func_6(vec3<i32>(var_0.a, var_0.a, 33398i), Struct_2(vec4<u32>(global1[_wgslsmith_index_u32(1u, 28u)], 0u, global1[_wgslsmith_index_u32(var_2.x, 28u)], u_input.a), vec4<i32>(var_0.a, var_0.a, -1i, 1752i), vec3<bool>(false, false, true), Struct_1(var_0.a)), Struct_1(u_input.b), global0.x).b.x, global0.x) | (reverseBits(i32(-1i) * -24276i) | ~u_input.b), _wgslsmith_f_op_f32(1525f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1218f * -874f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1775f)), _wgslsmith_f_op_f32(round(-1000f))))), var_2.x, 46534u);
}

