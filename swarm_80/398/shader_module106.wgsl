struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 36210i;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(2147483647i, vec3<f32>(566f, 1000f, 783f), vec3<f32>(-1803f, 1022f, -109f), true, vec3<f32>(660f, -1000f, -471f)), Struct_1(18427i, vec3<f32>(-1384f, 208f, 1468f), vec3<f32>(1091f, -1000f, -1300f), true, vec3<f32>(427f, -1877f, -634f)), Struct_1(i32(-2147483648), vec3<f32>(752f, 936f, -1205f), vec3<f32>(331f, -195f, -1721f), true, vec3<f32>(614f, 105f, -1000f)), Struct_1(0i, vec3<f32>(1267f, -973f, -613f), vec3<f32>(1000f, -676f, -1250f), false, vec3<f32>(1145f, -1524f, -1119f)), Struct_1(8649i, vec3<f32>(981f, 1185f, -157f), vec3<f32>(1985f, 852f, -931f), false, vec3<f32>(-1019f, -564f, -914f)), Struct_1(-1i, vec3<f32>(353f, 588f, 721f), vec3<f32>(1036f, 1000f, -896f), false, vec3<f32>(179f, -662f, -430f)), Struct_1(-19049i, vec3<f32>(1888f, 789f, -700f), vec3<f32>(-1111f, -1235f, 637f), true, vec3<f32>(770f, 339f, 646f)));

var<private> global2: array<u32, 11>;

var<private> global3: Struct_3 = Struct_3(vec2<u32>(1u, 16334u), Struct_2(8374u, -1000f, 19292i, Struct_1(-4159i, vec3<f32>(1000f, 250f, -1332f), vec3<f32>(-477f, -237f, 184f), false, vec3<f32>(2773f, 1966f, 1338f)), vec2<u32>(1u, 29781u)), vec3<bool>(false, false, false), Struct_1(2147483647i, vec3<f32>(-528f, 131f, -389f), vec3<f32>(416f, -1682f, 1000f), false, vec3<f32>(244f, 450f, 1513f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    return _wgslsmith_mod_vec4_u32(u_input.b, u_input.b);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_3) -> f32 {
    global0 = arg_3.d.a;
    var var_0 = Struct_1(countOneBits(u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.d.c.x, 924f, 1000f), global3.b.d.e)) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.e.x), global3.b.d.e.x, _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_vec3_f32(-global3.d.b), any(select(vec2<bool>(global3.d.d, true), vec2<bool>(true, true), select(!vec2<bool>(false, arg_1.b.d.d), select(arg_3.c.xx, vec2<bool>(false, arg_0), global3.c.xz), !vec2<bool>(false, arg_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-753f, arg_3.b.b, 2741f) - vec3<f32>(global3.b.d.e.x, _wgslsmith_f_op_f32(step(-733f, -450f)), 793f)), vec3<f32>(arg_3.d.b.x, _wgslsmith_f_op_f32(-1000f - -1311f), _wgslsmith_div_f32(arg_3.b.d.c.x, _wgslsmith_f_op_f32(trunc(global3.b.b))))));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.c | firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b.c, 2147483647i), u_input.c), -global3.d.a)), _wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(_wgslsmith_add_i32(-u_input.c.x, 3614i), -2147483647i)));
    var var_2 = Struct_3(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, u_input.a.x, 21416u), arg_2) >> (~arg_1.a.x % 32u)), 4294967295u), Struct_2(80496u >> (~(~arg_1.a.x) % 32u), global3.b.b, max(-_wgslsmith_mod_i32(var_0.a, 0i), _wgslsmith_sub_i32(max(var_0.a, 0i), 16378i)), global3.d, arg_2.xx), vec3<bool>(true, any(arg_1.c), false), arg_1.d);
    var var_3 = true;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.b.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(Struct_2(firstTrailingBit(1u), -118f, max(-(-1i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.a, 11u)], 11u)] % 32u)), _wgslsmith_mod_i32(1i << (global3.b.a % 32u), u_input.c.x | u_input.c.x)), global3.d, ~_wgslsmith_mod_vec2_u32(vec2<u32>(1575u, 4294967295u), vec2<u32>(1u, 4294967295u) & vec2<u32>(u_input.a.x, 4294967295u))));
    global0 = _wgslsmith_sub_i32(~(-1i << ((~53024u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 13811u), vec2<u32>(var_0.x, 4294967295u)) % 32u)) % 32u)), u_input.c.x);
    let var_1 = vec4<f32>(1000f, global3.b.d.c.x, global3.d.e.x, _wgslsmith_f_op_f32(global3.d.b.x + _wgslsmith_div_f32(global3.d.b.x, global3.d.b.x)));
    var var_2 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~41541u, global3.b.a, _wgslsmith_sub_u32(var_0.x, u_input.a.x)), u_input.b.yxy), _wgslsmith_f_op_f32(func_3(all(global3.c.xx), Struct_3(~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 11u)])), Struct_2(reverseBits(39985u), var_1.x, -u_input.c.x, global3.b.d, ~vec2<u32>(1u, 50498u)), global3.c, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), ~(~vec3<u32>(global3.a.x, 45978u, u_input.b.x)), Struct_3(_wgslsmith_clamp_vec2_u32(global3.a, abs(vec2<u32>(44177u, u_input.a.x)), ~global3.a), global3.b, global3.c, Struct_1(u_input.c.x, _wgslsmith_f_op_vec3_f32(-var_1.xzy), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.d.e.x, -506f, 1213f), global3.b.d.c)), true, _wgslsmith_f_op_vec3_f32(global3.d.c + vec3<f32>(163f, -1410f, var_1.x)))))), reverseBits(global3.d.a), global3.b.d, global3.a);
    let var_3 = ~(_wgslsmith_clamp_u32(u_input.a.x, reverseBits(4294967295u), global3.b.a) | ~(reverseBits(var_0.x) << (~0u % 32u)));
    return global3.d;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global0 = -7981i;
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(-2147483647i), 46996i, u_input.c.x << (global2[_wgslsmith_index_u32(16904u, 11u)] % 32u)), vec3<i32>(-arg_0.a, ~_wgslsmith_div_i32(-2147483647i, global3.b.c), arg_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-645f, global3.d.e.x, -279f)))))), global3.b.d.b, true, vec3<f32>(global3.d.b.x, -219f, global3.b.b));
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-func_1().b.x);
    var var_1 = !(global3.d.c.x >= -1385f);
    global1 = array<Struct_1, 7>();
    global2 = array<u32, 11>();
    global0 = _wgslsmith_mod_i32(select(arg_0.d.a, select(arg_1.d.a, global3.b.c, !global3.c.x & global3.c.x), !arg_1.d.d), -((global3.b.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.x, arg_1.a.x, arg_0.a), u_input.b.www) % 32u)) << (33719u % 32u)));
    return Struct_3(~vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b.xzx, ~vec3<u32>(u_input.b.x, arg_0.e.x, arg_1.a.x)), arg_0.e.x), Struct_2(35785u, arg_3, abs(~u_input.c.x), Struct_1(-global3.d.a, _wgslsmith_f_op_vec3_f32(global3.b.d.c - _wgslsmith_f_op_vec3_f32(global3.d.b * vec3<f32>(331f, 831f, arg_3))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(global3.b.d.c)))), false, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.b, var_0, 239f), vec3<f32>(981f, -743f, -838f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) + arg_1.b.d.b))), ~vec2<u32>(global3.a.x, ~4294967295u)), global3.c, func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    var var_1 = func_5(Struct_2(~4294967295u, global3.b.d.e.x, max(_wgslsmith_clamp_i32(global3.b.d.a, i32(-1i) * -59808i, -u_input.c.x), -2147483647i), func_4(func_1(), func_1().b.x), vec2<u32>(_wgslsmith_dot_vec4_u32(func_2(global3.b), _wgslsmith_mult_vec4_u32(vec4<u32>(30397u, 4294967295u, 47842u, u_input.a.x), u_input.b)), firstTrailingBit(1u))), Struct_3(u_input.a, global3.b, select(vec3<bool>(true, u_input.a.x == 0u, global3.d.d), select(!global3.c, global3.c, true), vec3<bool>(any(vec4<bool>(global3.d.d, true, global3.c.x, global3.d.d)), false, global3.c.x)), global3.b.d), -u_input.c.x > 2147483647i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.b.b))));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(1u, ~1u), ~17323u, var_1.a.x, 9145u);
    global2 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-208f, vec3<u32>(~var_1.a.x, _wgslsmith_mod_u32(func_5(global3.b, Struct_3(vec2<u32>(var_2.x, 13790u), global3.b, global3.c, Struct_1(-12110i, vec3<f32>(global3.b.d.c.x, var_1.d.b.x, -852f), vec3<f32>(461f, var_1.b.b, var_1.b.d.c.x), var_1.d.d, vec3<f32>(var_1.d.e.x, var_1.b.d.b.x, var_1.b.b))), var_1.c.x, _wgslsmith_f_op_f32(-global3.d.c.x)).b.a, min(_wgslsmith_div_u32(u_input.a.x, var_1.b.a), 40033u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 11u)], 11u)])), var_2.x), _wgslsmith_mod_i32(~firstTrailingBit(u_input.c.x) ^ ~(~var_1.b.c), -_wgslsmith_add_i32(1i, -23957i)), ~global2[_wgslsmith_index_u32(~80449u, 11u)]);
}

