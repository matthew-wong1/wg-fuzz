struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: f32 = -1477f;

var<private> global2: array<Struct_1, 27>;

var<private> global3: i32 = 1i;

var<private> global4: Struct_4 = Struct_4(vec4<bool>(false, true, true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(~select(1u, 4229u, global4.a.x), _wgslsmith_add_u32(~0u, arg_0.x), firstTrailingBit(1u))), Struct_1(47841u, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, 46744i), vec3<i32>(u_input.a, -20192i, u_input.a)), vec3<i32>(31117i, u_input.a, u_input.a)) >> (u_input.c % vec3<u32>(32u)), global4.a));
    global3 = _wgslsmith_mult_i32(u_input.a, 1i);
    global4 = Struct_4(vec4<bool>(true, all(!select(vec4<bool>(true, false, arg_2.x, true), global4.a, global4.a.x)), true, all(vec3<bool>(!var_0.b.c.x, 0i >= u_input.a, var_0.b.c.x))));
    let var_1 = var_0.b;
    let var_2 = arg_1.yx;
    return firstTrailingBit(-22461i);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = ~u_input.b;
    let var_1 = select(vec2<u32>(~u_input.b, arg_3.x), countOneBits(~firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.c.zy, vec2<u32>(u_input.c.x, 0u)))), global4.a.x);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-2212f + 163f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(trunc(arg_0.x))) - -300f))), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)));
    var var_3 = arg_3.x;
    let var_4 = -16777i;
    return min(vec3<i32>(-9754i, -63298i, 0i), abs(arg_1.zyz)) << (select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_2.x, arg_3.x, arg_2.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, var_1.x, arg_2.x, 4294967295u), vec4<u32>(var_1.x, u_input.c.x, u_input.c.x, 0u), vec4<u32>(arg_3.x, arg_2.x, var_1.x, u_input.c.x))), select(_wgslsmith_mult_u32(arg_3.x, 1u), _wgslsmith_dot_vec2_u32(arg_2.zy, vec2<u32>(1u, 4294967295u)), any(global4.a)), ~42852u), reverseBits(vec3<u32>(~arg_3.x, ~arg_2.x, 92895u)), select(!select(global4.a.wxx, global4.a.www, vec3<bool>(false, true, true)), !vec3<bool>(global4.a.x, true, true), global4.a.x)) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> bool {
    let var_0 = Struct_1(reverseBits(u_input.b), func_4(vec3<f32>(661f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(788f))), _wgslsmith_div_f32(-401f, 1046f)), min(vec4<i32>(arg_0.x, u_input.a, func_3(vec2<u32>(arg_1, arg_1), vec4<f32>(1000f, 1807f, 1306f, -260f), vec3<bool>(global4.a.x, false, global4.a.x)), arg_0.x & 33053i), _wgslsmith_add_vec4_i32(-vec4<i32>(arg_0.x, 1i, u_input.a, u_input.a), reverseBits(arg_0))), vec3<u32>(4294967295u, u_input.c.x, 1u), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, arg_1, 0u), ~(vec3<u32>(41985u, arg_1, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 47685u) % vec3<u32>(32u))))), !select(select(vec4<bool>(global4.a.x, false, global4.a.x, global4.a.x), select(vec4<bool>(true, true, false, global4.a.x), global4.a, vec4<bool>(global4.a.x, false, true, global4.a.x)), global4.a.x), select(vec4<bool>(global4.a.x, global4.a.x, false, false), !global4.a, global4.a), true));
    global0 = array<Struct_4, 31>();
    var var_1 = u_input.c;
    global4 = Struct_4(vec4<bool>(!select(var_0.c.x, all(vec2<bool>(false, true)), select(false, var_0.c.x, false)), true, (-arg_0.x ^ arg_0.x) > u_input.a, global4.a.x));
    let var_2 = Struct_2(vec3<u32>(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_0.a, arg_1, u_input.b), vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.b))), ~63018u >> (_wgslsmith_div_u32(var_1.x, var_0.a) % 32u), 80941u), var_0);
    return !var_0.c.x;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_dot_vec4_u32(~firstLeadingBit(~vec4<u32>(6168u, 1u, u_input.b, 11129u) ^ vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.c.x, _wgslsmith_add_u32(~u_input.b, _wgslsmith_sub_u32(1u, u_input.c.x)), u_input.b ^ 47000u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 3885u), vec4<u32>(1u, u_input.b, 0u, 4294967295u)) ^ 76386u), (_wgslsmith_mult_vec4_u32(vec4<u32>(64011u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.c.x, 0u, 4294967295u, 32193u)) << (~vec4<u32>(0u, 9765u, 25852u, 0u) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(select(vec4<u32>(41678u, 54487u, u_input.c.x, 0u), vec4<u32>(0u, 59161u, u_input.b, 4294967295u), true), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, 0u, u_input.c.x), vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u))) % vec4<u32>(32u))));
    global3 = u_input.a;
    let var_1 = _wgslsmith_mod_u32(u_input.c.x, 4294967295u);
    var var_2 = -1i;
    let var_3 = select(!(!vec4<bool>(false, true | global4.a.x, all(global4.a.zwx), true)), global4.a, select(true, (u_input.a == ~u_input.a) != all(vec4<bool>(global4.a.x, true, true, global4.a.x)), func_2(vec4<i32>(u_input.a, u_input.a, 1i, min(34135i, u_input.a)), var_1)));
    return _wgslsmith_f_op_f32(trunc(-727f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 27>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1725f - -338f))), !all(vec4<bool>(global4.a.x, global4.a.x, false, global4.a.x)))) - _wgslsmith_f_op_f32(-1f)));
    let var_0 = select(countOneBits(vec3<i32>(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, 386f, 135f)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, 2147483647i)), firstTrailingBit(u_input.c), ~vec3<u32>(0u, u_input.c.x, 32248u)).x, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 2147483647i))), -27199i)), ~vec3<i32>(firstLeadingBit(u_input.a) << ((u_input.b ^ u_input.c.x) % 32u), u_input.a, ~u_input.a), !global4.a.xyy);
    global3 = countOneBits(-reverseBits(u_input.a)) << (~u_input.b % 32u);
    let var_1 = firstLeadingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 35286u, u_input.c.x), 8598u, ~u_input.b, min(1u, 0u))), abs(~vec2<u32>(max(u_input.c.x, u_input.b), u_input.c.x & 1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2350f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-986f, -356f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1991f, _wgslsmith_f_op_f32(1000f + -258f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1630f, -982f, 1106f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1456f, 1950f, 397f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(937f, -1954f, -529f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2039f, -1142f, 1125f) * vec3<f32>(1977f, -615f, 603f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1388f, -723f, 528f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-932f, 672f, 1893f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1624f, -1145f) * vec3<f32>(776f, 662f, -1025f))), select(false, true, true) & (false | global4.a.x))), !(_wgslsmith_add_i32(u_input.a, var_0.x) < var_0.x))));
}

