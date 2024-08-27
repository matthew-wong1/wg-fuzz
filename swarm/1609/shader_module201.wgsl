struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -1i, i32(-2147483648), 1i);

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = -vec4<i32>(arg_2.b, global1.x, arg_2.b, ~7658i) ^ vec4<i32>(arg_0, u_input.b.x, 2147483647i, -1i);
    let var_1 = arg_1.x;
    global2 = ~vec3<u32>(countOneBits(~(~4294967295u)), u_input.a.x, _wgslsmith_sub_u32(min(~u_input.a.x, _wgslsmith_div_u32(29440u, u_input.a.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xw, vec2<u32>(arg_2.a.x, 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(global2.x, 0u), vec2<u32>(arg_2.a.x, 22781u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1), -869f, arg_1.x, _wgslsmith_f_op_f32(507f - -487f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-233f, arg_1.x, 659f, arg_1.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-770f, _wgslsmith_f_op_f32(347f - var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1601f), var_1), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(f32(-1f) * -688f)), var_1)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) * 1f), arg_1.x, _wgslsmith_f_op_f32(954f * _wgslsmith_f_op_f32(-305f - var_1)), arg_1.x)));
    return max(u_input.b.x << (global2.x % 32u), -2700i);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = true;
    global1 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(7882i, func_3(0i, vec2<f32>(217f, -754f), Struct_2(vec4<u32>(46692u, 4294967295u, 4294967295u, 4294967295u), 573i), true), u_input.b.x) ^ ~u_input.b.x, abs(22180i), global1.x, _wgslsmith_div_i32(~(-2147483647i << (arg_0.x % 32u)), ~global1.x)), _wgslsmith_div_vec4_i32(~(~firstLeadingBit(vec4<i32>(-44363i, global1.x, u_input.b.x, u_input.b.x))), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(0i, 22824i, global1.x)), u_input.b.x, global1.x >> (u_input.a.x % 32u), 2147483647i)));
    var var_1 = Struct_1(vec4<i32>(-2147483647i, u_input.b.x & -global1.x, -(~(-24847i)), -2147483647i), 4294967295u, false, vec2<bool>(false | (_wgslsmith_f_op_f32(trunc(265f)) <= _wgslsmith_f_op_f32(ceil(-547f))), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), global1.ywy);
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(130f, 1077f, false)), _wgslsmith_f_op_f32(461f * -2003f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1581f))))))));
    var var_3 = Struct_2(vec4<u32>(u_input.a.x, abs(var_1.b) | _wgslsmith_mod_u32(38526u, arg_0.x), var_1.b, ~var_1.b >> (~(~13289u) % 32u)), select(var_1.a.x, -55866i, var_1.c));
    return global0[_wgslsmith_index_u32(global2.x, 5u)];
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    global2 = vec3<u32>(0u, u_input.a.x, 4294967295u);
    global1 = func_2(u_input.a.wwy).a;
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(vec4<f32>(-449f, arg_1.x, 674f, arg_1.x) * _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(arg_1.x, -694f, 1000f, 566f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, arg_2.d.x)), 1096f) * _wgslsmith_f_op_vec4_f32(-arg_1)), vec4<bool>(false, func_2(vec3<u32>(u_input.a.x, 1u, u_input.a.x)).d.x, !(!arg_2.c), true)))));
    var var_1 = _wgslsmith_f_op_f32(max(var_0.x, var_0.x));
    return _wgslsmith_sub_u32(57804u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(u_input.a.x), abs(_wgslsmith_clamp_u32(1u, 0u, 1u))), _wgslsmith_mult_u32(1u, 70085u)));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, 41500u), func_4(_wgslsmith_mod_u32(99258u, global2.x), vec4<f32>(-561f, -423f, 245f, -1000f), func_2(vec3<u32>(global2.x, 57762u, global2.x)))), 1u), min(~_wgslsmith_add_u32(40948u & global2.x, ~u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~global2.zz, global2.xz), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_sub_u32(~1u, global2.x))), _wgslsmith_add_u32(_wgslsmith_sub_u32(func_4(0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1304f, -606f, 362f, 662f)), func_2(vec3<u32>(u_input.a.x, u_input.a.x, global2.x))), ~(~4294967295u)), reverseBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(78916u, 79443u, 1u), ~1u))), countOneBits(~global2.x));
    var var_1 = Struct_2(u_input.a, 1i << (u_input.a.x % 32u));
    let var_2 = Struct_1(select(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-21926i, -2147483647i, -1i, var_1.b), vec4<i32>(-18039i, -1220i, global1.x, -2147483647i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 27851i, 2147483647i, -1i), -(~vec4<i32>(var_1.b, var_1.b, 17994i, 0i)), vec4<i32>(min(-60776i, 13767i), 2147483647i, var_1.b, global1.x)), true), global2.x, true, !vec2<bool>(func_2(reverseBits(vec3<u32>(4294967295u, 58915u, global2.x))).d.x, (arg_0 == arg_0) && true), global1.zyy);
    let var_3 = var_2.c;
    global0 = array<Struct_1, 5>();
    return _wgslsmith_clamp_vec4_i32(var_2.a, vec4<i32>(u_input.b.x & 1i, _wgslsmith_div_i32(-50019i, firstLeadingBit(~u_input.b.x)), 43704i, ~2147483647i), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_vec4_i32(func_1(true), select(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, global1.x, u_input.b.x, -2147483647i), vec4<i32>(-1453i, 2147483647i, global1.x, u_input.b.x)), vec4<i32>(u_input.b.x, 1i, global1.x, global1.x)), abs(~vec4<i32>(global1.x, -25994i, u_input.b.x, -1i)), false)), 23420u, false, vec2<bool>(true, true), ~(-(~global1.xzx)) >> (u_input.a.xyz % vec3<u32>(32u)));
    global1 = var_0.a;
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(1u, 0u), _wgslsmith_mod_u32(0u, 4294967295u) | ~var_0.b), _wgslsmith_mod_vec2_u32(global2.yx, global2.yy)) & vec2<u32>(reverseBits(4294967295u), var_0.b);
    global2 = vec3<u32>(~_wgslsmith_clamp_u32(114214u, min(12181u, u_input.a.x), var_1.x), 30578u, ~abs(~firstLeadingBit(var_0.b)));
    var_0 = Struct_1(firstLeadingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(20695i, var_0.e.x, global1.x, global1.x), vec4<i32>(u_input.b.x, var_0.a.x, 3537i, global1.x))) ^ -reverseBits(-var_0.a), global2.x, false, select(!var_0.d, vec2<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(40397u, var_1.x, global2.x, var_0.b), vec4<u32>(38992u, 4294967295u, 1u, 4294967295u)) <= 0u), false), vec3<i32>(var_0.e.x, var_0.e.x, reverseBits(_wgslsmith_sub_i32(var_0.a.x, var_0.a.x) << (_wgslsmith_div_u32(17875u, 4294967295u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(231f, global1.zz);
}

