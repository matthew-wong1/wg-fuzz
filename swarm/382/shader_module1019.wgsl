struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: u32;

var<private> global2: array<bool, 3>;

var<private> global3: array<vec3<u32>, 32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-160f, -174f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, 643f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1944f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(822f, 1218f))) * vec2<f32>(276f, -1826f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1017f, _wgslsmith_f_op_f32(266f - -2355f)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(493f, 402f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1770f, 408f) - vec2<f32>(-505f, -1000f))))))));
    let var_1 = Struct_3(-388f, !(!arg_0) | false, Struct_1(any(select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 3u)], false, false), !vec4<bool>(false, arg_1.a, false, true), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], true, false)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1072f, var_0.x), var_0.x, var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -1074f, var_0.x, -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(1753f, var_0.x, var_0.x, -2566f), vec4<f32>(var_0.x, var_0.x, var_0.x, -552f)))))));
    var var_2 = !(!(!vec3<bool>(arg_1.a, true, true)));
    var var_3 = ~(~vec2<u32>(3127u, _wgslsmith_clamp_u32(abs(u_input.a.x), abs(u_input.a.x), u_input.a.x)));
    return _wgslsmith_mult_u32(28797u, var_3.x);
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    global1 = func_3(arg_0.x, Struct_1(true));
    var var_0 = Struct_5(~(~((48960u & u_input.b.x) | _wgslsmith_div_u32(4294967295u, 1u))), select(select(vec2<bool>(arg_0.x || arg_0.x, u_input.a.x < u_input.b.x), select(select(vec2<bool>(global2[_wgslsmith_index_u32(68827u, 3u)], arg_0.x), vec2<bool>(true, global2[_wgslsmith_index_u32(38968u, 3u)]), true), select(arg_0.yz, arg_0.yx, vec2<bool>(arg_0.x, true)), vec2<bool>(false, false)), !vec2<bool>(arg_0.x, global2[_wgslsmith_index_u32(1u, 3u)])), vec2<bool>(true, all(!arg_0)), global2[_wgslsmith_index_u32(1u, 3u)]));
    global3 = array<vec3<u32>, 32>();
    let var_1 = ~vec2<u32>(u_input.b.x, ~u_input.a.x);
    global3 = array<vec3<u32>, 32>();
    return i32(-1i) * -1i;
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_sub_i32(func_2(vec4<bool>(global2[_wgslsmith_index_u32(min(firstTrailingBit(u_input.b.x), _wgslsmith_add_u32(4294967295u, u_input.a.x)), 3u)], false, true, global2[_wgslsmith_index_u32(max(70964u >> (0u % 32u), u_input.a.x << (u_input.b.x % 32u)), 3u)])), -abs(2147483647i));
    var var_1 = Struct_2(true, true);
    global1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(select(u_input.a.x ^ u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), u_input.b), global2[_wgslsmith_index_u32(u_input.b.x, 3u)] == true), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 12954u), vec2<u32>(1u, u_input.b.x)), ~u_input.b.x), ~u_input.b << ((vec3<u32>(75355u, u_input.a.x, 22862u) & global3[_wgslsmith_index_u32(u_input.a.x, 32u)]) % vec3<u32>(32u))), _wgslsmith_mult_u32(~(~1u), 0u & u_input.b.x));
    let var_2 = Struct_4(Struct_2(all(vec4<bool>(true, false || var_1.b, true, global2[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 3u)])), global2[_wgslsmith_index_u32(select(81737u, ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), (global2[_wgslsmith_index_u32(u_input.b.x, 3u)] || global2[_wgslsmith_index_u32(1u, 3u)]) | !global2[_wgslsmith_index_u32(u_input.b.x, 3u)]), 3u)]), vec4<bool>(!arg_0.b, global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 3u)], all(vec2<bool>(!arg_0.b, !global2[_wgslsmith_index_u32(u_input.b.x, 3u)])), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(abs(60104u), 32u)], vec3<u32>(u_input.b.x, 58193u, 4294967295u) & vec3<u32>(0u, 59822u, 3321u)), max(u_input.b.x, _wgslsmith_mod_u32(34116u, 33402u)), 4294967295u), 3u)]), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-533f, -2302f, -371f) * vec3<f32>(1507f, -386f, 1013f)), _wgslsmith_div_vec3_f32(vec3<f32>(2423f, 1132f, -948f), vec3<f32>(-451f, -1398f, -1057f)))))))), _wgslsmith_clamp_vec4_u32(abs(~firstLeadingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, 0u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 1u), vec4<u32>(1u, 29875u, u_input.a.x, u_input.b.x)) & vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x), u_input.b), min(u_input.b.x, 50954u), u_input.b.x >> (1u % 32u)), vec4<u32>(u_input.b.x & 1995u, ~u_input.b.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b.x), min(vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.b.x, 1u))))));
    global1 = ~var_2.d.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(select(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), select(-vec3<i32>(23316i, -9943i, 2147483647i), vec3<i32>(-2147483647i, -797i, 0i), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global2[_wgslsmith_index_u32(2009u, 3u)]))), vec3<i32>(1i, -2136i, abs(~(-229i))), !(!func_1(Struct_2(true, global2[_wgslsmith_index_u32(u_input.b.x, 3u)])))));
    global1 = _wgslsmith_add_u32(max(reverseBits(u_input.a.x), select(_wgslsmith_add_u32(36815u, 1u), u_input.b.x, true) | 4294967295u), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(max(549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2257f * -2298f))) * 141f))), reverseBits(~(~4125u)), ~vec3<i32>(23945i, var_0.x | -2535i, 15385i));
}

