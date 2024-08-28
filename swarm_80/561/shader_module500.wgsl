struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15>;

var<private> global1: array<f32, 29> = array<f32, 29>(1316f, 186f, -2125f, -532f, -1580f, 493f, -1488f, -865f, 1693f, -1591f, 203f, 253f, 1000f, -340f, -935f, -141f, -1462f, 1000f, 1112f, 1786f, 341f, -355f, 1000f, 1845f, -1112f, -980f, 741f, 462f, -1000f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_2(Struct_1(1i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 251f, arg_0, arg_0)) * vec4<f32>(-831f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], -672f, -2113f))))), _wgslsmith_div_vec2_i32(firstLeadingBit(reverseBits(u_input.a.zz)) & ~vec2<i32>(u_input.a.x, 1i), u_input.a.xy), 0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f + -2069f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f)))))), 1132f) - _wgslsmith_f_op_vec3_f32(select(var_0.a.b.xxx, var_0.a.b.wwy, !vec3<bool>(all(vec4<bool>(true, true, false, true)), false, false))));
    var var_2 = var_0;
    var var_3 = u_input.c.yxx;
    global0 = array<vec3<bool>, 15>();
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 0i, var_2.a.a), -firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.a, -30196i, var_2.a.a, -17121i), vec4<i32>(0i, u_input.a.x, 1i, 2147483647i))));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(Struct_1(abs(func_3(global1[_wgslsmith_index_u32(u_input.c.x, 29u)])), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2164f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)]))), _wgslsmith_div_f32(1058f, -108f), _wgslsmith_f_op_f32(1232f - 487f), 1000f)), -vec2<i32>(1i, u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.b, 4294967295u, 47496u, 30619u), ~u_input.c), _wgslsmith_sub_vec4_u32(u_input.c << (u_input.c % vec4<u32>(32u)), u_input.c)), vec4<u32>(~u_input.b >> (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.b)) % 32u), 1u, 64194u, u_input.b)));
    global0 = array<vec3<bool>, 15>();
    var var_1 = Struct_1(max(22172i, -5467i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -852f, 459f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, ~u_input.b, reverseBits(var_0.c)), 29u)])));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-1155f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(-452f + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 29u)], var_1.b.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-649f, var_1.b.x)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1136f), 1000f)));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(-581f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(1021f + var_2.x)), _wgslsmith_f_op_f32(trunc(var_2.x)))));
    return _wgslsmith_f_op_f32(1282f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 29u)]))));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>) -> Struct_2 {
    global0 = array<vec3<bool>, 15>();
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(0i, -11006i, 0i), arg_1, true), _wgslsmith_mult_vec3_i32(~arg_1, u_input.a)), vec3<i32>(-2147483647i, firstTrailingBit(0i) | _wgslsmith_mult_i32(u_input.a.x, -2147483647i), u_input.a.x)), 1i, 45623i);
    let var_1 = min(~vec4<i32>(_wgslsmith_mult_i32(u_input.a.x << (23705u % 32u), _wgslsmith_dot_vec2_i32(arg_1.zx, u_input.a.yy)), ~_wgslsmith_mod_i32(-2147483647i, arg_1.x), _wgslsmith_sub_i32(select(arg_1.x, 1i, true), _wgslsmith_mult_i32(-5416i, -33794i)), -(~20901i)), ~(-(-vec4<i32>(1i, 19722i, u_input.a.x, 1i) | (vec4<i32>(arg_1.x, 0i, 2147483647i, 29202i) | vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x)))));
    global0 = array<vec3<bool>, 15>();
    var var_2 = vec2<f32>(474f, _wgslsmith_f_op_f32(1f - arg_0));
    return Struct_2(Struct_1(-u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(391f, 1069f, global1[_wgslsmith_index_u32(4294967295u, 29u)], var_2.x) + vec4<f32>(953f, -649f, -627f, global1[_wgslsmith_index_u32(1u, 29u)])))), select(vec2<i32>(16340i, 19093i), ~vec2<i32>(abs(-56567i), min(u_input.a.x, var_1.x)), true), _wgslsmith_dot_vec4_u32(~firstLeadingBit(u_input.c), vec4<u32>(~(~u_input.b), u_input.c.x, ~_wgslsmith_mult_u32(49433u, u_input.b), _wgslsmith_add_u32(firstLeadingBit(54214u), u_input.c.x))));
}

fn func_1(arg_0: i32) -> u32 {
    global1 = array<f32, 29>();
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + global1[_wgslsmith_index_u32(~u_input.b, 29u)]))), vec3<i32>(u_input.a.x, 2147483647i, select(arg_0, u_input.a.x ^ arg_0, true)) << (reverseBits(~u_input.c.yyy) % vec3<u32>(32u)));
    global0 = array<vec3<bool>, 15>();
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.a.b.x)), global1[_wgslsmith_index_u32(40192u, 29u)]))), vec3<i32>(var_0.b.x, var_0.a.a, -arg_0) & firstTrailingBit(firstLeadingBit(vec3<i32>(var_0.b.x, var_0.a.a, var_0.b.x)) ^ -u_input.a));
    var var_2 = (vec4<i32>(_wgslsmith_mult_i32(-1i, var_0.b.x), u_input.a.x, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(7893i, -30459i, -2147483647i, -37896i), -vec4<i32>(1i, arg_0, 0i, 0i))) ^ select(-vec4<i32>(var_0.a.a, var_1.a.a, var_1.b.x, 50089i), -(~vec4<i32>(u_input.a.x, var_0.a.a, 76i, 1i)), !(var_1.c == 74478u))) << (~_wgslsmith_sub_vec4_u32(firstTrailingBit(min(u_input.c, vec4<u32>(var_1.c, 34459u, var_1.c, 4294967295u))), u_input.c) % vec4<u32>(32u));
    return _wgslsmith_mod_u32(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 4294967295u), vec3<u32>(var_0.c, 38575u, u_input.c.x)), 1u), ~firstTrailingBit(2597u)), ~(42947u & var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_clamp_i32(abs(u_input.a.x), ~(~_wgslsmith_sub_i32(-13095i, -56140i)), ~_wgslsmith_mult_i32(-8062i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), vec4<u32>(15186u, firstLeadingBit(~_wgslsmith_sub_u32(u_input.b, u_input.b)), 0u, u_input.b));
    let var_1 = Struct_1(-(1i >> (_wgslsmith_div_u32(var_0.b.x, 66398u) % 32u)) & var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 1u), 29u)])), _wgslsmith_f_op_f32(426f + 596f), 136f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1289f, 1182f, -650f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]) * vec4<f32>(-1088f, -1000f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)]))))));
    let var_2 = _wgslsmith_clamp_u32(func_1(var_1.a), _wgslsmith_clamp_u32(u_input.b, abs(44405u), ~25307u), var_0.b.x);
    let var_3 = (0u != var_2) | all(vec2<bool>(true, true));
    var var_4 = ~vec2<i32>(~var_1.a, var_1.a) << (min(~(~(var_0.b.xy ^ var_0.b.xw)), _wgslsmith_mod_vec2_u32(var_0.b.xy, reverseBits(countOneBits(u_input.c.zz)))) % vec2<u32>(32u));
    global1 = array<f32, 29>();
    let var_5 = var_1.a;
    let var_6 = func_4(1262f, reverseBits(u_input.a)).a;
    let var_7 = Struct_3(var_6.a, ~(~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_div_i32(~(-7671i), 53350i), vec3<u32>(u_input.c.x, func_1(-1500i), 4294967295u));
}

