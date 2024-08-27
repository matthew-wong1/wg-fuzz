struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<vec3<f32>, 23>;

var<private> global2: vec2<bool>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    return ((reverseBits(arg_3.b) | (~global0[_wgslsmith_index_u32(0u, 26u)] << (abs(7646u) % 32u))) >> (min(1u, _wgslsmith_sub_u32(~arg_3.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, arg_3.b)))) % 32u)) | arg_3.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    let var_0 = arg_1;
    global1 = array<vec3<f32>, 23>();
    let var_1 = -1i;
    var var_2 = var_0;
    var_2 = Struct_1(var_1 <= var_1, 19744u);
    return (~abs(abs(vec4<i32>(6142i, var_1, var_1, var_1))) | -(vec4<i32>(-1i) * -vec4<i32>(-1i, var_1, var_1, var_1))) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.b, arg_0.b, ~global0[_wgslsmith_index_u32(u_input.a, 26u)], ~17062u), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0.b, 1u, 23583u, u_input.a)), select(~vec4<u32>(4294967295u, 0u, arg_0.b, u_input.a), vec4<u32>(u_input.a, 0u, 0u, 9755u), -1229f <= arg_2), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b, 4294967295u, 36140u, u_input.a), vec4<u32>(var_2.b, 102994u, var_2.b, 45959u)), vec4<u32>(arg_1.b, global0[_wgslsmith_index_u32(32156u, 26u)], arg_0.b, var_2.b))), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], ~20829u, var_0.b, ~4294967295u) | ~(vec4<u32>(41458u, 55807u, arg_1.b, var_0.b) << (vec4<u32>(1u, 0u, arg_1.b, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<f32>, 23>();
    var var_0 = max(_wgslsmith_sub_vec4_i32(func_4(Struct_1(global2.x, _wgslsmith_clamp_u32(u_input.a, 0u, global0[_wgslsmith_index_u32(45289u, 26u)])), Struct_1(all(vec2<bool>(global2.x, global2.x)), func_3(-19161i, vec2<f32>(885f, 1416f), 35025i, Struct_1(true, u_input.a))), 752f), abs(vec4<i32>(~16029i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 38088i, 0i), vec3<i32>(-1i, 2147483647i, -1i)), 1i, reverseBits(-2147483647i)))), -_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 11530i, -2147483647i, 0i) << (vec4<u32>(9117u, global0[_wgslsmith_index_u32(17958u, 26u)], 32596u, u_input.a) % vec4<u32>(32u)), vec4<i32>(2147483647i, abs(2147483647i), 0i, 1i)));
    return Struct_1(true, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), 26u)], 26u)], ~global0[_wgslsmith_index_u32(4294967295u, 26u)]));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1009f, 335f, -1999f, 446f) * vec4<f32>(736f, 1014f, -177f, 1354f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1369f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -977f), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)))));
    let var_1 = arg_0.b;
    global1 = array<vec3<f32>, 23>();
    let var_2 = vec2<bool>(!any(!select(vec2<bool>(false, arg_1.a), vec2<bool>(true, false), vec2<bool>(false, arg_1.a))), global2.x);
    let var_3 = ~arg_1.b;
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    global0 = array<u32, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-811f, 1317f, 2600f, -1656f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1634f, 693f, 530f, 765f) + vec4<f32>(-136f, 253f, -2122f, -1029f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 293f, -473f)))))));
    let var_1 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, _wgslsmith_add_i32(arg_0.x, arg_0.x)), vec3<i32>(~(-40191i), -2147483647i, _wgslsmith_mod_i32(-10323i, arg_0.x))), (-vec3<i32>(-48447i, -2147483647i, arg_0.x) >> (~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]) % vec3<u32>(32u))) << (~(vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(11646u, 78173u, global0[_wgslsmith_index_u32(u_input.a, 26u)])) % vec3<u32>(32u)));
    let var_2 = Struct_1(true, ~4294967295u);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -187f, var_0.x, -475f), vec4<f32>(-1000f, var_0.x, var_0.x, -727f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, 204f, var_0.x, -777f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(398f, 2569f, var_0.x, 568f) + vec4<f32>(var_0.x, var_0.x, var_0.x, 624f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 375f, -1227f, -663f)))))));
    return func_5(func_2(), Struct_1(select(!all(vec2<bool>(arg_1.x, false)), true, all(arg_1)), ~(~var_2.b)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<i32> {
    global2 = vec2<bool>(true && !(~global0[_wgslsmith_index_u32(u_input.a, 26u)] < ~80110u), 1525u > arg_2.b);
    let var_0 = arg_0;
    var var_1 = !(!select(select(select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(global2.x, var_0.a, false, arg_2.a), arg_2.a), !vec4<bool>(var_0.a, true, true, true), vec4<bool>(true, true, false, arg_2.a)), vec4<bool>(func_2().a, all(vec4<bool>(true, global2.x, var_0.a, false)), arg_2.a | false, true), arg_2.a));
    let var_2 = var_1.x && (!all(vec4<bool>(global2.x, var_1.x, global2.x, false)) & false);
    global0 = array<u32, 26>();
    return firstLeadingBit(vec3<i32>(-11178i, _wgslsmith_clamp_i32(1i, abs(20178i), min(-2147483647i, 1i)), -1i));
}

fn func_7(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = arg_2;
    global2 = select(select(select(!select(vec2<bool>(var_0.a, arg_2.a), vec2<bool>(true, global2.x), global2.x), vec2<bool>(false, true), var_0.a), vec2<bool>(!var_0.a || false, !(!arg_2.a)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), !vec2<bool>(any(vec2<bool>(false, false)), func_5(arg_2, var_0).a), select(select(select(select(vec2<bool>(true, var_0.a), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(arg_2.a, global2.x)), select(vec2<bool>(false, false), vec2<bool>(global2.x, arg_2.a), false), true), select(vec2<bool>(true, arg_2.a), vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.a, false), vec2<bool>(true, arg_2.a), true)), all(vec2<bool>(arg_2.a, false))), !select(vec2<bool>(false, global2.x), !vec2<bool>(arg_2.a, true), vec2<bool>(true, false)), select(select(!vec2<bool>(global2.x, false), vec2<bool>(false, arg_2.a), vec2<bool>(false, global2.x)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, global2.x)), vec2<bool>(true, false))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -2147483647i), func_4(Struct_1(arg_2.a, 44031u), var_0, -804f).zw), -45566i, countOneBits(-(2147483647i & arg_0))), vec3<i32>(-22828i, func_6(func_2(), vec2<u32>(45533u, arg_1.x), Struct_1(var_0.a, 1u)).x, firstTrailingBit(-1i)) ^ vec3<i32>(arg_0, _wgslsmith_div_i32(func_4(arg_2, var_0, -601f).x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0))), -61969i));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-324f, 1646f) + vec2<f32>(-412f, 802f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-794f, 1308f))))));
    global2 = vec2<bool>((_wgslsmith_f_op_f32(f32(-1f) * -683f) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x)))) | all(vec2<bool>(true, arg_0 >= arg_0)), -1000f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-487f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -159f)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(881f, var_2.x, -115f, var_2.x), vec4<f32>(1067f, var_2.x, var_2.x, -647f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(318f, 294f, var_2.x, var_2.x), vec4<f32>(var_2.x, 727f, -628f, -858f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1405f, var_2.x, var_2.x, 1411f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))) * -100f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(func_6(func_1(vec2<i32>(-1i, -2147483647i), vec2<bool>(true, true), true), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 17611u), vec2<u32>(13547u, 27361u)), Struct_1(global2.x, 4294967295u)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 49178i, 2147483647i), -16628i, select(-78860i, 2147483647i, global2.x))), -_wgslsmith_div_i32(1i, min(-1i, -1i))), vec2<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(1u, 26u)], u_input.a), vec4<u32>(0u, 70607u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 4294967295u)) << (~global0[_wgslsmith_index_u32(u_input.a, 26u)] % 32u), ~(~global0[_wgslsmith_index_u32(u_input.a, 26u)])), 96701u), Struct_1(!any(select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), 19702u));
}

