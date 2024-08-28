struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(2147483647i, 24157i, i32(-2147483648), 50597i), Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, false, false)), 995f, vec4<bool>(false, false, true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.a, u_input.a);
    global0 = Struct_2(global0.a, Struct_1(!global0.b.b.xz, select(select(select(global0.b.b, arg_2.b, global0.b.b), global0.d, true), arg_2.b, arg_0.x | (arg_0.x && true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1178f, 927f) + global0.c), arg_2.b);
    let var_1 = countOneBits(~min(abs(~vec3<u32>(var_0, 45390u, 0u)), vec3<u32>(~1u, _wgslsmith_clamp_u32(u_input.b, 4294967295u, 45599u), var_0)));
    var var_2 = Struct_2(-vec4<i32>(select(global0.a.x >> (u_input.e % 32u), -u_input.c.x, true), _wgslsmith_add_i32(u_input.c.x, 12258i), 1i, u_input.d.x), arg_2, _wgslsmith_f_op_f32(-arg_1), vec4<bool>(45527u > (_wgslsmith_add_u32(15790u, u_input.b) & reverseBits(var_1.x)), !global0.b.a.x, true, all(select(vec4<bool>(arg_0.x, arg_0.x, global0.d.x, false), global0.b.b, global0.d.x))));
    var var_3 = Struct_2(u_input.d, Struct_1(vec2<bool>(max(-1i, u_input.d.x) == 1i, global0.a.x < global0.a.x), var_2.d), var_2.c, select(!vec4<bool>(false, true, true | arg_0.x, var_2.b.a.x), arg_2.b, all(global0.b.b)));
    return ~(~(_wgslsmith_add_vec3_u32(firstLeadingBit(var_1), var_1) >> (~(~var_1) % vec3<u32>(32u))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(u_input.c, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + 1065f), global0.d);
    var var_1 = !all(global0.d.yxx);
    var var_2 = abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, abs(59623u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.e, u_input.b))), abs(vec3<u32>(86753u, u_input.a.x, u_input.e)) ^ ~vec3<u32>(u_input.b, u_input.e, 1u), vec3<u32>(_wgslsmith_mod_u32(1u, 1u), u_input.e, u_input.e))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(~firstTrailingBit(9699u), ~_wgslsmith_add_u32(u_input.e, u_input.a.x), reverseBits(u_input.a.x) << (u_input.a.x % 32u)), min(vec3<u32>(4494u, 90626u, u_input.a.x) >> (select(vec3<u32>(15702u, u_input.a.x, 30508u), vec3<u32>(5489u, u_input.e, u_input.a.x), vec3<bool>(var_0.d.x, true, false)) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.b, abs(40141u))), abs(~func_3(global0.d.zw, 2087f, Struct_1(vec2<bool>(var_0.d.x, var_0.d.x), var_0.b.b))));
    let var_3 = Struct_1(var_0.d.ww, select(vec4<bool>(all(var_0.d.xxz), false, u_input.d.x != (0i & global0.a.x), all(var_0.d.yzw)), !vec4<bool>(global0.d.x, !var_0.b.a.x, var_0.b.b.x, -2147483647i != u_input.d.x), global0.b.b.x));
    var var_4 = var_3;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: i32) -> vec2<bool> {
    global0 = arg_2;
    global0 = arg_2;
    let var_0 = global0.c;
    var var_1 = arg_0.b.yww;
    let var_2 = ~_wgslsmith_mult_vec2_i32(~(~u_input.d.zz), max(vec2<i32>(18250i, 2147483647i), global0.a.zy));
    return select(vec2<bool>(all(arg_0.b), !arg_0.b.x), vec2<bool>(arg_2.b.a.x | select(!var_1.x, var_1.x, all(arg_0.b.yzx)), !any(vec4<bool>(var_1.x, false, false, true))), 54135u > ~arg_1.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global0 = Struct_2(~(-(vec4<i32>(0i, -1i, 1i, 48857i) | _wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), Struct_1(func_4(Struct_1(arg_1.b.zx, vec4<bool>(global0.b.b.x, global0.b.a.x, arg_0.d.x, arg_1.a.x)), firstLeadingBit(abs(vec4<u32>(0u, u_input.e, u_input.b, 66639u))), Struct_2(-arg_0.a, func_2(), 532f, select(arg_0.b.b, arg_0.d, arg_0.d.x)), 1i), arg_1.b), 1428f, !func_2().b);
    global0 = Struct_2(countOneBits(-_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.a.x, global0.a.x, -2147483647i, global0.a.x)), ~u_input.c)), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * global0.c) - -780f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c)))))), vec4<bool>(true, false, arg_1.a.x, true));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-794f, _wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(-global0.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, global0.c, global0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(462f, 751f, 1644f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, arg_0.c)))), vec3<bool>(true, u_input.d.x < global0.a.x, !arg_1.b.x != (global0.d.x | global0.d.x)))) * vec3<f32>(_wgslsmith_f_op_f32(step(258f, arg_0.c)), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(sign(-471f))), global0.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -915f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-209f - -1057f)), _wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = all(!vec3<bool>(false, select(true, false, true), true));
    return _wgslsmith_sub_i32(arg_0.a.x & -(i32(-1i) * -u_input.d.x), select(_wgslsmith_sub_i32(arg_0.a.x, 6535i), ~u_input.d.x, global0.c >= arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(u_input.b, 15940u), ~u_input.b, 0u);
    var var_1 = Struct_2(global0.a, global0.b, -768f, global0.b.b);
    var var_2 = !var_1.b.b.xw;
    global0 = Struct_2(vec4<i32>(firstTrailingBit(var_1.a.x) & _wgslsmith_sub_i32(u_input.d.x, -30212i), var_1.a.x, firstTrailingBit(min(func_1(Struct_2(u_input.d, global0.b, var_1.c, vec4<bool>(true, true, true, global0.b.a.x)), var_1.b), _wgslsmith_mult_i32(-6231i, 187i))), u_input.d.x), global0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1139f, _wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_f_op_f32(-global0.c))), var_1.d);
    let var_3 = firstTrailingBit(_wgslsmith_mult_vec3_i32(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-37255i, 1i, 179i), vec3<i32>(-72654i, global0.a.x, 70539i)), ~u_input.d.zzx, ~vec3<i32>(8685i, 1i, u_input.c.x)), vec3<i32>(global0.a.x, firstTrailingBit(max(39867i, u_input.d.x)), var_1.a.x)));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.e, u_input.a.x, ~1u), reverseBits((~vec3<u32>(1u, 4294967295u, var_0.x) & vec3<u32>(u_input.b, 0u, var_0.x)) ^ ~(~vec3<u32>(1u, 20412u, var_0.x))));
    let var_4 = Struct_2(firstLeadingBit(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_1.a.x, -1i, -30731i), vec4<i32>(-1i, 2147483647i, 0i, var_1.a.x)))) | abs(abs(u_input.d)), Struct_1(!vec2<bool>(true, var_1.b.b.x), var_1.d), _wgslsmith_f_op_f32(round(var_1.c)), !select(global0.d, select(var_1.d, !vec4<bool>(var_2.x, var_1.d.x, var_1.b.b.x, var_1.b.b.x), select(var_1.b.b, var_1.d, global0.b.a.x)), !(!var_1.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, u_input.a.x), vec4<u32>(44784u, var_0.x, var_0.x, u_input.a.x), vec4<u32>(39595u, 1286u, 0u, 1u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b, 99092u, u_input.b), vec4<u32>(29072u, 4294967295u, 14251u, u_input.a.x))) >> (vec4<u32>(~u_input.b, 0u, _wgslsmith_sub_u32(1u, var_0.x), ~0u) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(53216u), u_input.e | var_0.x), u_input.b, 29995u, 29704u) % vec4<u32>(32u)), global0.c);
}

