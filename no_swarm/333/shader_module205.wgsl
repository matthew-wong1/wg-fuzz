struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-230f, -706f), vec4<f32>(1053f, 864f, -1329f, -441f), vec4<i32>(15696i, 29632i, -15168i, 4843i), vec3<f32>(1000f, 1165f, 1000f));

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<i32, 19>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    global0 = Struct_1(global0.a, global0.b, vec4<i32>(global0.c.x, i32(-1i) * -1i, _wgslsmith_mod_i32(~min(31997i, global0.c.x), 12169i), 3657i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.yzw) + arg_0))));
    var var_0 = 2147483647i;
    return -arg_1;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = Struct_1(global0.b.ww, vec4<f32>(-1000f, _wgslsmith_f_op_f32(arg_0 * arg_1.x), -2879f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-617f, -183f) + 1092f) * -523f)), vec4<i32>(func_3(global0.d, -1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(global0.c.xw, vec2<i32>(0i, u_input.d.x), arg_2.x), _wgslsmith_mult_vec2_i32(u_input.d.ww, vec2<i32>(u_input.d.x, u_input.d.x))), 1i), firstTrailingBit(0i), (abs(global0.c.x) ^ reverseBits(u_input.e)) & firstTrailingBit(4850i)), _wgslsmith_f_op_vec3_f32(max(global0.b.zxz, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1061f, global0.a.x, -632f)))))));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 64853u, 0u), u_input.b), reverseBits(~11893u | (_wgslsmith_mult_u32(u_input.a.x, u_input.b.x) << (4294967295u % 32u))));
    let var_2 = Struct_5(Struct_2(arg_2, !(374f == arg_1.x), u_input.c.x, u_input.a.x), vec4<i32>(1i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_1 | 4294967295u, var_1), vec3<u32>(_wgslsmith_div_u32(42943u, u_input.b.x), firstTrailingBit(1u), var_1)), 19u)], -42615i, abs(_wgslsmith_clamp_i32(abs(-1i), 1i, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)])))), var_0.b.yw, arg_2.x & !(!arg_2.x), var_0.a.x);
    var var_3 = vec4<u32>(~_wgslsmith_add_u32(var_1, 7986u), _wgslsmith_clamp_u32(~var_2.a.c, 1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, ~18564u), var_2.a.d | _wgslsmith_div_u32(27173u, var_1))), 1u, ~var_2.a.d);
    let var_4 = var_2.d;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.d)));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> vec2<u32> {
    var var_0 = Struct_3(0u, ~min(u_input.c.x, ~4294967295u), Struct_2(vec4<bool>(!(arg_0.x == global0.d.x), 4294967295u >= u_input.a.x, false, false), true, countOneBits(u_input.c.x), 1u), _wgslsmith_div_vec4_i32(firstTrailingBit(abs(vec4<i32>(-82487i, global2[_wgslsmith_index_u32(4294967295u, 19u)], -44595i, -4406i))), u_input.d));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, -105f, global0.a.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(815f, 143f, -1402f) - global0.b.yzz), arg_0))));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -555f)) - arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1992f), var_1.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1208f, _wgslsmith_f_op_f32(-global0.a.x), -764f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_vec3_f32(func_2(-660f, vec2<f32>(974f, 453f), vec4<bool>(var_0.c.b, var_0.c.a.x, false, var_0.c.b))).x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(var_1.x, 730f), -802f, global0.b.x, _wgslsmith_f_op_f32(sign(-353f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.d.x, 2237f, var_1.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(global0.b - global0.b)))))), countOneBits(_wgslsmith_add_vec4_i32(u_input.d, ~(-vec4<i32>(31554i, 41471i, -17445i, global0.c.x)))), _wgslsmith_f_op_vec3_f32(global0.b.wyx - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(global0.a.x, -149f, 736f)) + var_1)));
    let var_3 = ~(u_input.e << (u_input.c.x % 32u));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1668f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(2345f, arg_0.yz, vec4<bool>(var_0.c.b, false, var_0.c.a.x, true))).x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(1074f, _wgslsmith_f_op_f32(select(global0.b.x, 435f, var_0.c.b)), -420f, _wgslsmith_f_op_f32(abs(289f)))) * global0.b), u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, global0.b.x, var_2.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-325f, -1000f, -2089f)) - _wgslsmith_f_op_vec3_f32(ceil(global0.d))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1035f, arg_0.x, -1000f)))));
    return vec2<u32>(abs(_wgslsmith_add_u32(1u, 2671u)), var_0.b);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global2 = array<i32, 19>();
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_vec2_f32(-global0.d.zz), vec4<bool>(arg_0.a.x, true, arg_0.b, arg_0.a.x))) - _wgslsmith_f_op_vec3_f32(global0.d + _wgslsmith_f_op_vec3_f32(-global0.b.xwy)))), 3786i);
    global2 = array<i32, 19>();
    var var_1 = abs(~(4105u ^ (~arg_0.c ^ ~var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(-global0.d.x);
    return Struct_3(_wgslsmith_clamp_u32(~max(4294967295u, var_0.x), ~func_4(vec3<f32>(-2220f, var_2, 1671f), -1i).x, _wgslsmith_sub_u32(min(1u, 0u), max(u_input.b.x, 50518u))) & ~countOneBits(arg_0.d), select(4294967295u, _wgslsmith_clamp_u32(max(4294967295u, var_0.x), u_input.b.x ^ u_input.a.x, 1u), false) & var_0.x, Struct_2(vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b), arg_0.b, ~var_0.x, 45684u), vec4<i32>(-1i, ~_wgslsmith_sub_i32(i32(-1i) * -1i, u_input.e), u_input.e, _wgslsmith_clamp_i32(~0i, ~(-7086i), ~global0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~_wgslsmith_div_vec4_u32(~u_input.a, u_input.a));
    var var_1 = u_input.c.xy;
    var_1 = ~(vec2<u32>(~_wgslsmith_add_u32(var_0.x, u_input.a.x), ~(u_input.c.x & 0u)) & vec2<u32>((u_input.b.x | var_1.x) & 6194u, ~(~26112u)));
    let var_2 = func_1(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(4294967295u & var_0.x), _wgslsmith_div_u32(~4294967295u, 4294967295u), abs(~var_1.x)), 18u)]);
    let var_3 = Struct_2(var_2.c.a, var_2.c.a.x, 8180u, 0u);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1611f, 690f) + vec2<f32>(-553f, global0.d.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.x, -749f), global0.b.xx)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(global0.b)))), _wgslsmith_clamp_vec4_i32(var_2.d, -(~_wgslsmith_div_vec4_i32(vec4<i32>(global0.c.x, -55176i, -31393i, u_input.e), vec4<i32>(var_2.d.x, 0i, 26434i, -2147483647i))), var_2.d), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1033f, global0.d.x, global0.b.x), _wgslsmith_f_op_vec3_f32(global0.b.zxz + vec3<f32>(994f, global0.a.x, global0.d.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 1466f, -716f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32((1u >> (u_input.c.x % 32u)) << (_wgslsmith_div_u32(0u, u_input.c.x) % 32u), 19u)], (max(var_0.x, ~var_3.d) & ~firstTrailingBit(var_1.x)) << (var_1.x % 32u), 4294967295u);
}

