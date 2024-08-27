struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: vec4<i32> = vec4<i32>(0i, -1i, -14184i, -54898i);

var<private> global2: array<vec3<bool>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_1 {
    var var_0 = ~u_input.c;
    var var_1 = vec4<u32>(reverseBits(var_0.x), var_0.x << (~(var_0.x << ((4294967295u ^ var_0.x) % 32u)) % 32u), var_0.x << (_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, reverseBits(4294967295u)), ~var_0.x) % 32u), 0u);
    let var_2 = -abs(-(~19699i));
    var var_3 = firstTrailingBit(vec2<u32>(0u, firstLeadingBit(_wgslsmith_add_u32(6800u, var_1.x))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.x, ~var_3.x), 6u)], _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~44159u, 6u)]))));
    return Struct_1(global0[_wgslsmith_index_u32(0u, 6u)], var_2, 28344u, firstTrailingBit(-31385i));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-685f, -367f, -213f, 218f), vec4<f32>(-1000f, 1176f, -1423f, global0[_wgslsmith_index_u32(arg_1.c, 6u)])))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, -179f, 715f, -646f), vec4<f32>(683f, arg_1.a, -740f, 172f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1611f, -212f, -511f, -339f))))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, false, true, any(vec2<bool>(true, true)))))));
    var var_1 = ~(-(~(-2147483647i)));
    global0 = array<f32, 6>();
    let var_2 = ~(-40676i);
    global0 = array<f32, 6>();
    return ~(~2147483647i);
}

fn func_1(arg_0: bool) -> vec3<f32> {
    var var_0 = func_2();
    let var_1 = ~func_3(_wgslsmith_add_vec2_i32(vec2<i32>(14840i, u_input.d.x) ^ u_input.d.yx, select(global1.yx, u_input.b, vec2<bool>(false, arg_0))) & _wgslsmith_div_vec2_i32(global1.xz, vec2<i32>(var_0.d, -34394i) ^ vec2<i32>(var_0.d, -8217i)), func_2());
    var var_2 = Struct_1(802f, -1i, 4294967295u, 2147483647i);
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(6404u, 6u)], -653f)) + _wgslsmith_f_op_f32(ceil(var_0.a))))), _wgslsmith_f_op_f32(max(var_2.a, 925f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(-1137f, 23176i, _wgslsmith_mult_u32(~(~(arg_1.x ^ 0u)), func_2().c), global1.x);
    global0 = array<f32, 6>();
    let var_1 = vec4<u32>(arg_1.x, arg_1.x, 0u, ~(~abs(min(var_0.c, 20462u))));
    global0 = array<f32, 6>();
    global2 = array<vec3<bool>, 25>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1958f, -2691f, global0[_wgslsmith_index_u32(106207u, 6u)]))) * _wgslsmith_f_op_vec3_f32(func_1(true)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-392f, 362f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] + global0[_wgslsmith_index_u32(4294967295u, 6u)]) * global0[_wgslsmith_index_u32(~1u, 6u)]), -1286f)), u_input.c.xyx);
    let var_1 = func_2().d & reverseBits(_wgslsmith_dot_vec2_i32(global1.zz, reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-38772i, global1.x), vec2<i32>(var_0.d, -2147483647i), u_input.d.xx))));
    global1 = max(~(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 8060i, var_0.d, 2147483647i), vec4<i32>(27857i, -17815i, 23234i, -12373i)), 1363i, _wgslsmith_div_i32(u_input.b.x, 26324i), 68794i) & countOneBits(vec4<i32>(32174i, -26397i, -1i, var_1) & vec4<i32>(global1.x, u_input.d.x, global1.x, 1i))), vec4<i32>(-(~var_1), 1i << (var_0.c % 32u), -54851i & _wgslsmith_mod_i32(var_0.b, -1i), -651i) | vec4<i32>(53492i & (global1.x ^ var_0.b), ~_wgslsmith_dot_vec3_i32(global1.wzw, global1.zyz), var_0.d, 1i));
    var var_2 = true;
    global2 = array<vec3<bool>, 25>();
    let var_3 = (true | any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)))) && !(~firstLeadingBit(52872i) == abs(u_input.a));
    var var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-17879i, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, var_1, u_input.a, -2147483647i), vec4<i32>(-1i, global1.x, -14741i, u_input.a)), global1.x), ~(firstLeadingBit(global1.x) ^ func_3(global1.wy, Struct_1(-567f, global1.x, var_0.c, var_0.d)))), global1.zxz, -vec3<i32>(min(var_1 & var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-30846i, -1i), vec2<i32>(var_1, var_1))), _wgslsmith_mod_i32(var_0.d, func_2().b), u_input.d.x));
    let var_5 = u_input.c.wxx;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1u), var_5.x, func_2().b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1004f, 2018f, 1058f, global0[_wgslsmith_index_u32(178u, 6u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0.c, 6u)], var_0.a, var_0.a, -1192f) * vec4<f32>(2175f, 964f, var_0.a, -1453f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(34672u, 6u)], 957f, 437f, global0[_wgslsmith_index_u32(var_5.x, 6u)])))), vec4<f32>(-1455f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_5.x, 35455u), 6u)] + global0[_wgslsmith_index_u32(firstTrailingBit(var_0.c), 6u)]), 1204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f - global0[_wgslsmith_index_u32(4294967295u, 6u)])))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(162f, 527f, 1371f, var_0.a)))))))));
}

