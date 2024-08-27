struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23>;

var<private> global1: u32;

var<private> global2: array<vec2<i32>, 18>;

var<private> global3: array<vec4<u32>, 20>;

var<private> global4: array<u32, 31> = array<u32, 31>(1u, 2143u, 2882u, 630u, 1u, 1u, 35717u, 4294967295u, 1u, 1u, 42915u, 0u, 91791u, 4294967295u, 41438u, 1u, 19335u, 53820u, 1u, 56607u, 7830u, 0u, 0u, 29179u, 1u, 36687u, 1u, 1u, 0u, 2842u, 70514u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(627f, arg_0.x))), arg_0.x) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)));
    var var_1 = Struct_1(false);
    let var_2 = _wgslsmith_mult_i32((i32(-1i) * -_wgslsmith_mult_i32(u_input.d.x, u_input.d.x)) ^ u_input.c.x, min(-19867i, ~(-2147483647i) & u_input.c.x));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-191f)) + 897f), -128f);
    var var_4 = var_0;
    return max(-81124i, -countOneBits(var_2));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    global1 = ~0u;
    var var_0 = _wgslsmith_add_i32(-u_input.d.x, firstTrailingBit(6244i));
    global0 = array<vec2<bool>, 23>();
    var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -6225i) << (vec2<u32>(u_input.b.x ^ 0u, global4[_wgslsmith_index_u32(1u, 31u)]) % vec2<u32>(32u)), -_wgslsmith_mod_vec2_i32(select(vec2<i32>(-11174i, 35771i), vec2<i32>(u_input.d.x, arg_0), vec2<bool>(false, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0), global2[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_add_i32(func_3(vec2<f32>(1f, _wgslsmith_div_f32(2340f, 166f))), _wgslsmith_dot_vec2_i32(u_input.c.yz, -select(u_input.d.yz, vec2<i32>(47491i, arg_0), false))));
    var var_1 = Struct_1(any(select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, true, false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return !select(select(!vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(true, !var_1.a, true, var_1.a), !vec4<bool>(true, var_1.a, false, true)), vec4<bool>(var_1.a, true, var_1.a, all(select(vec4<bool>(var_1.a, var_1.a, true, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), var_1.a))), var_1.a);
}

fn func_1(arg_0: f32) -> vec3<f32> {
    global2 = array<vec2<i32>, 18>();
    global1 = 4294967295u;
    var var_0 = global4[_wgslsmith_index_u32(4294967295u, 31u)] >> (28707u % 32u);
    let var_1 = _wgslsmith_f_op_f32(max(947f, 1000f));
    var var_2 = vec3<bool>(false, true, any(func_2(-_wgslsmith_mult_i32(47616i, u_input.c.x))));
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(821f - arg_0), !var_2.x)) - -629f), arg_0), _wgslsmith_f_op_f32(-734f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1417f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -571f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 18>();
    global3 = array<vec4<u32>, 20>();
    global2 = array<vec2<i32>, 18>();
    var var_0 = min(countOneBits(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(62123u, u_input.a) >> (1u % 32u), 20u)] | global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(4294967295u, u_input.a)), select(vec2<u32>(u_input.b.x, global4[_wgslsmith_index_u32(4294967295u, 31u)]), u_input.b, false)), 20u)]), ~countOneBits(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, u_input.a), 20u)]));
    var var_1 = !(!vec4<bool>(true, true, true, !(u_input.d.x != u_input.d.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1240f, -113f, -1180f) * vec3<f32>(911f, -3451f, -1362f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-161f, 849f, 533f), vec3<f32>(292f, -806f, -1371f)))) - vec3<f32>(_wgslsmith_div_f32(-1252f, 1632f), _wgslsmith_f_op_f32(-231f * 118f), _wgslsmith_f_op_f32(-222f - -174f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(941f, 1427f, -266f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(414f, -786f, 955f) - vec3<f32>(1501f, -267f, 1634f)), _wgslsmith_f_op_vec3_f32(func_1(-751f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1768f), -556f, 745f), vec3<f32>(-1409f, _wgslsmith_f_op_f32(f32(-1f) * -1489f), _wgslsmith_f_op_f32(ceil(643f))), false)))));
    global4 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(64734u, 20u)] >> (vec4<u32>(_wgslsmith_clamp_u32(0u, global4[_wgslsmith_index_u32(7632u, 31u)], u_input.a), ~var_0.x, _wgslsmith_mult_u32(1u, 1u), var_0.x) % vec4<u32>(32u)), vec4<u32>(88987u, reverseBits(var_0.x), var_0.x, ~95518u)), 0i);
}

