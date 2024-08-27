struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: array<u32, 28> = array<u32, 28>(4294967295u, 0u, 1u, 4318u, 4294967295u, 0u, 1u, 48379u, 978u, 0u, 108534u, 1u, 65825u, 1u, 41618u, 4294967295u, 5823u, 27530u, 91975u, 4294967295u, 52614u, 4294967295u, 0u, 0u, 15027u, 53838u, 4294967295u, 26403u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = false;
    return u_input.b.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_1 {
    global0 = any(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 8u)]);
    let var_0 = -arg_0;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-130f, 371f, arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f - 1796f)) + -258f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1880f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(113f)) + _wgslsmith_f_op_f32(f32(-1f) * -1310f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-348f, 291f, arg_1))))), ~(-16748i));
    let var_2 = select(~vec2<u32>(1u, 1u), ~abs(~vec2<u32>(28851u, 33479u)) >> (vec2<u32>(reverseBits(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18563u, 28u)], 28u)], 28u)], 4294967295u)), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 28u)], 28u)]) % vec2<u32>(32u)), arg_1);
    global2 = array<u32, 28>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), -func_3(Struct_1(vec4<f32>(var_1.a.x, -1927f, 1264f, 154f), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 1i), u_input.a.wzx))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global0 = any(!vec2<bool>(true, any(global1[_wgslsmith_index_u32(arg_0, 8u)]))) && true;
    global1 = array<vec3<bool>, 8>();
    global1 = array<vec3<bool>, 8>();
    let var_0 = func_2(-13459i, !(true | (0u == arg_1)) | (!(arg_2.a.x >= -1722f) | true), -u_input.b.x);
    let var_1 = Struct_1(arg_2.a, _wgslsmith_sub_i32(min(var_0.b, 2147483647i), _wgslsmith_add_i32(-_wgslsmith_mod_i32(2147483647i, -1i), 1i)));
    return _wgslsmith_mod_u32(abs(1u & global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(65244u, arg_0)), vec2<u32>(55854u, arg_1)), 28u)]), _wgslsmith_mult_u32(~30044u, _wgslsmith_clamp_u32(select(~global2[_wgslsmith_index_u32(77776u, 28u)], ~0u, true), global2[_wgslsmith_index_u32(67603u, 28u)], ~_wgslsmith_mult_u32(40845u, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, 1956f, -1355f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1017f, -1148f, -339f) - vec3<f32>(-1235f, 1000f, -935f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1891f, -3341f, -252f), _wgslsmith_div_vec3_f32(vec3<f32>(-425f, -659f, -211f), vec3<f32>(214f, -846f, 248f)), vec3<bool>(false, true, true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1036f, 2732f, -114f), vec3<f32>(-693f, 811f, -146f))) - vec3<f32>(-711f, 940f, -725f)))), 1f, ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21874u, 28u)], 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39738u, 28u)], 28u)], 28u)], 28u)], Struct_1(vec4<f32>(1000f, 216f, 210f, -913f), u_input.a.x), vec3<f32>(-629f, 2317f, 865f)), abs(global2[_wgslsmith_index_u32(0u, 28u)])), 28u)], 28u)], 28u)]), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-770f - 859f))), -431f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-793f)) + _wgslsmith_f_op_f32(673f + 762f))), true)));
}

