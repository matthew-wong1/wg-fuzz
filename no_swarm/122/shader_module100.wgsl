struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 1u), vec3<i32>(i32(-2147483648), -1i, -4258i), 1i, vec4<f32>(1000f, 693f, -1120f, 449f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(vec2<u32>(0u, ~4294967295u), arg_0.yzw, 0i, global0.d);
    var_0 = arg_3;
    global0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(min(max(arg_3.a, arg_3.a), vec2<u32>(var_0.a.x, arg_1.x)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, 0u), arg_3.a))), firstTrailingBit(countOneBits(~arg_3.a.x))), ~vec3<i32>(-17076i, _wgslsmith_dot_vec2_i32(global0.b.zz, -vec2<i32>(u_input.e.x, -16788i)), arg_3.c), firstLeadingBit(~(-var_0.c)), _wgslsmith_f_op_vec4_f32(-arg_3.d));
    var var_1 = select(2147483647i, 30742i, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, u_input.b), vec3<u32>(4294967295u << (global0.a.x % 32u), ~0u, min(40898u, 29775u))) != arg_3.a.x);
    let var_2 = u_input.e.x;
    return !(!vec3<bool>(firstLeadingBit(var_0.a.x) == arg_3.a.x, true | any(vec2<bool>(true, false)), true & (97453u != global0.a.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = abs(abs(1u));
    var var_1 = firstTrailingBit(~_wgslsmith_mod_u32(global0.a.x, abs(17482u))) & (global0.a.x << ((~var_0 << (~(~50659u) % 32u)) % 32u));
    var var_2 = !select(vec3<bool>(true, true, true), func_3(~reverseBits(vec4<i32>(1i, global0.b.x, -1i, global0.b.x)), global0.a, Struct_2(_wgslsmith_div_f32(-201f, global0.d.x)), Struct_1(global0.a, vec3<i32>(1i, u_input.c, global0.c), u_input.e.x & -95i, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, -196f, 1229f, global0.d.x) * vec4<f32>(-1153f, 168f, global0.d.x, -1274f)))), select(select(func_3(vec4<i32>(global0.c, global0.c, 2669i, global0.b.x), global0.a, Struct_2(global0.d.x), Struct_1(global0.a, vec3<i32>(u_input.a.x, 21216i, u_input.a.x), -1i, global0.d)), vec3<bool>(true, true, true), var_0 <= u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), false));
    let var_3 = Struct_1(vec2<u32>(~(~global0.a.x), _wgslsmith_dot_vec2_u32(global0.a, ~global0.a | global0.a)), _wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, 21569i), vec3<i32>(-1i, u_input.c, 2147483647i)), abs(global0.b)), reverseBits(min(global0.b, u_input.e.ywy)) << (vec3<u32>(countOneBits(global0.a.x), _wgslsmith_sub_u32(4294967295u, 11966u), global0.a.x) % vec3<u32>(32u))), reverseBits(12173i), global0.d);
    var_2 = !(!func_3(select(vec4<i32>(0i, global0.c, global0.b.x, var_3.b.x), vec4<i32>(-4219i, 0i, 5112i, -23937i), select(vec4<bool>(false, false, false, true), vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(var_2.x, var_2.x, false, true))), ~vec2<u32>(u_input.b, var_3.a.x), Struct_2(939f), Struct_1(firstLeadingBit(global0.a), min(var_3.b, global0.b), 0i, _wgslsmith_f_op_vec4_f32(-var_3.d))));
    return Struct_1(vec2<u32>(1u, 488u), ~reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.b.x, global0.c, u_input.a.x) >> (vec3<u32>(20668u, 1u, var_0) % vec3<u32>(32u)), global0.b)), firstTrailingBit(_wgslsmith_mult_i32(abs(-20682i) ^ _wgslsmith_dot_vec2_i32(var_3.b.zx, global0.b.yx), var_3.c)), var_3.d);
}

fn func_1() -> f32 {
    var var_0 = global0.a.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.d.x, -2513f))));
    let var_2 = ~13720u;
    var_1 = Struct_2(163f);
    global0 = func_2();
    return func_2().d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec3_i32(global0.b ^ (vec3<i32>(0i, global0.b.x, u_input.c) | max(global0.b, global0.b)), -_wgslsmith_sub_vec3_i32(select(global0.b, global0.b, true), firstTrailingBit(u_input.a.xwy)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f * global0.d.x) - _wgslsmith_f_op_f32(global0.d.x + -468f)), -684f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + 739f) + _wgslsmith_f_op_f32(-global0.d.x)) + _wgslsmith_div_f32(-1213f, _wgslsmith_f_op_f32(func_1()))));
    global0 = Struct_1(firstTrailingBit(global0.a) & _wgslsmith_clamp_vec2_u32(global0.a, ~max(global0.a, global0.a), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global0.a.x), global0.a))), vec3<i32>(_wgslsmith_sub_i32((i32(-1i) * -2630i) ^ var_0.x, -1i), -_wgslsmith_clamp_i32(-1i, -1i, u_input.d) ^ min(u_input.a.x, -global0.c), abs(countOneBits(var_0.x))), reverseBits(min(i32(-1i) * -1i, _wgslsmith_add_i32(u_input.c, -48594i)) | global0.b.x), _wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(func_2().d * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.d, vec4<f32>(-206f, 402f, var_1.x, 1159f), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, 971f, -440f, var_1.x) * global0.d)))));
    let var_2 = u_input.b;
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-659f - _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(select(global0.d.x, var_1.x, true))))), var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(-global0.d.zwx));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.d.xyz)))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1089f, global0.d.x, var_1.x) + global0.d.zyx), vec3<f32>(-566f, -1681f, -560f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-550f, _wgslsmith_f_op_f32(-514f * global0.d.x), -837f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.d.x, global0.d.x))), func_2().d.x, var_1.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.d.xyy)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 104f, -1000f))))) - vec3<f32>(_wgslsmith_f_op_f32(func_2().d.x - var_1.x), _wgslsmith_f_op_f32(trunc(-892f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(max(-198f, 167f))))));
    var var_3 = -global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_i32(~(vec4<i32>(-2147483647i, u_input.d, var_0.x, var_0.x) >> (vec4<u32>(49279u, var_2, global0.a.x, 1u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, u_input.c, global0.b.x, 17464i), u_input.a)), global0.d.x, vec4<u32>(firstLeadingBit(select(var_2, 1u, true)) >> (41755u % 32u), var_2, _wgslsmith_mult_u32(select(0u >> (1u % 32u), ~25305u, any(vec3<bool>(false, false, true))), 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a.x, var_2, 20872u) << (vec4<u32>(u_input.b, var_2, 23224u, var_2) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, global0.a.x, global0.a.x, var_2))), _wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(func_1())), global0.d.x);
}

