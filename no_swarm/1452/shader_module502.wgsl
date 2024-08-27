struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(24345u, 0i, vec4<bool>(false, true, false, true));

var<private> global1: u32;

var<private> global2: array<i32, 26>;

var<private> global3: array<vec2<bool>, 8>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(Struct_1(1u, i32(-1i) * -35255i, vec4<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(2821i, u_input.a.x), u_input.a.zx) < u_input.a.x, arg_1.c.x, true && (255f == arg_0))), u_input.a, arg_1, Struct_1(1u, _wgslsmith_dot_vec3_i32(-u_input.a.wxy, countOneBits(vec3<i32>(-2147483647i, -2147483647i, 1i) ^ u_input.a.wxy)), vec4<bool>(!global0.c.x, true, !arg_1.c.x, false)), all(!vec3<bool>(all(vec2<bool>(false, true)), !global0.c.x, global0.c.x)));
    let var_1 = arg_1.c.x;
    let var_2 = var_0;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) * _wgslsmith_f_op_f32(trunc(991f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-422f)), arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(arg_0 - arg_0), arg_0);
    var var_4 = _wgslsmith_mod_vec3_i32(~(~(~max(var_2.b.yzw, var_2.b.xzy))), min(vec3<i32>(-18832i, ~var_2.c.b, -33119i) | abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(6530i, -19546i, 2147483647i), vec3<i32>(global0.b, 0i, global2[_wgslsmith_index_u32(global0.a, 26u)]), var_0.b.yyx)), var_0.b.xww));
    return _wgslsmith_dot_vec2_i32(~abs(-var_0.b.yy) ^ vec2<i32>(abs(u_input.a.x), global2[_wgslsmith_index_u32(22540u ^ arg_1.a, 26u)] >> (countOneBits(120407u) % 32u)), var_2.b.yw);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> bool {
    var var_0 = vec4<i32>(countOneBits(_wgslsmith_clamp_i32(33140i << (1u % 32u), func_3(-436f, Struct_1(arg_0.x, global0.b, global0.c)) >> (39212u % 32u), global0.b)), global0.b, 1i, -_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(global0.b, global0.b, 0i, global2[_wgslsmith_index_u32(71025u, 26u)]), vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.a.x)) ^ ~u_input.a));
    global0 = Struct_1(_wgslsmith_mult_u32(arg_0.x, global0.a) >> (0u % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(u_input.a.xzw, var_0.yzz), -(~vec3<i32>(u_input.a.x, global0.b, 0i))), var_0.x), select(select(select(global0.c, !vec4<bool>(arg_1, true, true, global0.c.x), true), global0.c, global0.c), vec4<bool>(true, all(vec2<bool>(global0.c.x, true)), global0.c.x, false), select(select(vec4<bool>(false, global0.c.x, false, global0.c.x), select(vec4<bool>(true, false, arg_1, false), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, true, false, arg_1)), !global0.c), !select(vec4<bool>(false, true, arg_1, true), global0.c, global0.c), _wgslsmith_mult_u32(10515u, arg_0.x) < _wgslsmith_mult_u32(arg_0.x, arg_0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(181f, -1085f, 1000f, -1554f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2387f, -789f, -833f, 767f), vec4<f32>(-870f, -798f, -587f, -1533f), vec4<bool>(arg_1, false, true, global0.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(142f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -133f), 1311f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1049f) + 2257f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -619f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, 1344f, -847f, -342f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, -522f, -985f, -1541f))))));
    global1 = 1u >> (_wgslsmith_div_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.x, global0.a)), arg_0.zz ^ vec2<u32>(39352u, 1u))) % 32u);
    let var_2 = _wgslsmith_mod_i32(~(i32(-1i) * -(u_input.a.x | -20618i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(-9507i, abs(11980i)), u_input.a.x));
    return !(!(!global0.c.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = -1332f;
    var var_1 = Struct_1(abs(~global0.a), 2147483647i, vec4<bool>(true, all(vec2<bool>(true, global0.c.x || true)), any(vec2<bool>(global0.c.x, arg_0.x)) || (_wgslsmith_sub_u32(6565u, 0u) != (0u ^ global0.a)), true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(142f * arg_2)) * _wgslsmith_f_op_f32(arg_1 - arg_2)))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) + _wgslsmith_div_f32(arg_2, 296f)), arg_1)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_1, 1314f)))))));
    var var_4 = _wgslsmith_div_u32(28777u, _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(_wgslsmith_sub_u32(var_1.a, var_1.a)), var_1.a), 0u));
    return Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), firstTrailingBit(vec2<u32>(56608u, var_1.a))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, 0u), ~vec3<u32>(4294967295u, var_1.a, var_1.a)), 75513u) | (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a, 0u, var_1.a), select(vec3<u32>(var_1.a, global0.a, 0u), vec3<u32>(global0.a, var_1.a, 0u), vec3<bool>(false, true, arg_0.x))) & global0.a), ~(-abs(var_1.b)), !vec4<bool>(false, true, _wgslsmith_f_op_f32(select(arg_2, var_0, true)) > var_3.x, true));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = abs(max(vec4<i32>(-firstLeadingBit(global0.b), global0.b, -1i, u_input.a.x), -vec4<i32>(~global0.b, -2147483647i, max(39927i, 0i), arg_0.d.b)));
    global2 = array<i32, 26>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-671f * -412f)), -1966f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-775f, _wgslsmith_f_op_f32(-955f + 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1901f) - -1234f), 1f);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + -262f), _wgslsmith_div_f32(758f, 807f))) + -293f)))));
    global0 = func_4(select(arg_0.c.c, arg_0.d.c, select(select(select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(arg_0.a.c.x, true, true, true), global0.c.x), vec4<bool>(arg_1.x, global0.c.x, global0.c.x, global0.c.x), true), select(arg_0.c.c, global0.c, true | arg_1.x), vec4<bool>(func_2(vec3<u32>(0u, 8122u, arg_0.a.a), global0.c.x), arg_0.d.c.x, var_0.x > 57534i, all(arg_0.d.c.zyz)))), var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 - 1838f))));
    return !select(vec4<bool>(false, arg_1.x, -var_0.x <= 1i, true), arg_0.d.c, vec4<bool>(!(491f >= var_1.x), false, !func_4(arg_0.a.c, var_2, var_1.x).c.x, arg_0.e && arg_0.c.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.a;
    var var_0 = select(select(vec4<bool>(!(global0.c.x || true), select(true, false & global0.c.x, all(global0.c.yz)), all(global0.c.zwx), global0.a == _wgslsmith_mod_u32(global0.a, 0u)), !(!select(vec4<bool>(global0.c.x, false, global0.c.x, false), vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x), global0.c)), select(func_1(Struct_2(Struct_1(global0.a, global2[_wgslsmith_index_u32(1u, 26u)], vec4<bool>(false, global0.c.x, true, true)), u_input.a, Struct_1(global0.a, global0.b, global0.c), Struct_1(26514u, -2147483647i, vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)), false), !global0.c.xyz), vec4<bool>(false, false | global0.c.x, global0.c.x | global0.c.x, true), !global0.c.x)), global0.c, !select(!global0.c, global0.c, global0.c));
    let var_1 = func_4(!(!(!select(global0.c, vec4<bool>(var_0.x, var_0.x, var_0.x, false), global0.c))), -207f, _wgslsmith_f_op_f32(f32(-1f) * -558f));
    var var_2 = ~abs(vec3<u32>(global0.a, var_1.a | (11511u ^ global0.a), 2742u));
    let var_3 = !vec4<bool>(var_0.x, var_0.x && any(vec3<bool>(true, var_1.c.x, var_0.x)), var_1.c.x, var_1.a >= var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(49947u, ~vec2<u32>(var_1.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.xz, vec2<u32>(1u, 73423u)), select(vec2<u32>(258u, global0.a), var_2.zx, var_3.x))), min(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global0.b), vec2<i32>(global0.b, 2147483647i)) >> (abs(~vec2<u32>(global0.a, 1u)) % vec2<u32>(32u)), u_input.a.xx), firstLeadingBit(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1584f, _wgslsmith_f_op_f32(ceil(1370f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-823f, -150f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-704f + -804f) - -156f)), global0.a >= 0u)));
}

