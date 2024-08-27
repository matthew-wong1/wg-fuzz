struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-801f, -1000f), vec2<f32>(647f, 167f), vec2<f32>(1582f, 1000f), vec2<f32>(-1040f, -164f), vec2<f32>(269f, -380f), vec2<f32>(-1784f, 1000f), vec2<f32>(1240f, -550f), vec2<f32>(-1241f, -1069f), vec2<f32>(421f, -126f), vec2<f32>(-2097f, 135f), vec2<f32>(1125f, 1441f), vec2<f32>(708f, 414f), vec2<f32>(-2105f, 2357f), vec2<f32>(173f, 855f), vec2<f32>(-1207f, 957f), vec2<f32>(372f, -316f), vec2<f32>(432f, -380f), vec2<f32>(-587f, 1109f), vec2<f32>(1000f, 655f), vec2<f32>(1416f, 357f), vec2<f32>(-173f, -1000f), vec2<f32>(832f, 1762f), vec2<f32>(524f, 761f), vec2<f32>(1341f, 1000f), vec2<f32>(1094f, 1392f), vec2<f32>(335f, -1000f), vec2<f32>(551f, -107f), vec2<f32>(-896f, -282f), vec2<f32>(1000f, 1111f));

var<private> global1: u32;

var<private> global2: array<Struct_5, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> i32 {
    global1 = max(~44909u, ~(~u_input.d.x));
    let var_0 = Struct_1(abs(countOneBits(u_input.a >> (u_input.a % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 4294967295u, u_input.c.x, u_input.a.x)), vec4<u32>(4294967295u, 4294967295u, u_input.d.x, u_input.a.x)) % vec4<u32>(32u))), vec4<i32>(1i, ~76217i, -1i, ~1i), arg_0, true);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(748f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1625f, 763f), _wgslsmith_f_op_f32(862f + -3155f), true)))))));
    let var_2 = vec3<bool>(all(select(select(select(vec3<bool>(var_0.d, true, false), vec3<bool>(var_0.d, true, true), vec3<bool>(true, false, var_0.d)), !vec3<bool>(true, var_0.d, var_0.d), select(var_0.d, var_0.d, true)), select(select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, true, false)), !vec3<bool>(false, true, var_0.d), !var_0.d), select(select(vec3<bool>(false, var_0.d, false), vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(false, var_0.d, true)), select(vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(true, true, var_0.d)), select(vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(var_0.d, true, var_0.d), var_0.d)))), any(select(vec4<bool>(any(vec2<bool>(true, var_0.d)), any(vec3<bool>(true, var_0.d, var_0.d)), all(vec4<bool>(var_0.d, false, true, true)), false), !(!vec4<bool>(var_0.d, var_0.d, false, var_0.d)), false)), true);
    let var_3 = abs(vec4<u32>(abs(u_input.c.x), _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(var_0.a.x, u_input.a.x, _wgslsmith_mod_u32(var_0.a.x, u_input.d.x), var_0.a.x)), var_0.a.x, ~17252u));
    return _wgslsmith_clamp_i32(u_input.b, _wgslsmith_mod_i32(i32(-1i) * -33059i, u_input.e), ~u_input.e) >> (var_0.a.x % 32u);
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global0 = array<vec2<f32>, 29>();
    let var_0 = u_input.a.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1085f, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1728f) - _wgslsmith_f_op_f32(2247f + arg_0.x)))) + arg_0.x), arg_0.x, arg_0.x);
    let var_2 = Struct_1(~(~(~min(u_input.d, vec4<u32>(u_input.c.x, 67207u, u_input.d.x, var_0)))), ~(vec4<i32>(abs(-42070i), firstLeadingBit(5617i), _wgslsmith_div_i32(2147483647i, u_input.b), abs(u_input.e)) << (_wgslsmith_mult_vec4_u32(u_input.d, countOneBits(vec4<u32>(var_0, var_0, 37435u, u_input.a.x))) % vec4<u32>(32u))), -1i, true);
    global0 = array<vec2<f32>, 29>();
    return Struct_2(var_2, var_2, !vec3<bool>(func_3(var_2.b.x) <= u_input.b, true, false));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(u_input.a, vec4<i32>(-16916i, firstTrailingBit(select(_wgslsmith_add_i32(-46339i, -36914i), 0i, all(vec2<bool>(true, false)))), max(~(36676i | u_input.e), _wgslsmith_add_i32(~10639i, -39i)), select(u_input.e, min(u_input.e, countOneBits(0i)), false)), countOneBits(u_input.e), any(vec4<bool>(true, true, true, true)));
    let var_1 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(~10359u, _wgslsmith_dot_vec3_u32(u_input.a.zwz, u_input.d.wwx)), u_input.a.yz & vec2<u32>(15778u, ~1u)), 29u)]);
    var var_2 = false;
    var var_3 = !(!func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(418f, -709f) + vec2<f32>(624f, 649f)), vec2<f32>(-1636f, 288f)))).c.zz);
    let var_4 = _wgslsmith_f_op_f32(step(-2226f, 186f));
    return 1i;
}

fn func_4(arg_0: i32) -> vec4<i32> {
    global1 = u_input.c.x;
    let var_0 = -875f;
    global1 = countOneBits(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mult_u32(select(u_input.c.x, abs(u_input.a.x), true), u_input.a.x)));
    let var_1 = -abs(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, 2147483647i), arg_0));
    global0 = array<vec2<f32>, 29>();
    return select(vec4<i32>(u_input.b, -19225i, max(var_1.x, abs(-2147483647i)) & firstTrailingBit(u_input.b), var_1.x), ~_wgslsmith_mod_vec4_i32(~func_2(global0[_wgslsmith_index_u32(4294967295u, 29u)]).b.b, _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-19254i, -2147483647i, -19306i, 1i)), -vec4<i32>(-2147483647i, 1i, var_1.x, -66115i))), vec4<bool>(!(!any(vec4<bool>(true, false, false, true))), !any(vec3<bool>(true, true, true)), !(_wgslsmith_add_u32(57219u, u_input.a.x) < u_input.a.x), !func_2(vec2<f32>(-1781f, var_0)).a.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 29>();
    let var_0 = Struct_1(vec4<u32>(4294967295u, u_input.a.x, ~41165u, ~4294967295u), func_4(func_1()), -2147483647i, true);
    let var_1 = Struct_5(Struct_1(select(select(vec4<u32>(17707u, var_0.a.x, u_input.c.x, var_0.a.x), min(u_input.a, vec4<u32>(u_input.a.x, u_input.c.x, u_input.d.x, 0u)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, var_0.d), false)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(11625u, u_input.a.x, u_input.c.x, var_0.a.x), vec4<u32>(u_input.a.x, 8013u, u_input.c.x, 25624u)), var_0.a), true), vec4<i32>(-(~2147483647i), -max(u_input.b, 1i), min(func_2(vec2<f32>(-739f, 793f)).a.c, var_0.c), abs(1i)), -2147483647i, any(select(vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(var_0.d, var_0.d, var_0.d), var_0.d))), var_0.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f)) - -755f);
    var var_3 = global2[_wgslsmith_index_u32(var_0.a.x, 26u)];
    var var_4 = _wgslsmith_f_op_f32(var_2 * 1189f);
    global2 = array<Struct_5, 26>();
    let var_5 = ~select(u_input.a.x, abs(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.a.x, 1u), ~var_0.a.x, ~var_1.a.a.x)), var_2 < _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(var_2 - 1913f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wzx, u_input.d.x, select(~vec3<i32>(var_1.b.x, _wgslsmith_mult_i32(var_3.b.x, var_0.c), countOneBits(-2147483647i)), -vec3<i32>(0i, 5835i, u_input.b) >> (u_input.a.wxz % vec3<u32>(32u)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1238f, _wgslsmith_f_op_f32(ceil(-1024f))))) + global0[_wgslsmith_index_u32(1u, 29u)]), ~37366i);
}

