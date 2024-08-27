struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: vec2<bool>;

var<private> global2: array<f32, 6> = array<f32, 6>(1438f, 378f, -1660f, -1089f, -1000f, 1007f);

var<private> global3: Struct_2;

var<private> global4: array<vec3<u32>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = global3.a.x;
    global0 = array<u32, 18>();
    var var_1 = Struct_2(!vec3<bool>(global1.x, false, false));
    var var_2 = _wgslsmith_clamp_vec3_i32(abs(~(~u_input.b.xyz)), vec3<i32>(u_input.b.x, ~(-firstLeadingBit(0i)), -(~min(u_input.b.x, arg_0.b.x))), u_input.b.wxx);
    var_1 = Struct_2(vec3<bool>(true, true, true));
    return select(select(select(vec4<bool>(arg_1.x, true, any(vec3<bool>(var_1.a.x, true, false)), !arg_1.x), arg_1, select(vec4<bool>(global1.x, false, global3.a.x, false), vec4<bool>(arg_3.a.x, arg_3.a.x, false, global1.x), vec4<bool>(true, var_1.a.x, global3.a.x, true))), !vec4<bool>(all(arg_1.yzx), true, any(vec2<bool>(global1.x, arg_3.a.x)), global1.x), select(vec4<bool>(any(vec3<bool>(false, arg_1.x, arg_3.a.x)), any(vec3<bool>(true, arg_1.x, global1.x)), true, !var_1.a.x), select(!vec4<bool>(global3.a.x, true, arg_3.a.x, arg_3.a.x), select(arg_1, arg_1, arg_1), arg_1), !(!vec4<bool>(var_1.a.x, false, false, true)))), !(!arg_1), vec4<bool>(all(!(!vec2<bool>(global3.a.x, false))), true, false, arg_3.a.x));
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = ~vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(firstTrailingBit(u_input.b.x), ~(~u_input.b.x)));
    global0 = array<u32, 18>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(713f, -637f, 1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 6u)], 253f, 198f) * vec3<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 6u)], global2[_wgslsmith_index_u32(1101u, 6u)], global2[_wgslsmith_index_u32(15737u, 6u)])))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(0u, 6u)]))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(4945u, 102815u))), 6u)], global2[_wgslsmith_index_u32(firstTrailingBit(~1u), 6u)]))));
    let var_2 = -26407i;
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(-9888i, -32163i, var_2 & -1i, -2983i), ~vec4<i32>(14186i, firstTrailingBit(18466i), -u_input.b.x, _wgslsmith_dot_vec2_i32(var_0, -vec2<i32>(1i, u_input.b.x))));
    return select(!vec4<bool>(true, true, !(arg_0.x > 1u), global1.x), select(select(func_3(Struct_3(vec3<u32>(arg_0.x, 38857u, arg_0.x), vec2<i32>(2147483647i, -1i), vec3<u32>(arg_0.x, 4294967295u, global0[_wgslsmith_index_u32(82052u, 18u)])), select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(true, global3.a.x, true, global3.a.x), vec4<bool>(true, true, global1.x, false)), -1128f, Struct_1(vec3<bool>(global1.x, false, true))), !vec4<bool>(global1.x, true, true, global3.a.x), any(vec2<bool>(global1.x, global1.x))), select(vec4<bool>(!global1.x, !global3.a.x, false, true), !(!vec4<bool>(global3.a.x, true, true, global3.a.x)), select(!vec4<bool>(global3.a.x, true, false, global3.a.x), vec4<bool>(global1.x, true, global3.a.x, global1.x), !vec4<bool>(true, global1.x, global1.x, global1.x))), !(true & any(vec3<bool>(true, global3.a.x, false)))), !(!vec4<bool>(!global3.a.x, global1.x & true, global1.x, global3.a.x)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_add_i32(-u_input.b.x, u_input.b.x);
    let var_1 = -22168i;
    let var_2 = Struct_2(global3.a);
    let var_3 = select(select(!select(func_2(vec4<u32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], 19809u, u_input.a)), vec4<bool>(true, global1.x, global3.a.x, var_2.a.x), !vec4<bool>(var_2.a.x, var_2.a.x, true, false)), select(func_3(Struct_3(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 10u)], vec2<i32>(0i, -14048i), vec3<u32>(48809u, 0u, u_input.a)), select(vec4<bool>(true, global1.x, true, true), vec4<bool>(false, global1.x, global1.x, true), var_2.a.x), _wgslsmith_div_f32(-747f, 717f), Struct_1(vec3<bool>(var_2.a.x, false, true))), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global1.x, global3.a.x, true), select(vec4<bool>(true, false, false, true), vec4<bool>(global3.a.x, false, false, false), global1.x)), global1.x), !select(select(vec4<bool>(global1.x, true, false, global3.a.x), vec4<bool>(true, global1.x, false, global1.x), false), !vec4<bool>(global1.x, var_2.a.x, true, var_2.a.x), select(vec4<bool>(global3.a.x, false, true, var_2.a.x), vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(var_2.a.x, var_2.a.x, global1.x, false)))), vec4<bool>(global3.a.x, countOneBits(5794i) >= ~(~var_0), (min(u_input.a, 1u) >= 7037u) | (_wgslsmith_dot_vec3_i32(u_input.b.zxx, vec3<i32>(2147483647i, u_input.b.x, 2147483647i)) >= var_1), true), any(!global3.a));
    global0 = array<u32, 18>();
    return 28086u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~16523u, 18u)], 6u)]) - global2[_wgslsmith_index_u32(func_1(), 6u)])));
    let var_1 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 6u)];
    var var_2 = Struct_2(global3.a);
    var_2 = Struct_2(select(!vec3<bool>(false, !var_2.a.x, true), global3.a, global1.x));
    var var_3 = global3.a.xy;
    global0 = array<u32, 18>();
    var var_4 = vec2<u32>(~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(60753u, 18u)], u_input.a, 76158u)), vec4<u32>(4294967295u, u_input.a, 221u, 0u) >> (vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 70450u, 50948u) % vec4<u32>(32u))), 18u)]), ~max(~u_input.a, 78049u));
    let var_5 = Struct_4(~vec2<u32>(firstTrailingBit(86407u), var_4.x), Struct_1(global3.a), vec4<u32>(~31519u, ~u_input.a, _wgslsmith_add_u32(max(1220u, 1u), ~20017u), _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(u_input.a, u_input.a, 0u, 39365u), vec4<u32>(global0[_wgslsmith_index_u32(var_4.x, 18u)], 80852u, 0u, u_input.a), false), vec4<u32>(4294967295u, 36265u, 42649u, u_input.a) ^ vec4<u32>(1u, 3810u, 1844u, 4294967295u), var_2.a.x), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4565u, 18u)] ^ u_input.a, ~15849u, ~22926u))), Struct_1(!select(global3.a, func_2(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], u_input.a, var_4.x, 4605u)).yyz, vec3<bool>(false, true, var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(19200u, 1u, 0u), vec3<u32>(15320u, var_5.a.x, u_input.a))) >> (~vec3<u32>(1u, 60469u, _wgslsmith_clamp_u32(27812u, u_input.a, u_input.a)) % vec3<u32>(32u)), _wgslsmith_mod_u32(6847u, abs(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_4.x, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]))) >> ((_wgslsmith_dot_vec2_u32(~var_5.c.zy, var_5.a) >> (~1u % 32u)) % 32u), ~global0[_wgslsmith_index_u32(var_5.c.x, 18u)], u_input.a, u_input.b.www);
}

