struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    global0 = array<vec4<u32>, 1>();
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 18u)];
    let var_1 = global1[_wgslsmith_index_u32(~(4294967295u << ((~(55425u >> (u_input.d % 32u)) & u_input.d) % 32u)), 18u)];
    global0 = array<vec4<u32>, 1>();
    global0 = array<vec4<u32>, 1>();
    return var_0.a.x;
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(140933u, 18u)];
    let var_1 = global1[_wgslsmith_index_u32(abs(~(var_0.a.x & select(4294967295u, _wgslsmith_div_u32(u_input.d, 0u), any(vec4<bool>(true, true, true, false))))), 18u)];
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(reverseBits(~u_input.d))), 18u)];
    var var_3 = global1[_wgslsmith_index_u32(u_input.d, 18u)];
    var_3 = Struct_1(var_2.a & (vec2<u32>(~1u, var_1.a.x) << (vec2<u32>(var_2.a.x, 1u) % vec2<u32>(32u))));
    return abs(15472u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    let var_0 = Struct_1(arg_0.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(450f, -1664f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-773f)))), 1000f))));
    var var_2 = Struct_1(arg_1.yw);
    let var_3 = arg_0;
    var var_4 = max(var_3.a, vec2<u32>(var_0.a.x, arg_2.a.x));
    return _wgslsmith_mod_vec2_u32(var_3.a, ~(reverseBits(_wgslsmith_mult_vec2_u32(arg_0.a, var_3.a)) & var_3.a));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_1(func_4(Struct_1(~(~vec2<u32>(44963u, 48742u))), vec4<u32>(98526u, countOneBits(func_3()), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d)), u_input.d & 31551u), 0u), global1[_wgslsmith_index_u32(1u, 18u)], ~u_input.d));
    var var_1 = Struct_1(abs(var_0.a));
    global1 = array<Struct_1, 18>();
    var var_2 = select(vec4<bool>(true, true, true, true), select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true))), vec4<bool>(true, all(vec4<bool>(true, false, false, false)), false, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(-1i < _wgslsmith_div_i32(arg_1.x, 2147483647i), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false)), any(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(sign(-2029f)) <= _wgslsmith_f_op_f32(1136f + 197f))), vec4<bool>(all(vec3<bool>(true, true, true)) & false, abs(~(-32666i)) < u_input.e, false, all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.d, 1u)];
    return vec3<bool>(var_2.x, any(vec2<bool>(any(select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x))), var_2.x)), !var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    var var_0 = Struct_1(~vec2<u32>(0u >> (u_input.d % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 4294967295u, 4294967295u, 32826u), ~vec4<u32>(15811u, u_input.d, u_input.d, u_input.d))));
    var_0 = Struct_1(~firstTrailingBit(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 113434u), var_0.a, vec2<u32>(106203u, 82203u)), ~var_0.a, select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
    var var_1 = select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true), select(10701u > func_1(0u, global1[_wgslsmith_index_u32(var_0.a.x, 18u)], vec4<f32>(292f, -2178f, -1326f, -404f)), true, false)), vec4<bool>(true | (u_input.b.x == abs(u_input.a)), true, all(func_2(_wgslsmith_div_i32(-14668i, u_input.e), vec4<i32>(16717i, -2147483647i, u_input.b.x, 2147483647i) << (global0[_wgslsmith_index_u32(1u, 1u)] % vec4<u32>(32u)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, true, true)), select(true, u_input.d > var_0.a.x, true), false, all(vec3<bool>(true, true, false))), select(vec4<bool>(true, true, true, func_2(1i, u_input.b).x), vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), all(vec4<bool>(true, true, true, true)))));
    global0 = array<vec4<u32>, 1>();
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 18u)];
    var_0 = Struct_1(select(var_0.a, var_0.a, select(var_1.yz, vec2<bool>(true, false), !var_1.x)));
    var_0 = Struct_1(~_wgslsmith_mod_vec2_u32(~vec2<u32>(102462u, 4294967295u), vec2<u32>(1u, u_input.d)) ^ (var_0.a >> (_wgslsmith_sub_vec2_u32(var_0.a << (var_2.a % vec2<u32>(32u)), ~var_0.a) % vec2<u32>(32u))));
    let var_3 = global1[_wgslsmith_index_u32(52566u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.xz, -firstTrailingBit(select(u_input.b.xwy, vec3<i32>(3712i, 66188i, u_input.a), false)), _wgslsmith_f_op_f32(sign(1614f)));
}

