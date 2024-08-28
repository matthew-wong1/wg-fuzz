struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<bool>(false, false, true, false), vec4<u32>(4294967295u, 57337u, 0u, 8093u)), Struct_2(vec4<bool>(false, true, false, false), vec4<u32>(51046u, 4294967295u, 71233u, 42347u)), Struct_2(vec4<bool>(true, true, false, false), vec4<u32>(4294967295u, 5015u, 1u, 33293u)), Struct_2(vec4<bool>(true, false, true, false), vec4<u32>(0u, 0u, 1u, 15123u)));

var<private> global1: array<i32, 21> = array<i32, 21>(1i, 2147483647i, 0i, i32(-2147483648), 8349i, -37295i, 2147483647i, 25410i, 1665i, 0i, -4856i, -1i, i32(-2147483648), -18965i, i32(-2147483648), i32(-2147483648), 4436i, 0i, -1i, 1i, -22902i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    var var_0 = ~(~_wgslsmith_mod_u32(countOneBits(5359u), u_input.c));
    return u_input.d.x;
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = arg_0.x;
    global1 = array<i32, 21>();
    var var_1 = !any(!vec3<bool>(true, u_input.b < 6305i, true));
    var var_2 = true;
    var_2 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(-1258f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2218f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) < 1000f, reverseBits(min(~73359u, abs(103198u))) >= u_input.c, all(vec3<bool>(select(true, select(false, false, false), any(vec2<bool>(true, false))), false, false)));
    return _wgslsmith_dot_vec2_i32(min(arg_0.yy, abs(arg_0.xw) ^ firstTrailingBit(vec2<i32>(var_0, u_input.b))), min(~(-vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 21u)], -1i)), vec2<i32>(~u_input.b, i32(-1i) * -32830i))) >> (10614u % 32u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    global0 = array<Struct_2, 4>();
    let var_0 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_2, -26910i, 1i, u_input.b), -vec4<i32>(~u_input.b, func_3(vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(16653u, 21u)], -1i, -1i)), -global1[_wgslsmith_index_u32(4294967295u, 21u)], ~global1[_wgslsmith_index_u32(u_input.a, 21u)])), global0[_wgslsmith_index_u32(70215u >> (~u_input.d.x % 32u), 4u)], abs(66355u | firstTrailingBit(u_input.c & u_input.a)), u_input.d.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(u_input.a, 1u) << (abs(u_input.a) % 32u), u_input.a), 21u)]);
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.d.x, 0u), reverseBits(_wgslsmith_dot_vec3_u32(var_0.b.b.xzx, vec3<u32>(1u, 70003u, 15601u))) ^ 1u) | var_0.b.b.x;
    var_1 = _wgslsmith_mult_u32(var_0.d, 63912u);
    var var_2 = true;
    return _wgslsmith_f_op_f32(-arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global0[_wgslsmith_index_u32(63342u, 4u)], func_1(), firstTrailingBit(4294967295u), ~(-2147483647i));
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let var_1 = select(var_0.b.a.wy, !var_0.b.a.ww, !(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_0.b.b.yx)) > ~firstLeadingBit(2410u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f - 821f)))), 812f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(373f))), _wgslsmith_f_op_f32(f32(-1f) * -1545f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec2<f32>(-455f, -875f), vec4<bool>(true, var_1.x, var_0.b.a.x, var_1.x), 1i))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c, var_0.b.b.x, 4294967295u, ~24469u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(493f + -986f))));
}

