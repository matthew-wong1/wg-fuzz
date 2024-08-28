struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-1i, 1i), vec2<i32>(427i, 12491i), vec2<i32>(-18072i, -1i), vec2<i32>(2147483647i, 19432i), vec2<i32>(0i, -16593i), vec2<i32>(1i, -75492i));

var<private> global1: Struct_3;

var<private> global2: array<vec3<u32>, 18>;

var<private> global3: array<vec2<i32>, 1>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec4<i32> {
    var var_0 = select(0u, 100730u, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -190f), _wgslsmith_f_op_f32(round(global1.a.c.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.c.x)))));
    var var_1 = firstTrailingBit(vec3<u32>(~select(_wgslsmith_add_u32(1u, arg_0.a.x), 2601u << (1u % 32u), select(arg_1.c.x, true, false)), ~(~global1.d), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 62129u, global1.d, 19457u), vec4<u32>(arg_1.a.x, arg_1.a.x, global1.d, 4294967295u)))));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.d, 44148u), vec2<u32>(36247u, 4294967295u), arg_0.a.yy), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 4294967295u, global1.d, global1.d), vec4<u32>(4294967295u, arg_0.a.x, global1.d, 1u)), _wgslsmith_add_u32(30899u, 36350u))), firstTrailingBit(var_1.zy) | select(arg_1.a.xx, abs(vec2<u32>(20931u, global1.d)), arg_0.d)), arg_0.a.x);
    var var_3 = Struct_2(arg_1.a << ((_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_0.a.x, global1.d), vec3<u32>(var_2, var_2, 47767u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.x, 1u, 1u), global2[_wgslsmith_index_u32(1u, 18u)])) % vec3<u32>(32u)), ~abs(~1i), select(arg_0.c, arg_1.c, arg_0.c), !select(arg_0.d, !select(arg_1.c, vec2<bool>(false, false), false), arg_2));
    return abs(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, firstTrailingBit(firstTrailingBit(0i)), i32(-1i) * -u_input.b, var_3.b), vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -345i, global1.a.a), countOneBits(var_3.b), 28514i, ~(-2147483647i))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = array<vec2<i32>, 6>();
    var var_0 = _wgslsmith_add_vec4_i32(max(func_3(Struct_2(global2[_wgslsmith_index_u32(53172u, 18u)], global1.a.a, vec2<bool>(global1.c, true), select(vec2<bool>(true, global1.c), vec2<bool>(global1.c, global1.c), global1.c)), Struct_2(min(global2[_wgslsmith_index_u32(global1.d, 18u)], vec3<u32>(global1.d, 65109u, 1u)), u_input.b, !vec2<bool>(false, global1.c), !vec2<bool>(global1.c, global1.c)), select(false, global1.c && global1.c, global1.c)), select(~(-vec4<i32>(0i, 3956i, 2147483647i, u_input.a)), ~(-vec4<i32>(33743i, 5019i, u_input.a, u_input.a)), vec4<bool>(true, -560f >= arg_0, global1.c, !global1.c))), _wgslsmith_add_vec4_i32(min(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(global1.a.a, 4825i, global1.a.a, -1i), vec4<i32>(1i, global1.a.a, u_input.b, global1.a.a))), ~vec4<i32>(global1.a.a, 1136i, 2147483647i, 1i) << (~vec4<u32>(global1.d, global1.d, 0u, global1.d) % vec4<u32>(32u))), vec4<i32>(~(-2147483647i), 1i, -1i, u_input.b)));
    var var_1 = global1.a;
    var_0 = -(~select(reverseBits(vec4<i32>(var_1.a, 0i, var_0.x, var_1.a)), vec4<i32>(~var_0.x, firstTrailingBit(u_input.b), -var_0.x, i32(-1i) * -2147483647i), select(!vec4<bool>(global1.c, global1.c, true, global1.c), !vec4<bool>(true, true, false, global1.c), !global1.c)));
    global0 = array<vec2<i32>, 6>();
    return Struct_3(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)), !(!any(select(vec4<bool>(global1.c, false, true, true), vec4<bool>(true, global1.c, global1.c, true), vec4<bool>(global1.c, true, global1.c, true)))), global1.d);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = vec4<bool>(global1.c, false, true, false);
    global1 = func_2(_wgslsmith_f_op_f32(sign(-400f)));
    let var_1 = vec2<i32>(-(~28270i), max(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_1.a, u_input.a)), vec2<i32>(i32(-1i) * -2147483647i, 0i)), ~firstLeadingBit(~arg_1.a)));
    let var_2 = _wgslsmith_sub_i32(~reverseBits(func_3(Struct_2(vec3<u32>(23025u, 30750u, global1.d), u_input.a, var_0.zy, vec2<bool>(var_0.x, var_0.x)), Struct_2(vec3<u32>(1u, 54526u, 75613u), -1i, vec2<bool>(true, global1.c), vec2<bool>(true, false)), true).x), max(~(-2147483647i), 4202i));
    var var_3 = (reverseBits(~vec2<u32>(0u, global1.d)) | vec2<u32>(max(global1.d, global1.d), _wgslsmith_add_u32(abs(17894u), global1.d))) & _wgslsmith_mod_vec2_u32(~(~min(vec2<u32>(4294967295u, 11084u), vec2<u32>(global1.d, 1u))), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(1u, 18u)], vec3<u32>(37956u, 32298u, 64747u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, global1.d), vec3<u32>(2872u, 0u, 1585u))), _wgslsmith_clamp_u32(68680u, ~global1.d, _wgslsmith_mult_u32(35169u, global1.d))));
    return vec2<u32>(reverseBits(~min(var_3.x, ~54671u)), 4294967295u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_3 {
    global3 = array<vec2<i32>, 1>();
    global3 = array<vec2<i32>, 1>();
    global1 = Struct_3(Struct_1(0i, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.a.c.wwx, vec3<f32>(1343f, global1.b.x, 1459f), false))))), func_2(arg_2.x).a.c), vec3<f32>(-628f, -995f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1895f) + arg_2.x)), any(!vec4<bool>(true, select(global1.c, false, false), global1.c, !global1.c)), ~_wgslsmith_add_u32(~5901u, func_1(_wgslsmith_f_op_vec4_f32(global1.a.c - vec4<f32>(arg_2.x, 1011f, global1.b.x, 616f)), Struct_1(57240i, vec3<f32>(global1.a.b.x, global1.a.b.x, -1290f), vec4<f32>(-255f, arg_2.x, arg_2.x, 1470f))).x));
    let var_0 = vec4<u32>(83723u, arg_1.x, arg_1.x, ~(arg_1.x >> (_wgslsmith_mod_u32(~29149u, abs(arg_1.x)) % 32u)));
    global2 = array<vec3<u32>, 18>();
    return Struct_3(func_2(global1.a.c.x).a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(global1.a.c.yzw))))))), !any(vec2<bool>(false, true)), arg_1.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool) -> StorageBuffer {
    let var_0 = arg_0.a;
    return StorageBuffer(-(~((u_input.a & var_0.a) & (var_0.a >> (68840u % 32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.c.xx - vec2<f32>(_wgslsmith_f_op_f32(-419f - arg_0.a.b.x), arg_0.b.x))), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(~(~abs(vec4<u32>(19850u, global1.d, global1.d, 1u))), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.d, 1u, 1u, ~global1.d), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.d, global1.d, 56375u, global1.d), vec4<u32>(2628u, 51396u, 50568u, global1.d))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b), global1.b), global1.b)), _wgslsmith_mult_vec2_u32(select(~vec2<u32>(28632u, 4294967295u), firstTrailingBit(vec2<u32>(0u, 73459u)), true), (vec2<u32>(1u, global1.d) ^ vec2<u32>(0u, 42415u)) >> (func_1(global1.a.c, global1.a) % vec2<u32>(32u)))), !(!vec4<bool>(true, global1.c, true, global1.c)), global1.c);
}

