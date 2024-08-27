struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: array<f32, 13>;

var<private> global3: array<f32, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    var var_0 = !select(!vec3<bool>(global0.b.x, true, global0.a.x | global0.b.x), select(!(!vec3<bool>(true, arg_2, true)), select(!vec3<bool>(true, false, arg_2), select(vec3<bool>(global0.a.x, false, true), vec3<bool>(arg_2, true, false), false), global3[_wgslsmith_index_u32(46542u, 15u)] <= global2[_wgslsmith_index_u32(70168u, 13u)]), false), vec3<bool>(true && (arg_2 | true), any(!vec3<bool>(arg_1.a.x, true, global0.a.x)), arg_2));
    let var_1 = arg_1.b.x;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f)), 4294967295u);
    var var_3 = arg_1.d.x;
    return (~_wgslsmith_sub_vec4_u32(vec4<u32>(16866u, 31812u, 0u, 1u), vec4<u32>(u_input.a, var_2.b, arg_1.d.x, 0u)) >> (~(~(~vec4<u32>(79222u, var_2.b, u_input.a, 1u))) % vec4<u32>(32u))) ^ ~((~vec4<u32>(var_2.b, 1u, u_input.a, 2521u) >> (vec4<u32>(global0.d.x, arg_1.c.x, 15962u, u_input.a) % vec4<u32>(32u))) << (vec4<u32>(30645u, u_input.a, select(var_2.b, 4294967295u, true), 35511u) % vec4<u32>(32u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = Struct_1(vec2<bool>(arg_2.b.x, true), select(vec2<bool>(arg_3.b.x, true), vec2<bool>(false, false), vec2<bool>(false, arg_2.d.x > arg_0.c.d.x)), select(vec3<u32>(0u, ~0u, ~abs(u_input.a)), ~vec3<u32>(~89401u, ~arg_0.a.c.x, ~44302u), arg_0.c.b.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.d.x >> (72787u % 32u), 26726u, arg_3.d.x << (88123u % 32u)), abs(global0.d) >> (vec3<u32>(arg_2.c.x, u_input.a, arg_3.c.x) % vec3<u32>(32u))), ~reverseBits(arg_3.e));
    global3 = array<f32, 15>();
    global0 = arg_2;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, arg_3.c.x), 15u)], -815f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(5587u, 15u)], global3[_wgslsmith_index_u32(15343u, 15u)])) * _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(4294967295u, 15u)], 1023f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~47766u, 13u)], global2[_wgslsmith_index_u32(reverseBits(4294967295u), 13u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(203f))), _wgslsmith_f_op_f32(1656f * -472f), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(76202u, 15u)]))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(arg_0.c.c.x, 13u)])))), global3[_wgslsmith_index_u32(countOneBits(~arg_3.d.x), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-446f, -1413f))), _wgslsmith_f_op_f32(-1113f + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.c.x, 13u)])))), !(!(true | (arg_1 && arg_3.a.x)))));
    global1 = -6740i;
    return _wgslsmith_dot_vec3_u32(~(~_wgslsmith_sub_vec3_u32(select(arg_2.d, global0.d, true), arg_3.c)), ~reverseBits(~(~arg_2.c)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 16629i, -29411i, arg_0.c.e), vec4<i32>(arg_0.a.e, 42477i, -1i, global0.e)) ^ -vec4<i32>(12941i, -29846i, 6271i, arg_0.c.e), ~reverseBits(vec4<i32>(-3698i, -36038i, global0.e, arg_0.c.e) << (arg_1 % vec4<u32>(32u)))), _wgslsmith_clamp_i32(arg_0.c.e, _wgslsmith_sub_i32(1i, abs(countOneBits(0i))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.e, -2147483647i, arg_0.c.e), vec3<i32>(global0.e, global0.e, -1i)), -4295i, 75493i & global0.e), -countOneBits(vec3<i32>(-2147483647i, arg_0.c.e, arg_0.a.e)))), 2549i, arg_0.a.e);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(abs(-273f)), _wgslsmith_sub_u32(firstLeadingBit(1u), ~abs(~1u)));
    let var_2 = _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.b, var_1.b, func_3(Struct_2(arg_0.a, global0.a, arg_0.a), false, arg_0.c, arg_0.a)) >> (~arg_0.a.c % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~(~(~global0.c)), vec3<u32>(_wgslsmith_mult_u32(5162u, 0u) << (~arg_1.x % 32u), var_1.b, ~func_1(var_0.yw, arg_0.a, false).x)));
    var var_3 = select(((~var_1.b ^ 25029u) << (~_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(global0.c.x, 52360u, global0.d.x, 25326u)) % 32u)) | global0.c.x, ~10553u, any(!select(vec4<bool>(true, global0.a.x, arg_0.c.b.x, false), select(vec4<bool>(true, false, global0.a.x, global0.b.x), vec4<bool>(global0.a.x, arg_0.c.a.x, false, arg_0.c.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, global0.b.x, true)), any(vec3<bool>(true, arg_0.c.b.x, arg_0.a.b.x)))));
    global1 = reverseBits(var_0.x);
    return Struct_4(global2[_wgslsmith_index_u32(global0.c.x, 13u)], var_2.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_5) -> Struct_2 {
    let var_0 = 9542u;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, arg_3.b, 120f, global2[_wgslsmith_index_u32(50701u, 13u)])))) * vec4<f32>(arg_2.b, 861f, _wgslsmith_f_op_f32(f32(-1f) * -1414f), 510f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(481f, -182f, arg_3.b, -2728f)))))))));
    var var_2 = arg_2.a;
    var var_3 = Struct_2(arg_3.a, select(!global0.b, global0.a, !vec2<bool>(var_2.a.x, var_2.b.x || false)), Struct_1(select(!select(global0.a, arg_2.a.a, arg_3.a.b.x), select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(var_2.a.x, false), var_2.b), any(vec4<bool>(var_2.b.x, false, true, false)) || true), var_2.a, abs(var_2.c), select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, var_0, global0.c.x), global0.c, vec3<u32>(var_2.d.x, arg_2.a.c.x, arg_0.x)), ~(arg_0 << (arg_3.a.d % vec3<u32>(32u))), select(!vec3<bool>(var_2.a.x, true, false), !vec3<bool>(false, false, arg_3.a.b.x), vec3<bool>(var_2.b.x, arg_2.d, global0.a.x))), -1i));
    var_2 = arg_3.a;
    return Struct_2(Struct_1(arg_3.a.a, var_2.a, arg_3.a.d, select(arg_2.a.d << (arg_0 % vec3<u32>(32u)), ~(~vec3<u32>(0u, 413u, var_2.c.x)), all(select(vec2<bool>(true, arg_2.a.a.x), arg_2.a.b, true))), select(abs(11348i), -2147483647i | ~var_3.a.e, true)), !select(select(!vec2<bool>(false, arg_3.a.a.x), arg_3.a.b, vec2<bool>(arg_2.a.b.x, var_2.a.x)), var_2.a, select(!global0.a, select(arg_3.a.b, var_2.b, arg_2.a.a), var_2.b)), arg_3.a);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    global2 = array<f32, 13>();
    var var_0 = arg_2;
    var var_1 = arg_1.xx;
    var var_2 = !(!(!select(vec4<bool>(var_0.b.x, false, arg_2.a.b.x, var_0.c.b.x), vec4<bool>(arg_2.a.a.x, global0.b.x, false, true), select(vec4<bool>(global0.a.x, arg_2.b.x, true, true), vec4<bool>(arg_2.b.x, arg_2.c.a.x, var_0.c.b.x, false), vec4<bool>(arg_2.c.b.x, true, false, false)))));
    var var_3 = ~arg_2.c.c.x;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_5(global0.c.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global0.d.x, 15u)], -702f, global3[_wgslsmith_index_u32(0u, 15u)]) * vec3<f32>(global3[_wgslsmith_index_u32(8763u, 15u)], global3[_wgslsmith_index_u32(global0.c.x, 15u)], global2[_wgslsmith_index_u32(u_input.a, 13u)]))))), func_4(global0.c, func_2(Struct_2(Struct_1(global0.a, vec2<bool>(false, true), vec3<u32>(global0.c.x, 0u, global0.d.x), vec3<u32>(u_input.a, 4294967295u, global0.c.x), global0.e), global0.b, Struct_1(global0.a, global0.a, vec3<u32>(u_input.a, 32055u, 32428u), global0.c, global0.e)), func_1(vec2<i32>(global0.e, 26981i), Struct_1(vec2<bool>(false, false), global0.a, global0.c, vec3<u32>(1u, global0.d.x, 1u), -1i), false), abs(vec4<u32>(global0.c.x, 1u, 86979u, global0.d.x))), Struct_5(Struct_1(global0.a, global0.a, vec3<u32>(u_input.a, global0.d.x, 514u), global0.c, -25210i), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_add_i32(global0.e, 12768i), global0.a.x, -23842i), Struct_5(Struct_1(global0.b, global0.b, vec3<u32>(1u, 71082u, 4294967295u), vec3<u32>(88305u, 23693u, 4294967295u), -1i), _wgslsmith_f_op_f32(-535f * global2[_wgslsmith_index_u32(4294967295u, 13u)]), firstTrailingBit(1i), all(vec2<bool>(global0.a.x, false)), global0.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1060f - 666f) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.c.x, 15u)] - global3[_wgslsmith_index_u32(global0.d.x, 15u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2313f, global3[_wgslsmith_index_u32(74761u, 15u)])))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_mult_i32(~global0.e, _wgslsmith_clamp_i32(0i, -25222i, global0.e)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, global0.e, -23718i), vec3<i32>(-12740i, 40909i, global0.e)), vec3<i32>(-41855i, 1i, global0.e)), global0.e), abs(vec4<i32>(~(-15133i), _wgslsmith_sub_i32(1i, global0.e), -41526i, _wgslsmith_dot_vec4_i32(vec4<i32>(5853i, 2598i, global0.e, -6708i), vec4<i32>(global0.e, global0.e, global0.e, global0.e))))), true, firstTrailingBit(abs(_wgslsmith_mod_i32(-6804i, global0.e)) ^ ~(~(-48745i))));
    global2 = array<f32, 13>();
    let var_1 = any(!global0.b);
    var var_2 = vec4<bool>(!all(vec3<bool>(var_1, var_0.a.e > 44266i, true)), false, !all(select(vec4<bool>(global0.a.x, var_1, true, true), vec4<bool>(true, false, false, false), !var_0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))) >= 1639f);
    let var_3 = vec4<bool>(true, global0.d.x > ~(~1u), false & func_5(~u_input.a, vec3<f32>(2009f, -1153f, _wgslsmith_f_op_f32(ceil(var_0.b))), Struct_2(Struct_1(var_0.a.b, var_2.zw, var_0.a.c, global0.d, global0.e), func_5(4294967295u, vec3<f32>(global2[_wgslsmith_index_u32(var_0.a.d.x, 13u)], var_0.b, 750f), Struct_2(var_0.a, vec2<bool>(global0.a.x, var_0.a.b.x), var_0.a)).a, var_0.a)).a.x, true);
    let var_4 = Struct_3(var_1);
    let var_5 = func_4(max(~(global0.d << (vec3<u32>(1u, u_input.a, 4294967295u) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_add_u32(0u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c.x, u_input.a, global0.c.x, var_0.a.c.x), vec4<u32>(17851u, u_input.a, 42532u, global0.d.x)), ~0u), global0.c), func_2(Struct_2(var_0.a, global0.a, Struct_1(var_2.zx, select(var_2.wy, vec2<bool>(true, var_3.x), vec2<bool>(false, true)), ~global0.d, func_5(4294967295u, vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)], var_0.b), Struct_2(var_0.a, var_0.a.a, Struct_1(vec2<bool>(false, true), vec2<bool>(var_0.a.b.x, global0.a.x), vec3<u32>(49868u, 4294967295u, u_input.a), var_0.a.d, -2147483647i))).c, i32(-1i) * -30099i)), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.a.d.zx, firstTrailingBit(vec2<u32>(1u, global0.c.x))), select(var_0.a.d.x, firstTrailingBit(8814u), global0.e >= var_0.a.e), ~select(21774u, global0.d.x, global0.a.x), u_input.a), min(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.d.x, u_input.a, 1u, 116987u) | vec4<u32>(0u, var_0.a.c.x, u_input.a, global0.d.x), ~vec4<u32>(4294967295u, 36959u, 20178u, var_0.a.c.x)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.a, global0.d.x, u_input.a, 0u)), vec4<u32>(var_0.a.d.x, 62910u, 52433u, u_input.a) ^ vec4<u32>(var_0.a.d.x, 0u, 4056u, global0.d.x)))), Struct_5(func_4(vec3<u32>(~global0.c.x, 99320u, firstLeadingBit(4294967295u)), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -980f), 1u), Struct_5(Struct_1(vec2<bool>(var_2.x, false), var_0.a.a, global0.c, vec3<u32>(global0.d.x, u_input.a, 8213u), -8208i), _wgslsmith_f_op_f32(ceil(var_0.b)), reverseBits(81785i), false, var_0.e), Struct_5(func_4(var_0.a.c, Struct_4(global3[_wgslsmith_index_u32(global0.d.x, 15u)], 0u), Struct_5(var_0.a, var_0.b, 39236i, global0.a.x, -1735i), Struct_5(Struct_1(var_2.xz, var_3.yy, vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(u_input.a, global0.c.x, 28079u), 2147483647i), 737f, var_0.e, var_3.x, -8307i)).a, _wgslsmith_f_op_f32(min(1531f, global3[_wgslsmith_index_u32(var_0.a.c.x, 15u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(29869i, 0i, 14855i), vec3<i32>(-2147483647i, var_0.c, 62905i)), all(vec4<bool>(true, var_1, false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(-51757i, 7763i, global0.e), vec3<i32>(var_0.e, global0.e, global0.e)))).a, global3[_wgslsmith_index_u32(func_2(func_4(var_0.a.c, func_2(Struct_2(Struct_1(global0.b, var_3.zz, vec3<u32>(1u, 1u, 81189u), var_0.a.c, 61063i), vec2<bool>(false, true), var_0.a), vec4<u32>(u_input.a, 15058u, 21608u, u_input.a), vec4<u32>(38887u, global0.c.x, 27486u, u_input.a)), Struct_5(var_0.a, 1000f, var_0.a.e, var_2.x, global0.e), Struct_5(Struct_1(vec2<bool>(true, var_4.a), vec2<bool>(var_0.d, var_2.x), vec3<u32>(global0.c.x, 1u, 49926u), vec3<u32>(var_0.a.c.x, 0u, 4294967295u), 18845i), -767f, -2147483647i, true, 23066i)), countOneBits(reverseBits(vec4<u32>(global0.c.x, 1u, u_input.a, 0u))), abs(vec4<u32>(u_input.a, 21688u, 22531u, u_input.a) & vec4<u32>(global0.d.x, 11623u, 0u, var_0.a.d.x))).b, 15u)], var_0.c, var_1, ~_wgslsmith_mod_i32(-3302i, -global0.e)), Struct_5(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(29599u, 15u)]))), -(~global0.e), var_3.x && var_2.x, min(var_0.e, -28940i)));
    let x = u_input.a;
    s_output = StorageBuffer(-global0.e, -(~reverseBits(global0.e) ^ -70405i));
}

