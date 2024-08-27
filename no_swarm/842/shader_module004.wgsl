struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-1000f, -472f, -1245f), vec3<f32>(981f, 219f, -2568f), vec3<f32>(-822f, 585f, 1000f), vec3<f32>(1496f, -462f, -456f), vec3<f32>(-340f, -361f, 890f), vec3<f32>(-395f, 1640f, -1000f), vec3<f32>(263f, 1051f, 2946f), vec3<f32>(-244f, 1507f, -1333f), vec3<f32>(1058f, -1209f, -2256f), vec3<f32>(459f, -271f, -844f), vec3<f32>(-2174f, -274f, -1513f), vec3<f32>(-1319f, 1009f, -1857f), vec3<f32>(-480f, 666f, -514f), vec3<f32>(362f, 591f, -1261f), vec3<f32>(434f, -417f, 370f), vec3<f32>(-1000f, 845f, 897f), vec3<f32>(-1000f, 110f, 637f), vec3<f32>(-630f, -246f, 973f), vec3<f32>(-1000f, 213f, 777f), vec3<f32>(-120f, -2198f, 409f), vec3<f32>(-178f, -916f, -556f), vec3<f32>(182f, 1310f, -141f), vec3<f32>(889f, 973f, 288f), vec3<f32>(633f, 309f, -617f));

var<private> global1: vec3<f32> = vec3<f32>(1013f, 113f, 736f);

var<private> global2: array<u32, 26>;

var<private> global3: u32 = 5006u;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<u32> {
    global4 = !vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x - global1.x), 2064f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)), !all(vec2<bool>(false, global4.x)));
    global0 = array<vec3<f32>, 24>();
    global2 = array<u32, 26>();
    global2 = array<u32, 26>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_1.a, -820f)), arg_2, true)), _wgslsmith_div_vec3_f32(arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(91221u, 24u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -544f, 2629f) + vec3<f32>(global1.x, -1386f, -123f))), _wgslsmith_sub_u32(u_input.b.x, global2[_wgslsmith_index_u32(64495u, 26u)]) < _wgslsmith_dot_vec3_u32(vec3<u32>(78644u, global2[_wgslsmith_index_u32(arg_1.b.x, 26u)], u_input.c.x), vec3<u32>(u_input.b.x, arg_1.b.x, arg_1.b.x)))))));
    return arg_1.b.yz;
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_u32(func_3(u_input.b.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -691f)), countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 1u, 45586u, 56377u) & vec4<u32>(11326u, 38752u, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)])), vec2<i32>(i32(-1i) * -31989i, ~(-2147483647i))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 43194u, 0u, u_input.b.x), vec4<u32>(u_input.c.x, 59484u, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], 62134u))), 24u)]), u_input.c.xy);
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(var_0.x, 24u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -350f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14264u, u_input.c.x, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec4<u32>(13780u, 1u, u_input.b.x, 26708u)), 24u)])), global0[_wgslsmith_index_u32(~1u, 24u)]), !global4.x)), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(968f, _wgslsmith_f_op_f32(global1.x * global1.x)), global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -202f), global1.x)) - global1.x)));
    let var_1 = Struct_1(-966f, ~vec4<u32>(~u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, 0u), 2224u), _wgslsmith_dot_vec2_u32(~u_input.b.yz, vec2<u32>(global2[_wgslsmith_index_u32(var_0.x, 26u)], global2[_wgslsmith_index_u32(0u, 26u)])), 1u), _wgslsmith_sub_vec2_i32(vec2<i32>(-79652i, -u_input.a), -vec2<i32>(u_input.a, u_input.a)));
    var var_2 = !all(vec3<bool>(global4.x | (-2147483647i != u_input.a), all(!vec3<bool>(true, global4.x, global4.x)), false));
    var var_3 = !select(!(!(!vec3<bool>(global4.x, false, false))), select(!(!vec3<bool>(global4.x, global4.x, global4.x)), select(select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(true, false, global4.x), global4.x), vec3<bool>(false, true, global4.x), !vec3<bool>(false, global4.x, global4.x)), !select(vec3<bool>(global4.x, global4.x, false), vec3<bool>(false, global4.x, global4.x), true)), false);
    return var_3.zz;
}

fn func_1() -> Struct_1 {
    global4 = !select(func_2(), !vec2<bool>(func_2().x, global4.x), vec2<bool>(func_2().x, all(vec3<bool>(true, true, true))));
    let var_0 = reverseBits(firstTrailingBit(vec2<u32>(~u_input.c.x, firstTrailingBit(1781u)) & (~vec2<u32>(4294967295u, 4294967295u) & countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2373u, 26u)], 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], 26u)])))));
    var var_1 = Struct_1(568f, ~vec4<u32>(abs(select(4294967295u, 4294967295u, true)), u_input.c.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 26u)], 20096u, u_input.c.x, 4294967295u), vec4<u32>(23046u, 14794u, global2[_wgslsmith_index_u32(4294967295u, 26u)], var_0.x)), 26u)], 0u), -firstTrailingBit(-vec2<i32>(87756i, 38971i)));
    global2 = array<u32, 26>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(1981f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(770f)))), var_1.b, var_1.c);
    return Struct_1(var_2.a, ~(~abs(vec4<u32>(17922u, 4294967295u, 4294967295u, u_input.b.x))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(~u_input.c.x), 26u)], 24u)])));
    var var_0 = !global4.x || any(!(!(!vec3<bool>(global4.x, false, false))));
    global2 = array<u32, 26>();
    var var_1 = false;
    global2 = array<u32, 26>();
    let var_2 = global0[_wgslsmith_index_u32(23139u, 24u)];
    let var_3 = func_1();
    let var_4 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(954f * -677f)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.c.x, 1u, ~1u, var_3.b.x), firstTrailingBit(vec4<u32>(6570u, 0u, global2[_wgslsmith_index_u32(var_3.b.x, 26u)], 1u) >> (var_3.b % vec4<u32>(32u))) | var_3.b), var_3.c);
    global3 = var_4.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.yz + global1.xz) - _wgslsmith_div_vec2_f32(var_2.yz, vec2<f32>(-981f, global1.x)))))), ~(abs(var_3.b.xyy) | ~(~u_input.c)), -1i);
}

