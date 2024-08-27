struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false));

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global4: array<i32, 16>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a.x, 990f), vec2<f32>(296f, -1536f)))))))));
    return vec2<i32>(abs(max(i32(-1i) * -7168i, _wgslsmith_sub_i32(max(-38826i, arg_1), arg_2.x))), _wgslsmith_div_i32(_wgslsmith_div_i32(38062i, -27329i), firstLeadingBit(abs(global4[_wgslsmith_index_u32(~11633u, 16u)]))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = Struct_2(41779u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-377f - global0.c.x), _wgslsmith_f_op_f32(-global0.a.x), -344f, _wgslsmith_f_op_f32(global0.a.x - global0.a.x)))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, ~vec2<u32>(arg_1.b.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(global0.b.b.x, 0u), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(4294967295u, arg_1.b.x)))) >> (_wgslsmith_sub_vec2_u32(~abs(vec2<u32>(u_input.c, 4294967295u)), (global0.b.b.xy << (vec2<u32>(global0.b.b.x, 1u) % vec2<u32>(32u))) ^ firstTrailingBit(arg_1.b.xy)) % vec2<u32>(32u)), Struct_1(all(select(!vec3<bool>(true, arg_1.a, true), vec3<bool>(arg_1.a, true, false), !vec3<bool>(global0.b.a, true, arg_0))), arg_1.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2133f), global0.a.x) - vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(global0.a.x - 728f)), -565f)));
    var var_2 = global0.c.yw;
    var var_3 = var_0;
    global1 = array<vec4<bool>, 26>();
    return -vec4<i32>(21549i, max(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(0u, 16u)] ^ global4[_wgslsmith_index_u32(4294967295u, 16u)], select(global4[_wgslsmith_index_u32(global0.b.b.x, 16u)], global4[_wgslsmith_index_u32(u_input.b, 16u)], arg_0)), ~global4[_wgslsmith_index_u32(13421u, 16u)] >> (4294967295u % 32u)), -1i, global4[_wgslsmith_index_u32(var_3.c.x, 16u)]);
}

fn func_2() -> vec3<f32> {
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~((global0.b.b.x ^ 4294967295u) ^ ~global0.b.b.x)), global0.b.b.x >> (abs(firstTrailingBit(global0.b.b.x | 52756u)) % 32u)), 16u)];
    var var_0 = global0.b.b;
    var var_1 = global0.c.x;
    global1 = array<vec4<bool>, 26>();
    let var_2 = Struct_4(abs(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_mult_i32(10617i, global4[_wgslsmith_index_u32(var_0.x, 16u)]), _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(u_input.b, 16u)], -54076i)) >> (~var_0.x % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.yxw - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1574f, -1000f, 533f) - global0.c.ywy)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.c.xxy * vec3<f32>(-1093f, -300f, 1006f)), global0.c.xyx, select(global0.b.a, false, global0.b.a))))), ~func_3(all(vec4<bool>(true, true, global0.b.a, true)), global0.b), _wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -35175i), select(vec2<i32>(global4[_wgslsmith_index_u32(31634u, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<i32>(-1i, global4[_wgslsmith_index_u32(global0.b.b.x, 16u)]), global3[_wgslsmith_index_u32(22127u, 4u)]))), -vec2<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], global4[_wgslsmith_index_u32(u_input.a.x, 16u)]) | countOneBits(firstTrailingBit(vec2<i32>(global4[_wgslsmith_index_u32(global0.b.b.x, 16u)], 0i)))));
    return var_2.b;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.x * global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.yw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.yz) - _wgslsmith_div_vec2_f32(global0.a, vec2<f32>(arg_2.b.x, 1000f))))), Struct_1(false, (arg_3.yww & ~vec3<u32>(21668u, 0u, u_input.c)) >> (select(~vec3<u32>(u_input.a.x, arg_3.x, 16171u), abs(global0.b.b), all(vec3<bool>(true, global0.b.a, false))) % vec3<u32>(32u))), arg_2.b);
    var var_0 = arg_2.b.x;
    global4 = array<i32, 16>();
    var var_1 = select(vec3<u32>(0u, 4294967295u, _wgslsmith_mult_u32(arg_2.c.x, _wgslsmith_div_u32(arg_3.x, u_input.c >> (arg_0 % 32u)))), vec3<u32>(global0.b.b.x, reverseBits(global0.b.b.x), 2536u), false);
    global0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.xz + _wgslsmith_f_op_vec2_f32(min(global0.c.ww, _wgslsmith_f_op_vec2_f32(step(arg_1.b.yz, vec2<f32>(arg_1.b.x, global0.a.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.yy + arg_2.b.yx)) + arg_1.b.yz)), Struct_1(!((global0.b.a || global0.b.a) && all(vec3<bool>(true, true, false))), ~arg_3.www), global0.c);
    return Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-391f, global0.a.x)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.b.x, global0.a.x), vec2<f32>(-1980f, global0.c.x))))))), arg_2.d, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    var var_1 = 1i;
    var var_2 = 11664i;
    var_2 = _wgslsmith_mod_i32(45082i, _wgslsmith_div_i32(~(~_wgslsmith_add_i32(global4[_wgslsmith_index_u32(17341u, 16u)], global4[_wgslsmith_index_u32(u_input.a.x, 16u)])), global4[_wgslsmith_index_u32(~1u, 16u)]));
    global0 = func_4(~(~abs(_wgslsmith_mod_u32(global0.b.b.x, 29577u))), Struct_4(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(50572u, 16u)], _wgslsmith_dot_vec2_i32(func_1(vec2<bool>(global0.b.a, global0.b.a), -17399i, vec3<i32>(-30560i, global4[_wgslsmith_index_u32(7256u, 16u)], global4[_wgslsmith_index_u32(1u, 16u)])), firstLeadingBit(vec2<i32>(global4[_wgslsmith_index_u32(u_input.c, 16u)], 2147483647i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0.c.zwz)))), _wgslsmith_sub_vec4_i32(select(reverseBits(vec4<i32>(global4[_wgslsmith_index_u32(var_0.x, 16u)], global4[_wgslsmith_index_u32(10161u, 16u)], -2147483647i, 2147483647i)), vec4<i32>(global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(49241u, 16u)], -78580i, global4[_wgslsmith_index_u32(global0.b.b.x, 16u)]), global0.b.a), _wgslsmith_sub_vec4_i32(~vec4<i32>(global4[_wgslsmith_index_u32(global0.b.b.x, 16u)], -13588i, 0i, global4[_wgslsmith_index_u32(100185u, 16u)]), _wgslsmith_div_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(43766u, 16u)], -3171i, global4[_wgslsmith_index_u32(var_0.x, 16u)], 2147483647i), vec4<i32>(-2147483647i, global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 26376i, -1i)))), reverseBits(-vec2<i32>(global4[_wgslsmith_index_u32(19075u, 16u)], -2147483647i))), Struct_2(2916u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) * global0.a.x), 1036f, 1000f, -1127f), _wgslsmith_add_vec2_u32(~u_input.a, vec2<u32>(1u, 1u)), Struct_1(!all(global1[_wgslsmith_index_u32(63540u, 26u)]), vec3<u32>(~global0.b.b.x, firstTrailingBit(global0.b.b.x), ~0u))), vec4<u32>(countOneBits(global0.b.b.x), 8036u, 9112u & (u_input.a.x >> (min(global0.b.b.x, var_0.x) % 32u)), _wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec3_u32(global0.b.b, countOneBits(vec3<u32>(u_input.c, 4312u, var_0.x))))));
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(firstLeadingBit(global4[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(global0.c.zyz))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1205f, _wgslsmith_f_op_f32(-1862f * global0.c.x), global0.c.x)), var_0.x < ~0u)), ~global0.b.b.x, min(~_wgslsmith_mod_vec2_i32(~vec2<i32>(global4[_wgslsmith_index_u32(11154u, 16u)], -51421i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global4[_wgslsmith_index_u32(20563u, 16u)]), vec2<i32>(48583i, global4[_wgslsmith_index_u32(0u, 16u)]), vec2<i32>(global4[_wgslsmith_index_u32(u_input.b, 16u)], 2147483647i))), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global4[_wgslsmith_index_u32(u_input.b, 16u)]), vec2<i32>(7986i, 2147483647i)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 12823u, u_input.b), ~vec4<u32>(73386u, 36822u, 71864u, u_input.a.x)), 16u)])), -1i);
}

