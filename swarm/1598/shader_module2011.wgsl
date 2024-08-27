struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(268f, -885f);

var<private> global1: array<Struct_2, 31>;

var<private> global2: vec3<u32>;

var<private> global3: bool;

var<private> global4: array<vec2<i32>, 3>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = select(!select(vec4<bool>(any(vec2<bool>(true, true)), true, any(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, any(vec4<bool>(true, false, true, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(113472u, arg_1.c.x), arg_1.b.xy) <= 25860u, true), vec4<bool>(arg_2 >= -2147483647i, true, true, global0.x >= _wgslsmith_f_op_f32(min(-382f, global0.x))), vec4<bool>((13981u & global2.x) < global2.x, 1u <= firstTrailingBit(arg_1.b.x), any(vec2<bool>(true, false)), true)), select(!vec4<bool>(true, global0.x != global0.x, true, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))))));
    let var_1 = !any(vec4<bool>(true, var_0.x, true, !var_0.x));
    var var_2 = _wgslsmith_f_op_f32(min(-2151f, global0.x));
    var var_3 = var_1;
    var var_4 = vec4<i32>(arg_2, countOneBits(-1i), reverseBits(~abs(min(u_input.b.x, 1i))), ~(-firstLeadingBit(u_input.a)) & 17135i);
    return !(global0.x < -348f);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    global2 = _wgslsmith_mult_vec3_u32(u_input.e.wzy, ~vec3<u32>(1u, firstLeadingBit(~27620u), ~(~5318u)));
    global4 = array<vec2<i32>, 3>();
    global2 = firstTrailingBit(countOneBits(u_input.e.wxw));
    global1 = array<Struct_2, 31>();
    let var_0 = vec3<bool>(arg_1, false, func_3(min(vec2<i32>(-u_input.b.x, 1i), u_input.b), arg_0, 1i));
    return ~global2.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> i32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))), global0.x);
    var var_0 = abs(vec4<u32>(24317u, _wgslsmith_div_u32(func_2(Struct_1(1u, vec4<u32>(u_input.e.x, u_input.e.x, arg_1.x, arg_1.x), vec4<u32>(4294967295u, 67198u, u_input.e.x, 32786u)), true), 4294967295u), ~14707u, ~func_2(Struct_1(global2.x, u_input.e, u_input.e), true)) << (min((arg_1 & arg_1) & vec4<u32>(69840u, 4294967295u, 0u, 4294967295u), abs(arg_1 & vec4<u32>(arg_1.x, arg_1.x, u_input.e.x, global2.x))) % vec4<u32>(32u)));
    global3 = _wgslsmith_mod_u32(u_input.c.x, u_input.c.x) != 0u;
    let var_1 = Struct_3(Struct_1(max(47508u, arg_1.x), u_input.e, vec4<u32>(var_0.x, firstTrailingBit(74962u), u_input.e.x, arg_1.x >> ((var_0.x ^ arg_1.x) % 32u))), global1[_wgslsmith_index_u32(~35900u, 31u)]);
    let var_2 = Struct_2(var_1.a, Struct_1(~11938u, ~(~vec4<u32>(64614u, global2.x, 4294967295u, 0u)), ~(~countOneBits(arg_1))), abs(global2.x));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<i32>(-_wgslsmith_sub_i32(-2147483647i, u_input.d), countOneBits(-56909i), reverseBits(-1i), 2147483647i), max(firstTrailingBit(abs(vec4<i32>(u_input.d, -1i, 27256i, u_input.a))), reverseBits(~vec4<i32>(11668i, u_input.d, 1098i, u_input.b.x)) | vec4<i32>(-u_input.a, ~u_input.d, u_input.d, -u_input.d)), !(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global2.x, global2.x), vec3<u32>(u_input.e.x, u_input.e.x, 10584u)), u_input.e.xyw) > ~(66031u & global2.x)));
    global3 = 11955i == firstLeadingBit(func_1(vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, 1000f, true)), _wgslsmith_f_op_f32(global0.x - global0.x), -711f), vec4<u32>(max(u_input.c.x, u_input.c.x), global2.x, u_input.c.x, 0u)));
    var var_1 = select(vec2<bool>(true, true), select(select(vec2<bool>(true, func_3(vec2<i32>(u_input.a, var_0.x), Struct_1(global2.x, u_input.e, u_input.e), var_0.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~1u > u_input.c.x), vec2<bool>(true, !func_3(vec2<i32>(18669i, -2147483647i), Struct_1(global2.x, vec4<u32>(49271u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(1u, u_input.e.x, global2.x, 0u)), -2147483647i)), vec2<bool>(true, false || func_3(u_input.b, Struct_1(u_input.c.x, vec4<u32>(26990u, 0u, 41429u, 35622u), vec4<u32>(global2.x, u_input.c.x, 47212u, u_input.e.x)), u_input.d))), select(!(true && all(vec4<bool>(true, false, true, false))), !(_wgslsmith_f_op_f32(1033f * -470f) >= _wgslsmith_f_op_f32(global0.x * global0.x)), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.x, 1690f), _wgslsmith_f_op_f32(select(586f, -155f, var_1.x)), _wgslsmith_f_op_f32(floor(1017f)), _wgslsmith_div_f32(172f, global0.x)))));
    global0 = var_2.zy;
    global1 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(38574i, 17313u, max(2147483647i, _wgslsmith_mod_i32(~min(-1i, 0i), 15729i)));
}

