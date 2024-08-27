struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<u32, 15>;

var<private> global2: Struct_4 = Struct_4(Struct_2(1u, vec4<u32>(1u, 0u, 4294967295u, 6186u), 20163i, 29678i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3) -> i32 {
    global0 = array<bool, 1>();
    global2 = Struct_4(Struct_2(_wgslsmith_dot_vec2_u32(~global2.a.b.xy, firstLeadingBit(vec2<u32>(12799u, u_input.d.x))), vec4<u32>(26588u, 0u, ~_wgslsmith_add_u32(26657u, 75009u), u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, global2.a.d), ~vec2<i32>(u_input.c, global2.a.d)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -23531i)), vec2<i32>(-1i, global2.a.c), vec2<i32>(global2.a.d, -11770i))), _wgslsmith_mod_i32(-1i, i32(-1i) * -40845i)));
    global1 = array<u32, 15>();
    global0 = array<bool, 1>();
    let var_0 = Struct_1(!vec3<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(arg_0.a.x, true), vec2<bool>(false, arg_2.a.x))), all(vec2<bool>(arg_0.a.x, true))));
    return ~_wgslsmith_sub_i32(~(~u_input.c), global2.a.c) >> (~(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~0u, 15u)], global1[_wgslsmith_index_u32(56200u, 15u)]) | ~global2.a.a) % 32u);
}

fn func_2() -> Struct_4 {
    let var_0 = any(!select(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(49736u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.a.a, 15u)], 1u)], global0[_wgslsmith_index_u32(0u, 1u)], false), false), !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(7352u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 1u)], true, true)), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(18587u), 15u)], 1u)]));
    let var_1 = vec2<bool>(true, select(-func_3(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(global2.a.b.x, 1u)], var_0, var_0)), vec4<f32>(1000f, -1052f, 1352f, 836f), Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]))) > _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.c, global2.a.c, 2147483647i, u_input.c), vec4<i32>(u_input.c, -11332i, u_input.c, global2.a.c)), global0[_wgslsmith_index_u32(17976u, 1u)], any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 1u)], all(vec3<bool>(true, false, var_0))))));
    let var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-199f * 157f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -386f) + -661f)));
    let var_4 = vec2<bool>(all(!(!vec4<bool>(true, true, var_1.x, false))), true);
    return Struct_4(Struct_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41720u, 15u)], 15u)], vec4<u32>(_wgslsmith_sub_u32(u_input.a, global2.a.b.x), ~u_input.a, ~119664u, u_input.d.x >> (61712u % 32u)) | reverseBits(~global2.a.b), ~func_3(Struct_1(vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -649f, var_3, var_3)), Struct_3(vec2<bool>(true, false))), -8527i));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(Struct_2(~_wgslsmith_add_u32(90541u, global2.a.b.x ^ u_input.a), global2.a.b, u_input.c, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(23660i, u_input.c, u_input.c), vec3<i32>(1i, u_input.c, -24745i))), abs(select(vec3<i32>(global2.a.c, 0i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], false, true))))));
    var var_1 = all(vec2<bool>(false, select(firstTrailingBit(22539i), global2.a.d >> (21486u % 32u), global0[_wgslsmith_index_u32(var_0.a.b.x, 1u)]) >= global2.a.c));
    let var_2 = 1000f;
    var_0 = Struct_4(var_0.a);
    var var_3 = func_2();
    return Struct_1(select(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(6137u, 1u)])), vec3<bool>(global0[_wgslsmith_index_u32(reverseBits(u_input.d.x), 1u)], 46098i <= global2.a.d, false), vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.b.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])), any(vec4<bool>(global0[_wgslsmith_index_u32(34150u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], false, true)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_0.a.b.x), 1u)])), !(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, global0[_wgslsmith_index_u32(1u, 1u)])), !vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(11173u, 1u)], global0[_wgslsmith_index_u32(u_input.b, 1u)], false)), any(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)], false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(select(var_0.a, select(vec3<bool>(false, global0[_wgslsmith_index_u32(~u_input.b, 1u)], true), var_0.a, false), true));
    let var_1 = func_2();
    global2 = func_2();
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global2.a.b, global2.a.b), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.a, 12683u, u_input.d.x, 67138u), vec4<u32>(74964u, var_1.a.a, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.a.b.x, 15u)], 15u)]))), ~56711u, global1[_wgslsmith_index_u32(firstTrailingBit(3689u >> (u_input.d.x % 32u)), 15u)]), reverseBits(vec3<u32>(~u_input.b, _wgslsmith_mod_u32(34870u, 52512u), 4294967295u))) & u_input.d.x;
    let var_3 = 10319i > _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(reverseBits(firstTrailingBit(vec2<i32>(var_1.a.c, global2.a.d))), -select(vec2<i32>(-59139i, global2.a.c), vec2<i32>(var_1.a.c, 32481i), var_0.a.zz)), 2147483647i);
    var var_4 = !(!(!(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2, 15u)], 1u)], var_0.a.x, false), vec4<bool>(true, var_0.a.x, var_0.a.x, true), false))));
    let var_5 = vec2<i32>(min(~func_3(func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(1933f, -724f, -549f, -989f) * vec4<f32>(-493f, 153f, 281f, -1845f)), Struct_3(var_0.a.xx)), var_1.a.c), -24259i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-6484i, global2.a.c), firstTrailingBit(global2.a.b.yyy));
}

