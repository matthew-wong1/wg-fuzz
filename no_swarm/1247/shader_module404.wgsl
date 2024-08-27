struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(4294967295u, 4294967295u, 11437u, 8403u, 1u, 2950u, 12588u, 25541u, 0u, 36452u, 36551u, 95795u, 119063u, 50580u, 1u, 47376u, 44562u, 31014u);

var<private> global1: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(-1126f, 1000f), vec2<f32>(-2029f, 1017f), vec2<f32>(302f, 955f), vec2<f32>(858f, 127f), vec2<f32>(-1179f, -831f), vec2<f32>(672f, 752f), vec2<f32>(-546f, 2027f), vec2<f32>(1731f, 1000f), vec2<f32>(358f, -954f), vec2<f32>(-351f, 644f), vec2<f32>(-340f, -1366f), vec2<f32>(551f, -673f), vec2<f32>(913f, -236f), vec2<f32>(-908f, 367f), vec2<f32>(-270f, -209f), vec2<f32>(1012f, 364f), vec2<f32>(431f, -645f), vec2<f32>(1778f, -725f), vec2<f32>(801f, 656f), vec2<f32>(777f, 3211f), vec2<f32>(823f, -2628f));

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-29728i, 2147483647i, 1i), 989f, vec4<u32>(100907u, 62474u, 54148u, 1u));

var<private> global3: array<bool, 2>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = select(select(vec4<bool>(false, false, false, !(global3[_wgslsmith_index_u32(global2.c.x, 2u)] & true)), vec4<bool>(true, false, select(true, global2.b != -575f, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 2u)]), global3[_wgslsmith_index_u32(min(~0u, ~145665u), 2u)]), !select(select(vec4<bool>(global3[_wgslsmith_index_u32(25314u, 2u)], false, true, true), vec4<bool>(global3[_wgslsmith_index_u32(global2.c.x, 2u)], global3[_wgslsmith_index_u32(45252u, 2u)], global3[_wgslsmith_index_u32(global2.c.x, 2u)], true), true), select(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 2u)], true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(global2.c.x, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]), true), true)), select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 2u)], all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], false, false, global3[_wgslsmith_index_u32(global2.c.x, 2u)])), true, !global3[_wgslsmith_index_u32(u_input.b.x, 2u)]), select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(global2.c.x, 2u)], global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(17423u, 2u)], true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], true, true, global3[_wgslsmith_index_u32(global2.c.x, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(1u, 2u)], true, true)), vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22075u, 18u)], 2u)], true, false, true), select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.c.x, 18u)], 2u)], false), vec4<bool>(true, true, true, true), vec4<bool>(global3[_wgslsmith_index_u32(23660u, 2u)], false, true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25803u, 18u)], 2u)]))), vec4<bool>(global2.c.x > u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 2u)] || global3[_wgslsmith_index_u32(global2.c.x, 2u)], all(vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.b.x, 2u)])), false), global3[_wgslsmith_index_u32(0u, 2u)]), all(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 2u)]), vec2<bool>(global3[_wgslsmith_index_u32(31779u, 2u)], true), !vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 2u)])))), true);
    global2 = Struct_1(u_input.a, _wgslsmith_f_op_f32(ceil(-1791f)), vec4<u32>(1u, ~14266u, _wgslsmith_mod_u32(countOneBits(u_input.b.x), ~(~0u)), u_input.b.x));
    global2 = Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2919f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2291f - _wgslsmith_f_op_f32(global2.b * 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - global2.b) - _wgslsmith_f_op_f32(-global2.b)))), global2.c);
    global2 = Struct_1(vec3<i32>((reverseBits(global2.a.x) >> (global0[_wgslsmith_index_u32(62784u, 18u)] % 32u)) & global2.a.x, -(abs(u_input.a.x) ^ (i32(-1i) * -1i)), reverseBits(u_input.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1666f, -1677f)), _wgslsmith_f_op_f32(sign(-713f)))), _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u | global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)] << (min(23322u, global0[_wgslsmith_index_u32(4294967295u, 18u)]) % 32u), countOneBits(global2.c.x), ~abs(4294967295u), ~(~global0[_wgslsmith_index_u32(4294967295u, 18u)])), global2.c));
    global3 = array<bool, 2>();
    return _wgslsmith_f_op_f32(max(773f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * -825f), 253f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - -602f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b)) * _wgslsmith_f_op_f32(-global2.b)));
    global0 = array<u32, 18>();
    var var_1 = -vec4<i32>(_wgslsmith_div_i32(14211i, -u_input.a.x), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, arg_2, -1i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 24002i, 14384i)), ~(~vec4<i32>(37239i, u_input.a.x, 1i, 0i))), min(countOneBits(43725i), global2.a.x), -(max(u_input.a.x, u_input.a.x) << (1u % 32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(686f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(953f, arg_0.x, 2996f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, _wgslsmith_f_op_f32(-1477f * 896f), _wgslsmith_f_op_f32(-1000f + var_0.x)) + vec3<f32>(1434f, global2.b, _wgslsmith_div_f32(var_0.x, -1196f)))) * _wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(-arg_0.yyx)));
    var_1 = vec4<i32>(~36863i, ~0i >> (~countOneBits(_wgslsmith_clamp_u32(0u, global0[_wgslsmith_index_u32(45680u, 18u)], arg_3)) % 32u), ~firstTrailingBit(-_wgslsmith_add_i32(8916i, -6294i)), _wgslsmith_div_i32(~17590i, -19340i));
    return Struct_1(-abs(max(~vec3<i32>(-1i, arg_2, global2.a.x), vec3<i32>(54547i, u_input.c.x, 2147483647i))), 2440f, vec4<u32>(abs(1u), global2.c.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global2.c | vec4<u32>(u_input.b.x, 33023u, u_input.b.x, global2.c.x), global2.c), 56776u), _wgslsmith_add_u32(arg_3, (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)] & 33020u) ^ (global2.c.x | u_input.b.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.c.x;
    var var_1 = u_input.c;
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(786f, -1924f)))))), vec2<f32>(_wgslsmith_f_op_f32(min(-1258f, _wgslsmith_div_f32(global2.b, global2.b))), global2.b))), vec2<f32>(_wgslsmith_f_op_f32(ceil(global2.b)), global2.b), select(var_2, true, var_2)));
    let var_4 = Struct_1(u_input.a, _wgslsmith_f_op_f32(var_3.x + 296f), _wgslsmith_add_vec4_u32(abs(_wgslsmith_mod_vec4_u32(~global2.c, global2.c << (global2.c % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(countOneBits(global2.c), global2.c >> (~vec4<u32>(global0[_wgslsmith_index_u32(0u, 18u)], 4294967295u, u_input.b.x, 4294967295u) % vec4<u32>(32u)))));
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, _wgslsmith_f_op_f32(-var_3.x), -831f, _wgslsmith_div_f32(global2.b, 783f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1604f, -1000f, 1000f, -923f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.b, 322f, var_4.b, 2191f)))))), true, -var_1.x, firstLeadingBit(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global2.a;
    var var_2 = countOneBits(u_input.a.yy);
    global1 = array<vec2<f32>, 21>();
    var var_3 = Struct_1(var_0.a, var_0.b, ~var_0.c);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, global2.b, -1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, global2.b, -1443f) + vec3<f32>(595f, -1000f, 1405f))))) - vec3<f32>(global2.b, -453f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1611f, -2572f) - _wgslsmith_f_op_f32(-var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(var_4)))), global2.a.x);
}

