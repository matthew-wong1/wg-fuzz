struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(2147483647i, 2147483647i, 50219i), true, -984f, true);

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: bool) -> vec3<i32> {
    var var_0 = ~vec3<i32>(-7685i, -global1.a.x >> (~_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u), -2147483647i);
    global1 = Struct_1(global1.a, all(select(!(!vec3<bool>(arg_0, arg_0, true)), !(!vec3<bool>(false, arg_0, true)), select(vec3<bool>(true, arg_0, global1.d), vec3<bool>(true, global0.b, arg_0), vec3<bool>(true, false, global0.d)))), global0.c, true);
    global0 = Struct_1(-vec3<i32>(~_wgslsmith_dot_vec2_i32(var_0.zy, global0.a.zz), 1i, global1.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c)) * _wgslsmith_f_op_f32(-1719f * global0.c)), -479f)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1190f)) * _wgslsmith_f_op_f32(f32(-1f) * -1536f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - -837f)))), -740f, global1.d);
    var var_1 = arg_0;
    var_1 = false;
    return global1.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global1 = Struct_1(arg_3.a, global0.b, 1000f, -37993i > select(-abs(global0.a.x), _wgslsmith_add_i32(~(-2651i), -6105i & global0.a.x), false));
    var var_0 = arg_3;
    var var_1 = ~(-arg_0.a.x);
    let var_2 = arg_2.xzw ^ ((vec3<u32>(1u, _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(58812u, 4294967295u, u_input.a.x, 3483u)), _wgslsmith_clamp_u32(1u, 0u, arg_2.x)) ^ firstLeadingBit(reverseBits(arg_2.zzy))) >> (~arg_2.zxy % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c, arg_1.x)));
    return ~(firstTrailingBit(_wgslsmith_sub_u32(31710u, var_2.x)) << (_wgslsmith_mult_u32(25246u, ~(~arg_2.x)) % 32u));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x);
    global0 = Struct_1(global1.a, !global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) * 1721f)))), !(func_3(Struct_1(global0.a, global0.d, global1.c, global1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, 1206f, arg_0.x, global0.c) - vec4<f32>(arg_0.x, 1021f, global0.c, global1.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, var_0, 26676u, u_input.a.x), vec4<u32>(30603u, 5592u, var_0, var_0)), Struct_1(vec3<i32>(-2147483647i, -68206i, global1.a.x), global0.b, 1253f, false)) >= firstTrailingBit(var_0)));
    let var_1 = -_wgslsmith_div_vec3_i32(vec3<i32>(-11893i, 0i, -1i), -_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(global1.a.x, global0.a.x, global1.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, -39469i, -2147483647i), global0.a), firstTrailingBit(global0.a)));
    let var_2 = Struct_1(reverseBits(var_1), global0.d, 1719f, all(select(vec3<bool>(true, global0.b, global1.d), select(!vec3<bool>(false, true, global0.b), select(vec3<bool>(false, global0.b, true), vec3<bool>(true, true, true), vec3<bool>(false, global0.b, global0.b)), vec3<bool>(true, global1.b, false)), true)));
    var var_3 = _wgslsmith_f_op_f32(abs(1358f)) >= arg_0.x;
    return Struct_1(var_1 & _wgslsmith_add_vec3_i32(-vec3<i32>(27747i, 41467i, 10170i), vec3<i32>(var_1.x, global1.a.x, firstTrailingBit(-2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-948f, var_2.c)), _wgslsmith_f_op_f32(max(1147f, global0.c)))), -857f) <= _wgslsmith_f_op_f32(-arg_0.x), 157f, all(select(vec4<bool>(!global0.d, all(vec4<bool>(var_2.d, true, false, false)), any(vec4<bool>(true, true, var_2.b, false)), var_0 <= var_0), vec4<bool>(global1.b, true | global0.d, all(vec3<bool>(global1.d, false, false)), !var_2.d), false)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<bool> {
    global1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(564f + 819f), _wgslsmith_f_op_f32(-401f + arg_3.c)))));
    global0 = arg_3;
    var var_0 = min(~(abs(vec4<i32>(global1.a.x, -2147483647i, -3610i, 6449i)) & (vec4<i32>(arg_3.a.x, -12961i, global1.a.x, arg_3.a.x) ^ vec4<i32>(7551i, 19129i, arg_3.a.x, global0.a.x))) | (((vec4<i32>(global1.a.x, -20232i, 9396i, arg_3.a.x) & vec4<i32>(-1i, 17694i, 50585i, -1i)) & -vec4<i32>(-1i, arg_0.x, 0i, global1.a.x)) >> (firstTrailingBit(~arg_1) % vec4<u32>(32u))), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(-7901i, global1.a.x, -2147483647i, 22259i), select(vec4<i32>(arg_0.x, -1i, -19516i, 0i), vec4<i32>(global1.a.x, 0i, -1i, arg_0.x), true))));
    let var_1 = vec2<bool>(true, arg_3.b);
    global0 = arg_3;
    return select(!(!vec3<bool>(true, false, arg_3.b)), vec3<bool>(any(!select(vec3<bool>(false, arg_3.b, global0.d), vec3<bool>(true, false, true), arg_2.x)), any(!select(vec4<bool>(arg_3.b, global1.d, arg_2.x, true), vec4<bool>(var_1.x, true, var_1.x, global0.b), true)), _wgslsmith_f_op_f32(-1f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), vec3<bool>(false, all(select(!vec3<bool>(global0.d, false, true), select(vec3<bool>(true, arg_3.d, arg_2.x), vec3<bool>(false, arg_3.b, false), global0.b), true)), (var_0.x >= ~global1.a.x) && (0u <= arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_sub_vec3_i32(reverseBits(global0.a), (func_1(true) << ((vec3<u32>(u_input.a.x, 18608u, 1u) | vec3<u32>(51035u, u_input.a.x, 0u)) % vec3<u32>(32u))) ^ global0.a), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f * 1f)), false & global0.b);
    let var_0 = Struct_1(abs(global1.a), any(select(func_4(vec2<i32>(global0.a.x, 33684i), vec4<u32>(0u, 1u, u_input.a.x, 1u), !vec2<bool>(false, global1.b), func_2(vec2<f32>(313f, 808f))), !vec3<bool>(global1.d, global1.b, false), !vec3<bool>(true, false, global0.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1801f), true & ((u_input.a.x <= 4294967295u) != !global0.b))), 1u <= u_input.a.x);
    var var_1 = 4665u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c, global1.c))), _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(-global0.c))))) - _wgslsmith_f_op_f32(sign(global0.c)));
    let var_3 = u_input.a.x;
    let var_4 = var_0;
    global1 = var_4;
    var_2 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1336f, _wgslsmith_f_op_f32(1000f + 974f), 175f, -570f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1372f, var_4.c, var_0.c, var_0.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, 369f, -1526f, var_0.c) * vec4<f32>(var_0.c, var_0.c, -1553f, 112f))))), firstLeadingBit(func_3(var_4, vec4<f32>(-211f, 1874f, var_4.c, -999f), ~vec4<u32>(1u, u_input.a.x, var_3, 4294967295u), Struct_1(vec3<i32>(var_0.a.x, 0i, -2147483647i), true, -1013f, global0.b))) >> (4294967295u % 32u), _wgslsmith_div_vec4_u32(~(vec4<u32>(var_3, var_3, var_3, u_input.a.x) << (vec4<u32>(4294967295u, 13623u, var_3, var_3) % vec4<u32>(32u))), select(abs(vec4<u32>(53995u, 1u, var_3, 26854u)), ~vec4<u32>(7315u, var_3, 0u, 15332u), false)) & ~(_wgslsmith_add_vec4_u32(vec4<u32>(20698u, 0u, u_input.a.x, 38460u), vec4<u32>(u_input.a.x, u_input.a.x, var_3, 4294967295u)) << (vec4<u32>(11168u, 73054u, 5596u, 5284u) % vec4<u32>(32u))), 0u);
}

