struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 32780u;

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<i32, 1>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    let var_0 = Struct_3(min(~max(u_input.a, 15594u), ~reverseBits(u_input.a)), u_input.a, Struct_1(~_wgslsmith_add_vec2_i32(vec2<i32>(-9025i, 0i) ^ vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)]), select(vec2<i32>(global2[_wgslsmith_index_u32(3573u, 1u)], global2[_wgslsmith_index_u32(38784u, 1u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(true, false)))), Struct_1(~countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(43455u, 1u)], 2147483647i) << (vec2<u32>(1u, 32925u) % vec2<u32>(32u)))));
    var var_1 = !(any(vec3<bool>(true, true, true)) & ((_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_0.b, 1u)], -1i), vec3<i32>(var_0.d.a.x, global2[_wgslsmith_index_u32(0u, 1u)], 0i)) | 1i) >= 0i));
    var_1 = _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1i)) << (_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.b, 1u), max(vec2<u32>(var_0.b, 8664u), vec2<u32>(1u, var_0.b))) % vec2<u32>(32u)), var_0.d.a) < -34705i;
    return all(!vec2<bool>(false, all(vec2<bool>(true, false))));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec3<bool>(func_3(), any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, false), true)) & (true && (firstLeadingBit(global2[_wgslsmith_index_u32(13013u, 1u)]) < _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(90990u, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)], 1i, -14320i), vec4<i32>(3926i, global2[_wgslsmith_index_u32(26501u, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)])))), false);
    let var_1 = Struct_3(1u, ~u_input.a, Struct_1(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(16643i, -21027i), vec2<i32>(global2[_wgslsmith_index_u32(32371u, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<i32>(global2[_wgslsmith_index_u32(11287u, 1u)], -2147483647i)))), Struct_1(_wgslsmith_add_vec2_i32(-vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], -1i), vec2<i32>(~global2[_wgslsmith_index_u32(61998u, 1u)], global2[_wgslsmith_index_u32(~u_input.a, 1u)]))));
    var var_2 = _wgslsmith_dot_vec3_i32(firstTrailingBit(~(vec3<i32>(13889i, var_1.d.a.x, global2[_wgslsmith_index_u32(0u, 1u)]) << (vec3<u32>(8206u, 1u, u_input.a) % vec3<u32>(32u))) ^ ~(-vec3<i32>(global2[_wgslsmith_index_u32(89564u, 1u)], -11933i, -2147483647i))), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(firstTrailingBit(2147483647i), global2[_wgslsmith_index_u32(u_input.a << (4764u % 32u), 1u)], countOneBits(14481i))), -(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], var_1.c.a.x, var_1.c.a.x) << ((vec3<u32>(70959u, u_input.a, 4294967295u) | vec3<u32>(1u, var_1.b, 1u)) % vec3<u32>(32u)))));
    let var_3 = ~select(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], var_1.d.a.x, global2[_wgslsmith_index_u32(var_1.b, 1u)], 2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(var_1.b, 1u)], var_1.d.a.x, global2[_wgslsmith_index_u32(0u, 1u)], 42422i)), var_1.d.a.x, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(0u, 1u)], 29927i), var_1.c.a.x ^ global2[_wgslsmith_index_u32(var_1.a, 1u)]), vec4<i32>(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(firstLeadingBit(42051u), 1u)], global2[_wgslsmith_index_u32(u_input.a ^ 76201u, 1u)], select(-2147483647i, -1i, true)), -22926i, global2[_wgslsmith_index_u32(max(u_input.a, ~34354u), 1u)], _wgslsmith_sub_i32(var_1.d.a.x, global2[_wgslsmith_index_u32(var_1.a, 1u)]) & var_1.c.a.x), select(!select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), false), vec4<bool>(var_0.x, false, var_0.x | var_0.x, true), var_0.x));
    let var_4 = select(select(!vec3<bool>(all(var_0.zx), true, var_1.c.a.x <= var_1.c.a.x), vec3<bool>(func_3(), !all(vec3<bool>(var_0.x, true, var_0.x)), all(select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, var_0.x, var_0.x, true), true))), vec3<bool>(firstTrailingBit(u_input.a) < ~var_1.a, true, true)), select(vec3<bool>(false, var_0.x, true), select(!(!vec3<bool>(true, false, var_0.x)), select(vec3<bool>(false, true, var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_0.x), var_0.x), true), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, false), var_0.x)), !select(vec3<bool>(var_0.x, true, false), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), true), var_0.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x));
    return vec4<bool>(true, var_0.x, true, select(true, var_0.x, false));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>, arg_3: bool) -> vec2<i32> {
    global1 = array<Struct_2, 14>();
    global0 = min(19972u, 11102u);
    global0 = u_input.a & _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(arg_2, arg_2), select(~arg_2, vec4<u32>(39915u, 87205u, arg_2.x, u_input.a), func_2())), ~arg_2);
    let var_0 = false;
    let var_1 = ~_wgslsmith_mod_i32(-arg_0.a & reverseBits(1i), (i32(-1i) * -24372i) & arg_0.a) & abs(~(_wgslsmith_dot_vec3_i32(vec3<i32>(-52398i, arg_0.a, arg_0.a), vec3<i32>(global2[_wgslsmith_index_u32(arg_2.x, 1u)], -1i, arg_0.a)) >> (arg_2.x % 32u)));
    return _wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(min(min(vec2<i32>(var_1, var_1), vec2<i32>(var_1, 30875i)), select(vec2<i32>(0i, -16870i), vec2<i32>(-22261i, var_1), vec2<bool>(true, var_0))), vec2<i32>(1i, -1i))), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(4677i, var_1), vec2<i32>(-1i) * -vec2<i32>(var_1, 51313i), vec2<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(46087u, 1u)], -1i), 8032i))), abs(vec2<i32>(_wgslsmith_sub_i32(11088i, -1i), -2147483647i)) ^ abs(vec2<i32>(arg_0.a, 1i) | select(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<i32>(global2[_wgslsmith_index_u32(38167u, 1u)], -1i), vec2<bool>(arg_3, var_0))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~((~vec4<u32>(0u, u_input.a, 4294967295u, 34058u) ^ min(vec4<u32>(u_input.a, u_input.a, u_input.a, 43481u) & vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 1u, 4294967295u) ^ vec4<u32>(u_input.a, 39984u, u_input.a, u_input.a))) | abs(~select(vec4<u32>(0u, 7555u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), true)));
    let var_1 = vec2<u32>(~1u, u_input.a);
    let var_2 = Struct_1(vec2<i32>(-1i) * -arg_2.a);
    global0 = ~firstLeadingBit(min(~0u, 60047u));
    var var_3 = arg_0.b.x <= 2557f;
    return Struct_1(-_wgslsmith_mod_vec2_i32(select(max(vec2<i32>(0i, -63151i), arg_2.a), select(var_2.a, vec2<i32>(43611i, global2[_wgslsmith_index_u32(10101u, 1u)]), vec2<bool>(true, true)), true), -_wgslsmith_add_vec2_i32(vec2<i32>(46645i, global2[_wgslsmith_index_u32(38364u, 1u)]), vec2<i32>(-23983i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 1>();
    global2 = array<i32, 1>();
    let var_0 = -(firstLeadingBit((vec4<i32>(global2[_wgslsmith_index_u32(2787u, 1u)], global2[_wgslsmith_index_u32(60249u, 1u)], 62384i, global2[_wgslsmith_index_u32(u_input.a, 1u)]) >> (vec4<u32>(u_input.a, 4294967295u, 0u, 33233u) % vec4<u32>(32u))) << (vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(~0u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 45907u), vec3<u32>(u_input.a, u_input.a, u_input.a)) & u_input.a, u_input.a) % vec4<u32>(32u)));
    global0 = 94510u;
    let var_1 = func_4(global1[_wgslsmith_index_u32(u_input.a, 14u)], _wgslsmith_dot_vec2_i32(func_1(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)), 14u)], _wgslsmith_f_op_f32(round(-301f)), ~reverseBits(vec4<u32>(21203u, 0u, u_input.a, u_input.a)), true), -_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(18296u, 1u)]), var_0.zw)), Struct_1(var_0.xw));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -475f))) + _wgslsmith_f_op_f32(step(-1000f, -1473f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1512f, 176f) - 774f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1002f))))))));
    var var_3 = Struct_3(firstLeadingBit(firstLeadingBit(~u_input.a)), ~73375u, func_4(Struct_2(abs(-12651i) & global2[_wgslsmith_index_u32(max(u_input.a, 23590u), 1u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(641f, var_2.x, 851f, 3231f) * vec4<f32>(var_2.x, var_2.x, 1000f, var_2.x)))), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, u_input.a) | ~39050u, 1u)], func_4(Struct_2(global2[_wgslsmith_index_u32(u_input.a, 1u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))), -func_1(global1[_wgslsmith_index_u32(36396u, 14u)], var_2.x, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), true).x, var_1)), func_4(Struct_2(firstLeadingBit(-10796i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1564f, var_2.x, var_2.x, 490f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1380f, var_2.x, -1979f, 482f)))))), var_1.a.x, var_1));
    let var_4 = func_4(Struct_2(abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(11860u, 1u)]), _wgslsmith_add_i32(0i, 2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 1805f, var_2.x)))), 1i, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -367f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) + _wgslsmith_f_op_f32(var_2.x - var_2.x)))), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.yxy, var_0.zyx), func_1(global1[_wgslsmith_index_u32(var_3.a, 14u)], var_2.x, vec4<u32>(79351u, var_3.b, 0u, u_input.a), true).x)), vec2<i32>(var_0.x, _wgslsmith_sub_i32(var_3.d.a.x, _wgslsmith_div_i32(1i, 15844i)))), 4294967295u);
}

