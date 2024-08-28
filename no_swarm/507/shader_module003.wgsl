struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 31>;

var<private> global2: Struct_4 = Struct_4(vec4<f32>(-847f, 1701f, 484f, 638f), vec3<bool>(true, false, false), 18182i);

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: bool) -> vec3<u32> {
    let var_0 = !global2.b.x;
    global3 = Struct_3(Struct_1(global3.a.c, vec3<f32>(-817f, 147f, _wgslsmith_f_op_f32(-global3.a.b.x)), u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global3.a.b.zy);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), -656f))), global3.a, 983f, global3.a);
    var var_3 = ~min(~vec2<u32>(_wgslsmith_clamp_u32(18689u, 1u, 117033u), ~62789u), ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 41606u), vec2<u32>(77585u, 4294967295u), vec2<u32>(0u, 8780u)), vec2<u32>(4294967295u, 71700u)));
    return reverseBits(~min(~vec3<u32>(var_3.x, 0u, var_3.x) ^ (vec3<u32>(var_3.x, var_3.x, var_3.x) >> (vec3<u32>(var_3.x, var_3.x, 4294967295u) % vec3<u32>(32u))), vec3<u32>(abs(var_3.x), var_3.x, 1u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = global2.a;
    global2 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global2.a))), vec3<bool>(~(~arg_2.a) == arg_2.a, ~(~arg_2.c) > _wgslsmith_sub_i32(arg_2.c, _wgslsmith_div_i32(-13768i, -36416i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2650f, global2.a.x)) == _wgslsmith_f_op_f32(max(global2.a.x, _wgslsmith_f_op_f32(select(1024f, global2.a.x, global2.b.x))))), 0i);
    let var_1 = 1541u;
    let var_2 = Struct_3(arg_2);
    global1 = array<vec4<i32>, 31>();
    return _wgslsmith_div_u32(arg_1, var_1);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mod_vec4_u32(abs(~(~(~vec4<u32>(4294967295u, 4294967295u, 65755u, 47304u)))), vec4<u32>(~max(firstTrailingBit(86694u), abs(4294967295u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(max(17450u, 24403u), firstLeadingBit(6324u)), 1u), 1u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(29569u, 31639u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 22706u), vec2<u32>(12986u, 1u), vec2<u32>(34035u, 4294967295u))), 16893u)));
    let var_1 = func_3(func_2(select(select(select(vec4<bool>(false, true, false, global2.b.x), vec4<bool>(true, global2.b.x, true, global2.b.x), vec4<bool>(false, global2.b.x, global2.b.x, false)), select(vec4<bool>(global2.b.x, true, global2.b.x, global2.b.x), vec4<bool>(false, global2.b.x, true, global2.b.x), vec4<bool>(false, global2.b.x, true, global2.b.x)), !global2.b.x), vec4<bool>(true, true, true, true), global2.b.x && !global2.b.x), -1000f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global2.a - vec4<f32>(global2.a.x, 623f, -943f, global0.b.x)), _wgslsmith_f_op_vec4_f32(global2.a - vec4<f32>(1998f, 1000f, global3.a.b.x, global3.a.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(min(global2.a.x, -555f)), -924f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_add_i32(-28794i >> (var_0.x % 32u), u_input.a.x) > ~select(global3.a.c, -18134i, global2.b.x)), 1u, Struct_1(global3.a.c, _wgslsmith_f_op_vec3_f32(global0.b * global0.b), -1i));
    global3 = Struct_3(global3.a);
    global3 = Struct_3(Struct_1(1i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(trunc(-1650f)), _wgslsmith_f_op_f32(948f * 1000f)), global3.a.b)), u_input.a.x));
    global2 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)) - _wgslsmith_f_op_f32(floor(global0.b.x))), global3.a.b.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-695f * global3.a.b.x), global3.a.b.x, _wgslsmith_div_f32(global2.a.x, 2114f), 1f) - global2.a)), vec3<bool>(select(global2.b.x, global2.b.x, false & (global2.b.x | false)), any(select(vec4<bool>(false, global2.b.x, true, global2.b.x), vec4<bool>(global2.b.x, global2.b.x, true, true), vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x))), !global2.b.x), global2.c);
    return _wgslsmith_f_op_f32(floor(global2.a.x));
}

fn func_4(arg_0: f32) -> vec4<i32> {
    var var_0 = vec2<i32>(abs(_wgslsmith_mod_i32(-1i, min(1i, u_input.a.x)) & ~u_input.a.x), 1i);
    var var_1 = -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(18767i, _wgslsmith_sub_i32(global3.a.c, var_0.x))), abs(vec2<i32>(-12669i, var_0.x)));
    global1 = array<vec4<i32>, 31>();
    var var_2 = reverseBits(select(abs(global3.a.c), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2.c, var_0.x), vec3<i32>(global0.a, -7248i, 0i))), any(select(!global2.b, vec3<bool>(false, global2.b.x, true), false))));
    var_0 = abs(vec2<i32>(global0.c, var_0.x));
    return vec4<i32>(15522i, reverseBits(-53600i), ~((_wgslsmith_mult_i32(41320i, global0.a) | ~u_input.a.x) & _wgslsmith_mult_i32(global0.c, global2.c)), global0.a & reverseBits(0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~global0.c << (~4294967295u % 32u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global3.a.b.x, global2.a.x, global2.b.x))))), -1221f, global0.b.x), global2.c);
    let var_0 = 4294967295u;
    var var_1 = select(select(global2.b, !global2.b, global2.b), global2.b, global2.b.x);
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_vec3_f32(-global3.a.b), u_input.a.x);
    var var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))) * _wgslsmith_f_op_f32(874f * _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(exp2(var_2.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(2114f, u_input.a.x);
}

