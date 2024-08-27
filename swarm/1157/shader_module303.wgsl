struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = -1000f;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, vec4<f32>(1034f, 1321f, 137f, 2041f)));

var<private> global3: Struct_1 = Struct_1(false, vec4<f32>(114f, 2057f, -947f, 1239f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = select(vec3<bool>(true, all(vec2<bool>(u_input.e > -2147483647i, global3.a)), all(select(vec2<bool>(global3.a, false), !vec2<bool>(global3.a, global3.a), global3.a))), select(select(vec3<bool>(arg_1.x <= 2147483647i, select(true, true, true), true), vec3<bool>(true, true, true), !any(vec4<bool>(false, global3.a, global3.a, global3.a))), vec3<bool>(true, !(true != global3.a), _wgslsmith_clamp_u32(arg_2, 41141u, 1u) > _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(arg_2, 29579u))), true), any(vec4<bool>(_wgslsmith_add_i32(arg_0, arg_3.x) == global0.a, global3.a, global3.a, true)));
    let var_1 = reverseBits(2181u);
    var var_2 = global3.a;
    return _wgslsmith_clamp_vec2_i32(arg_3, vec2<i32>(global0.a, 23284i), vec2<i32>(arg_1.x, ~(-1i)));
}

fn func_2() -> f32 {
    let var_0 = vec2<bool>(global3.b.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f + _wgslsmith_f_op_f32(f32(-1f) * -1387f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1442f, global3.b.x, false)))), ~(-1i) == _wgslsmith_add_i32(reverseBits(u_input.e | u_input.e), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, 2788i, -1i), vec3<i32>(25539i, 33557i, global0.a)), vec3<i32>(1i, global0.a, 0i))));
    global0 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(func_3(-14033i << (u_input.d.x % 32u), vec4<i32>(2147483647i, -50666i, 2147483647i, -21296i), 0u, vec2<i32>(global0.a, -7225i) >> (u_input.d % vec2<u32>(32u))), ~vec2<i32>(u_input.e, 2147483647i)), countOneBits(u_input.e << (u_input.d.x % 32u))));
    global3 = Struct_1(!all(vec4<bool>(var_0.x, !var_0.x, !var_0.x, global3.b.x >= 903f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1f, global3.b.x, _wgslsmith_f_op_f32(min(683f, 2005f)), 1457f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.b, vec4<f32>(global3.b.x, 858f, global3.b.x, global3.b.x)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, -1000f) + global3.b.x);
    global1 = _wgslsmith_f_op_f32(-291f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x))), -728f));
    return _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(667f)), _wgslsmith_f_op_f32(exp2(global3.b.x)), ((global3.b.x >= 1436f) & false) & true)));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    global3 = Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, -1656f, global3.b.x, global3.b.x)), _wgslsmith_f_op_vec4_f32(round(global3.b))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, 840f, arg_0.x, global3.b.x) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.b.x, global3.b.x, 418f, global3.b.x)))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(388f, global3.b.x)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))));
    return 0u;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    global1 = -737f;
    var var_0 = vec4<i32>(u_input.e, -32771i, abs(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.e), vec2<i32>(u_input.e, global0.a) ^ vec2<i32>(13900i, 7003i)), 0i | u_input.e)), u_input.e);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a), _wgslsmith_mod_u32(arg_0.x, ~0u)), u_input.d), 1u)];
    global0 = Struct_2(_wgslsmith_add_i32(-36248i, _wgslsmith_dot_vec2_i32(var_0.xw, reverseBits(max(var_0.wy, var_0.yx)))));
    global0 = Struct_2(~(-global0.a));
    return Struct_2(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 44460u), vec3<u32>(u_input.c, u_input.d.x, u_input.b) ^ vec3<u32>(u_input.d.x, 43800u, u_input.a)) << (~u_input.d.x % 32u), func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global3.b.xzz, global3.b.zxx, true)))), ~(~2147483647i), u_input.c, ~(~vec2<i32>(global0.a, u_input.e))), ~(~select(u_input.c, u_input.b, false)), u_input.a & ~select(4294967295u, u_input.a, false)), 885f);
    var var_0 = Struct_2(i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_sub_i32(global0.a, u_input.e), u_input.e));
    global1 = _wgslsmith_f_op_f32(-global3.b.x);
    global2 = array<Struct_1, 1>();
    var var_1 = -reverseBits(var_0.a);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), global3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(max(~vec3<u32>(u_input.a, u_input.d.x, u_input.d.x), ~vec3<u32>(4294967295u, u_input.a, 37132u))), _wgslsmith_f_op_f32(min(1643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.b.x)) - -1135f) + global3.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.b + _wgslsmith_div_vec4_f32(global3.b, _wgslsmith_f_op_vec4_f32(-global3.b)))));
}

