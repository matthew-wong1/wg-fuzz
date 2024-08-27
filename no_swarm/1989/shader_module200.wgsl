struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_2;

var<private> global3: array<f32, 18>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global3 = array<f32, 18>();
    global2 = Struct_2(global4.d, global4.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2275f, 2113f)))))), global2.d);
    var var_0 = vec3<bool>(select(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), all(vec4<bool>(true, any(vec2<bool>(false, true)), true, 4294967295u != u_input.a)), true), false, any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, false, true), true)) || !((u_input.a > 1u) & true));
    global4 = Struct_2(Struct_1(vec3<i32>(global2.a.b.x, _wgslsmith_add_i32(abs(global4.d.a.x), 1i), reverseBits(2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(countOneBits(vec2<u32>(u_input.a, u_input.a))), _wgslsmith_mod_vec2_u32(vec2<u32>(4549u, 56102u) & vec2<u32>(0u, u_input.a), vec2<u32>(25578u, 0u))), 17u)]), global4.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.a, 18u)], global3[_wgslsmith_index_u32(u_input.a, 18u)])), 1761f), -1651f) + -1760f), global2.a);
    var var_1 = Struct_1(global2.a.a, vec4<i32>(countOneBits(-global4.a.b.x), 0i, 2147483647i, 0i));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-1222f, global4.c))) + global4.b)));
}

fn func_2() -> u32 {
    let var_0 = vec3<f32>(global2.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2604f, global1.x))), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(868f, -668f, true)))));
    var var_1 = Struct_1(~(~vec3<i32>(~0i, u_input.b, -99349i)), global4.a.b);
    var var_2 = _wgslsmith_mult_u32(~(~(~4294967295u) << (u_input.a % 32u)), ~1u);
    let var_3 = Struct_2(Struct_1(-max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-44338i, global4.a.b.x, -2147483647i), var_1.a, vec3<i32>(global4.a.a.x, global2.d.a.x, global4.a.b.x)), -global4.d.a), countOneBits(select(global2.a.b, max(var_1.b, global0[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-484f)), 1293f))), 1415f, Struct_1(~(~global4.a.a), global0[_wgslsmith_index_u32(u_input.a, 17u)]));
    return u_input.a;
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<u32>(countOneBits(~(countOneBits(4294967295u) >> (firstTrailingBit(u_input.a) % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(44317u, abs(~60220u), u_input.a, abs(2761u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 662u, 0u)))), func_2());
    var var_1 = !any(vec4<bool>(any(vec2<bool>(true, true)), true, true, true));
    return Struct_2(global2.a, 1f, _wgslsmith_f_op_f32(-global4.c), Struct_1(abs(vec3<i32>(countOneBits(global2.d.b.x), reverseBits(global4.d.b.x), _wgslsmith_div_i32(u_input.b, u_input.b))), select(vec4<i32>(2147483647i, -global4.a.b.x, _wgslsmith_mult_i32(-79260i, global2.d.b.x), u_input.b), -global2.d.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0u;
    let var_1 = func_1();
    var var_2 = firstTrailingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, ~36996u, u_input.a), vec3<u32>(~35278u, _wgslsmith_mod_u32(u_input.a, 4294967295u), ~56001u)));
    let var_3 = true;
    global3 = array<f32, 18>();
    let var_4 = vec4<i32>(u_input.b & var_1.a.b.x, u_input.b, max(global2.a.a.x & ~0i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global4.d.a.x, global2.d.b.x, -2650i)), reverseBits(vec3<i32>(2147483647i, -2147483647i, global4.d.b.x)))), select(-select(0i, _wgslsmith_sub_i32(-1i, u_input.b), any(vec2<bool>(true, var_3))), countOneBits(_wgslsmith_clamp_i32(-2147483647i, ~9305i, u_input.b)), !(!(u_input.a == 15174u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(floor(global2.c))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b, -838f, true))))), firstLeadingBit(func_2()), min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, max(u_input.a, 74970u), u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, var_2.x, u_input.a), countOneBits(vec3<u32>(4294967295u, var_2.x, 1u)))), firstTrailingBit(6934u) & 4294967295u));
}

