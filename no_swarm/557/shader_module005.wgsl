struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1158f - global0.b) + _wgslsmith_f_op_f32(min(arg_0, global0.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.wyx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2471f, -346f, -1130f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b, 1435f, arg_0), arg_1.zxz) - arg_1.wyx)))));
    var var_1 = u_input.a;
    global0 = Struct_1(-(~(_wgslsmith_mult_i32(u_input.a, 0i) | (u_input.a & 28102i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f * arg_1.x) + _wgslsmith_f_op_f32(arg_0 - -112f)) * -398f)), global0.c, -1630f, abs(u_input.a));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -615f), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2510f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))))), abs(-2147483647i));
    var_1 = _wgslsmith_mult_i32(37760i, -u_input.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 1f)) * 420f));
}

fn func_2(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = Struct_1(countOneBits(-_wgslsmith_sub_i32(~1i, 1i)), _wgslsmith_f_op_f32(-global0.b), !vec4<bool>(true, !(global0.a < u_input.a), true, _wgslsmith_mod_i32(arg_0, global0.e) > ~(-15425i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1597f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1236f, global0.d, global0.d) + vec4<f32>(global0.b, -834f, -1226f, global0.d)), false)))), 50416i);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -336f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - -1000f))))));
    global0 = var_0;
    var var_2 = select(select(false || !all(vec2<bool>(true, global0.c.x)), true, all(select(!global0.c.ww, vec2<bool>(global0.c.x, arg_1), global0.c.ww))), global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-336f, global0.b)) * -996f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-129f, 337f)) * _wgslsmith_f_op_f32(min(var_1, var_0.b)))) >= _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 1226f, 531f, 168f)), true)));
    let var_3 = reverseBits(select(vec3<u32>(~(~109496u), 1u, ~2028u), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 5409u, 0u), ~vec3<u32>(1u, 54886u, 1u)), any(vec4<bool>(arg_1 & false, false, var_0.c.x & false, all(vec3<bool>(arg_1, false, var_0.c.x))))));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global0 = arg_2;
    let var_0 = vec3<bool>(true, arg_0, any(!arg_3.zx));
    let var_1 = firstTrailingBit(countOneBits(_wgslsmith_clamp_u32(1u, ~(~22772u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(45126u, 1u, 8975u, 52689u)))));
    global0 = arg_2;
    let var_2 = reverseBits(_wgslsmith_clamp_i32(-1i, firstTrailingBit(abs(~arg_2.e)), ~arg_1.x));
    return ~min(4294967295u, max(max(1u, var_1), ~0u) & var_1);
}

fn func_5(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = ~vec3<u32>(4294967295u, 49364u, ~_wgslsmith_sub_u32(24914u, arg_1) << (~arg_1 % 32u));
    global0 = Struct_1(u_input.a, global0.d, select(global0.c, select(!vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true), vec4<bool>(false || global0.c.x, !global0.c.x, true, global0.e == u_input.a), vec4<bool>(false, true, all(global0.c), any(global0.c.wy))), vec4<bool>(all(!global0.c.zw), true, all(select(global0.c.zy, global0.c.zy, true)), global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.b, global0.b), arg_0.x)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(104f))))))), select(-func_2(min(29277i, u_input.a), true), func_2(u_input.a, global0.c.x & true) >> (_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(54063u, 33347u, var_0.x))) % 32u), global0.c.x));
    global0 = Struct_1(~18059i, 1752f, !(!global0.c), -274f, _wgslsmith_div_i32(i32(-1i) * -2147483647i, max(global0.a, 0i)) | firstLeadingBit(select(i32(-1i) * -17232i, ~11419i, true)));
    let var_1 = -max(_wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1806i, 0i, 1i), vec3<i32>(-2147483647i, global0.e, -2147483647i)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, global0.e, u_input.a)), _wgslsmith_mod_vec3_i32(~min(vec3<i32>(global0.e, 80414i, 2147483647i), vec3<i32>(19115i, u_input.a, 0i)), vec3<i32>(-global0.e, _wgslsmith_mult_i32(1i, global0.a), -2147483647i)));
    var var_2 = Struct_1(-26278i, global0.d, !(!vec4<bool>(!global0.c.x, true, any(global0.c.wzx), any(vec4<bool>(global0.c.x, false, true, global0.c.x)))), _wgslsmith_f_op_f32(trunc(global0.d)), func_2(-(~(var_1.x | var_1.x)), any(vec2<bool>(!global0.c.x, all(global0.c)))));
    return Struct_1(global0.e, var_2.b, !var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1201f + var_2.b) + _wgslsmith_f_op_f32(-166f - var_2.b)))), var_1.x);
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-513f, global0.b, arg_0.x), vec3<f32>(arg_0.x, global0.b, -945f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(440f, 1355f, arg_0.x))))), _wgslsmith_mult_u32(3434u, func_4(true, countOneBits(vec2<i32>(-1i, 2147483647i)), Struct_1(func_2(0i, true), global0.b, vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false), _wgslsmith_f_op_f32(1521f + arg_0.x), -48569i), vec4<bool>(true, any(vec3<bool>(global0.c.x, global0.c.x, false)), 1i > u_input.a, global0.c.x))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)));
    global0 = Struct_1(select(~(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e, global0.e), vec2<i32>(-24604i, global0.e)) >> (_wgslsmith_mod_u32(4408u, 1u) % 32u)), _wgslsmith_mult_i32(_wgslsmith_div_i32(global0.a, -5804i), ~1i) ^ ~countOneBits(u_input.a), true && ((false || global0.c.x) & global0.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -355f) - _wgslsmith_f_op_f32(func_3(-383f, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(552f, -1000f, var_0, global0.b))), true))))), vec4<bool>(all(vec2<bool>(all(vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), false)), !all(vec4<bool>(global0.c.x, true, true, global0.c.x)), false, true || global0.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + func_5(vec3<f32>(1f, 1f, 1f), 104467u).d), 119f)), abs(49773i));
    let var_1 = Struct_1(1i, -719f, vec4<bool>(!(!global0.c.x), u_input.a < global0.e, true, !global0.c.x), global0.b, 1i);
    let var_2 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 974f, 891f) * vec3<f32>(var_0, 1638f, global0.d)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1481f, var_1.b))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(954f - global0.d), _wgslsmith_f_op_f32(-arg_0.x))), -476f, _wgslsmith_f_op_f32(529f - -452f))), select(reverseBits(1u), ~(~1u), any(vec2<bool>(false, true))));
    return 39958u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(min(vec3<u32>(48373u, ~0u, 4294967295u), ~abs(min(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(102372u, 80894u, 4294967295u)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(~0u, 1u, _wgslsmith_sub_u32(49519u, 12377u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u))));
    var var_1 = Struct_1(~min(_wgslsmith_sub_i32(global0.e | u_input.a, u_input.a), 0i), global0.d, !select(vec4<bool>(true, !global0.c.x, all(global0.c.yz), any(vec2<bool>(global0.c.x, global0.c.x))), vec4<bool>(true, true, global0.c.x, !global0.c.x), true), _wgslsmith_f_op_f32(-global0.b), ~u_input.a);
    var var_2 = vec3<i32>(-1i, u_input.a, u_input.a) >> (((select(vec3<u32>(5528u, 13009u, 9898u), ~vec3<u32>(4294967295u, 1717u, 4294967295u), !global0.c.x) << (~(~vec3<u32>(0u, 111994u, 44187u)) % vec3<u32>(32u))) >> (abs(abs(vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = ~vec4<u32>(~func_1(vec2<f32>(-461f, 2094f)) & 1u, min(abs(~23450u), _wgslsmith_clamp_u32(46407u, 0u, 16769u)), abs(countOneBits(countOneBits(44546u))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 49909u, 1u, 1u), vec4<u32>(28677u, 2846u, 6399u, 0u)) ^ firstLeadingBit(25731u), ~(~83837u), (var_1.c.x != true) | any(vec2<bool>(true, var_1.c.x))));
    let var_4 = vec3<u32>(~0u, 0u, 0u);
    var var_5 = countOneBits(-vec3<i32>(global0.a, -2147483647i | _wgslsmith_add_i32(-2147483647i, u_input.a), var_2.x));
    let var_6 = var_1.e;
    var_5 = vec3<i32>(-global0.a, global0.a, i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_3.xw >> (~vec2<u32>(1u, var_3.x) % vec2<u32>(32u))) >> (~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3.x, 0u), abs(vec2<u32>(0u, var_4.x)), var_3.wx) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(193f)) - _wgslsmith_div_f32(var_1.b, 1062f))), var_1.d, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1894f)), vec3<f32>(_wgslsmith_f_op_f32(select(var_1.d, -1000f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.d), -791f))), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_div_i32(var_2.x, 24339i));
}

