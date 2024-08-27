struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec2<bool> {
    global0 = global1[_wgslsmith_index_u32(35354u, 26u)];
    var var_0 = vec4<bool>(true || global0.d.x, global0.d.x, false, true);
    let var_1 = true;
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    return vec2<bool>(var_0.x, all(var_0.zw));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(max(_wgslsmith_add_u32(0u, u_input.a.x), _wgslsmith_sub_u32(47106u, 0u))), ~u_input.a.x), 26u)], Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1259f, arg_1), vec2<f32>(-1969f, -1000f))))), -2147483647i, ~(vec4<i32>(u_input.b, u_input.c, u_input.b, global0.c.x) | vec4<i32>(u_input.c, u_input.b, -1i, 4960i)) << (countOneBits(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), !func_3()), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), firstLeadingBit(vec3<u32>(27297u, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, 91u))), _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(4294967295u, u_input.a.x, 45284u)), _wgslsmith_div_vec3_u32(~vec3<u32>(13874u, 26537u, u_input.a.x), ~vec3<u32>(0u, 4294967295u, 31645u)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0.a)))), firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.a.b, 0i), 0i, -global0.b)), _wgslsmith_mult_vec4_i32(var_0.a.c, global0.c), !vec2<bool>(u_input.a.x != u_input.a.x, arg_2.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(~4294967295u), u_input.a.x), var_0.c.zy), 26u)], var_0.c);
    let var_2 = -617f;
    let var_3 = (~_wgslsmith_mod_u32(var_1.c.x, _wgslsmith_mult_u32(var_1.c.x, var_1.c.x)) & 1u) | 4294967295u;
    var var_4 = vec2<i32>(~(-(~(-2147483647i))), countOneBits(var_0.b.c.x));
    return Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~(~1u), u_input.a.x >> (_wgslsmith_mod_u32(1u, u_input.a.x) % 32u), _wgslsmith_dot_vec2_u32(var_1.c.zx, vec2<u32>(var_3, 12008u))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(34203u, var_3, 0u, var_1.c.x) | vec4<u32>(var_0.c.x, var_1.c.x, 19671u, 20745u), countOneBits(vec4<u32>(0u, 1u, 23918u, 4294967295u))), (vec4<u32>(var_0.c.x, 0u, 72513u, var_0.c.x) >> (vec4<u32>(0u, 0u, 42591u, var_1.c.x) % vec4<u32>(32u))) | ~vec4<u32>(var_1.c.x, 3087u, 0u, var_1.c.x)), firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_1.c.x, 153846u, var_3), vec4<u32>(var_3, 76896u, var_0.c.x, 54951u), vec4<u32>(108156u, var_3, var_0.c.x, var_1.c.x)))), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.a.x), -1189f), -1i, _wgslsmith_clamp_vec4_i32(countOneBits(global0.c), global0.c, countOneBits(var_0.a.c)), vec2<bool>(true, var_0.a.d.x)), Struct_1(var_1.a.a, global0.c.x, abs(global0.c), vec2<bool>(func_3().x, arg_2.x)), _wgslsmith_clamp_vec3_u32(var_0.c, vec3<u32>(19437u, ~54250u, firstTrailingBit(var_1.c.x)), vec3<u32>(min(46147u, u_input.a.x), _wgslsmith_add_u32(4294967295u, 0u), 4294967295u))));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 26u)];
    global2 = array<Struct_2, 18>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(sign(204f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -668f) * _wgslsmith_f_op_f32(-var_0.a.x)) + -1359f), global0.a.x);
    let var_3 = func_2(global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(var_2.x + var_0.a.x)))) * global0.a.x), !vec4<bool>(true, false, ~31475u != u_input.a.x, abs(113264u) < _wgslsmith_dot_vec4_u32(vec4<u32>(48277u, 40943u, u_input.a.x, u_input.a.x), vec4<u32>(9189u, u_input.a.x, 1u, u_input.a.x))));
    return -20274i >> (u_input.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.x;
    global2 = array<Struct_2, 18>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)))))), global0.a.x);
    let var_1 = global0.d.x;
    let var_2 = global0.c;
    let var_3 = vec4<i32>(-u_input.b, 14083i, ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_2.yzy, _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 18467i, -60498i), vec3<i32>(var_2.x, u_input.b, u_input.c))), global0.b & func_1(-22454i)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(func_2(true, 1195f, vec4<bool>(true, true, false, global0.d.x)).b.a.a.x)), 1f), vec2<f32>(681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(330f, global0.a.x)))), !vec2<bool>(any(vec3<bool>(global0.d.x, global0.d.x, false)), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1226f, global0.a.x, global0.a.x), vec3<f32>(2353f, -202f, global0.a.x), vec3<bool>(false, true, true))))))));
}

