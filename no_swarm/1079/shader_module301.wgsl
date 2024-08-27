struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 1i, -30480i);

var<private> global1: vec4<f32>;

var<private> global2: vec4<u32> = vec4<u32>(3477u, 0u, 16384u, 0u);

var<private> global3: array<f32, 23>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<u32>(min(global0.a, 1u), 10522u, _wgslsmith_dot_vec3_u32(global2.zyw, ~vec3<u32>(max(25672u, 16930u), min(global0.a, u_input.b.x), firstTrailingBit(1u))));
    global3 = array<f32, 23>();
    var var_1 = !(!select(vec2<bool>(all(vec4<bool>(true, false, false, false)), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, arg_0.a >= global1.x)));
    let var_2 = global0.a;
    var var_3 = _wgslsmith_f_op_f32(round(1281f));
    return reverseBits(global2.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xy * global1.xz)))));
    var var_2 = _wgslsmith_mult_u32(~u_input.b.x, ~(~(~global0.a << (global2.x % 32u))));
    var var_3 = global2.zzz & _wgslsmith_sub_vec3_u32(max(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.a.zyx, u_input.b), global2.zyw) << (_wgslsmith_mod_vec3_u32(~u_input.a.xzw, select(u_input.a.xyy, u_input.b, arg_2)) % vec3<u32>(32u)), abs(countOneBits(firstLeadingBit(vec3<u32>(global0.a, global0.a, global0.a)))));
    var var_4 = true;
    return Struct_1(_wgslsmith_div_u32(func_3(Struct_2(-595f), Struct_1(abs(10305u), ~1182i, firstLeadingBit(global0.b))), u_input.a.x), ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(-49196i, 0i, 34205i), vec3<i32>(global0.c, 1i, global0.c)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, 1u, global2.x), vec3<u32>(global0.a, 4294967295u, 72131u)) % vec3<u32>(32u)), vec3<i32>(2147483647i, ~global0.c, abs(28686i))), firstTrailingBit(firstLeadingBit(_wgslsmith_div_i32(~arg_0.x, firstLeadingBit(global0.b)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(global1.x)));
    let var_1 = arg_0.b;
    global0 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-global1.wx);
    var var_3 = Struct_1(~_wgslsmith_dot_vec2_u32((u_input.a.yw >> (vec2<u32>(global0.a, global0.a) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a, 22956u), global2.zz) % vec2<u32>(32u)), ~vec2<u32>(52810u, 23833u)), -17382i, arg_1.x);
    return func_2(_wgslsmith_sub_vec2_i32(arg_1, vec2<i32>(_wgslsmith_mult_i32(arg_1.x, -39064i), -firstLeadingBit(arg_1.x))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(773f * var_2.x)))), false, select(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), global0.c != arg_2.c), vec3<bool>(true, true, true), any(vec4<bool>(false, false, false, false))), true));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> u32 {
    return global2.x;
}

fn func_1() -> bool {
    global2 = ~u_input.a;
    var var_0 = _wgslsmith_div_vec2_u32(u_input.b.zy, vec2<u32>(max(select(u_input.b.x, 0u, true), global0.a >> (0u % 32u)) | ~(~32264u), func_5(func_4(func_2(vec2<i32>(global0.c, -1i), Struct_2(-759f), false, vec3<bool>(true, false, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.b, -2147483647i), vec2<i32>(-43987i, -1i)), Struct_1(global2.x, global0.c, global0.c)), 1u, Struct_2(_wgslsmith_f_op_f32(global1.x + 1330f)))));
    global2 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(global1.yy, global1.wy));
    let var_2 = _wgslsmith_add_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(max(global2.x, 10840u), ~var_0.x), ~u_input.a.zy)), _wgslsmith_clamp_vec2_u32(u_input.a.xx, reverseBits(u_input.b.xz), ~firstTrailingBit(~vec2<u32>(u_input.a.x, 1u))));
    return false;
}

fn func_6(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = vec2<i32>(countOneBits(arg_2.c), -26752i);
    let var_1 = vec4<u32>(~195u, ~(~_wgslsmith_mult_u32(u_input.a.x, global0.a)), abs(14851u), select(u_input.b.x, 1u, !func_1()));
    let var_2 = _wgslsmith_mult_u32(0u, arg_2.a);
    var var_3 = func_4(Struct_1(~(~(76675u ^ var_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, var_0.x), vec2<i32>(-1i, var_0.x)) | ~28689i, _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(-1i, -52900i, global0.c)), ~firstLeadingBit(vec3<i32>(-1i, var_0.x, global0.c)))), min(-select(-vec2<i32>(global0.c, -2147483647i), vec2<i32>(var_0.x, -1i) >> (var_1.zz % vec2<u32>(32u)), select(arg_3.zw, arg_3.wz, arg_3.zw)), vec2<i32>(reverseBits(~arg_2.c), 38989i & -arg_2.c)), arg_2);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -223f, -189f, 362f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], -197f, -494f, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 382f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(15717u, 23u)], _wgslsmith_f_op_f32(-291f + global1.x), 500f, -1585f))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.x);
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(var_0.a);
    var var_1 = ~select(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, global0.b, global0.c) ^ vec4<i32>(-40631i, -23305i, -2147483647i, global0.c), _wgslsmith_add_vec4_i32(vec4<i32>(global0.b, -4749i, global0.b, -2147483647i), vec4<i32>(-22815i, global0.b, -2147483647i, 28815i)))), global0.b, !any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)));
    let var_2 = func_6(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, global3[_wgslsmith_index_u32(u_input.a.x, 23u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global2.x, 23u)], 1278f) * global1.zy))), global1.xw, vec2<bool>(false, true))))), func_1(), func_2(-_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(global0.b, -2147483647i)), Struct_2(788f), true, !vec3<bool>(any(vec4<bool>(true, false, false, false)), false, true)), vec4<bool>(false, true, false || (var_0.a <= var_0.a), 786f <= global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global3[_wgslsmith_index_u32(1u, 23u)]) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 23u)] * var_0.a)), var_0.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a)))), ~func_4(var_2, abs(vec2<i32>(global0.b, global0.c)), Struct_1(func_5(var_2, global0.a, Struct_2(global1.x)), ~var_2.b, -1i)).c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f) + -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(-166f * -496f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - global3[_wgslsmith_index_u32(30961u, 23u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1002f, 1789f, true)) + _wgslsmith_f_op_f32(round(-1690f))))), ~(-(~(vec2<i32>(-2147483647i, global0.c) & vec2<i32>(-4284i, global0.c)))));
}

