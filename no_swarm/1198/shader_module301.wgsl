struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-456f, 185f, 544f, -319f, 511f, 1483f, -1738f, -689f, -905f, 124f, 830f, 1325f, -148f, -408f, 199f, 784f, -1282f, -600f, -1009f, 280f, 3343f, 966f, -660f, -132f, -530f, -767f, -1000f, -371f);

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<bool>(false, true, true, false), -117f, vec2<bool>(false, false), false, Struct_1(vec2<i32>(27120i, i32(-2147483648)))), Struct_2(vec4<bool>(false, true, false, true), 1298f, vec2<bool>(false, true), true, Struct_1(vec2<i32>(0i, -14654i))), Struct_2(vec4<bool>(true, true, false, false), -170f, vec2<bool>(false, true), true, Struct_1(vec2<i32>(-23082i, -13145i))), Struct_2(vec4<bool>(true, false, true, false), -1000f, vec2<bool>(true, false), false, Struct_1(vec2<i32>(2147483647i, 0i))), Struct_2(vec4<bool>(true, false, false, true), -1828f, vec2<bool>(true, true), true, Struct_1(vec2<i32>(0i, -1i))), Struct_2(vec4<bool>(true, true, true, true), 515f, vec2<bool>(false, true), false, Struct_1(vec2<i32>(0i, 1i))), Struct_2(vec4<bool>(false, false, false, false), 255f, vec2<bool>(true, true), true, Struct_1(vec2<i32>(-7719i, -1i))), Struct_2(vec4<bool>(false, false, true, true), 704f, vec2<bool>(true, false), false, Struct_1(vec2<i32>(-2225i, 2147483647i))), Struct_2(vec4<bool>(false, false, false, false), 719f, vec2<bool>(true, true), false, Struct_1(vec2<i32>(-14509i, -1i))), Struct_2(vec4<bool>(true, true, true, false), -549f, vec2<bool>(false, true), true, Struct_1(vec2<i32>(1i, 1i))), Struct_2(vec4<bool>(true, true, true, false), 281f, vec2<bool>(false, true), false, Struct_1(vec2<i32>(i32(-2147483648), 35917i))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(855f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(33422u, 28u)])), arg_0.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1537f, global0[_wgslsmith_index_u32(7652u, 28u)], arg_0.b))))));
    global1 = array<Struct_2, 11>();
    global0 = array<f32, 28>();
    let var_1 = _wgslsmith_mod_vec4_i32(select(~vec4<i32>(1i, _wgslsmith_mod_i32(20009i, 5631i), arg_0.e.a.x, arg_0.e.a.x | -3603i), firstTrailingBit(vec4<i32>(arg_0.e.a.x, _wgslsmith_add_i32(-36371i, -1i), arg_0.e.a.x, arg_0.e.a.x)), !all(vec2<bool>(arg_0.a.x, true))), _wgslsmith_add_vec4_i32(countOneBits(-vec4<i32>(1i, -1i, arg_0.e.a.x, -69416i)), min(select(vec4<i32>(arg_0.e.a.x, 0i, arg_0.e.a.x, -36746i), vec4<i32>(arg_0.e.a.x, arg_0.e.a.x, arg_0.e.a.x, 9220i), arg_0.a.x) & vec4<i32>(arg_0.e.a.x, 27849i, arg_0.e.a.x, arg_0.e.a.x), vec4<i32>(arg_0.e.a.x, ~arg_0.e.a.x, -6590i, reverseBits(-1194i)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + -2344f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~16652u), 28u)] - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] * arg_0.b), -313f))));
    return 1i;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_1(firstTrailingBit(-abs(vec2<i32>(0i, arg_1))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 972f, global0[_wgslsmith_index_u32(6417u, 28u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, -1545f, -416f))))))));
    let var_2 = global1[_wgslsmith_index_u32(43251u, 11u)];
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(398f, var_1.a.x, var_1.a.x) - var_1.a), vec3<f32>(-894f, -1102f, var_1.a.x), arg_0.x)))) + var_1.a));
    let var_3 = select(vec2<bool>(any(vec2<bool>(arg_0.x && true, !var_2.a.x)), any(vec2<bool>(true, !arg_0.x))), select(vec2<bool>(any(!var_2.a.xyy), false || !var_2.c.x), select(vec2<bool>(any(vec3<bool>(false, var_2.a.x, arg_0.x)), false), arg_0, true), var_2.a.x), var_2.c);
    return !vec4<bool>(_wgslsmith_sub_i32(firstTrailingBit(var_0.a.x), var_0.a.x) < 1i, all(!vec4<bool>(false, arg_0.x, true, var_3.x)), all(vec4<bool>(false, any(var_2.a), true, var_3.x)), !all(select(var_2.a, vec4<bool>(false, false, true, var_2.a.x), var_2.a)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(37876u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)])) - _wgslsmith_f_op_f32(sign(-450f))) + global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(8714u, u_input.a)), 28u)]))));
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(108224u, 11u)], _wgslsmith_mult_vec2_u32(~(~vec2<u32>(60645u, 5638u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(29298u, 43982u), vec2<u32>(15283u, 33023u)) | _wgslsmith_add_vec2_u32(vec2<u32>(73483u, 4294967295u), vec2<u32>(11409u, u_input.a)))));
    var var_2 = Struct_2(var_1.a.a, var_1.a.b, var_1.a.a.xy, all(func_4(!select(var_1.a.c, vec2<bool>(arg_0, var_1.a.c.x), var_1.a.c), _wgslsmith_sub_i32(func_3(var_1.a), _wgslsmith_clamp_i32(19757i, var_1.a.e.a.x, -2147483647i)))), var_1.a.e);
    global1 = array<Struct_2, 11>();
    let var_3 = Struct_3(vec3<f32>(var_2.b, -1311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0)))))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-325f, var_2.b, var_0)))), _wgslsmith_div_vec3_f32(var_3.a, vec3<f32>(978f, var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_3.a, var_3.a), vec3<f32>(var_3.a.x, 500f, var_0)))));
}

fn func_1() -> i32 {
    let var_0 = func_2(false);
    global0 = array<f32, 28>();
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(u_input.a, 11u)], _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 19131u)), vec2<u32>(u_input.a, 1u) << (vec2<u32>(50124u, u_input.a) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), select(vec2<u32>(1u, 1920u), vec2<u32>(75469u, 59343u), vec2<bool>(false, false))))));
    global0 = array<f32, 28>();
    global1 = array<Struct_2, 11>();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -49833i, -45468i, ~(-1i), firstLeadingBit(-21728i)), vec4<i32>(-2721i, -1i, func_1(), 9632i)));
    var var_1 = -46637i;
    let var_2 = countOneBits(~(~firstTrailingBit(abs(vec2<u32>(u_input.a, u_input.a)))));
    let var_3 = vec3<bool>(!(10552u > _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, var_2.x, 4294967295u, u_input.a), vec4<u32>(var_2.x, u_input.a, 4294967295u, 25922u), false), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, var_2.x, u_input.a, var_2.x), vec4<u32>(var_2.x, 0u, u_input.a, 1u), vec4<u32>(10354u, 26125u, var_2.x, 4294967295u)))), -1094f == _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(25558u, 28u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_2.x, 28u)])))))), ((abs(u_input.a) & 39631u) << (27159u % 32u)) > (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, var_2.x) & var_2) ^ 1u));
    let var_4 = Struct_4(Struct_2(select(!(!vec4<bool>(var_3.x, false, var_3.x, false)), vec4<bool>(var_0.x <= var_0.x, true, true, false), vec4<bool>(all(vec3<bool>(false, var_3.x, var_3.x)), -2147483647i >= var_0.x, var_3.x, global0[_wgslsmith_index_u32(0u, 28u)] == 731f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(7162u, 61736u), 28u)]), vec2<bool>(true != any(vec3<bool>(false, false, var_3.x)), any(vec2<bool>(var_3.x, var_3.x))), func_4(select(select(vec2<bool>(var_3.x, true), var_3.xx, true), var_3.xx, !var_3.xx), (var_0.x ^ -785i) ^ var_0.x).x, Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.zy))), (vec2<u32>(~18306u, 36841u << (var_2.x % 32u)) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(19659u, u_input.a))) | vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(countOneBits(var_2), vec2<u32>(u_input.a, var_2.x))));
    global1 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.b, abs(max(~vec2<u32>(4294967295u, 74498u), vec2<u32>(var_4.b.x, 0u)))), vec4<i32>(~abs(~var_0.x), 1i, ~(var_0.x << (28470u % 32u)) | var_4.a.e.a.x, var_4.a.e.a.x), ~1u << (0u % 32u), 7490u, _wgslsmith_sub_vec2_i32(var_4.a.e.a, var_0.wz) >> (~(var_4.b & countOneBits(var_2)) % vec2<u32>(32u)));
}

