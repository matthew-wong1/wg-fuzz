struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(79692u, 3386u, 25763u), 487f, vec4<bool>(true, false, true, false), Struct_1(vec2<i32>(i32(-2147483648), 878i)));

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = !global1.c.x;
    let var_1 = u_input.d >> (_wgslsmith_clamp_vec4_u32(abs(~_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(1538u, 62020u, 0u, u_input.a.x))), vec4<u32>(_wgslsmith_mod_u32(~1u, global1.a.x), 0u, u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), firstTrailingBit(global1.a))), u_input.d) % vec4<u32>(32u));
    let var_2 = Struct_2(max(var_1.xxw, firstLeadingBit(var_1.xwz << ((global1.a >> (vec3<u32>(1u, 30962u, var_1.x) % vec3<u32>(32u))) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(floor(-611f)), select(global1.c, vec4<bool>(true, !any(vec3<bool>(var_0, var_0, global1.c.x)), u_input.c > ~global1.d.a.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -777f)) == -834f), Struct_1(vec2<i32>(select(~global1.d.a.x, reverseBits(35399i), false), _wgslsmith_sub_i32(i32(-1i) * -57287i, _wgslsmith_mod_i32(-59310i, arg_0)))));
    let var_3 = vec3<i32>(max(abs(-u_input.c), _wgslsmith_dot_vec2_i32(min(global1.d.a, abs(vec2<i32>(global1.d.a.x, u_input.c))), ~global1.d.a)), select(u_input.c, reverseBits(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, -42790i, var_2.d.a.x)), min(vec3<i32>(93604i, 1i, 0i), vec3<i32>(var_2.d.a.x, -2147483647i, var_2.d.a.x)))), all(select(!global1.c, var_2.c, true))), select(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-38602i, u_input.c, 1i, -12097i)) | ~vec4<i32>(global1.d.a.x, global1.d.a.x, global1.d.a.x, var_2.d.a.x), countOneBits(firstLeadingBit(vec4<i32>(-5998i, u_input.c, -1i, -37143i)))), (1i >> (u_input.a.x % 32u)) & 25230i, _wgslsmith_dot_vec2_u32(~vec2<u32>(63039u, 33869u), countOneBits(vec2<u32>(28581u, 4294967295u))) <= 1u));
    var var_4 = firstLeadingBit(~u_input.e.x);
    return vec3<i32>(_wgslsmith_div_i32(u_input.c, 2147483647i), _wgslsmith_dot_vec2_i32(countOneBits(var_3.zx), vec2<i32>(~abs(40762i), _wgslsmith_div_i32(firstLeadingBit(u_input.c), -2147483647i))), _wgslsmith_add_i32(~arg_0, var_3.x));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -775f);
    global2 = arg_0.b;
    let var_0 = global1.a.x;
    let var_1 = func_3(u_input.c);
    global2 = vec2<bool>(false, true);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-560f)) - -1243f), arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b, arg_0.c), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -406f)))), global1.c.x))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global2 = !select(vec2<bool>(!arg_0.a, true | global1.c.x), vec2<bool>(u_input.e.x != _wgslsmith_add_u32(38409u, 48482u), arg_0.a), !(!arg_0.a));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(ceil(-183f))))));
    var var_0 = select(select(select(!global1.c, global1.c, global1.c), !(!global1.c), (global1.a.x ^ 4294967295u) == (countOneBits(1u) | _wgslsmith_clamp_u32(u_input.e.x, u_input.b.x, 59779u))), !vec4<bool>(global1.c.x || false, false, true, true), vec4<bool>(u_input.c == 1i, true, global1.c.x, _wgslsmith_f_op_f32(sign(global1.b)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -978f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(Struct_4(global1.d, var_0.wx, global1.b), 879f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(Struct_4(global1.d, var_0.xw, -509f), -1000f)), _wgslsmith_f_op_vec2_f32(func_2(Struct_4(global1.d, vec2<bool>(false, false), -129f), -589f)), !global1.c.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global1.b), -375f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1308f, 1257f), vec2<f32>(global1.b, global1.b)))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)) + 753f), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, _wgslsmith_f_op_f32(-var_1.x)))));
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(Struct_3(any(global1.c.yz) | all(global1.c.xw))), global1.c.xz, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_div_f32(-2085f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(-global1.b)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - -1339f)), -834f));
    var var_2 = select(!select(global1.c.zyw, select(vec3<bool>(true, false, true), select(vec3<bool>(false, global1.c.x, global1.c.x), vec3<bool>(true, global1.c.x, false), false), true), true), global1.c.wwy, vec3<bool>(select(-831f == var_0.c, any(global1.c.zww), select(any(global1.c.zx), all(var_0.b), true)), var_0.b.x, global2.x && true));
    var var_3 = var_0;
    var_2 = global1.c.zxz;
    global1 = Struct_2(min(select(~abs(u_input.d.xwz), u_input.b, global2.x), global1.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.c)))), global1.c, func_1(Struct_3(var_2.x)));
    var_3 = var_0;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, 4294967295u, -20343i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-879f, var_0.c, var_1.x, 1314f))))))));
}

