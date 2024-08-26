struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 26>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    global0 = true;
    return ~u_input.a.x;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: f32) -> i32 {
    global0 = false;
    global1 = array<f32, 26>();
    let var_0 = (firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(arg_1, arg_1, 0i)) & -vec3<i32>(arg_1, arg_1, arg_1)) >> (u_input.a % vec3<u32>(32u))) & vec3<i32>(abs(_wgslsmith_mult_i32(-2147483647i, ~arg_1)), arg_1, abs(1i));
    global1 = array<f32, 26>();
    var var_1 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x << (1u % 32u), min(37587u, arg_0)), ~1u) ^ ~(~1620u), _wgslsmith_add_i32(abs(~(24206i ^ arg_1)), ~11863i), _wgslsmith_f_op_f32(round(-219f)), Struct_2(true, abs(var_0.x), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(11320u, arg_0), 26u)] >= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 26u)] + arg_2), select(true, all(vec4<bool>(true, false, false, false)), true), any(vec4<bool>(true, true, false, true))), Struct_1(true, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global1[_wgslsmith_index_u32(130342u, 26u)]))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(83639u, 26u)], global1[_wgslsmith_index_u32(arg_0, 26u)])))), true, _wgslsmith_div_vec3_u32(u_input.a, countOneBits(u_input.a)))), _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, func_2()) >> (~arg_0 % 32u)));
    return var_0.x;
}

fn func_3() -> bool {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(select(select(~62358i, 19705i, u_input.a.x >= 50990u), _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(1i, 29983i), 1i), !select(false, false, true)), 31670i), _wgslsmith_sub_i32(29381i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -22442i, 29974i), vec3<i32>(0i, 7000i, -2277i)), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -17725i, 0i), vec3<i32>(7588i, 2147483647i, 2147483647i))))), ~(-12611i));
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(~((var_0.xy >> (vec2<u32>(67827u, 10103u) % vec2<u32>(32u))) | vec2<i32>(48646i, var_0.x)), -min(vec2<i32>(-4066i, 9092i), var_0.zx) << ((vec2<u32>(85706u, u_input.a.x) | ~u_input.a.xy) % vec2<u32>(32u)), vec2<i32>(-(var_0.x ^ -7921i), (var_0.x >> (u_input.a.x % 32u)) | abs(-50461i))), ~_wgslsmith_mod_vec2_i32(var_0.yz, -vec2<i32>(var_0.x, var_0.x)));
    var var_2 = Struct_4(Struct_1(!select(true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], -166f) * vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 577f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(26212u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)]))))), true, ~(~u_input.a)), Struct_1(true, select(0i <= _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -1i, 0i, var_1.x), vec4<i32>(-29852i, 7763i, 1i, -1i)), _wgslsmith_clamp_i32(2147483647i, -1i, var_0.x) != -2147483647i, true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, 976f, false))))), true, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(35480u, 1u, abs(u_input.a.x)) % vec3<u32>(32u))), var_1.x, 4294967295u);
    var var_3 = 91137u;
    var var_4 = var_2.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, countOneBits(~(-12479i)), abs(select(1i, _wgslsmith_add_i32(46622i, 1i), any(vec2<bool>(true, true))))), vec3<i32>(-1i, func_1(_wgslsmith_add_u32(41766u, 1u), 1i, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)]))) >> (min(13212u << (u_input.a.x % 32u), 4294967295u) % 32u), ~(-2147483647i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1847f)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, (14819u ^ u_input.a.x) | 20365u, 72213u), 26u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1379f, global1[_wgslsmith_index_u32(22141u, 26u)], 401f)), vec3<f32>(_wgslsmith_div_f32(-101f, -290f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), 480f), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 26u)], 755f, -1165f) - vec3<f32>(global1[_wgslsmith_index_u32(25955u, 26u)], 610f, 709f)) - vec3<f32>(834f, global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)]))))), vec3<bool>(any(vec3<bool>(true, true, true)), false, any(vec2<bool>(true, func_3())))));
    global0 = !(select(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 26u)]) == _wgslsmith_f_op_f32(-var_1.x), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))) != !(!all(vec4<bool>(true, true, false, false))));
    global0 = false;
    let var_2 = Struct_2(any(vec3<bool>(!all(vec3<bool>(true, false, true)), -2147483647i > -var_0.x, true)), var_0.x, vec3<bool>(true, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 55531u)), ~vec4<u32>(24046u, u_input.a.x, u_input.a.x, 68117u)) < 1u, ((global1[_wgslsmith_index_u32(1u, 26u)] >= var_1.x) | (global1[_wgslsmith_index_u32(u_input.a.x, 26u)] <= 1571f)) || func_3()), Struct_1(_wgslsmith_mult_i32(var_0.x, var_0.x) < 1i, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, 1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zz) * _wgslsmith_f_op_vec2_f32(abs(var_1.xx)))), true, vec3<u32>(abs(0u), 17233u, 62396u)));
    let var_3 = true;
    var var_4 = Struct_3(u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, ~u_input.a.x), select(vec3<u32>(0u, var_2.d.e.x, 0u), vec3<u32>(var_2.d.e.x, var_2.d.e.x, u_input.a.x), false) | max(var_2.d.e, var_2.d.e)) % 32u), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-183f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1.x)), -1532f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - var_1.x)))))), var_2, 39410u);
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(4380u);
}

