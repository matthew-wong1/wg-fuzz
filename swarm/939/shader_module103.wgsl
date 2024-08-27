struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_2,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32>;

var<private> global2: vec4<i32> = vec4<i32>(0i, -1i, 3521i, 11003i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: bool) -> f32 {
    global2 = vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(global2.x & u_input.b, ~(-1011i), u_input.b, arg_1 >> (1u % 32u)));
    global0 = countOneBits(1i);
    var var_0 = global1.x;
    global0 = -global2.x;
    let var_1 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-725f, global1.x))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    global2 = ~_wgslsmith_mult_vec4_i32(select(reverseBits(select(vec4<i32>(47795i, arg_0.a.c, arg_0.b.c, 59550i), vec4<i32>(-2147483647i, -20946i, arg_0.c.c, 62449i), arg_0.d.x)), firstTrailingBit(vec4<i32>(40917i, -2147483647i, global2.x, -9579i)), !select(arg_0.e, arg_0.e, vec4<bool>(arg_0.e.x, false, true, true))), _wgslsmith_mult_vec4_i32(~(vec4<i32>(arg_0.b.c, 1i, global2.x, 0i) << (vec4<u32>(68852u, 21103u, 4294967295u, arg_0.c.b) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(arg_0.c.c, u_input.b), u_input.b, arg_0.b.c, u_input.a)));
    global0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(select(arg_0.b.c, 2147483647i, true), global2.x), -(_wgslsmith_sub_i32(firstLeadingBit(u_input.b), 1i) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.a.d, arg_0.c.e), 0u) % 32u)));
    return arg_0.a.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    global2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-select(abs(-1i), ~global2.x, true), firstLeadingBit(global2.x), -21642i, _wgslsmith_div_i32(abs(u_input.a >> (11521u % 32u)), global2.x & _wgslsmith_dot_vec2_i32(global2.xw, vec2<i32>(global2.x, u_input.b)))), vec4<i32>(func_3(Struct_2(arg_0, Struct_1(61817u, arg_0.d, -36152i, 12774u, 1u), arg_0, !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, false, false)), Struct_3(global1.x)), _wgslsmith_add_i32(u_input.b, min(u_input.b, ~1i)), -_wgslsmith_add_i32(14396i ^ global2.x, firstTrailingBit(arg_0.c)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(global2.yzy), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c, arg_0.c, -15862i), vec3<i32>(-29633i, 36434i, -43573i))), min(min(vec3<i32>(global2.x, 33987i, u_input.a), global2.xyw), select(global2.xyz, global2.xzy, arg_1.x)))));
    var var_0 = true;
    let var_1 = 12188u;
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-354f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(588f, global1.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.zx)))))), Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, arg_0.a) >> (vec2<u32>(17619u, arg_0.b) % vec2<u32>(32u)), vec2<u32>(var_1, 18593u)), ~1u, _wgslsmith_dot_vec4_i32(vec4<i32>(-1549i, arg_0.c, arg_0.c, global2.x), vec4<i32>(-2147483647i, -6340i, -13291i, 4358i)), var_1, min(_wgslsmith_dot_vec2_u32(vec2<u32>(36053u, arg_0.d), vec2<u32>(var_1, 15661u)), 4294967295u)), Struct_1(var_1, 0u, arg_0.c, ~1u, 1u), Struct_1(countOneBits(var_1), arg_0.d, -(~u_input.a), ~_wgslsmith_sub_u32(var_1, arg_0.e), 1u), !select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, arg_1.x), vec3<bool>(true, true, arg_1.x), vec3<bool>(true, false, arg_1.x)), !vec3<bool>(true, false, arg_1.x)), select(!select(vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, true, true, arg_1.x), arg_1.x), vec4<bool>(true, arg_1.x, !arg_1.x, arg_0.e != 4294967295u), vec4<bool>(43324u <= arg_0.a, any(arg_1), -2147483647i <= global2.x, true))), arg_0.c, vec3<bool>(~34418u == arg_0.a, arg_1.x, true));
    let var_3 = _wgslsmith_mult_i32(1i, -40117i);
    return var_2.c;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(54519u, select(~(_wgslsmith_sub_u32(arg_1.c.b, arg_1.b.a) ^ abs(4294967295u)), 57552u, true), -14168i, arg_1.b.e, firstLeadingBit(~_wgslsmith_sub_u32(arg_1.c.e, arg_1.c.e)) & ~(~(~14692u)));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.x)), 263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_3) + -1414f), arg_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, global1.x, arg_0.x, 1292f) + vec4<f32>(arg_0.x, arg_3, -1005f, arg_2.x))))))));
    var var_1 = arg_1.a;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0, vec3<f32>(-273f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, global1.x) + arg_0.x), _wgslsmith_f_op_f32(abs(416f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1409f), arg_0.x)) + _wgslsmith_f_op_f32(floor(arg_2.x))), arg_0.x, arg_3));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)) * arg_2.x))));
    return Struct_1(countOneBits(~abs(abs(var_0.e))), var_0.a, global2.x, var_0.e, reverseBits(22187u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = arg_0.c;
    global1 = vec4<f32>(-493f, _wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(floor(-851f)), _wgslsmith_f_op_f32(min(-213f, global1.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f)))) * -2538f);
    var var_2 = 37337u;
    var_1 = _wgslsmith_f_op_f32(-global1.x);
    return arg_1;
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -196f, 149f, -213f) - vec4<f32>(arg_0.a.a, global1.x, arg_0.a.a, arg_0.b.x)) + vec4<f32>(arg_0.b.x, global1.x, global1.x, -885f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.a, -1192f, arg_0.a.a, arg_0.a.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, arg_0.a.a, global1.x, 2765f) + vec4<f32>(arg_0.a.a, 337f, arg_0.b.x, -1000f)))))));
    let var_0 = _wgslsmith_mult_i32(u_input.a, select(_wgslsmith_sub_i32(abs(-1i), 14988i), arg_0.d, arg_1)) << (arg_0.c.c.b % 32u);
    var var_1 = _wgslsmith_f_op_f32(abs(global1.x));
    let var_2 = arg_0.e;
    let var_3 = arg_0.a;
    return Struct_2(arg_0.c.a, func_5(arg_0.c.b, arg_0.c, vec3<u32>(arg_0.c.a.d, ~(~24988u), 34884u), ~countOneBits(vec4<u32>(arg_0.c.a.b, 117414u, 17022u, 4294967295u) ^ vec4<u32>(63187u, arg_0.c.b.e, 4294967295u, arg_0.c.b.d))).b, Struct_1(_wgslsmith_mult_u32(arg_0.c.a.b, _wgslsmith_mult_u32(firstLeadingBit(arg_0.c.b.b), func_2(arg_0.c.c, arg_3).c.a)), ~(~28781u), _wgslsmith_sub_i32(13352i ^ _wgslsmith_sub_i32(global2.x, arg_0.c.b.c), 0i), 1u, _wgslsmith_clamp_u32(arg_0.c.b.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(25980u, 30925u, 4294967295u, 31829u), vec4<u32>(0u, 26712u, arg_0.c.a.b, 4294967295u) | vec4<u32>(0u, arg_0.c.b.a, 20920u, 24516u)), arg_0.c.b.d)), vec3<bool>(arg_3.x, false, true), vec4<bool>(!arg_1, (39387u >> (_wgslsmith_mult_u32(arg_0.c.a.e, 4294967295u) % 32u)) >= ~firstLeadingBit(4294967295u), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -max(_wgslsmith_sub_i32(1i, -1i), global2.x);
    var var_1 = global1.x;
    var var_2 = func_6(Struct_4(Struct_3(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, global1.x, global1.x, global1.x))), ~(-50140i), true))), global1.wz, func_5(func_4(_wgslsmith_f_op_vec3_f32(global1.zwz - global1.wzx), func_2(Struct_1(37795u, 10476u, -12926i, 40921u, 1u), vec2<bool>(true, false)), vec3<f32>(global1.x, global1.x, global1.x), _wgslsmith_f_op_f32(step(-707f, -1197f))), func_2(Struct_1(4550u, 4294967295u, global2.x, 4294967295u, 41480u), vec2<bool>(true, false)), vec3<u32>(func_4(global1.zwy, Struct_2(Struct_1(7007u, 59610u, 11793i, 35447u, 109383u), Struct_1(36281u, 37884u, 72810i, 69746u, 4294967295u), Struct_1(0u, 0u, 2147483647i, 42678u, 31512u), vec3<bool>(true, true, false), vec4<bool>(false, true, false, false)), global1.wyy, -1333f).a, ~85423u, ~0u), vec4<u32>(1u, 1u, 1u, 1u)), -countOneBits(countOneBits(27071i)), vec3<bool>(func_5(func_5(Struct_1(4294967295u, 14744u, 5451i, 71667u, 1u), Struct_2(Struct_1(76229u, 53282u, var_0, 4294967295u, 4294967295u), Struct_1(1u, 4294967295u, global2.x, 39233u, 4294967295u), Struct_1(2315u, 45131u, 0i, 31333u, 0u), vec3<bool>(true, true, false), vec4<bool>(false, false, true, false)), vec3<u32>(4294967295u, 1u, 4294967295u), vec4<u32>(80042u, 35047u, 68906u, 87582u)).c, func_2(Struct_1(30522u, 3008u, global2.x, 4294967295u, 0u), vec2<bool>(false, true)), vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(70501u, 43726u, 19630u, 4294967295u), vec4<u32>(10501u, 0u, 1u, 0u))).e.x, true, true)), !any(func_5(func_5(Struct_1(4294967295u, 55091u, u_input.b, 39457u, 21880u), Struct_2(Struct_1(4294967295u, 0u, var_0, 76521u, 0u), Struct_1(7876u, 1u, u_input.b, 4294967295u, 4294967295u), Struct_1(4294967295u, 1u, u_input.b, 18368u, 0u), vec3<bool>(true, false, true), vec4<bool>(false, true, false, true)), vec3<u32>(4294967295u, 31429u, 92274u), vec4<u32>(35655u, 36336u, 4294967295u, 4294967295u)).a, Struct_2(Struct_1(15765u, 4294967295u, 2147483647i, 45037u, 4294967295u), Struct_1(3525u, 4294967295u, -2147483647i, 0u, 1u), Struct_1(23998u, 4294967295u, var_0, 0u, 0u), vec3<bool>(false, false, false), vec4<bool>(false, false, false, false)), vec3<u32>(60928u, 12554u, 4294967295u), ~vec4<u32>(0u, 5288u, 0u, 53479u)).e.wy), vec3<i32>(-32175i, u_input.a, ~_wgslsmith_sub_i32(1i & u_input.b, ~0i)), !func_5(Struct_1(1u, 4294967295u, _wgslsmith_add_i32(u_input.a, var_0), _wgslsmith_mult_u32(69784u, 0u), 1u), Struct_2(Struct_1(3460u, 96452u, global2.x, 4294967295u, 133155u), func_4(global1.xxx, Struct_2(Struct_1(10906u, 4736u, global2.x, 13521u, 1u), Struct_1(0u, 0u, global2.x, 1u, 4294967295u), Struct_1(0u, 31209u, -2120i, 1u, 7974u), vec3<bool>(false, true, true), vec4<bool>(false, false, false, true)), global1.xzz, -783f), func_4(vec3<f32>(522f, -987f, global1.x), Struct_2(Struct_1(33405u, 7089u, u_input.b, 4294967295u, 1u), Struct_1(0u, 19350u, u_input.a, 0u, 0u), Struct_1(65517u, 4294967295u, 1i, 7887u, 0u), vec3<bool>(true, true, false), vec4<bool>(false, false, false, false)), vec3<f32>(-1859f, global1.x, global1.x), -1526f), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec4<bool>(true, true, true, true)), ~vec3<u32>(0u, 4294967295u, 18188u), reverseBits(vec4<u32>(4294967295u, 0u, 37855u, 49193u))).e.xz);
    var var_3 = global2.zy;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -281f)), _wgslsmith_div_vec2_f32(global1.xz, global1.xy), select(var_2.d.x, false, var_2.e.x)))))));
    let var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-361f)) + _wgslsmith_f_op_f32(step(-1000f, global1.x)))), -545f), global1.zyz, _wgslsmith_sub_vec2_u32(~(~(vec2<u32>(41686u, var_2.b.b) | vec2<u32>(var_2.c.a, 0u))), ~(~vec2<u32>(var_2.b.e, var_2.c.a))));
}

