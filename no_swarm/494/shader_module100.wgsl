struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, 36514i, vec3<f32>(-1000f, 1000f, 136f), 2147483647i);

var<private> global1: vec4<u32> = vec4<u32>(1u, 71519u, 1u, 14473u);

var<private> global2: Struct_1;

var<private> global3: array<u32, 16>;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = vec3<u32>(1u, arg_0.a, countOneBits(u_input.c.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, 558f, 1467f) + vec3<f32>(global0.c.x, arg_0.c.x, -2379f)) + global2.c) + vec3<f32>(_wgslsmith_f_op_f32(-854f + arg_0.c.x), _wgslsmith_f_op_f32(abs(1137f)), _wgslsmith_f_op_f32(f32(-1f) * -859f))))));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = select(2147483647i, 32513i, false);
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, u_input.c.x), ~(~max(vec2<u32>(global0.a, global3[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<u32>(u_input.b.x, 10871u)))), global0.d, _wgslsmith_f_op_vec3_f32(select(global0.c, global0.c, !any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)))), 15462i);
    var var_2 = (!all(vec2<bool>(false, true)) && true) & any(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, 4294967295u > global1.x), true));
    global0 = Struct_1(arg_0.x, select(firstTrailingBit(global2.b), _wgslsmith_add_i32(-21212i, abs(~u_input.a)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c)), ~(_wgslsmith_clamp_i32(abs(global0.b), ~global2.d, -12769i) ^ u_input.a));
    var var_3 = var_1;
    return 0i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = Struct_1(arg_2, 0i, _wgslsmith_f_op_vec3_f32(min(arg_0.c, vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1192f))), _wgslsmith_f_op_vec3_f32(func_1(arg_1, arg_0)).x))), select(_wgslsmith_dot_vec4_i32(~vec4<i32>(-31490i, global0.b, -7171i, -67068i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b, 52565i, global2.b, arg_1.b), vec4<i32>(-54860i, global2.b, 14169i, arg_0.b))) ^ ~func_3(u_input.c), _wgslsmith_div_i32(global2.d, global0.b), true));
    var var_0 = ~(countOneBits(abs(15906u)) & global4.x) | ~u_input.b.x;
    global0 = arg_1;
    var var_1 = !(!(_wgslsmith_f_op_f32(-485f + _wgslsmith_f_op_vec3_f32(func_1(arg_0, Struct_1(global1.x, arg_0.d, vec3<f32>(arg_1.c.x, -1009f, arg_0.c.x), 19103i))).x) != global2.c.x));
    var var_2 = func_3(~(u_input.c >> (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(global1.x, global3[_wgslsmith_index_u32(global4.x, 16u)], global2.a, global1.x)), vec4<u32>(1u, 0u, 31545u, u_input.c.x)) % vec4<u32>(32u))));
    return Struct_1(7033u, -24615i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global2.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), -1585f, 157f), global0.c, select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))))), _wgslsmith_mult_i32((u_input.a ^ -global2.b) << (~max(global4.x, arg_1.a) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-12874i, global0.d, arg_0.d, 1i) ^ -vec4<i32>(u_input.a, u_input.a, 1i, -2147483647i), max(vec4<i32>(0i, 2147483647i, -25913i, -15567i), vec4<i32>(1i, global0.b, 92i, u_input.a)) << (u_input.c % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1997f, -968f, true))))), _wgslsmith_f_op_f32(-global0.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1046f, -166f) * _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c.x, 1554f)) - global2.c.x))));
    var var_1 = Struct_1(_wgslsmith_mod_u32(global4.x, 0u), ~u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.c)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.x, global2.c.x, -104f), vec3<f32>(-184f, -675f, global0.c.x), true))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1129f, -360f, -180f), arg_0.c, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -854f, 1000f))))), ~(-abs(arg_0.b) | u_input.a));
    global3 = array<u32, 16>();
    let var_2 = ~vec3<u32>(global1.x, ~global2.a, 1209u);
    global4 = abs(min(firstLeadingBit(vec2<u32>(4294967295u, ~global3[_wgslsmith_index_u32(global1.x, 16u)])), global1.wx));
    return 44005i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u != (u_input.b.x & ~global4.x);
    let var_1 = u_input.c;
    global0 = Struct_1(u_input.b.x, _wgslsmith_clamp_i32(global2.d, abs(~(~global2.b)), i32(-1i) * -u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global2.c))))), func_4(func_2(Struct_1(~1u, abs(-18076i), vec3<f32>(global2.c.x, global0.c.x, -640f), ~global0.d), Struct_1(var_1.x >> (67570u % 32u), abs(global2.d), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(22271u, -42046i, vec3<f32>(global2.c.x, -679f, -853f), -34577i), Struct_1(14510u, u_input.a, vec3<f32>(137f, global0.c.x, -1000f), u_input.a))), -1i), global2.a)));
    global0 = Struct_1(768u, -1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1053f - 623f) - global2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * -829f) + -515f)) * _wgslsmith_f_op_vec3_f32(step(global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global2.c.x, global2.c.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, -531f, global0.c.x) * global2.c))))), global0.b);
    var var_2 = _wgslsmith_div_u32(~1u, var_1.x);
    global1 = vec4<u32>(_wgslsmith_clamp_u32(~(~(~4294967295u)), 40786u, 1u), _wgslsmith_clamp_u32(1u, global1.x, var_1.x), _wgslsmith_mod_u32(20216u, ~31266u), ~(~27945u));
    let var_3 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false), any(vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))), !vec2<bool>(true, select(true, true, true))), !select(vec2<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(false, false, false))), vec2<bool>(true, true), vec2<bool>(true, true)));
    global2 = func_2(func_2(Struct_1(min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.a, global4.x, 67489u), u_input.c)), -(-2442i >> (global0.a % 32u)), global0.c, i32(-1i) * -33743i), Struct_1(_wgslsmith_clamp_u32(4294967295u, var_1.x, 0u & global4.x), -2147483647i >> (max(1u, global4.x) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, global2.c.x, 204f) - global0.c)), firstLeadingBit(abs(-2147483647i))), 32406u << (u_input.c.x % 32u)), Struct_1(57250u, max(u_input.a, ~u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-1244f + _wgslsmith_f_op_f32(round(global0.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(abs(global2.c.x)))), global2.c.x), _wgslsmith_div_i32(global2.d, func_4(func_2(Struct_1(global1.x, global2.d, vec3<f32>(global2.c.x, 206f, global0.c.x), 9460i), Struct_1(1u, -38621i, vec3<f32>(-328f, -1160f, -1000f), global0.d), var_1.x)))), _wgslsmith_mod_u32(var_1.x, _wgslsmith_sub_u32(firstTrailingBit(59240u & u_input.c.x), _wgslsmith_dot_vec3_u32(~u_input.c.wzx, _wgslsmith_mult_vec3_u32(var_1.www, global1.yzx)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(select(reverseBits(select(vec4<i32>(global2.d, global2.b, global2.b, global0.d), vec4<i32>(-5909i, u_input.a, global2.b, 0i), vec4<bool>(var_3.x, var_3.x, var_3.x, true))), abs(-vec4<i32>(0i, global2.b, 26995i, 0i)), any(!vec4<bool>(var_3.x, true, var_3.x, false))), -(~(~vec4<i32>(u_input.a, -2147483647i, 9663i, 26590i)))));
}

