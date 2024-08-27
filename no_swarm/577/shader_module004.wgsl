struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(11912i, Struct_1(vec4<i32>(244i, -1i, 2147483647i, 2147483647i)));

var<private> global1: i32;

var<private> global2: array<u32, 27>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.b.d.a.yzw;
    global0 = Struct_4(_wgslsmith_mod_i32(-arg_0.a.x, arg_0.a.x), Struct_1(~firstLeadingBit(-vec4<i32>(arg_1.b.d.a.x, arg_0.a.x, arg_0.a.x, u_input.b.x))));
    global2 = array<u32, 27>();
    var var_1 = Struct_3(arg_2.a, Struct_2(vec2<i32>(-u_input.b.x << (~55906u % 32u), arg_2.b.d.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-835f, 1320f, arg_2.d, arg_2.b.b.x) + _wgslsmith_f_op_vec4_f32(-arg_1.c.b)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(372f, arg_2.b.b.x, 274f, -526f))), arg_1.c.b)), u_input.c, Struct_1(-arg_2.c.d.a)), arg_1.c, arg_2.b.b.x, ~arg_1.b.c.x);
    let var_2 = Struct_3(arg_2.a, var_1.c, Struct_2(-(global0.b.a.yx | ~arg_1.c.a), vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.b.b.x, _wgslsmith_div_f32(1069f, var_1.b.b.x), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + _wgslsmith_f_op_f32(step(var_1.d, 1175f))), -1476f, var_1.d), arg_1.b.c, arg_0), _wgslsmith_f_op_f32(-arg_1.b.b.x), _wgslsmith_div_u32(~(~var_1.c.c.x), ~abs(12994u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -180f);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = vec4<i32>(u_input.b.x, -arg_1.x, -(2147483647i & u_input.b.x), max(u_input.b.x, 2355i));
    global0 = Struct_4(2147483647i, global0.b);
    var var_1 = Struct_4(32782i, Struct_1(global0.b.a));
    global1 = ~global0.a;
    var var_2 = Struct_3(false == (4294967295u >= global2[_wgslsmith_index_u32(40742u, 27u)]), Struct_2(vec2<i32>(_wgslsmith_sub_i32(-1i, min(9344i, 8036i)), -2147483647i), vec4<f32>(-2888f, 405f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-107f, -841f)), _wgslsmith_f_op_f32(f32(-1f) * -752f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(449f, -361f) * _wgslsmith_f_op_f32(func_3(var_1.b, Struct_3(true, Struct_2(vec2<i32>(2147483647i, -2147483647i), vec4<f32>(-634f, -2114f, -338f, -349f), arg_0.wy, global0.b), Struct_2(vec2<i32>(global0.b.a.x, 36097i), vec4<f32>(616f, 123f, 688f, -1541f), vec2<u32>(0u, arg_0.x), global0.b), 965f, arg_0.x), Struct_3(true, Struct_2(vec2<i32>(20043i, arg_1.x), vec4<f32>(-1456f, -1000f, 1489f, 539f), vec2<u32>(global2[_wgslsmith_index_u32(1u, 27u)], 45951u), var_1.b), Struct_2(vec2<i32>(var_0.x, u_input.b.x), vec4<f32>(-215f, 793f, -784f, -698f), arg_0.xy, Struct_1(vec4<i32>(arg_1.x, -11971i, u_input.b.x, -63716i))), 190f, 1u))))), abs(~u_input.c), var_1.b), Struct_2(global0.b.a.yw & _wgslsmith_clamp_vec2_i32(firstLeadingBit(var_0.wx), reverseBits(vec2<i32>(-1i, global0.b.a.x)), vec2<i32>(global0.b.a.x, global0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1093f, 663f, 1136f, -322f) * vec4<f32>(-193f, 1016f, 788f, -1033f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(204f)), 768f, _wgslsmith_div_f32(-882f, -393f), _wgslsmith_f_op_f32(-759f * -210f))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(26169u, 30417u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 27u)], 27u)], 27u)], 27u)], arg_0.x)), vec2<u32>(u_input.a, 7311u)), Struct_1(abs(var_0) & ~var_1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-609f, 808f)) * _wgslsmith_f_op_f32(f32(-1f) * -431f)) + 282f)), ~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(11065u, arg_0.x), 27u)]);
    return Struct_3(all(vec2<bool>(var_2.a, false)), var_2.c, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) * var_2.c.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(432f + var_2.b.b.x)) * _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(step(-554f, var_2.c.b.x)))))), 82622u & (~_wgslsmith_dot_vec4_u32(arg_0, arg_0) & 41962u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> i32 {
    var var_0 = countOneBits(func_2(~(select(vec4<u32>(global2[_wgslsmith_index_u32(arg_3.e, 27u)], 44746u, 87846u, 6460u), vec4<u32>(arg_3.e, 1u, 21884u, global2[_wgslsmith_index_u32(arg_0.c.c.x, 27u)]), vec4<bool>(arg_3.a, arg_3.a, arg_3.a, arg_1.a)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(49907u, arg_2, 8413u, arg_2), vec4<u32>(0u, 0u, 4294967295u, 6795u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 27u)], arg_3.b.c.x, u_input.a, 5934u))), -vec3<i32>(-29884i, func_2(vec4<u32>(0u, 0u, arg_2, arg_3.c.c.x), u_input.b).c.d.a.x, 1i)).c.d.a.x);
    let var_1 = Struct_3(all(vec4<bool>(arg_1.a, arg_3.a, arg_1.a, 0u >= reverseBits(arg_0.c.c.x))), Struct_2(~vec2<i32>(1i, -31461i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.d, -299f, arg_0.b.b.x, 871f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.b.x, arg_0.b.b.x, arg_3.b.b.x, 1228f)))))), vec2<u32>(u_input.c.x, arg_3.b.c.x >> (func_2(vec4<u32>(1u, 111816u, u_input.c.x, global2[_wgslsmith_index_u32(38418u, 27u)]), u_input.b).e % 32u)), Struct_1(vec4<i32>(u_input.b.x, func_2(vec4<u32>(arg_2, 4294967295u, arg_2, u_input.c.x), global0.b.a.ywx).b.a.x, _wgslsmith_mult_i32(global0.b.a.x, 1i), _wgslsmith_div_i32(arg_1.c.a.x, arg_1.c.a.x)))), func_2(~vec4<u32>(17810u, 1u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_3.b.c.x, 0u), vec3<u32>(4294967295u, 1u, arg_2))), global0.b.a.xzy).c, arg_0.c.b.x, select(_wgslsmith_mult_u32(countOneBits(arg_3.b.c.x) >> ((u_input.c.x | u_input.a) % 32u), func_2(~vec4<u32>(0u, u_input.a, arg_3.b.c.x, arg_1.e), vec3<i32>(-1i, 32485i, 2316i)).e), 68459u, all(select(vec2<bool>(false, arg_3.a), vec2<bool>(false, false), vec2<bool>(arg_1.a, arg_0.a)))));
    let var_2 = abs(var_1.c.d.a.xyw) >> (firstLeadingBit(vec3<u32>(var_1.e & 1u, ~global2[_wgslsmith_index_u32(arg_1.e, 27u)], 12033u) & (~vec3<u32>(4294967295u, 4294967295u, arg_2) & vec3<u32>(global2[_wgslsmith_index_u32(arg_3.b.c.x, 27u)], 36202u, var_1.b.c.x))) % vec3<u32>(32u));
    var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), countOneBits(10577i), arg_3.c.d.a.x), -1i), _wgslsmith_div_vec2_i32(~global0.b.a.zw << (_wgslsmith_mod_vec2_u32(vec2<u32>(5197u, u_input.a), vec2<u32>(4294967295u, arg_3.e)) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, global0.a), global0.b.a.zzz)))), max(~(~(-arg_3.b.d.a.x)), (i32(-1i) * -28018i) ^ -_wgslsmith_clamp_i32(0i, global0.a, -19263i)));
    let var_3 = Struct_3(true, arg_1.c, arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f)), ~1u);
    return abs(i32(-1i) * -2147483647i);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    var var_0 = func_2(reverseBits(~vec4<u32>(~1u, ~arg_1.c.x, 14316u, 11125u)), arg_2.b.a.yzw);
    var var_1 = _wgslsmith_f_op_f32(ceil(1000f));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2429f * _wgslsmith_f_op_f32(arg_1.b.x * var_0.b.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1441f - 2154f))))), _wgslsmith_f_op_f32(floor(1295f)), arg_1.b.x)));
    var var_3 = vec4<i32>(abs(global0.a), 13724i, 197i, arg_2.a);
    var var_4 = Struct_2(vec2<i32>(var_3.x | -(global0.a & -23913i), -19577i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.c.b, vec4<f32>(-1000f, var_0.c.b.x, 521f, -1102f), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))) + vec4<f32>(849f, -168f, var_0.c.b.x, var_2.x)) * arg_1.b)), _wgslsmith_mult_vec2_u32(~abs(arg_1.c) ^ firstLeadingBit(u_input.c), ~var_0.b.c), func_2(~max(vec4<u32>(5419u, var_0.b.c.x, 904u, 0u) ^ vec4<u32>(u_input.a, var_0.e, var_0.b.c.x, 1u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17625u, 27u)], 27u)], var_0.e, 24709u, 52103u)), ~(vec3<i32>(-1i) * -vec3<i32>(7621i, 2147483647i, global0.b.a.x))).b.d);
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(arg_2.c.d.a);
    global0 = Struct_4(u_input.b.x, Struct_1(-firstTrailingBit(var_0.a) ^ var_0.a));
    global1 = arg_2.c.a.x;
    global0 = func_5(func_4(arg_2, arg_2, ~_wgslsmith_mod_u32(arg_2.b.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)] << (u_input.c.x % 32u), 27u)]), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], 19239u, global2[_wgslsmith_index_u32(4294967295u, 27u)], 0u) ^ vec4<u32>(24316u, arg_2.b.c.x, 54040u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.b.c.x, 27u)], 27u)]), min(vec4<u32>(global2[_wgslsmith_index_u32(1u, 27u)], arg_2.e, u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 27u)]), vec4<u32>(global2[_wgslsmith_index_u32(72126u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], 98963u, 1u))), countOneBits(vec3<i32>(2147483647i, 44214i, 0i)))), arg_2.b, Struct_4(func_2(~vec4<u32>(23872u, 1u, 34160u, 4294967295u), global0.b.a.xzx).c.d.a.x, Struct_1(~vec4<i32>(arg_1.x, arg_1.x, 19001i, -1i))));
    let var_1 = arg_2.c;
    return Struct_3(true, func_2(select(vec4<u32>(arg_2.c.c.x, global2[_wgslsmith_index_u32(0u, 27u)], var_1.c.x, 4294967295u) & firstTrailingBit(vec4<u32>(var_1.c.x, 3350u, 20873u, 63951u)), ~vec4<u32>(var_1.c.x, 12232u, 41703u, 1u) ^ ~vec4<u32>(1u, 1u, u_input.a, 920u), false), ~arg_2.b.d.a.xxx).b, func_2(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c.x, 29501u, var_1.c.x, u_input.a), vec4<u32>(23248u, 23203u, global2[_wgslsmith_index_u32(var_1.c.x, 27u)], var_1.c.x), vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(arg_2.b.c.x, 27u)], 0u, global2[_wgslsmith_index_u32(arg_2.e, 27u)])), vec4<u32>(global2[_wgslsmith_index_u32(var_1.c.x, 27u)], 4294967295u, var_1.c.x, var_1.c.x) >> (vec4<u32>(0u, 16557u, 43649u, var_1.c.x) % vec4<u32>(32u))) << (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 24688u, global2[_wgslsmith_index_u32(arg_2.b.c.x, 27u)]), vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.a))) % vec4<u32>(32u)), u_input.b | vec3<i32>(-1i, _wgslsmith_div_i32(var_0.a.x, 0i), arg_1.x)).b, func_2(countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, arg_2.c.c.x), vec4<u32>(53200u, 4294967295u, u_input.c.x, global2[_wgslsmith_index_u32(arg_2.b.c.x, 27u)]), vec4<u32>(u_input.a, 107811u, var_1.c.x, var_1.c.x)), ~vec4<u32>(arg_2.c.c.x, 155u, 4294967295u, 21871u))), min(vec3<i32>(u_input.b.x, var_0.a.x & var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 1i, arg_1.x), vec4<i32>(0i, -2147483647i, arg_2.c.a.x, -1i))), func_5(5501i >> (global2[_wgslsmith_index_u32(arg_2.b.c.x, 27u)] % 32u), arg_2.b, func_5(30642i, var_1, Struct_4(var_0.a.x, var_1.d))).b.a.xzw)).c.b.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, var_1.c.x, 44831u, 35225u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_2.e, 62523u, global2[_wgslsmith_index_u32(18760u, 27u)]), vec4<u32>(1u, 4294967295u, 4294967295u, 81498u)) % vec4<u32>(32u)), ~vec4<u32>(3475u, 4803u, 5111u, 31991u) & reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], 1u, 75342u, arg_2.e))) & ~_wgslsmith_sub_u32(4294967295u, ~u_input.a));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: Struct_4) -> i32 {
    global0 = Struct_4(-u_input.b.x, global0.b);
    var var_0 = arg_0;
    let var_1 = all(vec2<bool>(func_1(func_2(vec4<u32>(4294967295u, arg_1.x, u_input.c.x, arg_1.x), u_input.b).a & !var_0.a, _wgslsmith_mult_vec2_i32(arg_0.b.a << (arg_1.xz % vec2<u32>(32u)), func_1(arg_0.a, vec2<i32>(6845i, arg_0.b.d.a.x), Struct_3(false, Struct_2(vec2<i32>(global0.a, -1i), vec4<f32>(var_0.d, arg_0.d, var_0.d, arg_0.b.b.x), vec2<u32>(0u, 43429u), arg_0.c.d), Struct_2(global0.b.a.ww, vec4<f32>(-1329f, arg_0.b.b.x, 179f, 514f), arg_2.xy, Struct_1(arg_3.b.a)), arg_0.b.b.x, var_0.c.c.x)).b.d.a.zw), arg_0).a, false));
    var var_2 = var_0.a;
    var_0 = Struct_3(arg_0.a, Struct_2(~func_1(true, u_input.b.zx, Struct_3(true, arg_0.b, Struct_2(u_input.b.zx, var_0.b.b, var_0.b.c, Struct_1(vec4<i32>(2147483647i, global0.a, 10196i, 11603i))), arg_0.c.b.x, 12572u)).c.a, vec4<f32>(-1296f, 668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) * _wgslsmith_f_op_f32(select(1848f, var_0.b.b.x, true))), arg_0.b.b.x), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(71633u, 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(arg_1.x, 27u)], 15192u), var_0.b.c)) ^ ~vec2<u32>(arg_0.c.c.x, 32611u), Struct_1(vec4<i32>(-9244i, var_0.c.a.x, arg_0.b.d.a.x, -2147483647i) << (_wgslsmith_sub_vec4_u32(arg_1, arg_1) % vec4<u32>(32u)))), Struct_2(vec2<i32>(17001i, ~var_0.c.d.a.x) >> (_wgslsmith_mult_vec2_u32(~arg_0.b.c, vec2<u32>(arg_1.x, 1u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-arg_0.c.b), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_2.x, 10865u), arg_1.ywy), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], var_0.b.c.x, 4294967295u)), ~global2[_wgslsmith_index_u32(25606u, 27u)]), arg_0.b.d), 852f, ~1u);
    return -1i;
}

fn func_7(arg_0: vec3<u32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1834f) * -920f) - -1883f)), arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 27u)], 27u)], 27u)], u_input.c.x, 33574u), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, -40185i, 6446i), vec3<i32>(56340i, -1i, u_input.b.x), u_input.b)).d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) * arg_1))));
    global0 = func_5(_wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global0.a, global0.a), vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -51344i, -41459i) ^ vec3<i32>(1i, global0.a, arg_2), global0.b.a.xxz << (vec3<u32>(global2[_wgslsmith_index_u32(arg_0.x, 27u)], arg_0.x, 12390u) % vec3<u32>(32u))) << (max(~vec3<u32>(10866u, arg_0.x, 1u), arg_0) % vec3<u32>(32u))), func_1(false, _wgslsmith_div_vec2_i32(u_input.b.xz ^ global0.b.a.zy, u_input.b.xz >> ((vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 27u)], 27u)]) ^ vec2<u32>(1u, 6995u)) % vec2<u32>(32u))), Struct_3(select(false, true, true), func_1(var_0.x > 1120f, reverseBits(global0.b.a.yy), func_2(vec4<u32>(59281u, arg_0.x, 4294967295u, 0u), vec3<i32>(38017i, u_input.b.x, 36644i))).b, Struct_2(_wgslsmith_sub_vec2_i32(global0.b.a.wy, vec2<i32>(global0.a, 40626i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1253f, var_0.x, 1097f)), firstTrailingBit(vec2<u32>(arg_0.x, 1u)), global0.b), 601f, 1u)).c, func_5(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_2, global0.b.a.x, 2147483647i), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b)), min(global0.b.a.zzy, vec3<i32>(global0.a, u_input.b.x, -35653i)) >> (max(vec3<u32>(u_input.a, arg_0.x, 69147u), arg_0) % vec3<u32>(32u))), Struct_2(~firstLeadingBit(vec2<i32>(-30306i, 1i)), vec4<f32>(arg_1, -631f, _wgslsmith_div_f32(var_0.x, 683f), _wgslsmith_f_op_f32(f32(-1f) * -1136f)), u_input.c, Struct_1(vec4<i32>(-65737i, u_input.b.x, 6919i, global0.b.a.x))), func_5(-2147483647i, func_1(any(vec2<bool>(false, true)), vec2<i32>(arg_2, arg_2), Struct_3(true, Struct_2(vec2<i32>(u_input.b.x, u_input.b.x), vec4<f32>(var_0.x, arg_1, var_0.x, arg_1), vec2<u32>(arg_0.x, 53365u), global0.b), Struct_2(vec2<i32>(1i, u_input.b.x), vec4<f32>(-572f, var_0.x, 1502f, arg_1), vec2<u32>(40118u, 1u), Struct_1(vec4<i32>(-1i, -2147483647i, u_input.b.x, global0.a))), arg_1, global2[_wgslsmith_index_u32(13704u, 27u)])).b, Struct_4(i32(-1i) * -2147483647i, Struct_1(global0.b.a)))));
    var var_1 = func_5(-(~(~arg_2 << (~19275u % 32u))), func_1(!any(vec3<bool>(true, true, true)), func_1(func_2(~vec4<u32>(global2[_wgslsmith_index_u32(16814u, 27u)], u_input.c.x, global2[_wgslsmith_index_u32(36868u, 27u)], 4294967295u), u_input.b).a, -_wgslsmith_add_vec2_i32(global0.b.a.zw, u_input.b.xx), Struct_3(any(vec2<bool>(true, true)), Struct_2(vec2<i32>(global0.b.a.x, global0.a), vec4<f32>(-934f, var_0.x, 965f, var_0.x), arg_0.yx, Struct_1(global0.b.a)), func_1(false, vec2<i32>(arg_2, arg_2), Struct_3(true, Struct_2(u_input.b.zy, vec4<f32>(-466f, 1051f, arg_1, var_0.x), vec2<u32>(46187u, u_input.a), Struct_1(vec4<i32>(arg_2, global0.b.a.x, u_input.b.x, -60358i))), Struct_2(u_input.b.yy, vec4<f32>(arg_1, -327f, 940f, var_0.x), vec2<u32>(1u, 1u), global0.b), -1000f, arg_0.x)).b, _wgslsmith_f_op_f32(arg_1 * var_0.x), 1u)).c.a, Struct_3(true && select(false, true, false), func_1(func_2(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], 0u, global2[_wgslsmith_index_u32(arg_0.x, 27u)], 85472u), u_input.b).a, vec2<i32>(arg_2, -2147483647i) | global0.b.a.ww, Struct_3(false, Struct_2(u_input.b.xy, vec4<f32>(var_0.x, -285f, -1834f, -217f), arg_0.xx, global0.b), Struct_2(vec2<i32>(1i, 45492i), vec4<f32>(arg_1, -753f, 2529f, var_0.x), vec2<u32>(4294967295u, 1u), Struct_1(global0.b.a)), -680f, u_input.c.x)).b, Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, global0.b.a.x), u_input.b.xx), vec4<f32>(-429f, var_0.x, var_0.x, -451f), _wgslsmith_mod_vec2_u32(arg_0.xx, vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], u_input.c.x)), Struct_1(vec4<i32>(-1i, -10061i, global0.b.a.x, arg_2))), 708f, u_input.a >> (_wgslsmith_sub_u32(u_input.c.x, arg_0.x) % 32u))).c, Struct_4(-firstTrailingBit(-global0.b.a.x), Struct_1(global0.b.a)));
    global0 = Struct_4(countOneBits((var_1.a << (1u % 32u)) & 81675i) & var_1.b.a.x, Struct_1(~(~vec4<i32>(35662i, 1i, var_1.b.a.x, -4222i))));
    var var_2 = !vec4<bool>(!(false && any(vec2<bool>(true, true))), true, true, func_2(vec4<u32>(0u, 24332u, 0u, 43244u) & ~vec4<u32>(1u, 72662u, arg_0.x, 0u), firstTrailingBit(reverseBits(vec3<i32>(1i, 59080i, global0.b.a.x)))).a);
    return func_1(false, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-1i, var_1.b.a.x), -2147483647i) | _wgslsmith_add_vec2_i32(abs(vec2<i32>(global0.a, arg_2)), vec2<i32>(arg_2, u_input.b.x) << (arg_0.yz % vec2<u32>(32u))), firstLeadingBit(global0.b.a.zy), vec2<i32>(func_4(Struct_3(false, Struct_2(u_input.b.yx, vec4<f32>(arg_1, var_0.x, var_0.x, -825f), u_input.c, var_1.b), Struct_2(vec2<i32>(12339i, u_input.b.x), vec4<f32>(971f, var_0.x, var_0.x, 881f), arg_0.yz, var_1.b), arg_1, 84682u), Struct_3(true, Struct_2(vec2<i32>(arg_2, arg_2), vec4<f32>(arg_1, -1045f, -588f, -607f), u_input.c, global0.b), Struct_2(vec2<i32>(arg_2, var_1.a), vec4<f32>(1963f, 793f, var_0.x, arg_1), u_input.c, var_1.b), var_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)], 27u)]), firstLeadingBit(12222u), Struct_3(false, Struct_2(var_1.b.a.xw, vec4<f32>(-2602f, arg_1, arg_1, var_0.x), arg_0.xx, Struct_1(vec4<i32>(2147483647i, arg_2, global0.b.a.x, 4078i))), Struct_2(vec2<i32>(var_1.b.a.x, 20684i), vec4<f32>(arg_1, var_0.x, 126f, 258f), u_input.c, Struct_1(vec4<i32>(arg_2, u_input.b.x, 18932i, 1i))), -850f, 49172u)), arg_2)), Struct_3(all(vec2<bool>(any(vec2<bool>(var_2.x, true)), true)), Struct_2(global0.b.a.zy, vec4<f32>(arg_1, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(-1023f)), -611f), u_input.c, func_5(arg_2, Struct_2(vec2<i32>(0i, 0i), vec4<f32>(var_0.x, 1000f, -452f, 100f), vec2<u32>(27551u, 24364u), global0.b), func_5(arg_2, Struct_2(vec2<i32>(arg_2, arg_2), vec4<f32>(arg_1, -1000f, arg_1, -765f), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 27u)], 27u)], 53187u), global0.b), Struct_4(u_input.b.x, var_1.b))).b), Struct_2(func_5(i32(-1i) * -2147483647i, Struct_2(vec2<i32>(-1i, arg_2), vec4<f32>(-1106f, -287f, -494f, var_0.x), arg_0.zy, Struct_1(vec4<i32>(-66889i, 0i, arg_2, arg_2))), Struct_4(var_1.b.a.x, Struct_1(vec4<i32>(2147483647i, 0i, -51916i, u_input.b.x)))).b.a.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1, var_0.x, 1742f))), u_input.c, Struct_1(select(vec4<i32>(var_1.b.a.x, var_1.a, -1i, u_input.b.x), global0.b.a, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), global2[_wgslsmith_index_u32(arg_0.x & global2[_wgslsmith_index_u32(53584u, 27u)], 27u)])).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 27>();
    let var_0 = Struct_3(abs(~global2[_wgslsmith_index_u32(u_input.c.x, 27u)]) >= ~68521u, func_7(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4311u, 27u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(67895u, 27u)], 27u)], 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 27u)], u_input.a, u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1305f * 158f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(268f, 618f, true)) * _wgslsmith_f_op_f32(2323f + -355f))), func_6(func_1(true, _wgslsmith_sub_vec2_i32(global0.b.a.xz, u_input.b.yz), Struct_3(false, Struct_2(vec2<i32>(2147483647i, -2147483647i), vec4<f32>(-1000f, -958f, -1000f, 1729f), vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 27u)]), global0.b), Struct_2(global0.b.a.yw, vec4<f32>(762f, 416f, 1000f, -613f), u_input.c, global0.b), -368f, 21961u)), abs(vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)])) >> (~vec4<u32>(u_input.a, u_input.c.x, global2[_wgslsmith_index_u32(4137u, 27u)], 94074u) % vec4<u32>(32u)), vec3<u32>(~global2[_wgslsmith_index_u32(4294967295u, 27u)], ~4294967295u, 1u), Struct_4(-1i, Struct_1(vec4<i32>(u_input.b.x, 43897i, -8396i, -38345i))))), Struct_2(global0.b.a.wy, vec4<f32>(-189f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1862f))), func_2(~vec4<u32>(0u, 26835u, u_input.a, u_input.c.x), vec3<i32>(global0.a, -1i, -9768i) << (vec3<u32>(global2[_wgslsmith_index_u32(24851u, 27u)], 1u, global2[_wgslsmith_index_u32(4294967295u, 27u)]) % vec3<u32>(32u))).c.b.x, _wgslsmith_div_f32(-240f, -279f)), vec2<u32>(0u, _wgslsmith_div_u32(u_input.a & u_input.a, _wgslsmith_mult_u32(40232u, 15026u))), Struct_1((vec4<i32>(-22529i, global0.a, 14915i, -24579i) ^ vec4<i32>(-2147483647i, global0.a, 22367i, 5601i)) & _wgslsmith_mult_vec4_i32(global0.b.a, vec4<i32>(2147483647i, -2147483647i, -1i, global0.b.a.x)))), -973f, 4294967295u);
    let var_1 = var_0.b;
    let var_2 = ~vec3<u32>(var_0.e, _wgslsmith_mod_u32(~var_1.c.x ^ ~121174u, _wgslsmith_clamp_u32(88192u, var_0.b.c.x, u_input.a) >> (_wgslsmith_dot_vec2_u32(var_1.c, var_0.b.c) % 32u)), var_0.c.c.x);
    var var_3 = var_1.b.wy;
    var var_4 = var_0;
    global2 = array<u32, 27>();
    let var_5 = Struct_1(vec4<i32>(max(_wgslsmith_div_i32(~9740i, _wgslsmith_div_i32(global0.b.a.x, u_input.b.x)), ~(~u_input.b.x)), -59567i, var_4.b.d.a.x, var_1.d.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f * var_3.x), -22803i, vec4<u32>(func_1(any(vec2<bool>(false, true)), vec2<i32>(countOneBits(var_4.b.d.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_4.b.d.a.x, 21285i), vec3<i32>(u_input.b.x, var_0.b.d.a.x, 4894i))), func_1(all(vec4<bool>(true, true, var_0.a, true)), vec2<i32>(var_4.c.a.x, var_4.b.a.x), func_2(vec4<u32>(1u, 0u, var_0.e, 4294967295u), var_1.d.a.zwx))).c.c.x, var_2.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_4.e, 1u), ~285u), _wgslsmith_mult_u32(~4294967295u, 0u | _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(var_4.c.c.x, 27u)], var_4.c.c.x))), var_0.b.a);
}

