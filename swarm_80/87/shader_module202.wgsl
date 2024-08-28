struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(-595f, vec4<i32>(-27836i, 1i, -1i, 0i), true, vec2<f32>(-167f, -458f)), Struct_1(-1001f, vec4<i32>(1538i, -1i, 0i, -1486i), true, vec2<f32>(-1000f, 436f)), Struct_1(-1009f, vec4<i32>(-16446i, 7941i, -31344i, -1i), false, vec2<f32>(-863f, -205f)), Struct_1(-611f, vec4<i32>(44817i, -1i, -4152i, 2147483647i), false, vec2<f32>(1000f, -2170f)), Struct_1(391f, vec4<i32>(i32(-2147483648), 15801i, -35881i, 1i), true, vec2<f32>(-1146f, 737f)), Struct_1(672f, vec4<i32>(0i, 0i, 25152i, -1i), false, vec2<f32>(1334f, 266f)), Struct_1(-739f, vec4<i32>(14581i, -335i, i32(-2147483648), -51648i), true, vec2<f32>(1211f, 988f)), Struct_1(-634f, vec4<i32>(15463i, 2147483647i, 2147483647i, 34479i), false, vec2<f32>(544f, 162f)), Struct_1(405f, vec4<i32>(-1i, -64595i, i32(-2147483648), -24482i), false, vec2<f32>(-1512f, 558f)), Struct_1(1371f, vec4<i32>(-5411i, 1947i, -1i, -24324i), true, vec2<f32>(1464f, 1000f)), Struct_1(-839f, vec4<i32>(0i, 0i, -1i, 1i), true, vec2<f32>(-1000f, 393f)), Struct_1(-499f, vec4<i32>(-36124i, -1i, 0i, i32(-2147483648)), true, vec2<f32>(-487f, -158f)), Struct_1(179f, vec4<i32>(2147483647i, -30807i, -14922i, -66191i), true, vec2<f32>(-622f, 1000f)), Struct_1(673f, vec4<i32>(1i, 1i, -1i, -7291i), false, vec2<f32>(-471f, -263f)), Struct_1(-1000f, vec4<i32>(-29514i, 6746i, 10531i, -103478i), false, vec2<f32>(333f, -1018f)), Struct_1(-1220f, vec4<i32>(0i, i32(-2147483648), -53865i, 0i), true, vec2<f32>(1924f, -1194f)), Struct_1(-1567f, vec4<i32>(-1i, 0i, 0i, -6396i), true, vec2<f32>(1405f, 536f)), Struct_1(442f, vec4<i32>(i32(-2147483648), -1i, -9881i, -16871i), false, vec2<f32>(-583f, -385f)), Struct_1(1030f, vec4<i32>(0i, -34690i, 1i, 0i), true, vec2<f32>(623f, 1000f)));

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 47318u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec3<u32> {
    global1 = vec3<u32>(_wgslsmith_mult_u32(~(~(u_input.b & u_input.c)), ~(~(~1u))), 4294967295u, _wgslsmith_sub_u32(u_input.c, countOneBits(u_input.c)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-103f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(272f)) * -407f))) * -1031f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-1356f, _wgslsmith_div_f32(-1020f, 926f), _wgslsmith_f_op_f32(234f + 1209f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040f - 135f)), 2184f, _wgslsmith_f_op_f32(select(-433f, _wgslsmith_f_op_f32(max(-2450f, 1472f)), true))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -721f, 1893f, -668f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 573f, 870f, var_1.x) * vec4<f32>(var_1.x, var_1.x, 1232f, var_1.x)), vec4<bool>(true, true, false, false))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1212f, var_1.x) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_1.x, -175f, 1670f), vec4<f32>(1759f, 298f, -563f, 955f), vec4<bool>(false, false, true, false))), true)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(sign(-444f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x))));
    let var_3 = !select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), vec4<bool>(u_input.a.x == u_input.a.x, true, global1.x >= 1u, var_2.x < var_2.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), 12525u >= global1.x)));
    return vec3<u32>(_wgslsmith_mod_u32(0u, abs(u_input.b)), 0u, abs(~global1.x));
}

fn func_2() -> vec3<u32> {
    global1 = ~firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.c, global1.x, u_input.b)), vec3<u32>(56147u, 65105u, u_input.c) << (vec3<u32>(4294967295u, global1.x, 0u) % vec3<u32>(32u))), vec3<u32>(global1.x << (1u % 32u), global1.x, 56214u)));
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, global1.x, u_input.b), vec4<u32>(global1.x, u_input.b, global1.x, u_input.c)) << (_wgslsmith_mult_u32(~u_input.b, 52694u) % 32u), 4294967295u, countOneBits(_wgslsmith_div_u32(21412u, 80621u))), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x << (4294967295u % 32u), abs(~u_input.b), 4294967295u), func_3()));
    var var_1 = !select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)), select(vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    let var_2 = _wgslsmith_f_op_f32(floor(-1730f));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, 407f, var_2), vec3<f32>(var_2, -455f, var_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1463f, var_2, 119f) + vec3<f32>(var_2, var_2, -427f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, var_2, 459f), vec3<f32>(var_2, var_2, -1257f))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -139f), -2831f, 330f)));
    return ~(~vec3<u32>(var_0.x, 4294967295u, 0u));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    global1 = func_2();
    var var_0 = ~(~vec2<u32>(~global1.x, u_input.b));
    let var_1 = select(vec3<bool>(all(select(vec3<bool>(arg_0.c, arg_0.c, true), select(vec3<bool>(arg_0.c, true, true), vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(false, false, arg_0.c)), arg_0.c)), any(!(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c))), arg_0.c), select(!(!(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c))), vec3<bool>(all(vec3<bool>(false, false, arg_0.c)), true, arg_0.c), any(select(!vec2<bool>(false, arg_0.c), !vec2<bool>(arg_0.c, true), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, arg_0.c), arg_0.c)))), vec3<bool>(all(vec4<bool>(arg_0.c, true, true, arg_0.d.x >= -140f)), arg_0.c, (153f >= _wgslsmith_div_f32(arg_0.a, -1037f)) & true));
    let var_2 = Struct_1(arg_0.a, arg_0.b, !(false | all(select(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, var_1.x, false, false), vec4<bool>(arg_0.c, false, false, var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.d))), arg_0.d, !select(var_1.xz, vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, arg_0.c))))));
    let var_3 = !(var_2.d.x >= 620f);
    return -vec4<i32>(var_2.b.x, u_input.a.x << (~global1.x % 32u), -23488i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(~(vec2<u32>(1u, 4294967295u) << (vec2<u32>(global1.x, 4294967295u) % vec2<u32>(32u)))) << (global1.zx % vec2<u32>(32u)), countOneBits(global1.zz), any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, false))));
    let var_1 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a.x, -2147483647i, 31688i, u_input.a.x) ^ (func_1(global0[_wgslsmith_index_u32(var_0.x, 19u)]) & reverseBits(vec4<i32>(42963i, -1i, u_input.a.x, -3407i))), -vec4<i32>(reverseBits(15333i), 1i, -15136i, _wgslsmith_mult_i32(40913i, u_input.a.x)), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true)), ~vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, ~(-2147483647i)), -1i, select(abs(5235i), 1i, false), u_input.a.x));
    global1 = _wgslsmith_mod_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(_wgslsmith_mod_u32(9814u, 1u), ~var_0.x, global1.x | 1u))), _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(14201u, global1.x, u_input.c))), firstLeadingBit(vec3<u32>(var_0.x, ~var_0.x, 1u))));
    var var_2 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(11831i, 2147483647i, max(-24223i, max(-23820i, -254i))), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, var_1.x, 41654i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a.x), var_1.wzz)), ~var_1.wzz), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(1i, var_1.x, var_1.x, var_1.x)), -u_input.a.x), abs(~u_input.a.x), _wgslsmith_add_i32(var_1.x, u_input.a.x >> (var_0.x % 32u))));
    let var_3 = global0[_wgslsmith_index_u32(min(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.c, var_0.x)))), ~(reverseBits(global1.x) >> (0u % 32u))), 19u)];
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-var_3.a), var_1, select(true, all(select(vec4<bool>(var_3.c, var_3.c, true, false), vec4<bool>(true, var_3.c, var_3.c, false), vec4<bool>(var_3.c, var_3.c, var_3.c, var_3.c))), any(!vec4<bool>(false, true, var_3.c, false))) && (!(!var_3.c) != true), _wgslsmith_f_op_vec2_f32(select(var_3.d, _wgslsmith_f_op_vec2_f32(-var_3.d), select(vec2<bool>(false, var_3.c), select(!vec2<bool>(true, var_3.c), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, var_3.c), vec2<bool>(true, false), false)), select(vec2<bool>(var_3.c, var_3.c), vec2<bool>(true, var_3.c), true)))));
    var_2 = -abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(select(-1i, var_1.x, true), -19550i, i32(-1i) * -72828i), ~var_3.b.zzx, var_3.b.xxy));
    let x = u_input.a;
    s_output = StorageBuffer(max(39945i, -2336i) >> (~(~(~global1.x)) % 32u), var_3.d.x, global1.x);
}

