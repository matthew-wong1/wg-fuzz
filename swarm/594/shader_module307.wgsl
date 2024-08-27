struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-1385f, 1348f, -213f), vec3<f32>(-1000f, -600f, 2031f), vec3<f32>(-424f, 211f, 1140f), vec3<f32>(-798f, 1590f, 334f), vec3<f32>(2271f, 759f, 1122f), vec3<f32>(-940f, -150f, 1000f), vec3<f32>(-303f, -501f, 739f), vec3<f32>(726f, 545f, -326f), vec3<f32>(2193f, -803f, 1567f), vec3<f32>(1000f, 1625f, 781f), vec3<f32>(-660f, 1000f, 368f), vec3<f32>(-779f, 654f, 892f), vec3<f32>(-555f, 1615f, -407f));

var<private> global1: bool = true;

var<private> global2: Struct_2 = Struct_2(Struct_1(-182f, true, -1206f));

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1939f, false, -553f), Struct_1(1109f, true, 584f), Struct_1(-419f, true, -117f), Struct_1(-355f, false, 551f), Struct_1(-431f, false, -463f), Struct_1(213f, false, 794f), Struct_1(-203f, false, 667f), Struct_1(-504f, false, 1134f), Struct_1(209f, true, 1677f), Struct_1(-403f, false, 1000f), Struct_1(606f, false, 301f), Struct_1(705f, true, 1000f), Struct_1(-145f, false, -1240f), Struct_1(1098f, true, 913f), Struct_1(-1547f, true, 250f), Struct_1(-766f, false, -1584f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<bool>) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 46200u), vec3<u32>(0u, u_input.a, 20821u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(15841u, 1u, u_input.a))) >> (~(vec3<u32>(0u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(79947u, u_input.a, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 11480u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 11408u))))), 16u)];
    global2 = Struct_2(Struct_1(var_0.a, true && any(!vec3<bool>(arg_3.x, arg_1.b, arg_3.x)), _wgslsmith_f_op_f32(select(-1068f, arg_1.c, 4294967295u != _wgslsmith_add_u32(u_input.a, 4294967295u)))));
    var var_1 = Struct_1(180f, true, global2.a.c);
    global0 = array<vec3<f32>, 13>();
    let var_2 = Struct_1(arg_1.c, select(true, !(!any(vec4<bool>(global2.a.b, false, arg_1.b, true))), !var_0.b), 243f);
    return u_input.b.x;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-global2.a.c);
    var var_1 = select(select(vec4<bool>(global2.a.b || false, false, arg_0 < arg_0, true), select(select(!vec4<bool>(global2.a.b, global2.a.b, global2.a.b, global2.a.b), !vec4<bool>(true, global2.a.b, global2.a.b, false), global2.a.b && true), !select(vec4<bool>(global2.a.b, global2.a.b, true, global2.a.b), vec4<bool>(false, global2.a.b, global2.a.b, false), vec4<bool>(false, global2.a.b, false, true)), select(vec4<bool>(global2.a.b, global2.a.b, global2.a.b, false), select(vec4<bool>(global2.a.b, global2.a.b, true, false), vec4<bool>(false, false, true, false), global2.a.b), !vec4<bool>(global2.a.b, global2.a.b, global2.a.b, global2.a.b))), true), vec4<bool>(global2.a.b, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(arg_2.x, arg_2.x)) >= _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(min(global2.a.a, arg_1.x)))), all(!(!vec3<bool>(global2.a.b, false, true))), !(!(!global2.a.b))), !global2.a.b);
    global0 = array<vec3<f32>, 13>();
    var var_2 = func_3(true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(u_input.a, 1u)) | _wgslsmith_sub_vec2_u32(select(vec2<u32>(arg_0, 11911u), vec2<u32>(4294967295u, arg_0), var_1.wy), firstTrailingBit(vec2<u32>(u_input.a, 0u))), ~vec2<u32>(abs(0u), u_input.a & u_input.a)), 16u)], u_input.b, vec4<bool>(true, true, true, true));
    var var_3 = vec3<i32>(u_input.b.x, 1i, u_input.b.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a.a))), var_1.x, _wgslsmith_f_op_f32(min(-1758f, 1f))));
}

fn func_1() -> StorageBuffer {
    global1 = !(global2.a.b & !(global2.a.b & true));
    var var_0 = func_2(~(~0u), vec3<f32>(-1682f, _wgslsmith_f_op_f32(-global2.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1571f + _wgslsmith_f_op_f32(-global2.a.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.a.a, global2.a.a), vec2<f32>(-483f, -234f))))))));
    return StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.a.a, _wgslsmith_f_op_f32(global2.a.c * -1335f))), _wgslsmith_f_op_f32(f32(-1f) * -346f)))), global0[_wgslsmith_index_u32(u_input.a, 13u)], firstTrailingBit(abs(_wgslsmith_clamp_vec2_i32(reverseBits(u_input.b.yx), -u_input.b.zw, ~vec2<i32>(u_input.b.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

