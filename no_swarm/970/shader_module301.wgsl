struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<f32, 6> = array<f32, 6>(1540f, 327f, -896f, -1000f, 1330f, -413f);

var<private> global2: array<i32, 9>;

var<private> global3: array<vec3<i32>, 13>;

var<private> global4: array<f32, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(49876u, u_input.d, u_input.d, arg_2.x), vec4<u32>(global0.x, 4966u, 0u, u_input.a)) << (arg_2.x % 32u)), 9u)], _wgslsmith_sub_i32(abs(firstTrailingBit(-4401i)), 2147483647i), -1i), countOneBits(-_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, global2[_wgslsmith_index_u32(arg_2.x, 9u)], 0i, 0i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 9u)], 35572i, global2[_wgslsmith_index_u32(global0.x, 9u)], u_input.e.x))));
    var var_1 = 0u;
    var_1 = 764u;
    let var_2 = 272f;
    var var_3 = max(~(_wgslsmith_div_u32(~u_input.a, global0.x) | global0.x), ~75173u);
    return vec2<u32>(80049u, ~(abs(global0.x) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.a, global0.x, global0.x), vec4<u32>(0u, 0u, 1u, u_input.d)), 16063u) % 32u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_3 {
    global0 = _wgslsmith_add_vec2_u32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1555f, -334f) + vec2<f32>(global1[_wgslsmith_index_u32(107662u, 6u)], 1181f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(global0.x, 19u)], global4[_wgslsmith_index_u32(global0.x, 19u)])))), arg_1, firstTrailingBit(arg_0)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~global0.x, ~73993u), arg_0, vec2<u32>(abs(u_input.a), 40654u)));
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(firstLeadingBit(5770u), 19u)], abs(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(firstTrailingBit(arg_0.x), 9u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(1u, u_input.a)), 9u)])));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(907f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(54710u, global0.x)), 6u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1334f + global4[_wgslsmith_index_u32(arg_0.x, 19u)]))), 463f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_3 = vec4<i32>(-2147483647i, 7113i, u_input.b.x, max(global2[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_sub_i32(abs(2553i), 2147483647i)));
    return Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 0u), 6u)], Struct_1(~arg_0.x, u_input.e, var_1), var_2.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> Struct_3 {
    var var_0 = !select(vec4<bool>(false, arg_1.b.c, arg_2, func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, arg_3), vec2<u32>(arg_1.b.a, arg_3), vec2<u32>(u_input.d, arg_3)), !arg_1.b.c).b.c), vec4<bool>(true, true, arg_2, all(vec3<bool>(true, true, true))), !select(select(vec4<bool>(true, arg_2, false, true), vec4<bool>(arg_2, arg_0.x, true, arg_2), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), !vec4<bool>(arg_2, arg_1.b.c, arg_0.x, arg_0.x), global0.x != 72849u));
    var var_1 = arg_1.b;
    return func_2(vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, 7511u, arg_1.b.a, 8976u)), firstTrailingBit(vec4<u32>(arg_3, 0u, 15168u, 37621u)))), var_0.x);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1545f, global4[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(arg_1.b.a, 6u)]), vec4<f32>(724f, global4[_wgslsmith_index_u32(53949u, 19u)], 393f, arg_2.a.c))))) - vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_f32(step(178f, arg_2.a.a)), _wgslsmith_div_f32(-2513f, arg_1.a)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a, 167f, -826f, _wgslsmith_div_f32(arg_1.a, arg_2.a.c))))));
    var var_1 = -1i;
    var var_2 = any(vec2<bool>(arg_1.b.c, (-16292i >= u_input.c.x) | false)) | (arg_2.a.b.c == any(!select(vec4<bool>(true, arg_1.b.c, true, arg_1.b.c), vec4<bool>(true, arg_2.a.b.c, false, true), vec4<bool>(true, true, true, false))));
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    return vec4<bool>(false, arg_2.a.b.c, true && func_4(vec2<bool>(arg_1.b.a == arg_1.b.a, !arg_2.a.b.c), Struct_3(_wgslsmith_f_op_f32(-var_0.x), Struct_1(4294967295u, vec2<i32>(arg_1.b.b.x, 2147483647i), false), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global0.x, 6u)], var_0.x))), any(!vec2<bool>(arg_1.b.c, arg_1.b.c)), 1u).b.c, !any(vec3<bool>(true, true, true)));
}

fn func_1() -> StorageBuffer {
    global1 = array<f32, 6>();
    var var_0 = !vec4<bool>(true, (any(vec4<bool>(true, true, true, false)) & true) | true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(0u, 6u)], 713f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(11897u, 19u)] * global1[_wgslsmith_index_u32(1u, 6u)]), global4[_wgslsmith_index_u32(~u_input.d, 19u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1128f, global1[_wgslsmith_index_u32(u_input.d, 6u)], global4[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]) - vec4<f32>(-423f, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(global0.x, 6u)], -545f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(246f, -1000f, _wgslsmith_f_op_f32(-423f + global1[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 6u)])))));
    var_0 = !(!func_5(0i & ~u_input.b.x, func_4(!var_0.xz, func_2(vec2<u32>(0u, u_input.a), var_0.x), func_2(vec2<u32>(4294967295u, u_input.d), var_0.x).b.c, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 42999u), vec2<u32>(u_input.d, 4047u))), Struct_4(func_4(vec2<bool>(var_0.x, var_0.x), Struct_3(global1[_wgslsmith_index_u32(global0.x, 6u)], Struct_1(global0.x, u_input.c, true), 508f), false, 4294967295u), ~u_input.e)));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(round(var_1.x)), func_2(vec2<u32>(select(1u, 0u, var_0.x), 0u), func_5(global2[_wgslsmith_index_u32(26572u, 9u)], func_2(vec2<u32>(12379u, 26184u), true), Struct_4(Struct_3(global1[_wgslsmith_index_u32(u_input.a, 6u)], Struct_1(u_input.d, u_input.b.zx, var_0.x), 1677f), vec2<i32>(31529i, 1i))).x).b, 1000f), u_input.b.zx);
    return StorageBuffer(var_1.xxz, var_1.x, global1[_wgslsmith_index_u32(48292u, 6u)], ~u_input.d << (select(4294967295u, 0u, true) % 32u), -min(min(-var_2.b, -u_input.c), var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

