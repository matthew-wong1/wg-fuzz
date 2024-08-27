struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

var<private> global1: array<f32, 3>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: f32) -> vec3<i32> {
    global0 = array<vec4<u32>, 9>();
    global0 = array<vec4<u32>, 9>();
    global1 = array<f32, 3>();
    var var_0 = u_input.d.zx;
    let var_1 = Struct_4(Struct_3(arg_0, ~vec2<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), min(u_input.a.x, u_input.b.x)), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, 0i, 25838i), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.b.x), ~(vec3<u32>(arg_1, 49752u, u_input.e) | u_input.d)), Struct_1(vec3<i32>(_wgslsmith_mult_i32(-33865i, -1i), 16281i, _wgslsmith_mod_i32(1i, u_input.b.x)), u_input.d)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(reverseBits(u_input.d.x)), ~(~1u), _wgslsmith_mod_u32(~21387u, _wgslsmith_mod_u32(arg_1, 57561u))) << (~max(~62641u, 43056u) % 32u), 9u)]);
    return vec3<i32>(u_input.b.x, ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, u_input.a.x, 1i), abs(var_1.a.c.a)), ~select(vec3<i32>(var_1.a.d.a.x, 0i, var_1.a.d.a.x), u_input.a.yzy, true)), (abs(_wgslsmith_dot_vec4_i32(u_input.b, u_input.a)) ^ 17737i) << (64908u % 32u));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(89717u, min(~arg_0.c.b.x, _wgslsmith_add_u32(arg_3.d.b.x, 4294967295u)), _wgslsmith_dot_vec3_u32(~arg_0.d.b, arg_3.c.b)), vec3<u32>(~_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(abs(u_input.e), 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)] >> (global0[_wgslsmith_index_u32(18040u, 9u)] % vec4<u32>(32u))), ~min(abs(u_input.e), 1u), ~min(u_input.d.x, select(arg_3.d.b.x, arg_0.c.b.x, false))));
    let var_1 = arg_0.d.a.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.a, arg_3.a, arg_0.a), vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 3u)], 1056f, 246f))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1502f))))), !all(!vec3<bool>(arg_1.x, arg_1.x, false)))), Struct_1(_wgslsmith_mod_vec3_i32(select(func_3(arg_0.a, 10872u, -333f), arg_3.d.a, arg_1.xzz), _wgslsmith_mult_vec3_i32(u_input.a.yww, min(vec3<i32>(var_1, arg_2, arg_2), arg_3.c.a))), ~arg_3.c.b));
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.b.x, arg_0.c.b.x, var_2.b.b.x, var_0.x) ^ global0[_wgslsmith_index_u32(var_0.x, 9u)], ~global0[_wgslsmith_index_u32(6129u, 9u)]), abs(0u), ~(~0u)) & _wgslsmith_sub_vec3_u32(~(~vec3<u32>(arg_0.c.b.x, arg_3.c.b.x, arg_3.c.b.x)), reverseBits(var_2.b.b << (u_input.d % vec3<u32>(32u)))), var_2.b.b);
    var var_4 = Struct_5(vec3<bool>(false, true, arg_1.x || (_wgslsmith_div_i32(-16714i, arg_0.d.a.x) > var_2.b.a.x)), arg_2);
    return Struct_4(arg_0, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(7423u, arg_3.c.b.x << (countOneBits(~u_input.c) % 32u)), 9u)]);
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> u32 {
    global1 = array<f32, 3>();
    let var_0 = abs(_wgslsmith_mod_vec2_i32(arg_0.a.b, _wgslsmith_div_vec2_i32(reverseBits(max(vec2<i32>(0i, -22956i), vec2<i32>(4588i, arg_0.a.d.a.x))), -u_input.a.yx)));
    global0 = array<vec4<u32>, 9>();
    var var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(~10395u, 9u)]);
    return arg_0.a.d.b.x;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) * -1077f);
    global1 = array<f32, 3>();
    var var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = -((-(~(-50900i)) >> (0u % 32u)) | ((reverseBits(u_input.a.x) | (78100i ^ arg_0.a.x)) ^ 2147483647i));
    var var_3 = _wgslsmith_mult_u32(reverseBits(~1u), 1u) <= ~_wgslsmith_div_u32(1882u, func_4(func_2(Struct_3(var_0, arg_0.a.xx, Struct_1(arg_0.a, u_input.d), arg_0), vec4<bool>(true, true, false, false), arg_0.a.x, Struct_3(976f, vec2<i32>(u_input.a.x, 1i), Struct_1(vec3<i32>(12487i, arg_0.a.x, -20596i), arg_0.b), arg_0)), 35305u));
    return 1i;
}

fn func_5(arg_0: i32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-885f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1377f, 1458f)), _wgslsmith_div_f32(942f, -1575f), global1[_wgslsmith_index_u32(15113u, 3u)] > global1[_wgslsmith_index_u32(1151u, 3u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 3u)] - 344f) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 3u)] - global1[_wgslsmith_index_u32(u_input.e, 3u)]))) * vec3<f32>(func_2(func_2(Struct_3(global1[_wgslsmith_index_u32(u_input.e, 3u)], vec2<i32>(-14891i, u_input.b.x), Struct_1(vec3<i32>(u_input.a.x, u_input.b.x, -56767i), u_input.d), Struct_1(u_input.a.zyy, vec3<u32>(1383u, u_input.e, 39772u))), vec4<bool>(false, false, false, false), arg_0, Struct_3(-307f, u_input.a.wy, Struct_1(u_input.a.xzw, u_input.d), Struct_1(u_input.a.yxw, u_input.d))).a, vec4<bool>(true, true, true, true), func_2(Struct_3(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], u_input.b.wx, Struct_1(u_input.b.wxz, vec3<u32>(u_input.e, u_input.e, 4294967295u)), Struct_1(vec3<i32>(u_input.a.x, arg_0, u_input.a.x), vec3<u32>(34228u, u_input.d.x, 47161u))), vec4<bool>(true, true, false, true), -30984i, Struct_3(global1[_wgslsmith_index_u32(u_input.c, 3u)], vec2<i32>(30141i, arg_0), Struct_1(u_input.a.yww, u_input.d), Struct_1(u_input.a.xww, u_input.d))).a.d.a.x, func_2(Struct_3(global1[_wgslsmith_index_u32(u_input.e, 3u)], u_input.b.wy, Struct_1(u_input.a.zyw, vec3<u32>(28993u, u_input.e, 4294967295u)), Struct_1(vec3<i32>(-2147483647i, 2147483647i, u_input.a.x), vec3<u32>(u_input.e, u_input.d.x, u_input.e))), vec4<bool>(true, false, true, false), arg_0, Struct_3(-1000f, vec2<i32>(10838i, u_input.b.x), Struct_1(u_input.a.xyw, vec3<u32>(31166u, 72856u, 26601u)), Struct_1(vec3<i32>(arg_0, u_input.a.x, arg_0), vec3<u32>(u_input.c, u_input.d.x, u_input.c)))).a).a.a, global1[_wgslsmith_index_u32(countOneBits(5052u), 3u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, 1u), 3u)])), Struct_1(countOneBits(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-20191i, u_input.b.x, u_input.b.x)), firstLeadingBit(u_input.b.wyy))), countOneBits(u_input.d & vec3<u32>(u_input.e, 1u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 9>();
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(!(u_input.b.x < -49900i), 47956u == (u_input.e | u_input.e), true), select(true, true, true));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~(-vec4<i32>(u_input.b.x, -1i, 1i, -19751i)), ~(~vec4<i32>(20217i, -90882i, 0i, -1i))), u_input.b);
    var var_2 = _wgslsmith_div_vec3_i32(u_input.b.zwx, vec3<i32>(23578i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.a), u_input.a.x));
    var var_3 = func_5(func_1(Struct_1(-vec3<i32>(u_input.b.x, var_1, var_1), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 59287u, 1u), u_input.d), u_input.d))));
    var var_4 = vec4<u32>(~u_input.e, ~4294967295u, ~_wgslsmith_div_u32(var_3.b.b.x, 73751u), 24429u);
    var var_5 = global1[_wgslsmith_index_u32(var_3.b.b.x >> (var_3.b.b.x % 32u), 3u)] > -664f;
    var var_6 = Struct_4(func_2(Struct_3(global1[_wgslsmith_index_u32(func_2(Struct_3(830f, vec2<i32>(u_input.a.x, var_1), var_3.b, var_3.b), !vec4<bool>(var_0.x, false, var_0.x, true), i32(-1i) * -42748i, func_2(Struct_3(978f, vec2<i32>(var_2.x, var_2.x), Struct_1(vec3<i32>(1i, var_1, var_2.x), var_3.b.b), Struct_1(var_3.b.a, var_3.b.b)), vec4<bool>(var_0.x, var_0.x, var_0.x, true), 1i, Struct_3(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], u_input.a.zy, var_3.b, Struct_1(u_input.b.yxw, vec3<u32>(0u, var_4.x, 0u)))).a).b.x, 3u)], reverseBits(var_3.b.a.zz), var_3.b, var_3.b), !select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, var_0.x, true)), vec4<bool>(false, var_0.x, var_0.x, true), any(var_0)), -2147483647i, func_2(Struct_3(var_3.a.x, min(vec2<i32>(var_2.x, u_input.b.x), var_3.b.a.zx), var_3.b, Struct_1(vec3<i32>(var_1, -46504i, -1i), var_4.www)), select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, false, true, false), false), ~var_2.x >> (1u % 32u), func_2(Struct_3(global1[_wgslsmith_index_u32(1u, 3u)], var_2.zx, var_3.b, Struct_1(vec3<i32>(var_3.b.a.x, 0i, -45055i), u_input.d)), vec4<bool>(false, var_0.x, false, true), -var_3.b.a.x, func_2(Struct_3(-1093f, var_3.b.a.xz, Struct_1(var_3.b.a, u_input.d), var_3.b), vec4<bool>(var_0.x, false, true, var_0.x), -1i, Struct_3(-2432f, u_input.a.wx, var_3.b, var_3.b)).a).a).a).a, global0[_wgslsmith_index_u32(~u_input.c, 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xwz, 30427u, min(vec3<i32>(max(u_input.b.x, u_input.b.x), abs(min(var_2.x, 1i)), -var_2.x), -_wgslsmith_mod_vec3_i32(-var_6.a.c.a, ~var_3.b.a)), vec4<u32>(firstLeadingBit(~(var_4.x & 0u)), 0u, 0u, ~(~_wgslsmith_div_u32(0u, var_6.b.x))), var_3.b.b.x & 31442u);
}

