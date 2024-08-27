struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: f32 = -1000f;

var<private> global2: array<vec3<bool>, 29>;

var<private> global3: i32 = -40543i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_3(Struct_1(firstLeadingBit(abs(~vec4<u32>(56297u, 4294967295u, 69226u, 0u))), vec4<u32>(_wgslsmith_clamp_u32(8171u, ~0u, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(26187u, 4261u), vec2<u32>(37565u, 6862u)), 4294967295u, ~reverseBits(1314u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(48322u, 55040u, 28273u, 14280u)), vec4<u32>(4294967295u, 36787u, 29543u, 4261u)), countOneBits(~50655u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(219f, -1000f, -1000f, 796f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-396f, -666f, 602f, -1040f))))))), vec4<i32>(~((-17052i >> (0u % 32u)) & -global0[_wgslsmith_index_u32(6379u, 9u)]), -6366i, _wgslsmith_dot_vec2_i32(u_input.e.wz << (~vec2<u32>(7808u, 0u) % vec2<u32>(32u)), u_input.b << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), max(50295i, u_input.b.x)));
    global1 = _wgslsmith_f_op_f32(-var_0.a.d.x);
    global1 = _wgslsmith_f_op_f32(-var_0.a.d.x);
    let var_1 = _wgslsmith_clamp_vec4_u32(reverseBits(var_0.a.a), var_0.a.b, ~(_wgslsmith_div_vec4_u32(vec4<u32>(18613u, var_0.a.a.x, 22809u, var_0.a.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.a.x, var_0.a.c, 15835u, var_0.a.a.x), var_0.a.b)) & var_0.a.a));
    global3 = -4997i;
    return firstTrailingBit(vec4<i32>(-57366i, min(0i, countOneBits(var_0.b.x)), reverseBits(-2147483647i), countOneBits(global0[_wgslsmith_index_u32(var_0.a.a.x, 9u)]) << (15236u % 32u))) >> (~(vec4<u32>(max(63641u, var_1.x), ~8454u, ~1u, var_1.x & var_0.a.b.x) << (~var_1 % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(max(~global0[_wgslsmith_index_u32(1u, 9u)], u_input.e.x), 15353i, _wgslsmith_mod_i32(u_input.c, 0i), u_input.c), func_3());
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1531f, 448f) + -108f), _wgslsmith_f_op_f32(round(-1441f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-826f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) * _wgslsmith_f_op_f32(sign(-268f))))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1, -671f)), var_1)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) + _wgslsmith_f_op_f32(select(var_1, var_1, true))) - var_1))));
    let var_3 = Struct_3(Struct_1(countOneBits(firstTrailingBit(vec4<u32>(4294967295u, 1u, 0u, 13525u))), firstLeadingBit(reverseBits(~vec4<u32>(12860u, 86471u, 33537u, 46394u))), 50666u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1275f, var_1, var_1, var_1))), -min(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(38841u, 9u)], 0i, 0i) & vec4<i32>(-2147483647i, var_0.x, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]), min(u_input.e, _wgslsmith_add_vec4_i32(u_input.e, vec4<i32>(1889i, global0[_wgslsmith_index_u32(4294967295u, 9u)], 19439i, 0i)))));
    var_0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(var_3.b.x, ~u_input.a, _wgslsmith_sub_i32(-2147483647i, -16944i), _wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(var_3.a.c, 9u)])) ^ u_input.e, var_3.b | (u_input.e ^ vec4<i32>(func_3().x, u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(var_3.a.b.x, 9u)]), var_3.b.wz), 59281i)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(-1778f, var_3.a.d.x)), -550f));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_3(Struct_1(arg_3.b << (~(arg_3.a | vec4<u32>(4294967295u, 37630u, arg_3.a.x, arg_0.x)) % vec4<u32>(32u)), vec4<u32>(arg_0.x, ~arg_3.a.x, 36242u, max(arg_0.x << (arg_0.x % 32u), _wgslsmith_add_u32(40673u, 45321u))), arg_0.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_3.d, vec4<f32>(arg_3.d.x, arg_3.d.x, -1779f, 723f)) - _wgslsmith_f_op_vec4_f32(floor(arg_3.d)))))), select(firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(30227i, arg_1, -5754i, 1i), vec4<i32>(-44146i, 1i, arg_1, 5007i), vec4<i32>(global0[_wgslsmith_index_u32(21410u, 9u)], global0[_wgslsmith_index_u32(58670u, 9u)], 1i, global0[_wgslsmith_index_u32(arg_0.x, 9u)])))), u_input.e, false));
    let var_1 = 2147483647i;
    global3 = _wgslsmith_dot_vec2_i32(var_0.b.ww, vec2<i32>(~u_input.a, global0[_wgslsmith_index_u32(39607u, 9u)]));
    global2 = array<vec3<bool>, 29>();
    global1 = 509f;
    return _wgslsmith_f_op_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1533f, -1000f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1080f, _wgslsmith_f_op_f32(func_1(vec3<u32>(23367u, 12764u, 0u), -1i, vec4<bool>(true, false, false, true), Struct_1(vec4<u32>(63533u, 0u, 0u, 1u), vec4<u32>(0u, 25013u, 43874u, 1u), 54018u, vec4<f32>(-752f, -1568f, 1028f, -868f)))))))))), _wgslsmith_f_op_f32(step(-1000f, -802f))));
    global3 = ~1i;
    global1 = _wgslsmith_f_op_f32(step(-156f, _wgslsmith_f_op_f32(func_1(vec3<u32>(1u, 1u, 1u), 7278i, !vec4<bool>(u_input.b.x >= u_input.a, true, true, any(global2[_wgslsmith_index_u32(1u, 29u)])), Struct_1(abs(~vec4<u32>(0u, 1u, 0u, 4294967295u)), vec4<u32>(max(0u, 87819u), countOneBits(4294967295u), 76661u, _wgslsmith_mod_u32(32202u, 60982u)), ~(~134520u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(193f, 1416f, 1176f, -1741f) - vec4<f32>(-162f, 923f, 2401f, -653f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(945f, -913f, 260f, -1000f)))))))));
    global1 = 548f;
    global2 = array<vec3<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(-1328f, 1246f), _wgslsmith_f_op_f32(-482f * 1f)), vec3<i32>(~(-15036i), global0[_wgslsmith_index_u32(14058u, 9u)], -913i), 4294967295u);
}

