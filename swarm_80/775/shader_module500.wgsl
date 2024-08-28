struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 29> = array<i32, 29>(-10370i, -26168i, 68958i, 0i, 1i, -22034i, -45020i, 0i, 7415i, 28529i, i32(-2147483648), 33100i, 8888i, 880i, -2304i, 1i, -1i, 15446i, -38111i, 8636i, i32(-2147483648), -2403i, -1i, 1i, 0i, -48326i, -18416i, -31542i, 14744i);

var<private> global2: array<Struct_1, 16>;

var<private> global3: f32;

var<private> global4: array<vec4<bool>, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0.b.x, u_input.a.zy);
    var var_1 = ~(~_wgslsmith_mod_u32(22136u, 4294967295u));
    var var_2 = Struct_1(0u, global0.b);
    let var_3 = all(!(!vec3<bool>(false, true, any(vec4<bool>(true, true, false, true)))));
    var var_4 = var_0.b.x;
    return global2[_wgslsmith_index_u32(0u, 16u)];
}

fn func_3() -> u32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f * 1949f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-806f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(106f, 609f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-371f, _wgslsmith_f_op_f32(f32(-1f) * -376f))))));
    global1 = array<i32, 29>();
    var var_2 = all(vec3<bool>(!all(vec3<bool>(false, false, false)), true, true));
    var var_3 = Struct_1(var_0.b.x, firstTrailingBit(vec2<u32>(var_0.b.x, reverseBits(32860u & var_0.b.x))));
    return firstTrailingBit(_wgslsmith_mod_u32(5284u, var_3.a));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> vec2<bool> {
    var var_0 = func_2();
    global1 = array<i32, 29>();
    var var_1 = select(vec2<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), true)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 43084u, global0.a, u_input.a.x) | vec4<u32>(4294967295u, u_input.c, var_0.b.x, var_0.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(68063u, 17360u, u_input.a.x, 22085u), vec4<u32>(global0.b.x, var_0.a, 4294967295u, var_0.b.x))) >= global0.a), select(!vec2<bool>(true, arg_1.x == -27942i), vec2<bool>(any(vec4<bool>(true, false, false, true)), true), vec2<bool>(true, any(vec2<bool>(false, true)))), arg_1.x > min(-arg_1.x, min(arg_1.x, -global1[_wgslsmith_index_u32(global0.b.x, 29u)])));
    global3 = _wgslsmith_f_op_f32(1176f * arg_0);
    var_0 = Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(select(_wgslsmith_div_u32(global0.b.x, var_0.a), ~global0.b.x, var_1.x)), 4294967295u, func_3()), ~reverseBits(firstTrailingBit(~global0.b)));
    return select(!vec2<bool>(var_1.x, _wgslsmith_clamp_u32(var_0.b.x, u_input.b, u_input.a.x) > countOneBits(45489u)), !select(vec2<bool>(false, true), vec2<bool>(var_1.x || false, any(vec2<bool>(false, true))), !select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false), var_1.x)), !(!select(vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x), select(vec2<bool>(false, false), vec2<bool>(false, var_1.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!all(select(vec2<bool>(true, false), func_1(275f, vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 29u)], -67237i, 2147483647i, global1[_wgslsmith_index_u32(u_input.c, 29u)]), 644f), false)));
    var var_1 = ~1u;
    var_1 = ~(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_sub_u32(global0.b.x, 0u), firstTrailingBit(global0.b.x), u_input.b)) ^ _wgslsmith_add_u32(u_input.b, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~22652u, ~45313u, reverseBits(max(firstTrailingBit(vec4<i32>(1i, -33302i, global1[_wgslsmith_index_u32(4294967295u, 29u)], -34071i)) & vec4<i32>(-29199i, global1[_wgslsmith_index_u32(global0.a, 29u)], 30402i, 2147483647i), countOneBits(~vec4<i32>(global1[_wgslsmith_index_u32(global0.b.x, 29u)], global1[_wgslsmith_index_u32(74362u, 29u)], global1[_wgslsmith_index_u32(69520u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)])))), vec4<i32>(-15350i, 5687i, -1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, -41500i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, -21257i, global1[_wgslsmith_index_u32(global0.b.x, 29u)], global1[_wgslsmith_index_u32(global0.a, 29u)]), vec4<i32>(23313i, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(global0.a, 29u)], global1[_wgslsmith_index_u32(68300u, 29u)]), vec4<bool>(false, true, true, true)), firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(global0.b.x, 29u)], 28195i, -25062i, -67324i))))));
}

