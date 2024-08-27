struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 23> = array<u32, 23>(62774u, 4294967295u, 4294967295u, 0u, 1u, 95779u, 25360u, 0u, 0u, 36605u, 1u, 4294967295u, 0u, 27322u, 46660u, 4294967295u, 50185u, 1u, 0u, 0u, 1u, 0u, 4294967295u);

var<private> global3: Struct_1 = Struct_1(vec2<u32>(1u, 61976u));

var<private> global4: array<f32, 6> = array<f32, 6>(-1311f, -2017f, 443f, 585f, -669f, -861f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = ~(~global3.a.x);
    var var_1 = countOneBits(u_input.a.x);
    var_1 = countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(u_input.a.wyw, u_input.a.zxx, vec3<bool>(global1.x, false, global1.x)), u_input.a.yxy, countOneBits(vec3<i32>(1i, -17995i, -18861i))), u_input.a.wzz), u_input.a.x, _wgslsmith_clamp_i32(-1i, 2147483647i, 1i)));
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(global0.zz, countOneBits(~vec2<u32>(4294967295u, u_input.d) ^ ~vec2<u32>(global3.a.x, 45305u))));
    var var_3 = ~var_2.a.x;
    return var_2.a.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    global3 = Struct_1(~arg_3.zz);
    var var_0 = ~(-u_input.a.zyz);
    global1 = vec3<bool>((func_3() == ~0u) && true, global1.x, arg_0.x);
    var var_1 = all(vec2<bool>(true, any(vec4<bool>(false, false, global1.x, arg_0.x)) || (true && global1.x))) & select(true, true, true);
    var var_2 = arg_2;
    return func_3();
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_2;
    global2 = array<u32, 23>();
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(arg_2.a.x, 6u)], _wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~1u), global0.x), 6u)], _wgslsmith_div_f32(523f, global4[_wgslsmith_index_u32(func_2(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), arg_0), Struct_1(arg_2.a), arg_2, vec3<u32>(1u, 94356u, 0u)), 6u)]))));
    var var_3 = arg_0;
    return ~reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(23401u, var_0.a.x, arg_2.a.x, u_input.b), ~vec4<u32>(arg_2.a.x, 4294967295u, 18462u, 1u)), (vec4<u32>(0u, u_input.d, 0u, var_0.a.x) ^ vec4<u32>(67330u, 57693u, 23579u, global2[_wgslsmith_index_u32(global0.x, 23u)])) ^ (vec4<u32>(55934u, 41588u, 4294967295u, 9233u) << (vec4<u32>(global2[_wgslsmith_index_u32(147206u, 23u)], var_0.a.x, var_1.a.x, var_1.a.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(68894u, 117490u), abs(firstTrailingBit(19482u)), ~166824u), global3.a.x, u_input.b & _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.x, 0u, 1u), abs(vec4<u32>(u_input.d, u_input.c, global0.x, global0.x))), select(vec4<u32>(29264u, global0.x, u_input.c, 3505u), func_1(global1.x, 32391u, Struct_1(global0.yx)), all(vec4<bool>(false, false, global1.x, false)))));
    var var_0 = -456f;
    var var_1 = Struct_1(global3.a);
    var var_2 = false;
    let var_3 = global1.x;
    var var_4 = ~(~(~reverseBits(vec3<u32>(global3.a.x, 15467u, global2[_wgslsmith_index_u32(4294967295u, 23u)]))));
    let var_5 = 1u;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(941f)));
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(61957u, 6u)] - -1114f), _wgslsmith_f_op_f32(-899f + global4[_wgslsmith_index_u32(global0.x, 6u)]), _wgslsmith_f_op_f32(-1923f * 453f), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global3.a.x, 6u)] * global4[_wgslsmith_index_u32(5505u, 6u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(1u, 6u)], 1081f, global4[_wgslsmith_index_u32(46705u, 6u)], -962f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(83327u, 4294967295u, var_5) >> (vec3<u32>(global2[_wgslsmith_index_u32(global3.a.x, 23u)], 0u, global3.a.x) % vec3<u32>(32u)), vec3<u32>(40653u, global3.a.x, 42195u))) & ~((global2[_wgslsmith_index_u32(37903u, 23u)] | var_4.x) >> (global3.a.x % 32u)), max(~global3.a << (reverseBits(vec2<u32>(var_5, 36499u)) % vec2<u32>(32u)), vec2<u32>(1u, 1u)), var_6.yw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_6.zwz) + vec3<f32>(global4[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_6.x), _wgslsmith_f_op_f32(-261f * -317f))))));
}

