struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(36241u);

var<private> global2: array<vec2<u32>, 1>;

var<private> global3: Struct_2;

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = reverseBits(~arg_2.x);
    let var_1 = Struct_1(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(global3.a, arg_0.a, global3.a)), vec3<u32>(global1.a, 0u, global1.a)) << (~vec3<u32>(~80673u, 1u & global3.a, global1.a) % vec3<u32>(32u)), firstLeadingBit(select(_wgslsmith_add_vec3_u32(vec3<u32>(40754u, u_input.a, global3.a), abs(vec3<u32>(0u, 0u, global3.a))), ~(~vec3<u32>(4294967295u, global1.a, 47588u)), all(vec3<bool>(true, true, true)))), true, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(305f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1582f, 709f))))));
    var_0 = u_input.b;
    var_0 = -2147483647i;
    let var_2 = false;
    return var_1.a.xy;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(1024f + -183f);
    global3 = Struct_2(select(0u, global3.a, (any(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)) | !arg_2.x) && (arg_0 <= arg_0)));
    var var_1 = _wgslsmith_clamp_i32(firstLeadingBit(firstLeadingBit(u_input.b & (u_input.b | arg_1))), u_input.b, u_input.b);
    var var_2 = ~arg_3.x ^ global3.a;
    var_0 = _wgslsmith_f_op_f32(-1101f - arg_0);
    return _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(21744u, 1u)] ^ arg_3, ~global2[_wgslsmith_index_u32(21992u, 1u)]), ~(~global2[_wgslsmith_index_u32(4294967295u, 1u)])), global2[_wgslsmith_index_u32(max(31542u, 0u), 1u)]), ~_wgslsmith_mod_vec2_u32((arg_3 << (arg_3 % vec2<u32>(32u))) ^ select(vec2<u32>(21456u, global3.a), arg_3, vec2<bool>(arg_2.x, false)), min(vec2<u32>(43129u, 81640u), global2[_wgslsmith_index_u32(~4294967295u, 1u)])));
}

fn func_2() -> f32 {
    global2 = array<vec2<u32>, 1>();
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(max(global3.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294u, 45670u, 4294967295u), vec3<u32>(global1.a, global3.a, global3.a))), _wgslsmith_mod_u32(global1.a, u_input.a), 28981u, 15857u), ~((vec4<u32>(0u, global1.a, 1u, global3.a) | vec4<u32>(global3.a, global3.a, global3.a, global1.a)) & (vec4<u32>(1u, global1.a, 0u, u_input.a) << (vec4<u32>(0u, 15227u, u_input.a, 4294967295u) % vec4<u32>(32u))))), u_input.c, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(18214u, _wgslsmith_add_u32(u_input.c, global3.a)), ~(~0u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), func_4(-1205f, -u_input.b, vec2<bool>(true, true), func_3(Struct_2(44192u), vec2<i32>(u_input.b, u_input.b), vec3<i32>(-36294i, 598i, 39491i))))), ~global3.a);
    let var_1 = firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c, 1u)]) ^ _wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(var_0.xx, global2[_wgslsmith_index_u32(1u ^ global1.a, 1u)])), (abs(var_0.zz) & vec2<u32>(u_input.a, 2704u)) & ~(~var_0.zz));
    let var_2 = ~countOneBits(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a, u_input.a, 4260u, var_1.x), vec4<u32>(var_0.x, 4294967295u, 796u, u_input.a), vec4<u32>(1u, 11962u, global1.a, u_input.c))));
    let var_3 = Struct_2(abs(~u_input.a) | _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, var_2.x, global1.a), var_2), 0u));
    return _wgslsmith_f_op_f32(f32(-1f) * -1626f);
}

fn func_1() -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(2451f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(618f, -622f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1435f), _wgslsmith_f_op_f32(646f + 467f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-517f - 1511f) - 1f), _wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-733f, -1962f)) * 2218f)))));
    global4 = _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 27035u, 0u)) & ~_wgslsmith_add_vec3_u32(vec3<u32>(2655u, 65289u, global3.a), vec3<u32>(8558u, global3.a, 1u)), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(global3.a, global1.a, 0u) | vec3<u32>(u_input.c, u_input.c, 16546u)), ~vec3<u32>(0u, u_input.a, global3.a), ~vec3<u32>(22132u, 1u, u_input.c))), reverseBits(_wgslsmith_mod_vec3_u32(countOneBits(reverseBits(vec3<u32>(global3.a, global3.a, 26087u))), ~vec3<u32>(global3.a, 4294967295u, global3.a))), false, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-157f - -118f), var_0.x))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(796f, -779f), var_0.xy))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(var_0.zz)), _wgslsmith_div_vec2_f32(vec2<f32>(-355f, var_0.x), vec2<f32>(-1000f, var_0.x))))))));
    global4 = -380f;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global3.a), 1u)];
    return all(vec4<bool>(var_1.c, true, var_1.c || all(vec4<bool>(var_1.c, var_1.c, false, false)), var_1.c)) || false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(!(func_1() | any(vec2<bool>(false, false)))), true, false);
    var var_1 = !vec3<bool>(!(!select(var_0.x, true, true)), func_1(), !(var_0.x & var_0.x) & var_0.x);
    var var_2 = ~global3.a >= ~select(_wgslsmith_add_u32(~15832u, global1.a), _wgslsmith_mult_u32(global1.a, 4294967295u) << (~4294967295u % 32u), var_0.x);
    global2 = array<vec2<u32>, 1>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(670f, -262f, -638f), vec3<f32>(-1255f, -601f, -520f)))) * vec3<f32>(-1272f, _wgslsmith_f_op_f32(f32(-1f) * -111f), 746f)));
    let var_4 = func_4(var_3.x, min(~abs(firstLeadingBit(u_input.b)), u_input.b), vec2<bool>(var_1.x, var_0.x), max(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, 42197u), 1u)], ~(~vec2<u32>(1u, global3.a))) | global2[_wgslsmith_index_u32(firstLeadingBit(min(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], vec2<u32>(28957u, global3.a)), 23224u)), 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~(~global3.a))), vec3<i32>(-56318i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.b, 24638i)), ~14390i) >> ((~(~vec3<u32>(u_input.a, 0u, 21498u)) >> (min(~vec3<u32>(4294967295u, global3.a, u_input.a), ~vec3<u32>(10101u, 111804u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(min(var_3.x, var_3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.xz - vec2<f32>(368f, -2012f)) + _wgslsmith_f_op_vec2_f32(var_3.xz + var_3.xz)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.zy - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.x, -223f), vec2<f32>(var_3.x, var_3.x)))) + _wgslsmith_f_op_vec2_f32(var_3.zx - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.x, var_3.x)))))));
}

