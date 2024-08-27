struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, true, true, false, false, true);

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 0u, 31928u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_2.a, ~4294967295u, _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(arg_0.c >> (vec2<u32>(4294967295u, arg_2.b) % vec2<u32>(32u)), ~arg_0.c), -(~(arg_0.c << (vec2<u32>(57269u, arg_1) % vec2<u32>(32u))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, 410f, arg_2.d.x)))))));
    var var_1 = -(select(u_input.e.x | 41156i, 16509i, arg_2.d.x <= 699f) | 10898i) | abs(~(~(arg_0.c.x | u_input.b)));
    let var_2 = Struct_1(!(!(!(!vec3<bool>(false, var_0.a.x, true)))), 4294967295u, arg_2.c >> (u_input.d.zz % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) - -1184f), -827f)));
    return u_input.e.x;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = true;
    var_0 = !all(select(select(select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, true), vec4<bool>(true, true, false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(57794u, 6u)], arg_3.a.x, false)), vec4<bool>(true, true, true, true), !global0[_wgslsmith_index_u32(arg_1.b, 6u)]), vec4<bool>(true, arg_1.a.x, false, true), select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, arg_1.a.x, true, false), vec4<bool>(arg_3.a.x, global0[_wgslsmith_index_u32(arg_3.b, 6u)], arg_3.a.x, arg_3.a.x)), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.b, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], false, true), vec4<bool>(true, arg_1.a.x, arg_1.a.x, global0[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], arg_1.a.x, true, false)), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(2574u, 6u)], true))));
    let var_1 = Struct_1(arg_3.a, select(~global1.x, global1.x, false), u_input.e, arg_1.d);
    var var_2 = Struct_1(arg_3.a, u_input.a.x, ~var_1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 245f, _wgslsmith_f_op_f32(select(2059f, 1094f, all(vec4<bool>(true, false, var_1.a.x, var_1.a.x)))))));
    global1 = _wgslsmith_mod_vec4_u32(~countOneBits(u_input.a) >> (~(~(~u_input.a)) % vec4<u32>(32u)), (vec4<u32>(~0u, ~arg_3.b, 0u, 4294967295u & global1.x) | _wgslsmith_add_vec4_u32(min(u_input.a, vec4<u32>(global1.x, var_1.b, 1u, arg_1.b)), ~u_input.a)) >> (firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(var_2.b, 0u, 1u), 1u, _wgslsmith_sub_u32(4294967295u, var_1.b), ~0u)) % vec4<u32>(32u)));
    return vec2<i32>(-(~(-func_3(Struct_1(arg_1.a, var_1.b, vec2<i32>(9538i, 4080i), arg_1.d), u_input.d.x, var_1))), -1i);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(vec3<bool>(all(!(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1.x, 6u)], false))), true, all(!vec2<bool>(false, global0[_wgslsmith_index_u32(global1.x, 6u)]))), 1u, ~_wgslsmith_div_vec2_i32(func_4(func_3(Struct_1(vec3<bool>(false, false, global0[_wgslsmith_index_u32(global1.x, 6u)]), u_input.a.x, vec2<i32>(-18949i, u_input.b), vec3<f32>(arg_0, arg_0, -749f)), global1.x, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(global1.x, 6u)]), 56249u, u_input.e, vec3<f32>(211f, -892f, -617f))), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), 4294967295u, vec2<i32>(-1i, 35626i), vec3<f32>(-457f, -1788f, -781f)), _wgslsmith_f_op_f32(770f + -700f), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(61907u, 6u)], false, true), global1.x, u_input.e, vec3<f32>(arg_0, -648f, 598f))), u_input.e), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(819f, 1530f, -680f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(972f, 2790f, arg_0))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, arg_0, -924f))))))))));
    global1 = ~u_input.a;
    global0 = array<bool, 6>();
    let var_1 = max(0i, ~func_4(-var_0.c.x, Struct_1(var_0.a, 1u, var_0.c, vec3<f32>(-252f, 116f, -2038f)), _wgslsmith_f_op_f32(sign(var_0.d.x)), Struct_1(var_0.a, 21234u, var_0.c, vec3<f32>(201f, var_0.d.x, 317f))).x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_add_i32(u_input.c, 2147483647i), abs(u_input.c)), ~(u_input.e | -vec2<i32>(17418i, var_0.c.x)));
    let var_2 = Struct_1(vec3<bool>(false, false, any(!(!vec4<bool>(true, var_0.a.x, false, var_0.a.x)))), ~_wgslsmith_div_u32(global1.x, var_0.b), firstTrailingBit(_wgslsmith_add_vec2_i32(-firstTrailingBit(var_0.c), firstTrailingBit(-var_0.c))), vec3<f32>(-512f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0)), arg_0)), _wgslsmith_f_op_f32(min(-1538f, _wgslsmith_f_op_f32(exp2(var_0.d.x))))));
    return var_2.b;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = ~vec4<u32>(0u, arg_2.b, _wgslsmith_dot_vec2_u32(global1.yy << ((global1.xz & global1.xy) % vec2<u32>(32u)), u_input.a.yz), ~(~0u));
    let var_0 = Struct_1(arg_1.a, 0u, u_input.e << (u_input.a.yw % vec2<u32>(32u)), arg_1.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(arg_2.d.zx));
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(316f - -827f) * 109f), _wgslsmith_f_op_f32(sign(-2242f))));
    return Struct_1(select(arg_1.a, !select(vec3<bool>(arg_2.a.x, global0[_wgslsmith_index_u32(arg_2.b, 6u)], global0[_wgslsmith_index_u32(var_2.b, 6u)]), select(var_0.a, vec3<bool>(arg_2.a.x, true, false), false), false), select(!var_0.a, !vec3<bool>(var_0.a.x, var_2.a.x, false), !any(vec4<bool>(true, arg_2.a.x, global0[_wgslsmith_index_u32(arg_2.b, 6u)], arg_1.a.x)))), 1u, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.c.x, 1327i), vec2<i32>(var_0.c.x, ~func_4(u_input.e.x, Struct_1(var_0.a, global1.x, u_input.e, arg_2.d), arg_2.d.x, Struct_1(var_2.a, 0u, arg_2.c, arg_1.d)).x)), _wgslsmith_f_op_vec3_f32(-arg_1.d));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = func_5(func_2(arg_3.d.x), arg_3, arg_3);
    let var_1 = select(var_0.a, select(!arg_1.a, var_0.a, var_0.a), select(vec3<bool>(false, true, true), arg_1.a, arg_3.a.x));
    var var_2 = func_5(_wgslsmith_dot_vec2_u32(vec2<u32>((arg_1.b | arg_1.b) >> (0u % 32u), ~80333u >> (~arg_1.b % 32u)), vec2<u32>(~(~var_0.b), arg_3.b)), func_5(min(4294967295u, ~_wgslsmith_sub_u32(0u, global1.x)), Struct_1(var_1, (var_0.b << (4294967295u % 32u)) ^ global1.x, abs(~vec2<i32>(9037i, u_input.b)), func_5(global1.x, arg_3, func_5(4804u, arg_3, Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(61053u, 6u)], arg_0), arg_1.b, vec2<i32>(0i, -1i), arg_1.d))).d), func_5(_wgslsmith_div_u32(global1.x, 0u) ^ firstTrailingBit(arg_1.b), func_5(_wgslsmith_div_u32(0u, 66160u), arg_1, Struct_1(arg_3.a, 11456u, vec2<i32>(-1597i, 1i), arg_3.d)), Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(arg_1.a.x, arg_0, true), vec3<bool>(true, false, true)), ~var_0.b, var_0.c, vec3<f32>(arg_1.d.x, -1000f, arg_3.d.x)))), func_5(arg_1.b, arg_1, func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34762u, 1u), global1.wyz) << (~4294967295u % 32u), arg_1, func_5(1u, func_5(115262u, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], arg_1.a.x, arg_1.a.x), 42050u, vec2<i32>(2147483647i, 0i), vec3<f32>(arg_3.d.x, var_0.d.x, -1000f)), arg_3), arg_3))));
    let var_3 = arg_1;
    global1 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~var_2.b, ~var_0.b, 0u << (var_3.b % 32u), max(34962u, 53906u)), u_input.a) ^ u_input.a, u_input.a);
    return _wgslsmith_f_op_f32(-var_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), global1.x, u_input.e, vec3<f32>(129f, 1024f, 847f)), vec2<bool>(true, true), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], true, false), global1.x, u_input.e, vec3<f32>(-1519f, -1030f, -1061f)))) + _wgslsmith_f_op_f32(1364f + -103f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-632f)), -547f))), -802f, -270f);
    var var_1 = var_0.yy;
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-976f * var_0.x), _wgslsmith_f_op_f32(floor(var_1.x)));
    var_1 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + var_1.x), var_0.x)));
    let var_2 = Struct_1(select(!vec3<bool>(all(vec3<bool>(true, false, true)), u_input.b > u_input.b, global0[_wgslsmith_index_u32(~6138u, 6u)]), select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(50494u, 6u)]), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(68315u, 6u)]), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)], true), vec3<bool>(global0[_wgslsmith_index_u32(49013u, 6u)], global0[_wgslsmith_index_u32(global1.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), false), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(7761u, 6u)], true)), u_input.b > -1i), vec3<bool>(false, true, !global0[_wgslsmith_index_u32(global1.x, 6u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~u_input.a.zz), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.d.x, global1.x, 30500u, 51877u)), global1.x)), 6u)]), 4294967295u, reverseBits(func_4(_wgslsmith_mult_i32(-2147483647i | u_input.b, _wgslsmith_mod_i32(1i, u_input.b)), func_5(_wgslsmith_div_u32(global1.x, 33953u), func_5(global1.x, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(6956u, 6u)], false, false), 4294967295u, u_input.e, vec3<f32>(var_1.x, var_1.x, -2224f)), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 6u)], true, global0[_wgslsmith_index_u32(1u, 6u)]), u_input.d.x, vec2<i32>(u_input.b, 18152i), vec3<f32>(337f, var_1.x, -183f))), Struct_1(vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 6u)]), 64884u, u_input.e, vec3<f32>(var_1.x, -1583f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-880f - 1315f)), Struct_1(vec3<bool>(true, true, false), 69949u, ~vec2<i32>(-1i, -18455i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_0.x, var_1.x), vec3<f32>(-362f, var_0.x, 145f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), func_5(1u, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], true, global0[_wgslsmith_index_u32(global1.x, 6u)]), 1u, u_input.e, vec3<f32>(var_0.x, var_0.x, var_1.x)), Struct_1(vec3<bool>(true, true, true), global1.x, vec2<i32>(32044i, -5998i), vec3<f32>(-1142f, var_1.x, var_1.x))).d.x, _wgslsmith_f_op_f32(f32(-1f) * -566f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 394f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-485f, var_1.x, -1485f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), func_5(4294967295u, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 6u)], true, var_2.a.x), 8990u, var_2.c, vec3<f32>(239f, -822f, -1171f)), var_2).d.x, _wgslsmith_f_op_f32(-var_1.x), var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2167f, var_2.d.x, var_0.x, -564f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, -1727f, -426f, -852f) * vec4<f32>(var_1.x, var_0.x, -374f, var_2.d.x)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, 1780f, 497f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.d.x, 1211f, 1326f, var_1.x), vec4<f32>(var_1.x, var_0.x, var_0.x, -837f))))))), -u_input.e.x, 14005u << (1u % 32u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 1950f), -1770f, 806f, -751f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, -585f, var_2.d.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(978f, 268f, -3151f, var_2.d.x) * vec4<f32>(-917f, -1404f, -350f, -432f))))))), var_2.c.x);
}

