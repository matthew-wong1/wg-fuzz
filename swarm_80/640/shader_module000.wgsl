struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: Struct_1;

var<private> global3: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>) -> bool {
    global2 = global3.b;
    let var_0 = global3.a;
    let var_1 = global3.c;
    let var_2 = Struct_2(Struct_1(abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.a, 120245u), 23256u)), select(vec3<bool>(true, true | global3.a.b.x, var_0.b.x && false), select(var_0.b, vec3<bool>(global3.b.b.x, true, global3.a.b.x), global2.b), select(var_0.b, select(global3.b.b, vec3<bool>(false, var_0.b.x, false), true), true))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.a, ~44560u, abs(global2.a), global0.a), select(min(vec4<u32>(4294967295u, global2.a, global3.a.a, global0.a), vec4<u32>(global2.a, 4294967295u, global2.a, global3.b.a)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global0.a, u_input.a.x, var_0.a), vec4<u32>(45367u, 69844u, 15378u, 4294967295u)), true)), !global0.b), arg_0.x, -_wgslsmith_dot_vec3_i32(~(vec3<i32>(1i, -9577i, global3.c) ^ vec3<i32>(0i, -3548i, 1i)), -countOneBits(vec3<i32>(-2147483647i, -16401i, arg_0.x))));
    var var_3 = ~59826u;
    return select(true, global3.b.b.x, any(vec3<bool>((arg_1.x <= 1349f) && (var_2.a.a <= 4294967295u), u_input.a.x > ~0u, all(!vec4<bool>(true, true, true, global0.b.x)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = Struct_1(max(22560u, 1u), !vec3<bool>(arg_2 & (global3.b.b.x & global0.b.x), max(1u, u_input.a.x) <= (48031u | global3.b.a), true));
    var var_0 = global3.b;
    var var_1 = global3.b;
    return Struct_1(~0u, select(!vec3<bool>(select(false, false, var_0.b.x), true, func_3(vec2<i32>(15048i, global3.d), vec4<f32>(1833f, -271f, arg_1, arg_1))), vec3<bool>(func_3(vec2<i32>(global3.d, global3.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 254f, arg_1))), func_3(-vec2<i32>(global3.c, -238i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-160f, arg_1, arg_1, arg_1) - vec4<f32>(arg_1, arg_1, 1000f, arg_1))), true), true));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(global3.b, Struct_1(4294967295u, func_2(abs(vec4<u32>(arg_3.a, 0u, 4294967295u, 4294967295u)), 600f, _wgslsmith_f_op_f32(f32(-1f) * -920f) == _wgslsmith_f_op_f32(arg_0.x * 238f)).b), _wgslsmith_sub_i32(global3.d, firstLeadingBit(-57099i)), global3.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(arg_0.yw, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.yx), vec2<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, 618f))))), arg_0.wy)), global2.b.xy));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.x)))));
    var_0 = Struct_2(arg_3, var_0.a, var_0.c, var_0.c);
    let var_3 = Struct_2(Struct_1(~1u, global2.b), global3.a, global3.d, reverseBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(-1i), -1i), var_0.c)));
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1000f * var_1.x), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.x)), arg_0.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-107f, 1262f, 1244f, -214f))), arg_2.a, Struct_1(12453u, vec3<bool>(false, global0.b.x, false)), func_2(vec4<u32>(arg_0.a.a, 4294967295u, global0.a, 0u), -122f, global0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-935f, -109f, 266f) * vec3<f32>(-1000f, -1676f, 996f))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1008f - 1000f), -640f, -905f), vec3<f32>(_wgslsmith_f_op_f32(sign(-744f)), 1000f, _wgslsmith_f_op_f32(step(801f, -173f))), vec3<bool>(select(global3.a.b.x, global0.b.x, true), arg_2.b.x, true)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(906f, -261f) * 1779f), _wgslsmith_f_op_f32(832f + _wgslsmith_f_op_f32(step(320f, -1248f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-866f + 877f) * -500f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(935f, -147f)), _wgslsmith_f_op_f32(2137f - -333f), -1200f) + vec3<f32>(-551f, _wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(max(741f, -573f))))));
    var var_1 = vec4<f32>(1482f, 705f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(764f - _wgslsmith_f_op_f32(var_0.x - var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-445f + var_0.x)) + var_0.x)), var_0.x);
    let var_2 = 301f;
    global2 = func_2(vec4<u32>(global2.a, abs(66701u), _wgslsmith_clamp_u32(global0.a, ~1u, countOneBits(20402u)), 0u), _wgslsmith_f_op_f32(-var_1.x), !(!global3.a.b.x));
    global2 = arg_2;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2.b.yy;
    var var_1 = global3.a.b.x;
    var_0 = vec2<bool>(false, false);
    global3 = func_1(Struct_2(Struct_1(_wgslsmith_mult_u32(global3.b.a, u_input.a.x >> (global0.a % 32u)), vec3<bool>(global3.c <= global3.d, true, true)), global3.b, max(1i, _wgslsmith_add_i32(-6984i ^ global3.c, firstLeadingBit(0i))), i32(-1i) * -_wgslsmith_div_i32(46198i, -1i)), vec3<i32>(global3.d, -1i, min(2147483647i, -947i)), Struct_1(4294967295u & (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(global3.b.a, global0.a, 0u)) << (global2.a % 32u)), vec3<bool>(~global2.a != _wgslsmith_mult_u32(27120u, 33214u), global3.b.b.x, true)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -792f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -536f, -589f), abs(global3.b.a) ^ 1u, Struct_1(abs(u_input.a.x), !vec3<bool>(var_0.x, false, true)), Struct_1(u_input.a.x >> (u_input.a.x % 32u), global0.b))).x), -1079f);
    let var_3 = vec3<bool>(!var_0.x, true, !global2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-48224i, vec2<u32>(global3.b.a, ~func_1(Struct_2(Struct_1(global2.a, vec3<bool>(true, true, var_0.x)), Struct_1(48021u, vec3<bool>(true, false, false)), -2147483647i, -1i), vec3<i32>(global3.c, global3.c, global3.c), Struct_1(global2.a, var_3)).b.a & 30420u), countOneBits(global2.a), _wgslsmith_f_op_f32(f32(-1f) * -502f));
}

