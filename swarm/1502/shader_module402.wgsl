struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -13708i;

var<private> global1: array<vec2<bool>, 23>;

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 4> = array<bool, 4>(false, true, true, true);

var<private> global4: vec2<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: f32) -> vec3<i32> {
    var var_0 = arg_0.a;
    let var_1 = Struct_2(Struct_1(min(~u_input.d.zyw, abs(u_input.d.ywz)) >> (~vec3<u32>(7752u, 9589u, arg_0.d.a.x) % vec3<u32>(32u)), arg_0.d.b, all(!global1[_wgslsmith_index_u32(_wgslsmith_add_u32(55991u, u_input.c.x), 23u)])), vec2<f32>(1928f, _wgslsmith_f_op_f32(arg_0.b - 686f)), 4673u);
    global1 = array<vec2<bool>, 23>();
    var var_2 = Struct_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1282f)), _wgslsmith_f_op_f32(-global2.x))), arg_3), ~max(1u, u_input.c.x)), vec2<bool>(arg_0.d.c, !all(select(global1[_wgslsmith_index_u32(arg_0.a.b, 23u)], global1[_wgslsmith_index_u32(var_0.b, 23u)], global1[_wgslsmith_index_u32(var_1.a.a.x, 23u)]))));
    return max(-vec3<i32>(u_input.e, abs(arg_0.d.b), _wgslsmith_sub_i32(u_input.e, u_input.e) << (_wgslsmith_dot_vec2_u32(vec2<u32>(33231u, 2376u), arg_0.d.a.xz) % 32u)), max(vec3<i32>(0i, 6969i, arg_0.d.b) >> (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 106729u, arg_0.a.b), vec3<u32>(var_1.a.a.x, 4294967295u, var_2.a.b)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(arg_0.c, -39680i, arg_0.d.b), vec3<bool>(var_1.a.c, false, global3[_wgslsmith_index_u32(var_0.b, 4u)])), select(vec3<i32>(var_1.a.b, var_1.a.b, arg_0.d.b), vec3<i32>(arg_2.x, -1i, var_1.a.b), false))) << (vec3<u32>(_wgslsmith_clamp_u32(var_0.b, 12043u, _wgslsmith_dot_vec3_u32(u_input.d.wzy, var_1.a.a)), ~21666u, ~_wgslsmith_add_u32(var_0.b, var_2.a.b)) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))) - global2.x), ~u_input.d.x), -450f, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -63306i, -15921i, arg_0.b ^ u_input.e) >> ((_wgslsmith_mod_vec3_u32(arg_0.a, arg_0.a) ^ ~u_input.d.wyy) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(-countOneBits(vec3<i32>(-29250i, 0i, arg_0.b)), func_3(Struct_5(Struct_3(2014f, u_input.d.x), global2.x, -1i, Struct_1(vec3<u32>(58866u, 1u, u_input.d.x), arg_0.b, false)), _wgslsmith_f_op_vec2_f32(-global2.zw), vec2<i32>(u_input.e, u_input.e), _wgslsmith_f_op_f32(-global2.x)))), Struct_1(reverseBits(vec3<u32>(min(arg_0.a.x, 22397u), reverseBits(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4355u, arg_0.a.x, 33611u, 6630u), u_input.d))), max(-abs(5772i), -abs(-26711i)), global4.x));
    global1 = array<vec2<bool>, 23>();
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, global2.x, true && arg_0.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-420f, global2.x, false)))), global2.x, _wgslsmith_f_op_f32(var_0.a.a - 770f)));
    let var_1 = global3[_wgslsmith_index_u32(~0u ^ u_input.c.x, 4u)];
    global3 = array<bool, 4>();
    return var_0.a;
}

fn func_1() -> vec4<f32> {
    let var_0 = func_2(Struct_1(max(~vec3<u32>(5980u, 0u, 26806u), firstLeadingBit(u_input.d.yyx)), u_input.e, false));
    let var_1 = func_2(Struct_1(~firstTrailingBit(vec3<u32>(4294967295u, var_0.b, 1u)), u_input.e, all(select(vec2<bool>(global3[_wgslsmith_index_u32(var_0.b, 4u)], global4.x), vec2<bool>(global4.x, true), true))));
    global4 = global1[_wgslsmith_index_u32(~(~u_input.b), 23u)];
    global0 = firstTrailingBit(~34432i);
    var var_2 = Struct_1(~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b, 68958u, var_0.b), ~vec3<u32>(73898u, var_0.b, var_0.b))), 39220i, global3[_wgslsmith_index_u32(~16940u ^ firstLeadingBit(_wgslsmith_mult_u32(var_0.b, ~80272u)), 4u)]);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.a)), global2.x, _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(2165f * -797f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_1.a, var_1.a, global2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 23>();
    global2 = _wgslsmith_f_op_vec4_f32(func_1());
    var var_0 = ~_wgslsmith_add_vec2_u32(u_input.c, u_input.d.xw);
    var var_1 = -8019i <= -_wgslsmith_mult_i32(_wgslsmith_sub_i32(35471i, u_input.e & u_input.e), abs(u_input.e ^ 2147483647i));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(abs(~34529u), ~45403u, var_0.x), vec3<u32>(_wgslsmith_mod_u32(1u & var_0.x, ~85135u), reverseBits(~var_0.x), _wgslsmith_div_u32(func_2(Struct_1(u_input.d.zzw, -2147483647i, false)).b, var_0.x))), -u_input.e, global3[_wgslsmith_index_u32(u_input.a | 4294967295u, 4u)]);
    global4 = vec2<bool>(global2.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-237f, global2.x)), _wgslsmith_div_f32(-316f, -881f))) - global2.x), _wgslsmith_f_op_vec4_f32(func_1()).x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 500f)));
    var var_3 = ~vec2<u32>(~_wgslsmith_mult_u32(firstTrailingBit(var_0.x), 0u), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(-19938i, func_3(Struct_5(Struct_3(829f, 25959u), 1127f, u_input.e, Struct_1(u_input.d.xww, u_input.e, global4.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-105f, global2.x))), vec2<i32>(u_input.e, -2147483647i), global2.x).x), select(~vec2<i32>(9268i, u_input.e), vec2<i32>(16193i, 15135i) << (u_input.c % vec2<u32>(32u)), global1[_wgslsmith_index_u32(u_input.a, 23u)])), _wgslsmith_mult_i32(select(0i, var_2.b, all(vec4<bool>(global3[_wgslsmith_index_u32(0u, 4u)], true, var_2.c, global3[_wgslsmith_index_u32(var_2.a.x, 4u)]))), _wgslsmith_mult_i32(firstLeadingBit(~(-2147483647i)), ~u_input.e)), _wgslsmith_f_op_vec3_f32(global2.zxw + global2.xyz), _wgslsmith_f_op_vec3_f32(sign(global2.zwy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(793f, -224f, 580f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-742f, global2.x, global2.x)))))));
}

