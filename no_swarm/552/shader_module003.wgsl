struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(37833u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 14233u, 0u), vec3<u32>(16398u, 0u, 0u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(2069u, 0u, 64584u), vec3<u32>(62525u, 46449u, 99910u), vec3<u32>(2292u, 49218u, 4294967295u), vec3<u32>(4294967295u, 54188u, 0u), vec3<u32>(21140u, 4294967295u, 1u), vec3<u32>(26083u, 67470u, 8387u), vec3<u32>(8709u, 19789u, 69492u), vec3<u32>(31615u, 0u, 53012u), vec3<u32>(30638u, 0u, 4294967295u), vec3<u32>(84380u, 3712u, 49196u), vec3<u32>(0u, 0u, 51749u));

var<private> global1: i32 = -40642i;

var<private> global2: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(1141i, 5751i, 0i, 0i), vec4<i32>(-3701i, i32(-2147483648), 36127i, -13849i), vec4<i32>(2147483647i, -15264i, 65220i, 49320i), vec4<i32>(-8606i, -23416i, 6818i, 12336i), vec4<i32>(1i, 2147483647i, 7079i, 36825i), vec4<i32>(-13111i, 2147483647i, -1i, 2147483647i), vec4<i32>(1i, -1i, 2147483647i, -97567i), vec4<i32>(12177i, 15809i, -1i, -14049i), vec4<i32>(15435i, 6974i, 0i, 1i), vec4<i32>(-1i, -3097i, 2147483647i, i32(-2147483648)), vec4<i32>(21949i, i32(-2147483648), 4618i, -21117i), vec4<i32>(-1i, -40829i, 2147483647i, 42304i), vec4<i32>(-29742i, -19282i, -31169i, -1862i), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 18127i, -21809i, 2147483647i), vec4<i32>(43882i, -29968i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 1i, -1i, 46654i), vec4<i32>(-7436i, 14682i, 2072i, 24674i), vec4<i32>(2147483647i, 12552i, 30865i, 1i), vec4<i32>(17091i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, -5487i, 36847i, 0i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(-31575i, 6873i, 0i, -20728i), vec4<i32>(0i, 1i, 1i, 0i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = true;
    global1 = -reverseBits(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, 2147483647i, 11032i), vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(47121i, -2147483647i, 4601i)));
    global2 = array<vec4<i32>, 24>();
    var var_2 = (~(-2147483647i << (arg_1.a % 32u)) <= _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-22981i, 23184i), -2281i, -24526i >> (u_input.a % 32u)), -reverseBits(0i))) | any(vec4<bool>(select(!var_1, true, false), arg_0.x >= _wgslsmith_f_op_f32(arg_0.x - arg_0.x), !var_1, true));
    return -122f;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> f32 {
    global0 = array<vec3<u32>, 15>();
    global0 = array<vec3<u32>, 15>();
    let var_0 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1943f, 1421f, 1101f), vec3<f32>(1518f, -666f, -804f), false)))), Struct_1(u_input.a | 1u))), -1402f)));
}

fn func_3(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(~max(u_input.a, ~0u)), Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, 5610u, u_input.a, u_input.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 6574u, u_input.a), vec4<u32>(1u, 0u, 0u, 40197u)))), 2147483647i, Struct_1(abs(4294967295u)), countOneBits(-15623i));
    global1 = _wgslsmith_add_i32(~min(var_0.e >> (_wgslsmith_div_u32(30768u, 26821u) % 32u), 2147483647i), var_0.c);
    global1 = abs(reverseBits(firstTrailingBit(var_0.c))) << (abs(78762u) % 32u);
    global1 = min(~2147483647i, var_0.e) & -57937i;
    let var_1 = !(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, true))), ~u_input.a < 1u)) <= 1201f);
    return Struct_2(Struct_1(reverseBits(1u)), var_0.d, var_0.c, Struct_1(~48737u), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = i32(-1i) * -19276i;
    var var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_u32(u_input.a, 52086u), _wgslsmith_dot_vec3_i32(vec3<i32>(-10310i, -4425i, -27362i), vec3<i32>(27058i, -10829i, 30113i)), Struct_1(u_input.a))))));
    var var_1 = Struct_2(var_0.d, Struct_1(var_0.d.a ^ ~_wgslsmith_div_u32(var_0.b.a, u_input.a)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(494f)) - _wgslsmith_f_op_f32(538f - 1864f)) - _wgslsmith_f_op_f32(-724f - 1708f))).c, Struct_1(~10847u), 2147483647i >> (~max(_wgslsmith_clamp_u32(var_0.a.a, var_0.a.a, u_input.a), 1u) % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(336f, 279f, -1122f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1441f, 1557f, -693f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, -237f, -255f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-416f, -247f, -1298f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2029f, 820f, 285f) + vec3<f32>(-214f, -1617f, -1204f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec3<f32>(1000f, 945f, 310f), Struct_1(var_1.b.a))), _wgslsmith_f_op_f32(abs(703f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-351f, -2131f)))))));
    let var_3 = vec2<bool>(false, !select(true, !any(vec4<bool>(false, false, true, false)), false));
    let var_4 = _wgslsmith_div_vec2_f32(var_2.xz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xz + var_2.xz)), var_2.yx));
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d.a, var_1.b.a, var_1.d.a, var_1.a.a), vec4<u32>(107038u, var_0.d.a, 71387u, 0u))), select(max(vec4<u32>(61347u, var_0.b.a, 17770u, 1u), vec4<u32>(var_1.a.a, 26212u, 16658u, u_input.a)), vec4<u32>(51029u, 4294967295u, 32152u, 31319u) << (vec4<u32>(var_0.a.a, var_0.b.a, 19535u, 50998u) % vec4<u32>(32u)), 2147483647i > var_1.e))), reverseBits(var_1.c), Struct_1(func_3(-656f).b.a), _wgslsmith_mult_i32(~var_0.c, _wgslsmith_add_i32(var_0.e, var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, 1893i, var_4.x);
}

