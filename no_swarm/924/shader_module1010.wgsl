struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-1700f, -1000f), vec2<f32>(-458f, 1503f), vec2<f32>(1000f, -302f), vec2<f32>(-799f, -448f));

var<private> global1: Struct_2 = Struct_2(Struct_1(true, vec4<f32>(2167f, 963f, 1163f, 458f), vec2<i32>(36459i, 6927i), vec3<u32>(20582u, 1u, 33927u)), vec2<f32>(1061f, -1164f), -690f);

var<private> global2: Struct_1;

var<private> global3: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> bool {
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(global2.d.x, 4u)] - vec2<f32>(global1.a.b.x, -116f)) - vec2<f32>(478f, global2.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))));
    global3 = array<vec4<bool>, 3>();
    var var_0 = min(vec4<i32>(~(global1.a.c.x << (global2.d.x % 32u)), ~global2.c.x, 1i, _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, 2147483647i) | (i32(-1i) * -6970i)), vec4<i32>(-22337i, global1.a.c.x, u_input.a.x ^ _wgslsmith_div_i32(global2.c.x, 0i), ~(-1i))) & vec4<i32>(_wgslsmith_add_i32(26614i, _wgslsmith_mult_i32(-global1.a.c.x, firstTrailingBit(-2147483647i))), _wgslsmith_div_i32(18085i, _wgslsmith_mult_i32(i32(-1i) * -15497i, 8243i)), u_input.a.x, -1i);
    let var_1 = global1.a;
    global0 = array<vec2<f32>, 4>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1106f * global2.b.x))) >= _wgslsmith_f_op_f32(exp2(var_1.b.x));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    global2 = Struct_1(global1.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.a.b.x), -493f, _wgslsmith_div_f32(global2.b.x, global1.c), -228f))), vec2<i32>(2147483647i, global1.a.c.x), vec3<u32>(~arg_1.d.x, _wgslsmith_clamp_u32(global2.d.x, _wgslsmith_div_u32(global1.a.d.x, 4294967295u), _wgslsmith_sub_u32(arg_1.d.x, global1.a.d.x)) & _wgslsmith_add_u32(~14208u, _wgslsmith_mult_u32(global1.a.d.x, global1.a.d.x)), _wgslsmith_add_u32(arg_1.d.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(30336u, 1u), arg_1.d.yx) % 32u), u_input.d.x)));
    let var_0 = _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a ^ vec2<i32>(arg_1.c.x, u_input.c))), _wgslsmith_mult_vec2_i32(~(-vec2<i32>(arg_1.c.x, -10083i)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -7886i), u_input.a), _wgslsmith_mod_vec2_i32(arg_1.c, vec2<i32>(global1.a.c.x, arg_0) ^ arg_1.c))));
    var var_1 = -6301i;
    global1 = Struct_2(Struct_1(!any(select(vec3<bool>(global2.a, false, global2.a), vec3<bool>(false, arg_1.a, false), global1.a.a)), arg_1.b, vec2<i32>(var_0, _wgslsmith_mod_i32(-10069i << (global1.a.d.x % 32u), -14371i)), arg_1.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.xy * vec2<f32>(global1.b.x, arg_1.b.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-325f, global2.b.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.b.zy * global2.b.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1382f, -2597f)))))) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.d, u_input.d), 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + 492f), 377f)));
    let var_2 = global2.c.x;
    return ~(~global2.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> bool {
    global2 = arg_3.a;
    let var_0 = arg_3.a.b.x;
    let var_1 = Struct_2(Struct_1(all(vec4<bool>(false, true, false, false)) || (!arg_0.a == true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(arg_0.b, vec4<f32>(arg_1.b.x, arg_0.b.x, arg_3.c, -846f))))) + arg_0.b), vec2<i32>(-1i) * -arg_1.c, arg_3.a.d), arg_3.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f * global1.a.b.x) * var_0))))));
    global3 = array<vec4<bool>, 3>();
    global0 = array<vec2<f32>, 4>();
    return true;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global0 = array<vec2<f32>, 4>();
    global0 = array<vec2<f32>, 4>();
    let var_0 = global1.a;
    var var_1 = global1.a.a;
    var var_2 = vec3<bool>(var_0.b.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.b.x, global1.b.x))) * var_0.b.x), global2.d.x > _wgslsmith_mult_u32(~min(49444u, var_0.d.x), global2.d.x), func_4(Struct_1(!(true && global1.a.a), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(633f * -195f), _wgslsmith_f_op_f32(f32(-1f) * -725f), _wgslsmith_f_op_f32(max(var_0.b.x, -379f))), -(~u_input.a), vec3<u32>(4294967295u, countOneBits(global1.a.d.x), 1u)), Struct_1(func_2(), var_0.b, -var_0.c ^ func_3(-2147483647i, Struct_1(global2.a, var_0.b, arg_0, vec3<u32>(4294967295u, global2.d.x, 7302u))), global1.a.d), firstLeadingBit(global2.c.x), Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b.wz, global2.b.yw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1210f))))));
    return Struct_2(Struct_1(global1.a.a & global1.a.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1248f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1791f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(trunc(global2.b.x)))), max(u_input.a, u_input.a), var_0.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b.zy)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.b.zx)) * global2.b.zz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-246f, _wgslsmith_f_op_f32(-1019f - global1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-firstLeadingBit(vec2<i32>(global1.a.c.x, -2147483647i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.c, 24325i), global2.c.x), global1.a.c));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b.x)));
    global1 = func_1(global1.a.c);
    var var_2 = func_1(global2.c).a;
    global0 = array<vec2<f32>, 4>();
    var_0 = func_1(select(global2.c, ~global2.c, func_1(global1.a.c << (global1.a.d.yx % vec2<u32>(32u))).a.a) | global1.a.c);
    var_0 = func_1(vec2<i32>(_wgslsmith_dot_vec3_i32((vec3<i32>(0i, 49169i, global1.a.c.x) & vec3<i32>(0i, -2147483647i, var_2.c.x)) & -vec3<i32>(var_0.a.c.x, -46735i, global2.c.x), vec3<i32>(_wgslsmith_clamp_i32(var_0.a.c.x, 14005i, var_0.a.c.x), global1.a.c.x, var_0.a.c.x)), global1.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(abs(vec2<u32>(40569u, 37658u)))), var_0.a.d.x, 267f);
}

