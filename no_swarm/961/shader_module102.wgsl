struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4 = Struct_4(Struct_3(18724u, Struct_2(-392f, 1i), true, Struct_2(-1279f, 1i)), 0u);

var<private> global2: Struct_2;

var<private> global3: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_4) -> i32 {
    global1 = arg_0;
    global3 = global2.a;
    global1 = Struct_4(Struct_3(reverseBits(firstLeadingBit(countOneBits(arg_0.a.a))), Struct_2(global1.a.d.a, countOneBits(arg_3.a.b.b)), global1.a.c, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, global1.a.d.a)), -1i)), 69790u);
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))));
    var var_0 = Struct_3(global1.b, global1.a.b, true, global0.a.b);
    return abs(~_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.a.d.b, -52298i, global0.a.b.b), vec3<i32>(24253i, global0.a.d.b, 0i)))));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_4 {
    global3 = _wgslsmith_f_op_f32(abs(global0.a.b.a));
    global2 = Struct_2(1f, func_3(Struct_4(global0.a, ~arg_2.x), ~arg_2.zy, -620f, Struct_4(Struct_3(global1.a.a, global1.a.d, true, arg_1), arg_2.x)) | (_wgslsmith_div_i32(u_input.a.x | -1i, -global0.a.b.b) ^ 1i));
    var var_0 = ~_wgslsmith_clamp_u32(0u, ~_wgslsmith_mult_u32(arg_2.x, 1u), 2841u);
    var var_1 = Struct_4(Struct_3(global1.b, arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.a + 1000f))) < _wgslsmith_div_f32(-1215f, global1.a.d.a), global1.a.d), global1.a.a);
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b.a - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(252f, var_1.a.d.a), -1359f, true))) - global0.a.d.a), global2.b);
    return Struct_4(Struct_3(_wgslsmith_mod_u32(~(~0u), 1u), Struct_2(_wgslsmith_f_op_f32(1929f * _wgslsmith_f_op_f32(-var_1.a.b.a)), ~7912i), false, Struct_2(arg_1.a, select(-2147483647i, global0.a.b.b, any(vec2<bool>(false, false))))), global0.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> vec2<u32> {
    var var_0 = true;
    var var_1 = func_2(true, global1.a.b, vec4<u32>(countOneBits(arg_0.x), global0.b, global1.b, arg_0.x), Struct_1(1i, ~global2.b, _wgslsmith_f_op_f32(sign(global0.a.d.a))));
    global0 = func_2(false, func_2(!(firstLeadingBit(global1.a.b.b) < (u_input.a.x << (var_1.b % 32u))), Struct_2(global0.a.b.a, -2147483647i), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.b, var_1.b, global1.a.a, 0u), vec4<u32>(1u, 0u, global1.b, 4294967295u)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.b.b, 2147483647i, var_1.a.b.b), ~u_input.a), ~global2.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -944f))))).a.b, firstTrailingBit(vec4<u32>(global0.a.a ^ 17777u, 1u, 90744u, min(var_1.b, 26772u))) ^ ~(_wgslsmith_mod_vec4_u32(vec4<u32>(53386u, 78738u, global1.a.a, 1u), vec4<u32>(global0.a.a, var_1.b, global1.a.a, global0.b)) ^ firstTrailingBit(vec4<u32>(var_1.a.a, 43484u, 1u, global0.b))), Struct_1(_wgslsmith_mod_i32(-var_1.a.d.b, _wgslsmith_mult_i32(global1.a.d.b, global2.b)) ^ -(~global1.a.d.b), -1i, global0.a.b.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.b.a), _wgslsmith_f_op_f32(abs(-806f)), _wgslsmith_f_op_f32(f32(-1f) * -443f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b.a, var_1.a.b.a, -1000f)))))) + vec3<f32>(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-global1.a.d.a)) * global0.a.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2(true, global0.a.d, vec4<u32>(arg_0.x, var_1.a.a, 4294967295u, 1u), Struct_1(1417i, u_input.a.x, global2.a)).a.d.a)))));
    let var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(arg_0 << (arg_0 % vec3<u32>(32u))) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.a, 1u, arg_0.x), arg_0), arg_0), ~4294967295u);
    return vec2<u32>(arg_0.x, global0.b);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = func_2(true, func_2(any(vec4<bool>(false, true & global1.a.c, 180f > global1.a.d.a, func_2(global0.a.c, Struct_2(global2.a, global2.b), vec4<u32>(global1.b, 1u, arg_2.x, global0.b), Struct_1(-64474i, -1i, arg_0.x)).a.c)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -284f), 1i), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(global1.a.a, 4294967295u, global0.b, 0u)), ~(~vec4<u32>(global1.b, global1.b, global1.a.a, arg_2.x))), Struct_1(select(arg_3.x, -31091i, !global1.a.c), 1i, _wgslsmith_f_op_f32(1855f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))).a.b, _wgslsmith_clamp_vec4_u32(firstTrailingBit(~vec4<u32>(68548u, 0u, 4294967295u, global0.b)), select(vec4<u32>(global0.b | 0u, 61540u, arg_2.x, 1u), ~select(vec4<u32>(global1.a.a, global0.b, arg_2.x, 0u), vec4<u32>(19765u, 4294967295u, 1u, global1.a.a), true), vec4<bool>(global0.a.b.a <= 743f, true, false, true)), vec4<u32>(firstTrailingBit(~1u), reverseBits(global1.b ^ global1.b), ~4294967295u >> (abs(global0.a.a) % 32u), ~1u)), Struct_1(arg_3.x ^ global0.a.b.b, _wgslsmith_dot_vec4_i32(arg_1, arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.d.a)))))).a;
    let var_1 = global1.a;
    let var_2 = countOneBits(select(vec3<i32>(_wgslsmith_mult_i32(-44589i, arg_3.x), 1i, -22054i), arg_1.wyy, global1.a.c)) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(50583i, _wgslsmith_mult_i32(33209i, -10956i), 4327i, -2147483647i)), func_3(func_2(false, Struct_2(var_1.b.a, -1i), ~vec4<u32>(var_1.a, 1u, 4294967295u, 0u), Struct_1(arg_1.x, arg_3.x, var_0.b.a)), func_1(vec3<u32>(var_0.a, 34317u, var_0.a) | vec3<u32>(global0.b, global1.b, var_1.a), ~vec4<i32>(var_1.d.b, u_input.a.x, 0i, global2.b)), -1112f, func_2(any(vec3<bool>(global0.a.c, false, var_1.c)), var_0.d, vec4<u32>(global0.a.a, 4294967295u, arg_2.x, 1u), Struct_1(17869i, 2147483647i, -292f))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(30810i, var_0.b.b, 19259i), vec3<i32>(u_input.a.x, 1i, arg_3.x)), vec3<i32>(arg_3.x, -24986i, 0i) | u_input.a), func_3(func_2(var_1.c, Struct_2(global1.a.b.a, global1.a.d.b), vec4<u32>(1u, 39090u, var_1.a, arg_2.x), Struct_1(global0.a.d.b, var_1.d.b, global0.a.d.a)), _wgslsmith_sub_vec2_u32(arg_2, arg_2), -546f, Struct_4(global1.a, 1u)), ~arg_3.x));
    return _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-var_0.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-1003f, global0.a.d.a, -697f);
    var var_1 = global1.a.c;
    let var_2 = Struct_1(global2.b, ~(-1i >> ((4294967295u ^ ~global1.a.a) % 32u)), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(950f, global0.a.d.a, var_0.x, -315f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(112f, global2.a, global1.a.b.a, -1286f)))))), vec4<i32>(global1.a.d.b, 19290i, 1i, global0.a.d.b), countOneBits(~vec2<u32>(7115u, global1.b)), _wgslsmith_add_vec2_i32((u_input.a.zx >> (vec2<u32>(14693u, global0.a.a) % vec2<u32>(32u))) >> (func_1(vec3<u32>(4294967295u, 4294967295u, 59883u), vec4<i32>(global0.a.b.b, global1.a.b.b, u_input.a.x, 2147483647i)) % vec2<u32>(32u)), countOneBits(vec2<i32>(global2.b, u_input.a.x))))));
    var var_3 = func_2(all(vec3<bool>(true, global0.a.c, _wgslsmith_add_i32(1i, var_2.b) <= -global0.a.d.b)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * global0.a.d.a) - global0.a.b.a), 2064i), ~(~(~vec4<u32>(0u, 22730u, 1u, global1.b) << (select(vec4<u32>(24189u, global0.a.a, global1.b, 7841u), vec4<u32>(4294967295u, global0.b, global1.a.a, global1.b), true) % vec4<u32>(32u)))), var_2).a.d;
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * var_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.a)))) - _wgslsmith_f_op_f32(floor(var_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1780f) + 674f)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-141f)) + _wgslsmith_f_op_f32(-global2.a)))));
    global1 = Struct_4(func_2(false, func_2(all(vec4<bool>(global0.a.c, global1.a.c, false, global1.a.c)) & !global0.a.c, Struct_2(_wgslsmith_f_op_f32(abs(var_3.a)), global0.a.b.b >> (global0.b % 32u)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 30049u, 4294967295u, global0.a.a), vec4<u32>(global1.a.a, 1u, global1.b, 37903u)), abs(vec4<u32>(1u, 41103u, 11070u, 1u))), Struct_1(-var_2.a, 1324i, var_3.a)).a.b, ~_wgslsmith_add_vec4_u32(max(vec4<u32>(1u, 0u, global1.b, global1.a.a), vec4<u32>(65760u, 4182u, 77449u, 86045u)), firstLeadingBit(vec4<u32>(23082u, global0.b, 11679u, global0.a.a))), Struct_1(var_3.b, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f - var_2.c)))).a, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global0.b, global0.b), ~(22249u & global1.a.a)), _wgslsmith_mod_vec2_u32(min(vec2<u32>(global0.b, 19988u) >> (vec2<u32>(50991u, global0.a.a) % vec2<u32>(32u)), ~vec2<u32>(1u, 82843u)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(global1.a.a, global1.a.a)), vec2<u32>(55664u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1000f, -397f), select(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global0.b, global1.b, 1u, 4294967295u), vec4<u32>(4294967295u, 40655u, 46162u, global1.b), vec4<bool>(false, global0.a.c, false, true)) & (vec4<u32>(4294967295u, 0u, global0.b, 4294967295u) & vec4<u32>(global1.a.a, 1u, 0u, 0u)), vec4<u32>(~global0.b, 1u, 30104u, ~global0.a.a)), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(global0.a.a, global0.b, global1.b, global0.a.a)), vec4<u32>(1u, 1u, 5201u, 4294967295u)) >> (vec4<u32>(4294967295u, ~32592u, ~68762u, 30522u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)));
}

