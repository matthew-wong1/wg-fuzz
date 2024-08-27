struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<f32, 4>;

var<private> global2: vec4<i32> = vec4<i32>(-2369i, -4837i, i32(-2147483648), 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_mult_vec4_i32(abs(-_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, countOneBits(u_input.b))), vec4<i32>(arg_1.x, -_wgslsmith_clamp_i32(2147483647i, arg_2, arg_1.x) ^ arg_2, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global2.x, u_input.b.x), arg_2) << (_wgslsmith_div_u32(min(5686u, 0u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(9415u, 11u)]), 11u)]) % 32u), arg_1.x));
    var var_1 = vec2<bool>(true, true);
    let var_2 = -arg_2;
    let var_3 = _wgslsmith_sub_i32(~(~countOneBits(~0i)), i32(-1i) * -_wgslsmith_dot_vec2_i32(var_0.zw, vec2<i32>(global2.x, var_0.x)));
    let var_4 = Struct_2(~1u, Struct_1(arg_0, ~(~_wgslsmith_mod_u32(0u, 1u)), vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(~u_input.b.x, 24676i)), true && ((global0[_wgslsmith_index_u32(4294967295u, 11u)] >> (2311u % 32u)) < 66u), ~u_input.b & _wgslsmith_div_vec4_i32(select(u_input.b, u_input.b, true), vec4<i32>(-13265i, global2.x, u_input.c, global2.x))), -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(6970i, 42835i, global2.x, -16108i) & vec4<i32>(2147483647i, -81996i, -1i, var_0.x)), abs(u_input.b)));
    return var_4.c.x;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global2 = ~vec4<i32>(_wgslsmith_sub_i32(arg_0.e.x, global2.x), ~(global2.x & global2.x) >> (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.e.x, i32(-1i) * -11175i, ~arg_0.c.x), ~vec3<i32>(1i, global2.x, -15205i)), arg_0.c.x);
    global1 = array<f32, 4>();
    let var_0 = arg_0.d;
    let var_1 = func_2(1199f, (vec3<i32>(~15765i, abs(0i), -12823i) >> (vec3<u32>(~83687u, 1u, ~global0[_wgslsmith_index_u32(u_input.a.x, 11u)]) % vec3<u32>(32u))) ^ select(-arg_0.e.wzy, arg_0.e.yww, !(!vec3<bool>(arg_0.d, var_0, arg_0.d))), ~47961i);
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], arg_0, ~(-_wgslsmith_div_vec4_i32(min(u_input.b, vec4<i32>(arg_0.c.x, var_1, var_1, u_input.b.x)), vec4<i32>(-8050i, u_input.c, 0i, var_1))));
    return var_2;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    global2 = abs(_wgslsmith_div_vec4_i32(abs(func_1(func_1(arg_3.b).b).c), max(_wgslsmith_mult_vec4_i32(~vec4<i32>(-35880i, -41106i, arg_2.c.x, arg_3.c.x), firstTrailingBit(u_input.b)), arg_2.c)));
    let var_0 = -90442i;
    let var_1 = vec3<u32>(u_input.a.x, arg_3.a, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], arg_3.b.b), 0u) | _wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.a.x, arg_2.b.b), min(u_input.a.x, 9746u)), u_input.a.zx));
    global0 = array<u32, 11>();
    global2 = arg_3.c | reverseBits(u_input.b);
    return vec3<bool>(true, any(select(vec4<bool>(true, !arg_0, !arg_3.b.d, false), select(vec4<bool>(arg_3.b.d, false, false, false), !vec4<bool>(arg_2.b.d, arg_2.b.d, arg_2.b.d, false), all(vec3<bool>(true, arg_3.b.d, arg_0))), !vec4<bool>(false, arg_2.b.d, arg_3.b.d, false))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(true, true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)))) && false;
    var var_1 = !select(vec3<bool>(any(vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 40547u), 4u)] > global1[_wgslsmith_index_u32(~0u, 4u)], all(vec4<bool>(true, true, true, true))), func_3(!all(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], -1657f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)]))), func_1(Struct_1(640f, global0[_wgslsmith_index_u32(28825u, 11u)], vec2<i32>(global2.x, global2.x), true, u_input.b)), Struct_2(~4294967295u, Struct_1(-1804f, 72921u, vec2<i32>(u_input.c, 2147483647i), false, u_input.b), func_1(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 1u, global2.zw, false, u_input.b)).c)), true);
    let var_2 = Struct_4(func_3(true, vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(min(13451u, 19182u), 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -443f))), func_1(func_1(Struct_1(683f, 133532u, vec2<i32>(-14735i, global2.x), true, vec4<i32>(-2147483647i, -4162i, -7193i, u_input.b.x))).b), Struct_2(1u, Struct_1(-1488f, 1u, countOneBits(u_input.b.wx), var_1.x || false, max(u_input.b, u_input.b)), u_input.b ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-38092i, 14525i, global2.x, -2147483647i), vec4<i32>(u_input.b.x, global2.x, global2.x, -2147483647i)))), Struct_2(u_input.a.x, Struct_1(_wgslsmith_div_f32(1931f, _wgslsmith_div_f32(235f, global1[_wgslsmith_index_u32(0u, 4u)])), 62192u, vec2<i32>(_wgslsmith_sub_i32(global2.x, -7111i), u_input.c), false, _wgslsmith_clamp_vec4_i32(~vec4<i32>(global2.x, 1i, global2.x, 1i), -u_input.b, _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.c, 45750i, global2.x, u_input.b.x)))), -_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, 2147483647i, u_input.b.x, -49058i), u_input.b) ^ vec4<i32>(31839i, global2.x, -1949i, func_2(583f, global2.xxw, u_input.b.x))));
    let var_3 = Struct_3(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2033f * global1[_wgslsmith_index_u32(firstTrailingBit(110862u), 4u)])), var_2.b.b.a), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_2.b.b.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(30997u, 4u)]), -376f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(var_2.b.b.b, 11u)], 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.b.a * _wgslsmith_f_op_f32(-771f - 305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1798f))));
    let var_4 = vec2<f32>(-1060f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2260f)), -1492f), _wgslsmith_f_op_f32(-var_3.b.x)));
    var_1 = vec3<bool>(~abs(~0u) <= global0[_wgslsmith_index_u32(func_1(var_2.b.b).b.b, 11u)], true, false | var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a.yx), u_input.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_2.b.b.a))))))));
}

