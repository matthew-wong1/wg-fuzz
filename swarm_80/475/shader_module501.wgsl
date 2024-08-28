struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 59333i);

var<private> global1: vec2<i32> = vec2<i32>(751i, i32(-2147483648));

var<private> global2: vec3<f32>;

var<private> global3: Struct_2 = Struct_2(vec3<bool>(true, true, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = u_input.b.x;
    var_0 = 1u;
    var var_1 = vec2<i32>(2147483647i, 19689i) | ~abs(select(vec2<i32>(2147483647i, arg_1), vec2<i32>(global1.x, -2147483647i), select(global3.a.xz, global3.a.xz, vec2<bool>(global3.a.x, true))));
    let var_2 = ~(~abs(u_input.b.zz));
    var var_3 = 3845u;
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    global1 = ~(-(~_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(global1.x, 1i)), vec2<i32>(39664i, -53419i))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(758f, arg_2.x))))) <= _wgslsmith_f_op_f32(floor(-384f));
    var var_1 = countOneBits(u_input.c) <= -5132i;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))), -2548f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(574f * global2.x))) - 493f)));
}

fn func_4(arg_0: f32) -> f32 {
    let var_0 = Struct_2(vec3<bool>(1u >= firstTrailingBit(u_input.b.x << (u_input.b.x % 32u)), false, !func_2(func_2(Struct_2(global3.a), 1i), abs(-2147483647i)).a.x));
    global1 = ~(~(~abs(-vec2<i32>(global1.x, global1.x))));
    global1 = abs(firstTrailingBit(-(~(vec2<i32>(global0.x, -2147483647i) >> (u_input.b.zy % vec2<u32>(32u))))));
    let var_1 = func_2(Struct_2(select(vec3<bool>(var_0.a.x, true, true), !select(var_0.a, global3.a, var_0.a.x), vec3<bool>(true, any(vec3<bool>(true, global3.a.x, var_0.a.x)), global3.a.x | global3.a.x))), 30490i).a;
    global1 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~(~reverseBits(vec2<i32>(86693i, 1i))), vec2<i32>(_wgslsmith_mod_i32(32i, -1i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 41077u, u_input.b.x), u_input.b) % 32u), global0.x)), vec2<i32>(1i, _wgslsmith_mod_i32(max(1i, u_input.c), abs(u_input.c))) | _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.c, 0i), -select(vec2<i32>(global0.x, -27119i), vec2<i32>(global0.x, global1.x), vec2<bool>(true, global3.a.x))));
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = arg_0;
    global3 = Struct_2(arg_0.a.yxy);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yx));
    var var_2 = true;
    var var_3 = Struct_1(!(!vec4<bool>(var_0.e, true, global3.a.x, false)), ~(~(~var_0.b) | firstTrailingBit(arg_0.b)), ~arg_0.c, _wgslsmith_f_op_f32(abs(1755f)), var_0.e);
    return vec2<f32>(775f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(func_2(Struct_2(vec3<bool>(arg_0.a.x, false, true)), 1i), true, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1))))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = global1.x;
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 551f, arg_1.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), 513f, _wgslsmith_f_op_f32(628f * -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -1000f, -1201f), vec3<f32>(arg_1.x, arg_1.x, 388f)), vec3<f32>(arg_1.x, -135f, 311f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1989f, global2.x, global2.x) - vec3<f32>(304f, global2.x, -726f))))));
    global1 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, global0.x), vec2<i32>(global1.x, u_input.c) & vec2<i32>(global1.x, global1.x)), vec2<i32>(23971i, _wgslsmith_clamp_i32(-26584i, global1.x, global0.x))) ^ ~vec2<i32>(~u_input.c, countOneBits(u_input.c)), -vec2<i32>((19163i << (arg_0.x % 32u)) >> (arg_0.x % 32u), ~25070i));
    global3 = func_2(Struct_2(global3.a), -2147483647i);
    let var_1 = 24344u;
    return min(_wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(0i, 1762i), -12991i), -firstLeadingBit(vec2<i32>(global0.x, 62252i))), -vec2<i32>(global0.x, -_wgslsmith_clamp_i32(global1.x, global0.x, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -279f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(818f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) * 632f)) + _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779f - 339f) - _wgslsmith_f_op_f32(f32(-1f) * -2005f)));
    global0 = firstTrailingBit(_wgslsmith_div_vec2_i32(func_5(max(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), vec3<u32>(1u, 78172u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, true), u_input.b.xz, vec2<i32>(2147483647i, u_input.c), global2.x, true)))), Struct_2(vec3<bool>(global3.a.x, global3.a.x, false)), func_2(Struct_2(global3.a), _wgslsmith_add_i32(u_input.c, u_input.c))), vec2<i32>(max(countOneBits(global0.x), global1.x), func_5(countOneBits(vec3<u32>(0u, 45591u, 13403u)), global2.zz, Struct_2(global3.a), Struct_2(global3.a)).x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -116f, global2.x, -484f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, -1381f, global2.x, global2.x))), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, -990f, global2.x) - vec4<f32>(-1000f, 3140f, var_0.x, global2.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -1288f), _wgslsmith_f_op_f32(-var_0.x), -1455f, 1119f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, var_0.x, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, global2.x, var_0.x)))), all(global3.a)))));
    global2 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0.x) * global2.x)), var_0.x)), 428f);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(var_1));
    let var_3 = u_input.b.xy;
    var var_4 = !func_2(func_2(Struct_2(vec3<bool>(false, false, global3.a.x)), u_input.c), -1i).a.x;
    var var_5 = firstTrailingBit(_wgslsmith_mult_u32(select(~u_input.b.x, u_input.b.x, u_input.b.x <= var_3.x) | max(var_3.x, u_input.a), ~(~(~9193u))));
    global3 = Struct_2(global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, global2.x, ~(~var_3.x), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, var_3.x, u_input.a, u_input.b.x)), abs(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, 64438u, 41194u), abs(vec4<u32>(u_input.a, var_3.x, 55225u, 30933u))))));
}

