struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 22>;

var<private> global3: array<bool, 15>;

var<private> global4: u32 = 24455u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    global3 = array<bool, 15>();
    global0 = array<vec3<i32>, 19>();
    let var_0 = Struct_2(arg_0.b, Struct_1(_wgslsmith_sub_i32(arg_1.a, arg_0.b.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(min(-363f, arg_1.b.x)), -1391f) - arg_0.a.b), global1.b.x, ~arg_0.a.d), select(!((global1.a | global1.a) > ~arg_1.a), !any(select(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_1.d.x, 15u)], global3[_wgslsmith_index_u32(13950u, 15u)]), vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.e, 15u)]), global3[_wgslsmith_index_u32(arg_1.d.x, 15u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1151f) - arg_1.b.x) == -583f));
    global4 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_1.d.x, global1.d.x), max(var_0.b.d.ywx, vec3<u32>(4129u, 10367u, 4294967295u))), arg_0.a.d.wwz);
    global3 = array<bool, 15>();
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<f32>) -> bool {
    var var_0 = -18545i;
    var var_1 = arg_0;
    let var_2 = global1.b.x;
    let var_3 = arg_1;
    var var_4 = select(vec2<bool>(func_3(var_3, Struct_1(-27938i, vec4<f32>(var_3.a.c, var_3.b.b.x, -144f, 690f), var_3.a.b.x, var_3.b.d), _wgslsmith_add_vec4_u32(arg_1.a.d, vec4<u32>(global1.d.x, 1u, var_1.d.x, 44446u))) & (_wgslsmith_f_op_f32(ceil(-2410f)) > _wgslsmith_f_op_f32(-var_3.b.c)), true), !select(arg_2, arg_2, true), select(!select(select(global2[_wgslsmith_index_u32(var_1.d.x, 22u)], vec2<bool>(false, true), arg_2.x), vec2<bool>(false, arg_2.x), select(global2[_wgslsmith_index_u32(69934u, 22u)], global2[_wgslsmith_index_u32(59196u, 22u)], global3[_wgslsmith_index_u32(u_input.e, 15u)])), arg_2, arg_3.x != _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = !(!vec2<bool>(true, true || func_2(Struct_1(u_input.a, vec4<f32>(arg_2.x, arg_2.x, global1.b.x, -121f), global1.c, global1.d), Struct_2(Struct_1(u_input.b, global1.b, global1.c, global1.d), Struct_1(11939i, global1.b, 1000f, global1.d), global3[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(false, true), arg_2)));
    var_0 = global2[_wgslsmith_index_u32(66928u, 22u)];
    var var_1 = Struct_2(Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_f_op_vec4_f32(-global1.b)))), -163f, _wgslsmith_clamp_vec4_u32(select(vec4<u32>(global1.d.x, arg_0.x, global1.d.x, global1.d.x) << (vec4<u32>(37361u, arg_0.x, arg_3, arg_3) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(40149u, 1u, 65837u, arg_0.x), vec4<u32>(arg_3, 44821u, arg_0.x, 1u)), false), global1.d, ~vec4<u32>(0u, arg_1, arg_0.x, 0u))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(global1.a << (1u % 32u), -global1.a), firstLeadingBit(u_input.d.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global1.b, global1.b))))), 1501f, global1.d), var_0.x | global3[_wgslsmith_index_u32(u_input.e, 15u)]);
    global1 = var_1.b;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1409f)));
    return Struct_1(u_input.d.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * var_1.b.c) - _wgslsmith_f_op_f32(abs(global1.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.b.x + 148f), -130f))), global1.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(-var_1.b.c))))), _wgslsmith_f_op_f32(-arg_2.x), countOneBits(abs(var_1.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 30734u), ~_wgslsmith_clamp_vec2_u32(~u_input.c.xz, vec2<u32>(1u, 1u), ~vec2<u32>(u_input.e, global1.d.x)), u_input.c.zx), global1.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, 1000f, global1.c)), _wgslsmith_f_op_vec3_f32(trunc(global1.b.yyw)), vec3<bool>(false, true, true)))), min(u_input.c.x, u_input.e));
    var var_1 = -_wgslsmith_mod_i32(-_wgslsmith_add_i32(select(-17254i, global1.a, global3[_wgslsmith_index_u32(41865u, 15u)]), u_input.b), _wgslsmith_div_i32(~(-16708i | u_input.d.x), abs(1i)));
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-2147483647i, var_0.a, -28434i) << (~vec3<u32>(4294967295u, global1.d.x, 0u) % vec3<u32>(32u))), vec4<f32>(_wgslsmith_div_f32(1103f, -1033f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(step(314f, _wgslsmith_f_op_f32(var_0.c - 700f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f * -971f)) * _wgslsmith_f_op_f32(-1887f * var_0.b.x))), 659f, ~global1.d);
    let var_2 = Struct_2(Struct_1(-1i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b.x, var_0.b.x, global3[_wgslsmith_index_u32(0u, 15u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * _wgslsmith_f_op_f32(abs(global1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-338f * var_0.c) + var_0.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.c, -206f, 4294967295u == global1.d.x)))), firstLeadingBit(vec4<u32>(global1.d.x | 22661u, global1.d.x, u_input.e << (0u % 32u), var_0.d.x))), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, global1.b.x)), 611f, ~vec4<u32>(_wgslsmith_div_u32(2859u, 86227u), 43595u << (var_0.d.x % 32u), 47384u, _wgslsmith_mult_u32(u_input.c.x, var_0.d.x))), all(!(!(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.e, 15u)], false, true)))));
    let var_3 = vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 15u)]);
    global3 = array<bool, 15>();
    let var_4 = var_2;
    let var_5 = Struct_1(abs(var_2.a.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), -1818f, 1f, var_4.a.c), _wgslsmith_f_op_f32(select(634f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.b.x)), ~abs(u_input.c.x) <= var_0.d.x)), select(_wgslsmith_add_vec4_u32(~(~var_0.d), var_4.b.d), ~var_0.d | ~(vec4<u32>(85906u, 4957u, u_input.e, var_0.d.x) >> (var_2.b.d % vec4<u32>(32u))), reverseBits(abs(0u)) < ~_wgslsmith_sub_u32(var_2.a.d.x, 1u)));
    global0 = array<vec3<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, var_4.a.b.x, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(max(~vec4<i32>(var_4.b.a, var_4.b.a, var_4.b.a, -23246i), ~vec4<i32>(global1.a, var_5.a, var_5.a, var_2.b.a)), abs(-vec4<i32>(-2147483647i, -2147483647i, u_input.b, global1.a))), select(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(21010i, var_4.a.a, -1i, var_4.a.a)), vec4<i32>(var_2.b.a, global1.a, -6191i, 7049i), vec4<i32>(var_4.a.a, var_4.b.a, -2147483647i, -237i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-29892i, -29456i, 18085i, var_4.a.a), vec4<i32>(3630i, -20256i, 17207i, 12076i)), ~(-41976i), _wgslsmith_dot_vec4_i32(vec4<i32>(59820i, var_0.a, -20062i, -2147483647i), vec4<i32>(var_0.a, global1.a, var_0.a, -1i)), ~(-1i)), select(vec4<bool>(true, false, true, var_3.x), vec4<bool>(global3[_wgslsmith_index_u32(112599u, 15u)], false, var_4.c, true), false)), ~(~vec4<i32>(global1.a, global1.a, -5763i, var_5.a))));
}

