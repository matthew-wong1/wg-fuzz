struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 28576u, 1u, 65065u), vec2<i32>(21431i, 0i));

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false));

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1u, 35154u, 0u, 72230u), vec2<i32>(3410i, 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = global2.a;
    let var_1 = var_0.yyy;
    var var_2 = !(!vec3<bool>(!select(true, false, false), true, false));
    global2 = arg_1;
    var var_3 = -8579i;
    return select(vec3<bool>(var_2.x | !(var_2.x & true), any(vec3<bool>(true, var_2.x, !var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(step(339f, 1186f)))) < _wgslsmith_f_op_f32(round(-555f))), vec3<bool>(var_2.x, true, !var_2.x), !select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), select(vec3<bool>(true, true, false), vec3<bool>(var_2.x, var_2.x, var_2.x), true), select(var_2.x, true, var_2.x)), vec3<bool>(all(vec2<bool>(var_2.x, false)), true, true), !select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, var_2.x, var_2.x))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = 446f;
    var var_1 = Struct_2(all(!(!select(vec4<bool>(arg_1.a, true, true, arg_1.a), vec4<bool>(false, false, arg_1.a, false), vec4<bool>(arg_1.a, true, false, arg_1.a)))));
    let var_2 = !func_3(firstLeadingBit(_wgslsmith_mult_u32(1u, global2.a.x)), Struct_1(~vec4<u32>(0u, 33696u, 7529u, 4294967295u), global2.b >> (~vec2<u32>(global2.a.x, 4294967295u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.x, 42235u), global2.a.yw), 55661u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.a.x, 1u), global2.a.zx, global0.a.zw) % vec2<u32>(32u)));
    var var_3 = Struct_2(all(select(vec3<bool>(var_2.x, false, true), var_2, !var_2.x)) | true);
    global0 = Struct_1((select(vec4<u32>(84027u, 1u, global0.a.x, global0.a.x), global2.a ^ global2.a, true) | (_wgslsmith_add_vec4_u32(vec4<u32>(global2.a.x, 0u, 1u, 62659u), vec4<u32>(global0.a.x, global0.a.x, 0u, 4294967295u)) ^ select(global0.a, global0.a, true))) | select(~vec4<u32>(global2.a.x, global2.a.x, 25206u, global0.a.x) | ~vec4<u32>(11912u, 57662u, global0.a.x, global0.a.x), ~vec4<u32>(1u, 10611u, 34867u, 40138u), vec4<bool>(true && var_1.a, !arg_1.a, !var_2.x, var_2.x)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.a | global0.b.x, ~global2.b.x), (vec2<i32>(1i, 0i) & global0.b) | vec2<i32>(u_input.a, -35528i), var_3.a), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-463i, global2.b.x)), ~vec2<i32>(global0.b.x, u_input.a)), global0.b)));
    return 27732u;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> vec4<f32> {
    global1 = array<Struct_2, 10>();
    var var_0 = abs(1u);
    global0 = Struct_1(~vec4<u32>(global2.a.x, 50977u << ((global2.a.x ^ global2.a.x) % 32u), func_2(190f, Struct_2(arg_2)) ^ 0u, ~17212u | max(global0.a.x, 1u)), abs(global2.b));
    let var_1 = _wgslsmith_f_op_f32(-602f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(514f, 499f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1485f, -587f)) * _wgslsmith_f_op_f32(-431f + -1278f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1863f)) - 455f))));
    var var_2 = Struct_2(arg_0.x || any(vec2<bool>(!arg_2, var_1 <= var_1)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, 1059f, var_1, var_1))))), vec4<f32>(-521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(761f - var_1) - _wgslsmith_f_op_f32(exp2(var_1)))), select(vec4<bool>(true, true, var_2.a, true), arg_0, !vec4<bool>(arg_0.x, arg_0.x, false, false)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = -548f;
    var var_1 = arg_1;
    var_1 = Struct_2(max(max(_wgslsmith_add_i32(u_input.a, 53140i), firstTrailingBit(global0.b.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(9613i, u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.b.x, u_input.a, 1i, 2147483647i), vec4<i32>(u_input.a, global2.b.x, -1i, u_input.a)))) < (_wgslsmith_mult_i32(global0.b.x, _wgslsmith_mult_i32(u_input.a, global2.b.x)) >> (abs(30211u) % 32u)));
    var_1 = Struct_2(var_1.a);
    var_0 = _wgslsmith_f_op_f32(floor(-302f));
    return Struct_2(!var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1884f, 759f, 214f, 633f), vec4<f32>(-873f, 616f, -476f, -943f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1042f, -1000f, 618f, 1281f), vec4<f32>(1165f, 584f, -1115f, -223f)) + _wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, false, false, false), -29685i, true)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1002f, -717f, _wgslsmith_div_f32(1144f, -974f), 991f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1228f, -1356f, -1415f, -1558f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1970f, -963f, 1245f, -457f)))))), Struct_2(true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f * -1000f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1531f)), -1193f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1030f))))), global0.a.x);
    var var_1 = !vec2<bool>(false, select(true, !any(vec2<bool>(true, false)), -1i > countOneBits(global2.b.x)));
    let var_2 = Struct_1(abs(vec4<u32>(~9042u, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(global0.a.x, global0.a.x)), select(97475u, global2.a.x, true) ^ ~0u, global0.a.x)), ~global0.b);
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-476f, -401f, 1680f, 1158f)))) + vec4<f32>(-1843f, -2044f, _wgslsmith_f_op_f32(788f * -1614f), _wgslsmith_f_op_f32(-776f + 1058f))))), global1[_wgslsmith_index_u32(global0.a.x, 10u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(608f - -492f), _wgslsmith_div_f32(1515f, -1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-1363f, -972f, false)), 1f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(441f, 971f) * vec2<f32>(-664f, -912f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1371f, 1102f)))))), 4294967295u);
    var var_3 = any(vec4<bool>(true, true, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(-55873i, global2.a.x);
}

