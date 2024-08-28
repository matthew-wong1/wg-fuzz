struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 9>;

var<private> global2: vec2<i32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32) -> bool {
    return arg_0;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(vec4<bool>(!(_wgslsmith_f_op_f32(select(562f, 606f, false)) != -1504f), true, true, true), abs(max(vec3<i32>(-8698i, -2147483647i, 17146i), _wgslsmith_div_vec3_i32(-vec3<i32>(-15509i, global2.x, 22593i), ~vec3<i32>(0i, global2.x, 2147483647i)))), Struct_4(select(select(countOneBits(vec4<i32>(global2.x, 17262i, -1i, -13681i)), _wgslsmith_add_vec4_i32(vec4<i32>(26050i, 2794i, global2.x, global2.x), vec4<i32>(global2.x, global2.x, -17621i, 44587i)), select(false, false, false)), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-1i, global2.x, 4965i, 0i)), ~vec4<i32>(-14234i, 2147483647i, -42936i, global2.x)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false)), Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(34157u, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a.x | 4294967295u), 649f, Struct_3(Struct_1(func_3(false, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_2(vec3<u32>(106669u, u_input.a.x, u_input.a.x), reverseBits(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(20012u, 9u)]))), min(~u_input.a.x, u_input.a.x))));
    global1 = array<f32, 9>();
    var var_1 = var_0.c.d.c;
    var var_2 = true;
    return Struct_2(var_0.c.b.a, ~var_0.c.d.e & _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(52060u, 47054u, var_0.c.d.c.a.x), vec3<u32>(4707u, 91933u, var_1.b)), _wgslsmith_sub_vec3_u32(var_0.c.b.a, _wgslsmith_sub_vec3_u32(var_1.a, vec3<u32>(0u, var_0.c.d.e, 4294967295u)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> i32 {
    let var_0 = false;
    let var_1 = vec3<f32>(355f, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(32060u, 9u)] - global1[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 9u)])))));
    let var_2 = func_2();
    let var_3 = global1[_wgslsmith_index_u32(~(~func_2().a.x), 9u)];
    var var_4 = Struct_5(vec4<bool>(any(select(!vec3<bool>(false, arg_0.x, var_0), vec3<bool>(arg_0.x, var_0, arg_0.x), select(vec3<bool>(var_0, var_0, false), vec3<bool>(arg_0.x, var_0, arg_0.x), var_0))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f) - global1[_wgslsmith_index_u32(32746u, 9u)]), true), abs(vec3<i32>(_wgslsmith_mod_i32(global2.x, 0i), global2.x >> (var_2.b % 32u), _wgslsmith_div_i32(global2.x, global2.x))) ^ ~reverseBits(vec3<i32>(global2.x, global2.x, global2.x) >> (vec3<u32>(u_input.a.x, arg_1.x, 1u) % vec3<u32>(32u))), Struct_4(~vec4<i32>(1i, global2.x, global2.x, 25968i) | abs(~vec4<i32>(-2147483647i, global2.x, global2.x, -18371i)), Struct_2(firstLeadingBit(firstLeadingBit(vec3<u32>(arg_1.x, var_2.a.x, 46480u))), ~var_2.a.x ^ ~72606u), var_1.x, Struct_3(Struct_1(var_0), !select(vec2<bool>(true, true), arg_0, vec2<bool>(arg_0.x, var_0)), Struct_2(vec3<u32>(1u, 31625u, 1u), var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-903f, var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -525f)), ~var_2.a.x >> (var_2.b % 32u))));
    return _wgslsmith_clamp_i32(firstLeadingBit(reverseBits(global2.x)), max(countOneBits(-6507i), 2147483647i), global2.x);
}

fn func_4(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(true);
    global2 = abs(countOneBits(-(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(-2606i, arg_0.x)) ^ ~arg_0)));
    let var_1 = Struct_5(vec4<bool>(var_0.a, any(!vec3<bool>(true, true, var_0.a)), (var_0.a || true) | (_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(37514u, 9u)]) != _wgslsmith_div_f32(-107f, global1[_wgslsmith_index_u32(22432u, 9u)])), global1[_wgslsmith_index_u32(~select(4294967295u, u_input.a.x, true), 9u)] != -1230f), firstTrailingBit(vec3<i32>(func_1(vec2<bool>(false, var_0.a), max(vec4<u32>(56665u, 6134u, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 53973u)), vec2<f32>(-208f, global1[_wgslsmith_index_u32(5340u, 9u)])), -(global2.x << (u_input.a.x % 32u)), min(4318i, countOneBits(2147483647i)))), Struct_4(abs(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, global2.x, 0i, 23574i), vec4<i32>(arg_0.x, -2147483647i, arg_0.x, 1i))), Struct_2(~(~vec3<u32>(u_input.a.x, u_input.a.x, 0u)), u_input.a.x), 180f, Struct_3(Struct_1(true), vec2<bool>(any(vec3<bool>(var_0.a, true, true)), var_0.a), func_2(), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_add_u32(4294967295u, ~u_input.a.x))));
    var var_2 = Struct_2(var_1.c.d.c.a, _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.a.x, 4294967295u) ^ var_1.c.d.c.a.yx) | ~u_input.a, var_1.c.b.a.zy) << (var_1.c.b.b % 32u));
    var var_3 = var_1.c.d;
    return Struct_2(~(~vec3<u32>(1u, firstTrailingBit(var_3.e), 79733u)), firstLeadingBit(var_3.e));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: bool) -> Struct_4 {
    let var_0 = abs(arg_1.b);
    let var_1 = arg_1.c.d;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32((_wgslsmith_mod_u32(0u, 4343u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(arg_0.a.x, arg_0.a.x))) << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.e, 64973u), 7291u, arg_0.b) % 32u), 9u)])));
    let var_2 = _wgslsmith_f_op_f32(step(var_1.d, arg_1.c.d.d));
    var var_3 = 0u;
    return Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1.b.x, 0i, arg_1.c.a.x, 2147483647i), ~abs(vec4<i32>(-2147483647i, arg_1.b.x, -2147483647i, 2147483647i) ^ vec4<i32>(global2.x, arg_1.b.x, global2.x, arg_1.c.a.x))), Struct_2(vec3<u32>(8153u, 47849u, _wgslsmith_mod_u32(20032u, arg_1.c.b.a.x)), ~(~arg_1.c.b.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1188f, var_1.d)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 9u)]))))), arg_1.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(22516u);
    var var_1 = func_5(func_4(vec2<i32>(countOneBits(func_1(vec2<bool>(true, false), vec4<u32>(1u, 49765u, 55485u, u_input.a.x), vec2<f32>(-534f, -770f))), -min(global2.x, 1i))), Struct_5(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), (min(vec3<i32>(global2.x, global2.x, -64951i), vec3<i32>(global2.x, 29003i, -1i)) >> (~vec3<u32>(16446u, u_input.a.x, 18503u) % vec3<u32>(32u))) & firstTrailingBit(vec3<i32>(global2.x, global2.x, global2.x)), Struct_4(firstTrailingBit(vec4<i32>(-22724i, 11069i, global2.x, 15966i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4018u, 84255u, 1u), vec4<u32>(1550u, u_input.a.x, 1u, 0u)) % vec4<u32>(32u)), func_2(), -1172f, Struct_3(Struct_1(false), vec2<bool>(true, true), func_4(vec2<i32>(global2.x, global2.x)), global1[_wgslsmith_index_u32(abs(u_input.a.x), 9u)], u_input.a.x))), select(true, (global2.x < func_1(vec2<bool>(true, true), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 26908u), vec2<f32>(418f, -241f))) && ((global2.x << (1u % 32u)) < _wgslsmith_mult_i32(global2.x, global2.x)), true));
    global1 = array<f32, 9>();
    let var_2 = Struct_5(vec4<bool>(var_1.d.b.x, !var_1.d.a.a, true, any(!(!vec2<bool>(false, var_1.d.b.x)))), vec3<i32>(global2.x, 885i, _wgslsmith_dot_vec3_i32(var_1.a.yzz, var_1.a.zxz)) >> (max(min(var_1.d.c.a, var_1.b.a), vec3<u32>(var_1.b.a.x, u_input.a.x, ~var_1.b.a.x)) % vec3<u32>(32u)), func_5(var_1.d.c, Struct_5(select(vec4<bool>(var_1.d.a.a, false, var_1.d.a.a, var_1.d.b.x), select(vec4<bool>(true, var_1.d.a.a, true, true), vec4<bool>(false, var_1.d.b.x, var_1.d.a.a, var_1.d.a.a), var_1.d.b.x), select(vec4<bool>(false, true, var_1.d.a.a, false), vec4<bool>(var_1.d.a.a, true, false, false), vec4<bool>(var_1.d.a.a, var_1.d.b.x, var_1.d.b.x, var_1.d.b.x))), abs(vec3<i32>(var_1.a.x, -39351i, global2.x)), Struct_4(abs(vec4<i32>(var_1.a.x, 2147483647i, 2583i, 2147483647i)), Struct_2(vec3<u32>(4294967295u, u_input.a.x, var_1.d.e), 1u), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.d.e, 9u)] + 517f), var_1.d)), true));
    var var_3 = ~reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.a.x, global2.x, -3321i, -1i), var_1.a), firstTrailingBit(var_2.c.a.x), abs(1i), -20157i)) >> (~(~(select(vec4<u32>(var_2.c.b.b, 1u, 43738u, var_1.b.b), vec4<u32>(1u, var_1.b.b, var_1.b.a.x, 33194u), vec4<bool>(true, var_1.d.a.a, var_1.d.a.a, true)) >> ((vec4<u32>(4294967295u, 1u, u_input.a.x, var_2.c.d.e) ^ vec4<u32>(var_1.b.b, 42834u, 1u, var_2.c.b.b)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-698f, 1376f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.d, 1269f, global1[_wgslsmith_index_u32(1u, 9u)], -600f)), vec4<f32>(var_1.d.d, -212f, var_1.c, _wgslsmith_f_op_f32(-var_2.c.c))))), ~var_1.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.d.d, var_1.d.d, var_2.c.d.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(-806f, 921f, -1000f) + vec3<f32>(-665f, 299f, -577f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c.c, 1190f, var_1.d.d))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1336f, -527f, -198f) - vec3<f32>(global1[_wgslsmith_index_u32(59987u, 9u)], var_1.d.d, -944f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(112243u, 9u)], var_1.d.d, var_1.d.d))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(var_1.b.b, 9u)], var_2.c.c, -1000f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], var_1.d.d, 985f), false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(var_1.d.c.a.x, 9u)], -488f) - vec3<f32>(-447f, var_2.c.d.d, 111f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.d, global1[_wgslsmith_index_u32(0u, 9u)], 1550f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-841f, var_2.c.c, 818f), vec3<f32>(2361f, var_2.c.c, global1[_wgslsmith_index_u32(var_2.c.d.e, 9u)]))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(225f, global1[_wgslsmith_index_u32(0u, 9u)], 3488f) - vec3<f32>(var_2.c.c, global1[_wgslsmith_index_u32(53093u, 9u)], 1496f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(9691u, 9u)], var_2.c.c, var_2.c.d.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.c.d.d, var_1.d.d, -2930f))))))));
}

