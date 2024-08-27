struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: i32;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true));

var<private> global4: array<Struct_2, 11>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_2(true);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(abs(1463f)), _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a, true)), var_0.a)));
    let var_1 = arg_0.c.xyz;
    let var_2 = arg_0.b.x;
    var var_3 = Struct_2(var_0.a);
    return ~(min(0u, 0u) | ~firstTrailingBit(29157u)) | 1u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = ~(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(6740u, arg_2.x), func_3(Struct_3(global0.x, vec2<i32>(arg_0.x, 2147483647i), vec4<bool>(arg_1.x, false, global1.x, global1.x), arg_1.x, vec2<bool>(false, global1.x)))), ~1u));
    let var_1 = vec2<u32>(var_0, arg_2.x);
    return Struct_2(all(select(vec4<bool>(global1.x | arg_1.x, arg_0.x >= u_input.b, arg_1.x, false), !select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(false, true, false, true), vec4<bool>(arg_1.x, global1.x, true, true)), vec4<bool>(!arg_1.x, all(vec2<bool>(global1.x, global1.x)), all(arg_1), var_0 == 1u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, 308f, global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -1351f, -1190f, 391f), vec4<f32>(global0.x, -505f, global0.x, global0.x))))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, -1629f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.xz)))));
    var var_1 = select(!(!(!vec2<bool>(global1.x, false))), vec2<bool>(global1.x, true), any(vec3<bool>(true, !all(vec3<bool>(global1.x, false, global1.x)), all(select(vec4<bool>(true, global1.x, true, true), vec4<bool>(global1.x, global1.x, arg_1.a, global1.x), arg_0.a)))));
    var var_2 = vec4<bool>(u_input.b > ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-43036i, u_input.b), vec2<i32>(-1i, u_input.a)), 26088i), global1.x, false, true);
    return global3[_wgslsmith_index_u32(1u, 8u)];
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> vec4<f32> {
    global1 = !vec3<bool>(arg_0.d, all(arg_0.c), true);
    let var_0 = arg_2;
    var var_1 = Struct_3(arg_0.a, _wgslsmith_mod_vec2_i32(vec2<i32>(11285i, -2147483647i), arg_0.b), arg_0.c, arg_0.e.x, vec2<bool>(false, !var_0.a));
    var_1 = Struct_3(var_1.a, var_1.b, select(!(!select(vec4<bool>(false, arg_2.a, true, false), var_1.c, var_1.c)), var_1.c, max(72989u, 0u) < ~_wgslsmith_mod_u32(arg_1, arg_1)), arg_0.d, vec2<bool>(true, true));
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1123f, global0.x, global0.x, -535f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1680f, -1069f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, global0.x, arg_0.a, arg_0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, global0.x, global0.x))))));
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(Struct_3(_wgslsmith_f_op_f32(global0.x + -218f), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-35855i, u_input.a)), vec4<bool>(false, global1.x, true, true), all(vec3<bool>(true, false, true)), vec2<bool>(global1.x, true)), 6043u, func_4(Struct_2(true), func_2(vec4<i32>(u_input.b, u_input.a, 0i, u_input.b), vec3<bool>(global1.x, global1.x, global1.x), vec2<u32>(0u, 0u))), u_input.a))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * _wgslsmith_f_op_vec4_f32(func_5(Struct_3(460f, vec2<i32>(26141i, u_input.b), vec4<bool>(global1.x, false, global1.x, true), true, global1.yz), 26942u, global4[_wgslsmith_index_u32(0u, 11u)], u_input.a)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_div_f32(1269f, global0.x)))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(global0.x, global0.x, global1.x || global1.x)))), _wgslsmith_f_op_f32(step(1444f, -1881f)), _wgslsmith_f_op_f32(384f * global0.x));
    var var_1 = u_input.a;
    var var_2 = global4[_wgslsmith_index_u32(1u, 11u)];
    return reverseBits(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 8>();
    global2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(func_1(), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, 3063i), vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.b))), _wgslsmith_mult_vec3_i32(~reverseBits(vec3<i32>(u_input.a, 17098i, u_input.a)), vec3<i32>(u_input.b, u_input.b, u_input.a) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(42925i, 2147483647i, u_input.a), vec3<i32>(0i, u_input.a, u_input.b)))));
    let var_0 = vec3<f32>(873f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), -645f)) - -687f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(trunc(244f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -595f)))))));
    var var_1 = func_2(abs(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, -68831i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, 0i, u_input.b, u_input.b))), vec3<bool>(all(!(!vec4<bool>(false, global1.x, global1.x, true))), true, func_4(func_4(global4[_wgslsmith_index_u32(961u, 11u)], Struct_2(false)), global3[_wgslsmith_index_u32(4294967295u, 8u)]).a && func_2(-vec4<i32>(u_input.b, 1i, -3824i, u_input.b), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false), global1.x), ~vec2<u32>(12675u, 1u)).a), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u)), min(80135u, 30237u)), max(abs(vec2<u32>(17848u, 4294967295u)), vec2<u32>(4294967295u, 8974u))) ^ max(vec2<u32>(61686u, 57644u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(1u, max(1u, 65336u))));
    global3 = array<Struct_2, 8>();
    global4 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-250f)), _wgslsmith_f_op_f32(-563f + global0.x))), global0.x, select(0u, 1u, true) > ~17603u)), _wgslsmith_f_op_f32(-var_0.x), global0.x, _wgslsmith_f_op_f32(105f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(sign(-2369f)), all(vec4<bool>(global1.x, false, false, global1.x)))))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(0i, 0i, u_input.b, u_input.a) << (vec4<u32>(597u, 46465u, 45637u, 58107u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.b), vec4<i32>(2147483647i, 0i, -1i, 2147483647i)) << (~vec4<u32>(0u, 34487u, 65465u, 1u) % vec4<u32>(32u))) & -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), -vec2<i32>(u_input.b, u_input.a)), ~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1000f, var_0.x, var_0.x) + vec4<f32>(global0.x, var_0.x, -858f, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-866f, -1086f, var_0.x, -602f) + vec4<f32>(var_0.x, var_0.x, var_0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.x, var_0.x, 1577f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -1757f)))));
}

