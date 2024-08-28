struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<i32> = vec3<i32>(-36043i, 0i, 0i);

var<private> global2: array<u32, 31> = array<u32, 31>(21749u, 50186u, 0u, 0u, 0u, 77654u, 0u, 74363u, 17859u, 4294967295u, 14348u, 80424u, 0u, 43759u, 54809u, 4294967295u, 26202u, 46956u, 47217u, 1u, 4294967295u, 53245u, 4294967295u, 39647u, 0u, 11677u, 30935u, 1u, 4294967295u, 1u, 20697u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> i32 {
    global0 = Struct_2(global0.a);
    var var_0 = -1i;
    let var_1 = vec2<i32>(1i, -global1.x);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1563f * -362f), _wgslsmith_f_op_f32(round(812f)))))), vec2<f32>(-1108f, 1601f));
    var var_3 = Struct_5(var_2);
    return 36115i;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> u32 {
    let var_0 = abs(vec3<u32>(1u, _wgslsmith_mod_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 31u)]), ~(~10068u)), global2[_wgslsmith_index_u32(29346u, 31u)]));
    var var_1 = _wgslsmith_dot_vec2_u32(~(~reverseBits(vec2<u32>(9996u, var_0.x)) & vec2<u32>(select(global2[_wgslsmith_index_u32(21564u, 31u)], global2[_wgslsmith_index_u32(var_0.x, 31u)], arg_1), 19968u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x & u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68755u, 31u)], 31u)] & 11016u), vec2<u32>(~4294967295u, ~1u)), _wgslsmith_mod_u32(4294967295u, u_input.b.x) << (1u % 32u)));
    global2 = array<u32, 31>();
    var var_2 = select(vec2<bool>(false, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, 25035i, 1i), firstLeadingBit(u_input.c)) != global0.a), vec2<bool>(arg_1, ~global1.x == ~_wgslsmith_mod_i32(arg_2.a, arg_2.a)), !select(vec2<bool>(arg_1, true & arg_1), !vec2<bool>(arg_1, true), all(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, false, false), false))));
    global1 = (vec3<i32>(u_input.c.x, -2147483647i, arg_2.a) | -(~vec3<i32>(arg_0.a, 13922i, -24568i))) ^ ~reverseBits(-vec3<i32>(1i, global0.a, global0.a));
    return _wgslsmith_clamp_u32(firstLeadingBit(~var_0.x), ~6699u, ~(~(~(~var_0.x))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = 1u >> (u_input.b.x % 32u);
    var var_1 = Struct_1(arg_3, func_4(Struct_2(-2147483647i), true, Struct_2(abs(func_3()))), -977f);
    var var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, global0.a, -5252i, -8792i) | vec4<i32>(arg_1, 0i, -3914i, 41515i), -vec4<i32>(-3808i, arg_1, global0.a, global1.x)), select(vec4<i32>(-23607i, u_input.a, 2147483647i, 45602i), vec4<i32>(0i, 14677i, arg_1, 1i), var_1.a) << (select(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2, 31u)], 31u)], 0u, 722u, 20857u), vec4<u32>(1u, arg_2, global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(36820u, 31u)]), var_1.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(global1.x, arg_1, 1i, u_input.c.x), vec4<i32>(-2147483647i, arg_1, 0i, u_input.a), var_1.a), vec4<i32>(18887i, 29107i, arg_1, -5733i) & vec4<i32>(u_input.a, 0i, global0.a, -2147483647i))) >> (select((vec4<u32>(33641u, 64533u, u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 31u)]) << (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 4294967295u, 1u, arg_2) % vec4<u32>(32u))) << (~vec4<u32>(4294967295u, 0u, u_input.b.x, global2[_wgslsmith_index_u32(arg_2, 31u)]) % vec4<u32>(32u)), vec4<u32>(arg_2, u_input.b.x, u_input.b.x, ~29348u), !all(vec4<bool>(var_1.a, var_1.a, var_1.a, true))) % vec4<u32>(32u)), max(abs((vec4<i32>(1i, -39806i, arg_1, global1.x) & vec4<i32>(0i, arg_1, 2147483647i, global0.a)) << ((vec4<u32>(0u, 48390u, 56339u, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]) & vec4<u32>(69128u, 15399u, 23428u, 48347u)) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(1i, _wgslsmith_sub_i32(0i, -2147483647i), -arg_1, countOneBits(11595i)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(736f, arg_0, -849f), vec3<f32>(var_1.c, arg_0, var_1.c))))))));
    let var_4 = i32(-1i) * -2147483647i;
    return arg_1;
}

fn func_1() -> u32 {
    var var_0 = Struct_2(46095i);
    var var_1 = vec3<i32>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(607f, 490f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -482f))), 4918i, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, 0u), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63039u, 31u)], 31u)], 86253u)) | max(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13505u, 31u)], 31u)]), 31u)], 1u), 2390f > _wgslsmith_f_op_f32(-825f + _wgslsmith_f_op_f32(step(1319f, 344f)))), firstTrailingBit(countOneBits(-94282i)) | 16182i, -2147483647i);
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2147483647i, _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), 5717i)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(21379u, 31u)]), u_input.b.x, ~u_input.b.x), select(vec3<u32>(12952u, u_input.b.x, 3456u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 1u, 27839u) & vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], 48711u, 0u), any(vec2<bool>(false, false))), ~select(vec3<u32>(1u, 15341u, global2[_wgslsmith_index_u32(6295u, 31u)]), vec3<u32>(1u, 88849u, global2[_wgslsmith_index_u32(1u, 31u)]), true)) % vec3<u32>(32u)), u_input.c);
    global1 = vec3<i32>(0i, reverseBits(abs(u_input.a)), 1i);
    global2 = array<u32, 31>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(29457u, 27757u), firstTrailingBit(u_input.b.x)), vec2<u32>(~((1u ^ u_input.b.x) ^ global2[_wgslsmith_index_u32(4294967295u, 31u)]), 3683u));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2404f)), 604f);
    let var_1 = Struct_3(~_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(arg_0.x, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 49199u, arg_0.x), ~vec3<u32>(0u, global2[_wgslsmith_index_u32(arg_0.x, 31u)], 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 3018u, arg_0.x), arg_0))), vec3<u32>(0u, 50209u, 0u), arg_2, global1.x);
    var var_2 = !vec2<bool>(min(~0u, _wgslsmith_add_u32(48290u, arg_0.x)) == global2[_wgslsmith_index_u32(6297u, 31u)], all(vec2<bool>(true, true)));
    let var_3 = Struct_2(-select(reverseBits(u_input.c.x), _wgslsmith_div_i32(20390i, -17852i), true) | -_wgslsmith_clamp_i32(global1.x, abs(global1.x), 21411i));
    global0 = var_3;
    return firstTrailingBit(firstLeadingBit(~(~vec3<u32>(arg_2.b, arg_2.b, arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(global0.a, select(u_input.c.x, -12036i, false)) ^ (global1.x >> (0u % 32u)), u_input.c.x, countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-23675i, -2147483647i), vec2<i32>(global1.x, 2147483647i), vec2<i32>(u_input.a, 13342i)), abs(vec2<i32>(global0.a, 1i))))) >> (func_5(abs(vec3<u32>(global2[_wgslsmith_index_u32(34311u, 31u)], 1u, func_1())), true, Struct_1(all(vec3<bool>(true, true, true)), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f * 1216f))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(11812u, 0u, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 1u), vec4<u32>(1u, global2[_wgslsmith_index_u32(94794u, 31u)], u_input.b.x, 26612u), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36427u, 31u)], 31u)], 14256u, 0u)))) % vec3<u32>(32u));
    var var_1 = firstTrailingBit(select(-global1.x, _wgslsmith_add_i32(11292i, global1.x), false) ^ firstTrailingBit(u_input.c.x));
    var_1 = 0i;
    global2 = array<u32, 31>();
    global2 = array<u32, 31>();
    var var_2 = ~(~6221u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(605f, 1000f, -1796f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-427f, -931f, 1631f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1004f, -213f, -2009f)))), !vec3<bool>(u_input.b.x >= 33112u, true, true))), global2[_wgslsmith_index_u32(func_1(), 31u)]);
}

