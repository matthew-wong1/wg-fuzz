struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(0i, 12682i), vec2<i32>(-48817i, 0i), vec2<i32>(14971i, 0i), vec2<i32>(34675i, 50982i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 7158i), vec2<i32>(-14731i, 2543i), vec2<i32>(-40861i, 0i), vec2<i32>(-25647i, 17522i), vec2<i32>(-35794i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(-34098i, -1i), vec2<i32>(640i, 1i), vec2<i32>(25258i, 83674i));

var<private> global1: array<i32, 32>;

var<private> global2: array<Struct_2, 22>;

var<private> global3: i32 = -50952i;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>) -> vec4<u32> {
    global3 = arg_1.x;
    var var_0 = select(arg_0.xz, _wgslsmith_sub_vec2_u32(u_input.a.xy, ~vec2<u32>(arg_0.x, arg_0.x)), true) ^ ((~select(arg_0.zz, vec2<u32>(0u, 46119u), vec2<bool>(true, true)) << (_wgslsmith_div_vec2_u32(~u_input.a.xz, arg_0.zy) % vec2<u32>(32u))) & min(~_wgslsmith_add_vec2_u32(vec2<u32>(24415u, arg_0.x), vec2<u32>(u_input.b, arg_0.x)), firstLeadingBit(~vec2<u32>(u_input.b, 41662u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-579f, 1111f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(667f, -1000f)))), _wgslsmith_f_op_f32(round(1f)))));
    let var_2 = Struct_1(vec4<u32>(~arg_0.x & _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, arg_0), arg_0), abs(4294967295u), abs(~var_0.x), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 20538u), reverseBits(vec3<u32>(4294967295u, arg_0.x, 0u))))));
    let var_3 = !(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), false))));
    return ~var_2.a;
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = ~(~vec2<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, 12866u) | min(13002u, 4294967295u), min(~91570u, ~u_input.b)));
    var var_1 = u_input.c;
    var var_2 = Struct_3(arg_0.a.a.x > ~35170u, 23630i, -vec2<i32>(arg_0.d.x, _wgslsmith_dot_vec2_i32(arg_0.d, vec2<i32>(u_input.c, 6964i))));
    global3 = max(firstLeadingBit(u_input.c), _wgslsmith_dot_vec2_i32(select(var_2.c, var_2.c, any(!vec3<bool>(true, var_2.a, false))), abs(-abs(vec2<i32>(-1i, u_input.c)))));
    global0 = array<vec2<i32>, 16>();
    return reverseBits(~(global1[_wgslsmith_index_u32(1u, 32u)] ^ 60921i));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<i32>, 16>();
    let var_0 = true;
    global3 = func_3(Struct_2(Struct_1(func_2(vec3<u32>(0u, 4294967295u, u_input.b), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)], 23907i, -2147483647i)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(40699u, u_input.a.x, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.a.x, u_input.b, 4294967295u))), vec2<u32>(max(u_input.a.x, 4294967295u) >> (u_input.a.x % 32u), countOneBits(4294967295u)), Struct_1(vec4<u32>(u_input.b, ~u_input.b, 0u, _wgslsmith_div_u32(u_input.b, 1u))), vec2<i32>(abs(-u_input.c), -global1[_wgslsmith_index_u32(~u_input.a.x, 32u)])));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 88137u, u_input.b, 1u), ~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b))), abs(~u_input.a.zx), Struct_1(~(~vec4<u32>(u_input.a.x, u_input.a.x, 34496u, 0u))), min(global0[_wgslsmith_index_u32(72760u, 16u)], -vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]) >> (~vec2<u32>(39063u, u_input.a.x) % vec2<u32>(32u))));
    var_1 = Struct_2(var_1.a, select(vec2<u32>(~select(50381u, 4294967295u, var_0), _wgslsmith_add_u32(firstLeadingBit(10118u), min(53237u, 4294967295u))), reverseBits(u_input.a.zy), !vec2<bool>(any(vec4<bool>(false, var_0, true, var_0)), var_0)), var_1.a, vec2<i32>(select(-8620i, ~(-5319i), any(!vec3<bool>(var_0, var_0, false))), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_div_i32(11841i, global1[_wgslsmith_index_u32(0u, 32u)])), global1[_wgslsmith_index_u32(var_1.b.x, 32u)])));
    return Struct_1(var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, var_0, 4294967295u), ~var_0, u_input.b, abs(var_0)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(55395u, u_input.a.x, 4294967295u, u_input.b), vec4<u32>(25380u, 0u, 0u, u_input.a.x), false), vec4<u32>(59631u, 4294967295u, 5474u, var_0)))), ~(reverseBits(vec2<u32>(u_input.a.x, var_0)) & ((u_input.a.xx >> (u_input.a.zx % vec2<u32>(32u))) << (~u_input.a.yz % vec2<u32>(32u)))), func_1(), global0[_wgslsmith_index_u32(var_0, 16u)] >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, max(0u, 39175u)), vec2<u32>(1u, u_input.b), ~(vec2<u32>(32282u, u_input.a.x) ^ u_input.a.zx)) % vec2<u32>(32u)));
    let var_2 = vec3<u32>(~(~4294967295u | abs(u_input.b)), var_1.c.a.x, 40983u);
    var var_3 = vec3<i32>(0i, abs(_wgslsmith_sub_i32(-2147483647i, max(u_input.c, 0i))) ^ -select(1i, 1i, all(vec4<bool>(false, true, true, false))), _wgslsmith_dot_vec2_i32(firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~43532u, _wgslsmith_div_u32(var_0, 90013u)), 16u)]), -_wgslsmith_add_vec2_i32(-var_1.d, -vec2<i32>(global1[_wgslsmith_index_u32(27560u, 32u)], -1i))));
    let var_4 = Struct_2(var_1.a, vec2<u32>(~_wgslsmith_mod_u32(26976u, var_0), u_input.a.x), var_1.c, firstLeadingBit(var_1.d));
    global2 = array<Struct_2, 22>();
    global0 = array<vec2<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~(~vec3<u32>(0u, 4294967295u, var_2.x)))), 602f, vec4<f32>(1f, 619f, 361f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1532f, 1571f) - _wgslsmith_f_op_f32(-1086f * 1575f)))));
}

