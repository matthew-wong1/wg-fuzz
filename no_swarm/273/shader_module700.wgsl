struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(21026u, 4294967295u, 14403u, 0u, 1u, 0u, 0u, 4294967295u);

var<private> global1: array<u32, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> f32 {
    global0 = array<u32, 8>();
    var var_0 = -1i;
    global1 = array<u32, 13>();
    let var_1 = firstLeadingBit(min(~(min(vec2<i32>(6159i, -5293i), vec2<i32>(1i, -2147483647i)) | select(vec2<i32>(-1i, -9741i), vec2<i32>(-1i, -8120i), true)), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -16857i), vec2<i32>(-43034i, 38518i)), abs(vec2<i32>(-11768i, 31672i))), abs(~(-34770i)))));
    var_0 = -382i;
    return 2232f;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0);
    global0 = array<u32, 8>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -465f));
    let var_2 = _wgslsmith_mod_i32(min(-(~arg_1), arg_1), arg_1 << (~(~0u) % 32u)) > -(-19078i & abs(arg_1));
    var_1 = Struct_1(-1730f);
    return select(arg_3.c, arg_3.c, !select(vec3<bool>(var_2, arg_3.c.x, var_2), arg_3.c, true));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1523f)), _wgslsmith_f_op_f32(-763f + _wgslsmith_f_op_f32(ceil(-811f))))) - 581f);
    var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = Struct_1(268f);
    global1 = array<u32, 13>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + -1663f))), -203f, 370f);
    return Struct_3(49612u & global1[_wgslsmith_index_u32(~u_input.a.x, 13u)], Struct_2(vec2<bool>((i32(-1i) * -1i) >= firstTrailingBit(-1i), false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), func_3(-923f, _wgslsmith_div_i32(-2147483647i, -2147483647i) << (u_input.a.x % 32u), u_input.a.yz, Struct_3(~u_input.a.x, Struct_2(vec2<bool>(false, false)), vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1343f * _wgslsmith_f_op_f32(step(-862f, -632f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-140f)) * _wgslsmith_f_op_f32(175f * -135f)))) - -1000f);
    let var_2 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1260f), _wgslsmith_f_op_f32(abs(-349f))), -22229i, _wgslsmith_mod_vec2_u32(reverseBits(max(u_input.a.zx, vec2<u32>(61516u, global0[_wgslsmith_index_u32(var_0.a, 8u)]))) ^ _wgslsmith_mod_vec2_u32(~u_input.a.yz, ~u_input.a.yz), vec2<u32>(~global0[_wgslsmith_index_u32(countOneBits(4012u), 8u)], reverseBits(1273u))), func_1());
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-3088f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(746f - -549f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-503f, -1931f))))));
    let var_4 = select(select(select(select(vec4<bool>(false, var_2.x, var_2.x, var_0.c.x), vec4<bool>(false, true, var_0.c.x, var_0.b.a.x), vec4<bool>(true, true, true, true)), vec4<bool>(var_2.x, var_2.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)] == var_0.a, true), !select(vec4<bool>(true, false, var_0.b.a.x, false), vec4<bool>(var_0.b.a.x, false, false, true), vec4<bool>(false, false, true, var_2.x))), vec4<bool>(true, false, func_3(_wgslsmith_f_op_f32(var_3.x * -1441f), 0i, abs(vec2<u32>(global0[_wgslsmith_index_u32(var_0.a, 8u)], 61119u)), Struct_3(4294967295u, Struct_2(var_0.b.a), vec3<bool>(var_0.b.a.x, var_2.x, var_2.x))).x, true), true), select(select(vec4<bool>(true, var_0.b.a.x, true, func_3(var_3.x, 2147483647i, vec2<u32>(var_0.a, 28548u), var_0).x), vec4<bool>(func_1().b.a.x, true, true, 36013u >= global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 8u)]), !var_2.x), select(vec4<bool>(var_0.b.a.x & true, true, var_0.c.x, !var_2.x), vec4<bool>(true, any(vec4<bool>(true, true, false, var_0.c.x)), true, true), vec4<bool>(true, any(vec3<bool>(true, false, var_2.x)), false, var_2.x)), select(!vec4<bool>(var_2.x, false, false, var_2.x), select(select(vec4<bool>(var_0.b.a.x, false, false, var_0.c.x), vec4<bool>(true, var_0.c.x, var_2.x, var_0.b.a.x), vec4<bool>(false, var_2.x, true, true)), !vec4<bool>(true, false, var_2.x, var_0.b.a.x), func_1().b.a.x), _wgslsmith_f_op_f32(select(-486f, var_3.x, true)) < _wgslsmith_f_op_f32(f32(-1f) * -947f))), vec4<bool>(func_3(_wgslsmith_f_op_f32(2019f * _wgslsmith_f_op_f32(var_3.x - -212f)), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, 39623i), vec4<i32>(66816i, -61617i, 52580i, 6235i)), _wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(1u, u_input.a.x)), Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 13u)] & global1[_wgslsmith_index_u32(68338u, 13u)], func_1().b, select(vec3<bool>(var_0.c.x, false, false), vec3<bool>(var_0.b.a.x, false, true), var_0.c))).x, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, ~global1[_wgslsmith_index_u32(0u, 13u)], func_1().a, var_3.x);
}

