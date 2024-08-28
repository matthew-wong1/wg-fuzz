struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

var<private> global1: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    global1 = ~(_wgslsmith_add_vec3_u32(max(vec3<u32>(arg_2.c.x, 7573u, 19785u), vec3<u32>(0u, 0u, 1u)) << (u_input.a % vec3<u32>(32u)), vec3<u32>(4294967295u, 1u, 0u) >> (vec3<u32>(arg_2.b.x, arg_2.b.x, 0u) % vec3<u32>(32u))) >> ((vec3<u32>(66892u, _wgslsmith_add_u32(arg_2.b.x, u_input.a.x), min(global1.x, 1u)) ^ _wgslsmith_mult_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 29322u, global1.x), vec3<u32>(4294967295u, arg_2.c.x, 0u)))) % vec3<u32>(32u)));
    var var_0 = -523f;
    global0 = array<vec4<i32>, 14>();
    global1 = abs(_wgslsmith_mult_vec3_u32(vec3<u32>(~arg_2.b.x, 53571u, ~4294967295u) << (~vec3<u32>(59546u, arg_2.c.x, 0u) % vec3<u32>(32u)), countOneBits(~vec3<u32>(31567u, 27082u, 47304u))));
    var var_1 = u_input.b.xyx;
    return Struct_1(vec4<f32>(169f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.d.b))), 578f), _wgslsmith_f_op_f32(f32(-1f) * -1937f));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = true;
    global0 = array<vec4<i32>, 14>();
    var var_1 = -2147483647i;
    global1 = ~select(_wgslsmith_add_vec3_u32(reverseBits(countOneBits(vec3<u32>(global1.x, global1.x, u_input.a.x))), vec3<u32>(global1.x & global1.x, ~73313u, 4294967295u << (global1.x % 32u))), ~reverseBits(arg_0.b.xyw) & vec3<u32>(4294967295u, ~1u, _wgslsmith_clamp_u32(56060u, 4294967295u, 8042u)), true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.a.a + arg_0.a.a), _wgslsmith_f_op_f32(abs(1032f)));
    return 800f;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = true;
    var var_1 = Struct_2(func_2(true, firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(55421i, arg_0), i32(-1i) * -21968i)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(263f, 495f, 982f, 881f)), _wgslsmith_f_op_f32(-1008f * -520f)), ~vec4<u32>(global1.x, 47870u, 53813u, u_input.a.x), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1.x), global1.yx)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, -1210f, -723f, -2957f)), 589f))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(34817u, global1.x, 16265u, global1.x), vec4<u32>(global1.x, u_input.a.x, 35505u, 12552u)), vec4<u32>(global1.x, 4294967295u, global1.x, global1.x) & vec4<u32>(u_input.a.x, 1u, 2908u, 4294967295u)) | _wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 17191u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u))), vec4<u32>(~20645u, ~54466u, abs(127597u), abs(u_input.a.x)), abs(select(vec4<u32>(4294967295u, global1.x, global1.x, 7308u), vec4<u32>(u_input.a.x, u_input.a.x, global1.x, global1.x), false))), u_input.a.zz, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-2183f * -1464f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2612f)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(-905f, -667f, 1265f, -792f), 656f), vec4<u32>(37430u, 1u, global1.x, global1.x), u_input.a.yy, Struct_1(vec4<f32>(-1401f, 446f, 395f, -1783f), -993f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(2077f, 1067f, false))))), -1039f));
    var_0 = all(!select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), !select(false, false, false)));
    var var_2 = var_1.a;
    var var_3 = false;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 972f, 1806f, -249f)))), !(var_1.c.x < 81195u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-568f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_div_f32(var_2.a.x, 633f)))))), vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(var_1.b.zxx, u_input.a)), u_input.a.x), var_1.b.x, ~(~u_input.a.x), 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 0u), ~(~(~global1.zy))), func_2(false, -((u_input.b.x | arg_0) << (var_1.b.x % 32u)), Struct_2(func_2(true, reverseBits(arg_0), Struct_2(var_1.a, vec4<u32>(4294967295u, 35158u, 162u, 18164u), global1.xx, var_1.a)), abs(var_1.b), _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.b.x, u_input.a.x), firstLeadingBit(vec2<u32>(var_1.c.x, 1u))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.x, -871f, var_1.d.b, -672f))), var_1.a.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = Struct_2(arg_0.a, select(~vec4<u32>(61050u, 0u, 25113u, u_input.a.x), arg_0.b, select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false), true)) >> (~vec4<u32>(14654u, 22979u, arg_0.b.x & arg_0.b.x, ~0u) % vec4<u32>(32u)), ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 2079u, u_input.a.x), arg_0.b), 15789u)), arg_0.d);
    global1 = firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 76954u, 4294967295u), _wgslsmith_mod_vec3_u32(arg_0.b.zwz, vec3<u32>(global1.x, 7542u, 4294967295u)))) << (u_input.a % vec3<u32>(32u));
    var var_1 = 1i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_0.a.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.a.a.x, 784f, true)), arg_0.a.b)))), _wgslsmith_div_f32(var_0.d.b, var_0.a.a.x))));
    var var_3 = func_1(arg_1).a.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -961f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    let var_0 = _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(u_input.b.xy, vec2<i32>(~u_input.b.x, ~819i))), _wgslsmith_div_vec2_i32(~(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yw)), u_input.b.ww & vec2<i32>(min(u_input.b.x, u_input.b.x), 33522i ^ u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(func_4(func_1(abs(~(-139i))), max(_wgslsmith_div_i32(u_input.b.x, 1i), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.xzx, vec3<i32>(u_input.b.x, -2147483647i, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, var_0), vec3<i32>(-1i, 2147483647i, var_0))), 1i))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1000f) - 107f)))));
    global1 = ~vec3<u32>(~func_1(~2147483647i).c.x, ~12741u, global1.x);
    var var_2 = ~vec2<u32>(~global1.x, _wgslsmith_clamp_u32(1607u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(24089u, global1.x, 86327u)), 4294967295u) >> (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(987f);
}

