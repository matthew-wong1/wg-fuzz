struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1u, vec2<u32>(8492u, 44153u)), Struct_1(47475u, vec2<u32>(55441u, 18461u)), Struct_1(21687u, vec2<u32>(87195u, 4294967295u)), Struct_1(5687u, vec2<u32>(11518u, 48580u)), Struct_1(0u, vec2<u32>(4294967295u, 52768u)), Struct_1(4294967295u, vec2<u32>(44604u, 45858u)), Struct_1(4294967295u, vec2<u32>(50683u, 5919u)), Struct_1(11238u, vec2<u32>(1u, 4294967295u)), Struct_1(28310u, vec2<u32>(45807u, 60179u)), Struct_1(4294967295u, vec2<u32>(1u, 0u)), Struct_1(4294967295u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(22006u, vec2<u32>(0u, 0u)), Struct_1(48950u, vec2<u32>(4327u, 0u)), Struct_1(17608u, vec2<u32>(4294967295u, 1u)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.a, _wgslsmith_mod_u32(1u, ~(u_input.b & 9620u))), u_input.a.x), 14u)];
    let var_0 = Struct_2(Struct_1(max(~(~global0.a), 0u), vec2<u32>(reverseBits(25875u), u_input.b) ^ vec2<u32>(firstLeadingBit(49752u), ~u_input.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1018f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1034f * -1194f) + _wgslsmith_f_op_f32(min(-739f, -898f)))))), Struct_1(0u, u_input.a.xz), ~(~1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, 496f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 1049f) + vec2<f32>(-754f, var_0.b)))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(723f, 1286f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 810f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), vec2<f32>(var_0.b, var_0.b))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b, var_0.b)))))));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-4745i, reverseBits(min(-38327i, 20729i))), vec2<i32>(~_wgslsmith_clamp_i32(1638i, 35815i, -2147483647i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 34100i, -31478i), vec4<i32>(31322i, -2147483647i, 13535i, 1i)), 0i))) ^ _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-20151i, 0i, -1i) << (min(u_input.a, vec3<u32>(var_0.c.a, var_0.a.a, var_0.c.b.x)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(28707i, 2147483647i), vec2<i32>(2147483647i, 1i)), ~(-13082i), _wgslsmith_dot_vec3_i32(vec3<i32>(-31869i, 6373i, -2147483647i), vec3<i32>(-48427i, 1i, -1i))), firstTrailingBit(vec3<i32>(-2737i, 2147483647i, 43032i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(-33631i, -2147483647i, 2147483647i), vec3<i32>(-14016i, 2147483647i, -2147483647i))));
    global2 = array<Struct_1, 14>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, 970f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) + vec2<f32>(1395f, -334f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(150f, var_1.x)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, var_1.x), vec2<f32>(var_1.x, 344f)))))))), !(~9327u >= u_input.a.x)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3())))), vec2<f32>(-1027f, -1263f));
    let var_1 = arg_0;
    var var_2 = Struct_2(var_1.c, 1f, arg_0.c, 16547u);
    global0 = Struct_1(u_input.a.x, u_input.a.zz);
    global0 = Struct_1(countOneBits(select(4294967295u, arg_0.a.a << (_wgslsmith_add_u32(1u, global0.b.x) % 32u), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)))), abs(~(abs(var_1.c.b) ^ _wgslsmith_mod_vec2_u32(arg_0.a.b, var_2.c.b))));
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = vec4<u32>(4294967295u, u_input.b, ~22135u, 1u);
    var var_1 = Struct_2(Struct_1(18309u, var_0.ww), -1186f, global2[_wgslsmith_index_u32(~(~(1u & ~global0.b.x)), 14u)], var_0.x >> (u_input.a.x % 32u));
    return Struct_2(Struct_1(11841u, _wgslsmith_mult_vec2_u32(u_input.a.yx & vec2<u32>(global0.a, u_input.b), ~u_input.a.yz) | ~vec2<u32>(75828u, var_0.x)), -222f, Struct_1(_wgslsmith_div_u32(~var_0.x, var_1.a.a), u_input.a.xz), _wgslsmith_dot_vec4_u32(vec4<u32>(9723u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 25147u, var_1.d), vec4<u32>(global0.b.x, global0.b.x, var_0.x, u_input.b)), func_2(Struct_2(Struct_1(4294967295u, u_input.a.zy), 639f, var_1.a, 74236u)), 4294967295u), vec4<u32>(62804u, ~u_input.b ^ min(var_0.x, var_1.d), 4294967295u, _wgslsmith_mod_u32(165504u, max(global0.a, var_0.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<u32>) -> u32 {
    let var_0 = func_1(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(8939i, firstTrailingBit(select(-2147483647i, -22297i, false)))), vec3<i32>(-1i, ~abs(max(25873i, 2147483647i)), ~28438i));
    let var_1 = global0.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-2147483647i, select(vec3<i32>(10170i, -26481i, 37162i), vec3<i32>(43399i, 2147483647i, -7560i), true)).b + _wgslsmith_f_op_f32(sign(arg_1.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1913f))));
    global2 = array<Struct_1, 14>();
    global0 = var_0.c;
    return _wgslsmith_mod_u32(16438u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, reverseBits(func_2(var_0))), abs(reverseBits(~vec2<u32>(210u, 15171u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(23889u, 14u)];
    var_0 = global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(global0.a, var_0.a), 0u)), countOneBits(func_4(~72656u, func_1(19954i, vec3<i32>(-1i, -1i, -3291i)), vec2<bool>(true, true), vec4<u32>(1u, global0.a, 4294967295u, 4294967295u)))), u_input.a.x & u_input.a.x), 14u)];
    global2 = array<Struct_1, 14>();
    global1 = 1546f;
    let var_1 = -1i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(-210f)), 1424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2062f)), _wgslsmith_f_op_f32(-883f - 1607f)))), _wgslsmith_f_op_vec2_f32(func_3()).x);
    var_0 = Struct_1(1u, vec2<u32>(var_0.a, 1u));
    let var_3 = func_1(1i, vec3<i32>(var_1, abs(reverseBits(_wgslsmith_mod_i32(var_1, -17214i))), var_1));
    let var_4 = vec2<bool>(any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)))), any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, var_2.x < 1177f, select(false, false, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1 | var_1, reverseBits(1i), abs(u_input.a));
}

