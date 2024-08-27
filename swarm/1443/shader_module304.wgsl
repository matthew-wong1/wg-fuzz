struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global1: Struct_1 = Struct_1(vec4<i32>(2147483647i, -53597i, i32(-2147483648), -14997i), vec2<bool>(true, true), 1u, true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    let var_0 = vec4<bool>(any(vec2<bool>(true, true)), false, global1.b.x, true);
    var var_1 = _wgslsmith_sub_vec2_u32(firstTrailingBit(select(vec2<u32>(firstTrailingBit(global0.x), 4294967295u >> (u_input.a % 32u)), ~reverseBits(vec2<u32>(58701u, u_input.a)), (global1.a.x << (global0.x % 32u)) < ~global1.a.x)), max(~(vec2<u32>(1u, u_input.a) ^ vec2<u32>(34279u, 54278u)) ^ select(~vec2<u32>(67602u, 0u), abs(vec2<u32>(7858u, global1.c)), any(vec4<bool>(false, global1.b.x, false, true))), select(vec2<u32>(~u_input.a, 57847u), abs(vec2<u32>(u_input.a, global1.c)), !vec2<bool>(var_0.x, true))));
    var var_2 = -vec3<i32>(-firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, 6257i, global1.a.x, global1.a.x), global1.a)), global1.a.x, 0i);
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_mod_u32(~global1.c, _wgslsmith_mod_u32(global1.c, 26774u))), vec2<u32>(select(1u, 56029u, !global1.b.x), ~(u_input.a ^ global1.c)) << (firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.x, 0u, 35001u), vec4<u32>(global1.c, 15712u, 17140u, global0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.c, 46648u), vec3<u32>(0u, 1u, u_input.a)))) % vec2<u32>(32u)));
    let var_3 = (vec4<u32>(global1.c >> (var_1.x % 32u), _wgslsmith_add_u32(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.c, u_input.a), vec3<u32>(25514u, u_input.a, 4294967295u))), global0.x, global0.x) | vec4<u32>(19567u, 43387u, _wgslsmith_div_u32(~0u, 4294967295u), global0.x)) | ~(~(vec4<u32>(26946u, global0.x, 2238u, 86167u) << (~vec4<u32>(1u, 21880u, 0u, var_1.x) % vec4<u32>(32u))));
    return var_3.xxx;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = false;
    let var_1 = Struct_1(select(global1.a, vec4<i32>(1i, min(global1.a.x, 55059i), ~(-2147483647i), arg_2.b.x), !select(vec4<bool>(global1.b.x, false, true, global1.d), !vec4<bool>(true, global1.d, false, global1.b.x), global1.d)), global1.b, (_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(global1.c, 12923u)) >> (abs(~arg_1.x) % 32u)) & arg_0.x, select(!any(vec4<bool>(arg_2.a, true, true, arg_2.a)), !(!any(vec3<bool>(arg_2.a, global1.b.x, global1.b.x))), true));
    var var_2 = ~(~(~_wgslsmith_div_u32(3723u, var_1.c)) << (_wgslsmith_mod_u32(52243u, ~(~arg_0.x)) % 32u));
    global1 = var_1;
    return ~(-min(-45407i, -(arg_2.b.x ^ global1.a.x)));
}

fn func_2() -> bool {
    global0 = ~(vec2<u32>(global1.c, 1u) | vec2<u32>(_wgslsmith_div_u32(global1.c, 4294967295u), global0.x));
    global0 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 5417u, 0u, u_input.a), vec4<u32>(25254u, 54168u, u_input.a, 4294967295u) ^ vec4<u32>(0u, global0.x, global1.c, 1644u)), _wgslsmith_div_vec4_u32(vec4<u32>(global1.c, u_input.a, global0.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, global1.c, 4294967295u), vec4<u32>(global1.c, 1u, u_input.a, 0u)))), global0.x);
    let var_0 = Struct_2(all(!vec3<bool>(global1.d, global1.b.x & global1.d, global1.b.x)), vec3<i32>(_wgslsmith_sub_i32(global1.a.x, -34659i) & 30341i, i32(-1i) * -42057i, 1i));
    let var_1 = func_4(select(~(vec2<u32>(19558u, 26527u) >> (~vec2<u32>(u_input.a, 1682u) % vec2<u32>(32u))), vec2<u32>(0u, ~(~global0.x)), global1.b), (vec3<u32>(u_input.a, 4294967295u, ~13238u) | func_3()) >> (~vec3<u32>(global0.x >> (global0.x % 32u), 1u, ~global1.c) % vec3<u32>(32u)), var_0);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1680f, -2253f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, -893f))) - vec2<f32>(-501f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(246f)) - -755f)));
    return !global1.d;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> i32 {
    global1 = arg_3.d;
    var var_0 = -2147483647i;
    var var_1 = vec4<bool>(true, func_2(), any(vec2<bool>((arg_3.a.c >= global0.x) | (22189u != arg_3.a.c), true)), !all(global1.b));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(280f, -1000f) - vec2<f32>(-662f, 1000f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(189f, 783f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -265f))), !vec2<bool>(arg_3.d.b.x, false)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(452f, -874f)))))));
    var_1 = select(vec4<bool>(false, var_1.x, !(~arg_3.a.c != arg_3.d.c), all(vec3<bool>(false, 4294967295u >= global0.x, !global1.d))), !select(!(!vec4<bool>(true, false, var_1.x, true)), !select(vec4<bool>(arg_1.a, arg_3.a.b.x, global1.b.x, true), vec4<bool>(true, false, arg_3.d.d, arg_3.a.d), arg_1.a), any(vec4<bool>(var_1.x, false, arg_3.a.d, arg_1.a))), false);
    return ~(25649i << (~_wgslsmith_mod_u32(global0.x & 47559u, ~arg_3.d.c) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(global1.a.x, -45982i, 1i), reverseBits(select(_wgslsmith_mod_vec3_i32(global1.a.wwz, vec3<i32>(30786i, global1.a.x, -11511i)), vec3<i32>(-global1.a.x, global1.a.x, global1.a.x), global1.b.x)));
    global1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(func_1(global1.d, Struct_2(global1.d, var_0), 46970i, Struct_3(Struct_1(global1.a, global1.b, u_input.a, false), global1.a.xz, 1i, Struct_1(vec4<i32>(31544i, var_0.x, 20799i, global1.a.x), vec2<bool>(global1.d, global1.b.x), u_input.a, false), global1.a)), 2051i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.x, 0i), ~global1.a.x), min(var_0.x ^ 44077i, -30476i), global1.a.x), -vec4<i32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)), !vec2<bool>(!any(vec3<bool>(true, global1.d, global1.d)), true), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a | 0u, reverseBits(u_input.a)), vec2<u32>(17931u, ~4294967295u) << (min(vec2<u32>(4294967295u, u_input.a), vec2<u32>(42986u, 91419u) >> (vec2<u32>(global0.x, global1.c) % vec2<u32>(32u))) % vec2<u32>(32u))), any(global1.b));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(global1.a.x, abs(global1.a.x)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.x, -var_0.x)), countOneBits(vec2<i32>(_wgslsmith_clamp_i32(1i, 15178i, var_0.x), -11739i))), (func_4(select(vec2<u32>(global1.c, 1512u), vec2<u32>(1u, 1u), vec2<bool>(false, false)), abs(vec3<u32>(global0.x, global1.c, 86591u)), Struct_2(global1.b.x, var_0)) ^ firstTrailingBit(_wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(var_0.x, -5182i, -3685i, global1.a.x)))) << (global0.x % 32u), var_0.x);
    global1 = Struct_1(-vec4<i32>(~(-1i), _wgslsmith_clamp_i32(-global1.a.x, _wgslsmith_dot_vec2_i32(var_1.zw, var_1.zx), 8809i | var_0.x), var_1.x, -153i), !select(global1.b, !(!global1.b), false), ~(~abs(firstLeadingBit(4294967295u))), all(!select(select(vec3<bool>(true, true, true), vec3<bool>(global1.d, global1.b.x, false), vec3<bool>(global1.d, false, true)), select(vec3<bool>(global1.d, true, global1.b.x), vec3<bool>(true, true, true), vec3<bool>(global1.b.x, global1.b.x, global1.b.x)), true)));
    let var_2 = ~var_1.x;
    let var_3 = !vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-336f + -1166f) + _wgslsmith_f_op_f32(1313f + 1884f)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -446f))));
    global1 = Struct_1(max(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -48061i, -2147483647i, 1i), select(global1.a, vec4<i32>(0i, 9590i, var_0.x, -28387i), vec4<bool>(false, global1.d, false, false))), ~(~vec4<i32>(2147483647i, global1.a.x, var_2, 0i))) ^ -(vec4<i32>(var_1.x, global1.a.x, -37400i, var_0.x) & ~vec4<i32>(var_1.x, 22894i, 2147483647i, var_2)), var_3, 4294967295u, !(!all(select(var_3, global1.b, var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(min(u_input.a ^ global1.c, _wgslsmith_div_u32(global0.x, 0u)), _wgslsmith_mult_u32(global0.x, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(127f, 815f, 1000f), vec3<f32>(708f, -463f, -1000f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-998f, 395f, -1550f) * vec3<f32>(501f, 308f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(748f, -506f, -424f) - vec3<f32>(165f, -450f, 177f)) * vec3<f32>(-1447f, -1166f, -562f))))), -378f, -firstLeadingBit(var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(481f, _wgslsmith_f_op_f32(floor(454f)), _wgslsmith_f_op_f32(-1000f - 1878f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1507f, -2444f, -1528f))))));
}

