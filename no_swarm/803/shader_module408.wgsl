struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_5 = Struct_5(vec2<u32>(23167u, 1u), 878f, 291i, Struct_2(Struct_1(-26588i), Struct_1(4227i)));

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), -33158i, 58567i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    var var_0 = countOneBits(-1i);
    var var_1 = !vec2<bool>(!(!select(true, false, true)), !all(vec4<bool>(true, false, false, false)));
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(abs(~63375u), min(u_input.a.x, u_input.e)), ~select(~global1.a.x, ~u_input.a.x, true)), ~(global1.a.x << (global1.a.x % 32u)), abs(reverseBits(~u_input.a.x)), ~u_input.a.x);
    let var_3 = Struct_3(~(global2.yy ^ _wgslsmith_add_vec2_i32(vec2<i32>(global2.x, -2147483647i), select(vec2<i32>(u_input.b.x, 1i), global2.xy, var_1.x))), vec4<i32>(_wgslsmith_div_i32(10761i, -u_input.c), _wgslsmith_mod_i32(_wgslsmith_div_i32(-54534i, global2.x), _wgslsmith_clamp_i32(u_input.b.x, 82899i, global2.x)), _wgslsmith_mod_i32(60675i, _wgslsmith_mult_i32(u_input.c, 1i)), 2147483647i) & _wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(-14152i), 26096i, countOneBits(2147483647i), global2.x), vec4<i32>(~global1.d.b.a, 18927i, _wgslsmith_mult_i32(u_input.b.x, 4428i), i32(-1i) * -16979i)));
    let var_4 = vec4<bool>(all(select(!select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), true), select(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true)), select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x)), true), false)), (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 21469u, var_2.x, var_2.x), vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u)) <= ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, global1.a.x, u_input.a.x), vec3<u32>(var_2.x, 1230u, 0u))) | var_1.x, all(select(vec3<bool>(false, !var_1.x, true | var_1.x), vec3<bool>(var_1.x, true, all(vec3<bool>(true, false, var_1.x))), !select(true, true, var_1.x))), all(!vec4<bool>(all(vec4<bool>(var_1.x, true, var_1.x, var_1.x)), any(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.x, !var_1.x)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, global1.b) - 1f), _wgslsmith_f_op_f32(-370f * _wgslsmith_f_op_f32(abs(global1.b)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b, global1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b)), vec2<bool>(true, true))))), all(!var_4.xy)))));
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1477f, _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-global1.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())))));
    let var_1 = u_input.a.x;
    global1 = Struct_5(min(vec2<u32>(var_1 & var_1, 82007u), _wgslsmith_add_vec2_u32(global1.a, u_input.a ^ vec2<u32>(var_1, 7448u))), _wgslsmith_f_op_f32(max(-196f, -1075f)), global1.c, global1.d);
    let var_2 = abs(-max(vec4<i32>(_wgslsmith_div_i32(arg_0.b.x, arg_0.a.x), -u_input.c, u_input.c, -58936i), vec4<i32>(1i, 37705i, ~global2.x, global1.c)));
    let var_3 = _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.e << (var_1 % 32u), 51492u, 31699u)) << (~_wgslsmith_div_vec3_u32(min(vec3<u32>(14820u, u_input.a.x, 2746u), vec3<u32>(u_input.a.x, 58724u, 0u)), vec3<u32>(1u, var_1, u_input.e)) % vec3<u32>(32u)), (((vec3<u32>(global1.a.x, 13524u, 51148u) >> (vec3<u32>(0u, global1.a.x, u_input.d) % vec3<u32>(32u))) ^ abs(vec3<u32>(4294967295u, 11517u, var_1))) | min(vec3<u32>(var_1, 0u, 43002u) & vec3<u32>(4294967295u, 56918u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, var_1, 4294967295u), vec3<u32>(66084u, var_1, u_input.e), vec3<u32>(111302u, var_1, global1.a.x)))) | ~reverseBits(vec3<u32>(var_1, 71450u, 66834u) << (vec3<u32>(global1.a.x, global1.a.x, 66859u) % vec3<u32>(32u))));
    return vec4<u32>(0u, _wgslsmith_dot_vec2_u32(var_3.xy, vec2<u32>(~u_input.e ^ 1u, countOneBits(~global1.a.x))), abs(0u), countOneBits(global1.a.x | 40737u));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = vec3<f32>(-1195f, 637f, global1.b);
    var var_1 = Struct_4(global1.d, Struct_2(global1.d.b, Struct_1(firstTrailingBit(~(-38990i)))), _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global2.x, -2147483647i, 26871i), vec4<i32>(global2.x, u_input.b.x, global1.d.a.a, 40532i)), vec4<i32>(global2.x, 40580i, u_input.c, -1i) << (vec4<u32>(0u, global1.a.x, 1u, u_input.d) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global2.x, 1i, 2147483647i) & vec4<i32>(-1i, 20780i, global1.c, global2.x), max(vec4<i32>(-31002i, global1.c, 83139i, u_input.c), vec4<i32>(u_input.b.x, u_input.c, global2.x, global1.d.b.a))) << (func_2(Struct_3(vec2<i32>(u_input.b.x, global2.x), vec4<i32>(2147483647i, -1i, 8954i, global2.x))) % vec4<u32>(32u))));
    var var_2 = Struct_2(Struct_1(-12799i ^ (_wgslsmith_sub_i32(global1.c, -1i) >> (~u_input.e % 32u))), Struct_1(-firstTrailingBit(_wgslsmith_add_i32(64619i, 31433i))));
    var var_3 = Struct_1(global2.x);
    global0 = _wgslsmith_f_op_f32(-774f + arg_0);
    return global1.d;
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    global1 = Struct_5(u_input.a, _wgslsmith_f_op_f32(-global1.b), max(~(-abs(-1i)), ~_wgslsmith_add_i32(-2147483647i, 1i) & abs(arg_0.b.b.a)), Struct_2(global1.d.a, Struct_1(global2.x)));
    let var_0 = global1.b;
    global1 = Struct_5(global1.a, _wgslsmith_f_op_f32(-global1.b), -7305i, arg_0.b);
    let var_1 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -715f)))).b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b)) - global1.b);
    return Struct_5(vec2<u32>(1u, 1u), global1.b, 0i, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_4(global1.d, func_1(_wgslsmith_f_op_f32(-global1.b)), -vec4<i32>(u_input.c & global1.c, 14320i, ~global2.x, u_input.c)));
    global1 = func_4(Struct_4(global1.d, Struct_2(global1.d.b, Struct_1(max(2147483647i, u_input.b.x))), -(~(-vec4<i32>(u_input.b.x, u_input.c, -37440i, 36562i)))));
    global1 = Struct_5(vec2<u32>(_wgslsmith_sub_u32(~(~u_input.e), 2024u), u_input.d), _wgslsmith_f_op_f32(-global1.b), global2.x, func_1(-346f));
    let var_0 = Struct_2(global1.d.a, func_4(Struct_4(global1.d, Struct_2(func_4(Struct_4(Struct_2(global1.d.a, Struct_1(6633i)), Struct_2(global1.d.a, Struct_1(16296i)), vec4<i32>(global1.d.a.a, 1i, 1i, global1.c))).d.a, global1.d.a), countOneBits(-vec4<i32>(-1i, 27506i, -65848i, u_input.c)))).d.a);
    let var_1 = true;
    let var_2 = !(firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(u_input.d, u_input.e))) <= 1358u);
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3()).x, -493f), global1.b, _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b + global1.b), _wgslsmith_div_f32(1035f, 672f), var_1)))), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-min(_wgslsmith_add_i32(55529i, 43187i), func_4(Struct_4(Struct_2(Struct_1(57224i), Struct_1(u_input.b.x)), Struct_2(global1.d.b, Struct_1(global2.x)), vec4<i32>(0i, u_input.b.x, -28836i, 22739i))).d.a.a), _wgslsmith_mod_i32(-1i, reverseBits(-5412i))), -_wgslsmith_div_i32(global2.x, global1.d.a.a));
}

