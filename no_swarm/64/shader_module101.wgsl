struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 7705u), 1039f), Struct_2(Struct_1(vec2<u32>(0u, 1u), 25178u), 1070f), Struct_2(Struct_1(vec2<u32>(0u, 8784u), 73820u), -1508f), Struct_2(Struct_1(vec2<u32>(71236u, 39643u), 4703u), 960f), Struct_2(Struct_1(vec2<u32>(0u, 1u), 0u), 1478f), Struct_2(Struct_1(vec2<u32>(1u, 38416u), 0u), 1000f), Struct_2(Struct_1(vec2<u32>(0u, 62121u), 17059u), -132f), Struct_2(Struct_1(vec2<u32>(1u, 19168u), 1u), -1200f), Struct_2(Struct_1(vec2<u32>(19929u, 0u), 59066u), 1121f), Struct_2(Struct_1(vec2<u32>(0u, 21019u), 20584u), 1761f), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), 4294967295u), 165f), Struct_2(Struct_1(vec2<u32>(1u, 0u), 44756u), -1500f), Struct_2(Struct_1(vec2<u32>(69862u, 52296u), 9931u), 714f), Struct_2(Struct_1(vec2<u32>(1u, 21050u), 57766u), -859f), Struct_2(Struct_1(vec2<u32>(17227u, 0u), 0u), 1025f), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 12464u), 2050f), Struct_2(Struct_1(vec2<u32>(1u, 28188u), 0u), 510f), Struct_2(Struct_1(vec2<u32>(4294967295u, 49369u), 0u), -2688f), Struct_2(Struct_1(vec2<u32>(4294967295u, 54117u), 6792u), -1214f), Struct_2(Struct_1(vec2<u32>(12649u, 135223u), 70988u), 372f), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 0u), -1027f), Struct_2(Struct_1(vec2<u32>(1u, 1u), 4294967295u), 139f));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 2193u), 52768u), -242f);

var<private> global3: array<u32, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global2 = Struct_2(Struct_1(~_wgslsmith_clamp_vec2_u32(~arg_0.a.a, vec2<u32>(63392u, global3[_wgslsmith_index_u32(arg_0.a.b, 26u)]), u_input.a), 36888u), _wgslsmith_f_op_f32(ceil(-837f)));
    var var_0 = Struct_3(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -23458i), countOneBits(vec2<i32>(19913i, 2147483647i))), vec2<i32>(-20234i >> (u_input.c.x % 32u), u_input.d)) & u_input.b.xx, arg_0.a);
    let var_1 = Struct_3(-vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 2147483647i), var_0.a), -var_0.a.x, countOneBits(22576i)), select(_wgslsmith_sub_i32(-1i, var_0.a.x), _wgslsmith_div_i32(u_input.d, u_input.d), true)), arg_0.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(163f, -1019f), arg_0.b)), _wgslsmith_f_op_f32(floor(-817f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(622f, global2.b, global2.b))))) + vec3<f32>(_wgslsmith_f_op_f32(max(1763f, -952f)), global2.b, _wgslsmith_f_op_f32(step(arg_0.b, arg_0.b))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_div_f32(-459f, global2.b)), -1455f, _wgslsmith_f_op_f32(-arg_0.b))));
    global1 = array<Struct_2, 22>();
    return var_1.b.b;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(0u, global2.a.b, global0.b), arg_0.a.a.x)), func_3(Struct_2(arg_0.a, arg_0.b))), -625f);
    global0 = global2.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1805f, _wgslsmith_f_op_f32(floor(var_0.b)), all(vec2<bool>(all(vec2<bool>(true, false)), true)))) + arg_0.b);
    global1 = array<Struct_2, 22>();
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1362f, -2017f, false)), global2.b), 928f)) - global2.b));
    return Struct_2(Struct_1(firstTrailingBit(~vec2<u32>(0u, global2.a.a.x)), _wgslsmith_mod_u32(4294967295u, ~(~28365u))), _wgslsmith_div_f32(arg_0.b, var_0.b));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = -649f;
    global2 = global1[_wgslsmith_index_u32(global0.b, 22u)];
    global2 = func_2(Struct_2(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(572f)))));
    let var_1 = global2.b;
    global3 = array<u32, 26>();
    return Struct_3(u_input.b.ww, func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, func_3(func_2(Struct_2(global2.a, -565f)))), 22u)]).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1373f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1198f, global2.b) + _wgslsmith_f_op_f32(trunc(1497f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + -274f) - _wgslsmith_f_op_f32(abs(global2.b))))));
    let var_1 = ~vec3<u32>(u_input.c.x, countOneBits(1291u), 52686u);
    var var_2 = func_1(global2.a, !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_3 = vec4<u32>(46415u, _wgslsmith_mult_u32(~9738u, u_input.c.x), ~u_input.c.x, 1u);
    let var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yy);
}

