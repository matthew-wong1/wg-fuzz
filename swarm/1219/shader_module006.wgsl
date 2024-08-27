struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_2, 17>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, false, false, true)), 0u, Struct_1(vec4<bool>(true, false, false, true)), false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> f32 {
    global1 = select(global0.a, global4.a.a, global0.a);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(807f, -1727f, 1378f), vec3<f32>(1441f, 1594f, arg_0)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1025f), arg_0, arg_0))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1199f, -1187f) - vec3<f32>(arg_0, -189f, 1699f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, -774f, arg_0)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 999f, -399f), vec3<f32>(1000f, -1724f, 1033f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -158f, arg_0))), !(!global0.a.x))), global1.x)));
    var var_1 = abs(max(~19930u, 4294967295u));
    var var_2 = global4.c.a.zy;
    let var_3 = _wgslsmith_sub_i32(-48634i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, select(countOneBits(0i), 1i, global1.x), _wgslsmith_mult_i32(-1i >> (u_input.a % 32u), reverseBits(14163i)), select(0i, abs(4540i), true)), vec4<i32>(_wgslsmith_add_i32(select(-2855i, 1i, false), 7165i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-53074i, -2147483647i, 1i, -1i) >> (vec4<u32>(1u, 4294967295u, u_input.a, 15156u) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), -1i)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))))));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    global4 = Struct_2(arg_0, ~global4.b, Struct_1(!vec4<bool>(!arg_0.a.x, true, true, global0.a.x)), !global1.x);
    let var_0 = ~u_input.a;
    global3 = array<Struct_2, 17>();
    global4 = global3[_wgslsmith_index_u32(0u, 17u)];
    global4 = Struct_2(Struct_1(vec4<bool>(!(!arg_0.a.x), global1.x, arg_0.a.x, global1.x)), 1u, global2[_wgslsmith_index_u32(global4.b, 11u)], any(vec4<bool>(true, global4.c.a.x, select(true, true, any(arg_0.a)), false)));
    return vec3<f32>(1798f, _wgslsmith_f_op_f32(-764f * 1065f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1780f)) - _wgslsmith_f_op_f32(func_3(-575f))));
}

fn func_1() -> bool {
    let var_0 = -7877i;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global2[_wgslsmith_index_u32(2399u, 11u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(574f, 236f, -1312f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-253f, 340f, 1016f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(728f, -190f, -1479f))))));
    global4 = Struct_2(Struct_1(global4.a.a), firstTrailingBit(global4.b), global2[_wgslsmith_index_u32(u_input.a, 11u)], all(!select(!vec2<bool>(true, global1.x), select(global0.a.zy, vec2<bool>(global4.d, true), global4.c.a.x), global0.a.xz)));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>((1u ^ u_input.a) | (min(u_input.a, global4.b) & u_input.a), u_input.a, countOneBits(global4.b)), abs(min(~vec3<u32>(57316u, 38765u, u_input.a), countOneBits(select(vec3<u32>(4294967295u, 1177u, 5673u), vec3<u32>(global4.b, global4.b, u_input.a), global0.a.wxz)))));
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.x, ~1u, var_2.x), 17u)];
    return global1.x;
}

fn func_4(arg_0: vec2<bool>) -> StorageBuffer {
    let var_0 = any(vec2<bool>(!(!global0.a.x), true && any(global0.a.yy)));
    global2 = array<Struct_1, 11>();
    var var_1 = select(!any(!global4.c.a.zx), true, true) | func_1();
    var_1 = any(select(select(!vec3<bool>(global0.a.x, true, arg_0.x), select(global0.a.zxy, vec3<bool>(var_0, global0.a.x, var_0), vec3<bool>(global4.c.a.x, global0.a.x, false)), true), select(vec3<bool>(true, true, true), !global4.a.a.zzx, arg_0.x), all(!vec4<bool>(false, arg_0.x, true, var_0)))) | !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * 1165f))) == _wgslsmith_f_op_f32(select(-300f, -1438f, !global0.a.x)));
    global1 = global0.a;
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) * _wgslsmith_f_op_f32(f32(-1f) * -350f)), -1098f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-638f - _wgslsmith_f_op_f32(f32(-1f) * -643f)) * _wgslsmith_f_op_f32(221f + _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec4<bool>(false, arg_0.x, true, false)))).x))), -2223f, max(~(~max(vec3<u32>(1u, u_input.a, 2895u), vec3<u32>(u_input.a, u_input.a, u_input.a))), firstLeadingBit((vec3<u32>(global4.b, u_input.a, u_input.a) & vec3<u32>(1u, 9490u, u_input.a)) >> (countOneBits(vec3<u32>(global4.b, 9700u, global4.b)) % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(287f + -229f) + 401f)), _wgslsmith_f_op_f32(func_3(643f)), -392f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global4.a.a);
    var var_1 = -488f;
    global2 = array<Struct_1, 11>();
    let var_2 = !var_0.a.xx;
    let var_3 = Struct_1(global4.c.a);
    let x = u_input.a;
    s_output = func_4(vec2<bool>(func_1(), select(~9271u <= ~u_input.a, global1.x, true)));
}

