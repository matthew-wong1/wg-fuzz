struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> bool {
    let var_0 = vec3<bool>(true, !(u_input.a <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(10982u, arg_1, 0u) & vec3<u32>(arg_1, arg_1, u_input.a))), arg_0);
    var var_1 = Struct_2(vec2<f32>(-1000f, 818f), Struct_1(!arg_0, _wgslsmith_add_u32(~select(4294967295u, u_input.a, true), 4294967295u), global0[_wgslsmith_index_u32(~u_input.a, 28u)]), -abs(~arg_2.x) ^ ((reverseBits(-12507i) << ((u_input.a ^ u_input.a) % 32u)) & _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_2.x, arg_2.x, -24151i), vec3<i32>(-1i, arg_2.x, 0i), var_0), -vec3<i32>(arg_2.x, arg_2.x, 2147483647i))));
    var var_2 = Struct_4(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(456f)), -2468f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a + var_1.a), vec2<f32>(var_1.a.x, var_1.b.c))), Struct_1(!(!var_0.x), abs(4294967295u), global0[_wgslsmith_index_u32(~1u, 28u)]), arg_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(945f, global0[_wgslsmith_index_u32(17320u, 28u)]), var_1.a))))));
    var_2 = Struct_4(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b.c, 2662f)))) - var_2.b));
    var_1 = var_2.a;
    return var_1.b.a;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2) -> vec2<u32> {
    global1 = select(vec3<bool>(select(func_3(arg_0, 4294967295u, vec2<i32>(arg_2.c, 38330i)), arg_2.b.a, all(vec4<bool>(false, false, true, arg_2.b.a))) & arg_2.b.a, global1.x, all(select(vec4<bool>(arg_0, true, true, arg_2.b.a), !vec4<bool>(false, true, arg_0, arg_0), true))), !vec3<bool>(arg_2.b.a, false, arg_2.b.c <= -492f), arg_0);
    global1 = vec3<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(select(arg_0, false, false), !arg_0), !(!global1.x))), !(!(-379f >= global0[_wgslsmith_index_u32(u_input.a, 28u)]) | arg_0));
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - global0[_wgslsmith_index_u32(u_input.a, 28u)]))), arg_2.b.c, arg_2.a.x), arg_1.zxx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.zzz) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), global0[_wgslsmith_index_u32(arg_2.b.b, 28u)])), global0[_wgslsmith_index_u32(1u, 28u)]))));
    let var_1 = Struct_4(arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.a)) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1483f)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 28u)]))));
    var var_2 = Struct_3(vec4<i32>(abs(_wgslsmith_mod_i32(var_1.a.c, arg_2.c)), 2147483647i, _wgslsmith_div_i32(var_1.a.c, (44779i ^ var_1.a.c) ^ (2147483647i ^ arg_2.c)), -_wgslsmith_mod_i32(var_1.a.c ^ arg_2.c, var_1.a.c)), min(~abs(vec2<u32>(1u, 0u)), countOneBits(vec2<u32>(~var_1.a.b.b, arg_2.b.b << (var_1.a.b.b % 32u)))), Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a + arg_2.a) - arg_1.yx))), arg_2.b, 41215i), (~(-var_1.a.c) != var_1.a.c) != true, select(!select(!vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(global1.x, false, arg_2.b.a), vec3<bool>(global1.x, false, true), vec3<bool>(arg_0, true, arg_2.b.a)), select(vec3<bool>(true, global1.x, false), vec3<bool>(true, false, arg_2.b.a), vec3<bool>(true, true, false))), vec3<bool>(true, global1.x, arg_0 == any(global1.xx)), !select(!vec3<bool>(var_1.a.b.a, var_1.a.b.a, true), select(vec3<bool>(true, arg_0, var_1.a.b.a), vec3<bool>(true, arg_0, global1.x), var_1.a.b.a), vec3<bool>(arg_2.b.a, arg_0, false))));
    return ~abs(~var_2.b) >> (var_2.b % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>) -> f32 {
    var var_0 = u_input.a;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], -1000f))))), Struct_1(false, _wgslsmith_div_u32(u_input.a, firstLeadingBit(21551u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1953f) - _wgslsmith_f_op_f32(min(140f, -118f)))), -2020i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-278f, global0[_wgslsmith_index_u32(u_input.a, 28u)]))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], -511f) + vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 1444f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1003f, global0[_wgslsmith_index_u32(~44314u, 28u)]) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1094f, -1150f)), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(24144u, 28u)], global0[_wgslsmith_index_u32(arg_0.x, 28u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(0u, 28u)])))))));
    let var_2 = 1i;
    var_1 = Struct_4(var_1.a, var_1.a.a);
    let var_3 = 103f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-3492f)), global0[_wgslsmith_index_u32(arg_0.x, 28u)]))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-285f + _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_u32(func_2(false, vec4<f32>(global0[_wgslsmith_index_u32(0u, 28u)], -1011f, 2134f, global0[_wgslsmith_index_u32(u_input.a, 28u)]), Struct_2(vec2<f32>(-530f, -265f), Struct_1(true, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 28u)]), -40702i)), vec2<u32>(u_input.a, u_input.a)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1176f, _wgslsmith_f_op_f32(-var_0))))), Struct_1(global1.x || (any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)) || all(vec3<bool>(global1.x, true, true))), 65323u & ~(u_input.a & u_input.a), var_0), firstLeadingBit(-452i));
    global1 = select(vec3<bool>(false | any(vec3<bool>(true, true, true)), true, all(select(!vec2<bool>(global1.x, global1.x), !global1.xz, true))), !vec3<bool>(var_1.b.a, (var_1.b.b < var_1.b.b) | false, true), select(!(!vec3<bool>(false, var_1.b.a, var_1.b.a)), select(!vec3<bool>(false, var_1.b.a, var_1.b.a), !select(vec3<bool>(false, var_1.b.a, true), vec3<bool>(var_1.b.a, false, var_1.b.a), vec3<bool>(true, true, true)), vec3<bool>(global1.x || true, true, true)), func_3(select(var_1.c <= var_1.c, true, var_1.b.a), select(72831u, var_1.b.b, true), abs(vec2<i32>(1i, var_1.c)))));
    let var_2 = var_1.c;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(282f, -408f, global0[_wgslsmith_index_u32(1u, 28u)]))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1.b.b, 28u)], 477f, 1089f) * vec3<f32>(-966f, var_0, var_1.b.c))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -126f, -206f)));
    return _wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(820f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1653f)) * _wgslsmith_f_op_f32(sign(var_0))), func_3(true, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.b, var_1.b.b), vec2<u32>(u_input.a, u_input.a)), ~vec2<i32>(-2147483647i, var_1.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(952f, 446f, 371f), vec3<f32>(1752f, global0[_wgslsmith_index_u32(22710u, 28u)], 810f)), vec3<f32>(-327f, 539f, -756f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-376f, global0[_wgslsmith_index_u32(u_input.a, 28u)])), _wgslsmith_f_op_f32(f32(-1f) * -2070f), _wgslsmith_f_op_f32(f32(-1f) * -977f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1579f), _wgslsmith_div_f32(2058f, global0[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_f32(-532f - global0[_wgslsmith_index_u32(1u, 28u)]))))), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(max(70235u, 79407u), abs(1u)), 28u)] + _wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a, 28u)]))));
    var var_1 = abs(~vec2<i32>(reverseBits(-22529i), -1i));
    let var_2 = firstTrailingBit(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(-vec3<i32>(0i, -1i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, 12934i, var_1.x), vec3<i32>(-5226i, var_1.x, -5949i))));
    var_1 = vec2<i32>(-3973i, _wgslsmith_add_i32(var_1.x, -abs(var_1.x)));
    let var_3 = Struct_1(all(vec2<bool>(any(vec3<bool>(false, true, global1.x)), !global1.x && !global1.x)), 94014u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(select(-370f, global0[_wgslsmith_index_u32(~(u_input.a ^ 41856u), 28u)], true))));
    var var_4 = reverseBits(vec3<u32>(45889u, var_3.b, ~(~abs(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 2147483647i);
}

