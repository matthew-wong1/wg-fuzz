struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(0i, i32(-2147483648), 2147483647i, -2560i), vec4<i32>(48752i, 1i, 74936i, 1i), vec4<i32>(11122i, 2638i, 20353i, i32(-2147483648)), vec4<i32>(-23748i, -1i, 1i, 6777i), vec4<i32>(2147483647i, 1i, 0i, i32(-2147483648)), vec4<i32>(0i, 8278i, -1i, 53027i), vec4<i32>(-1i, 2147483647i, -5895i, 11298i), vec4<i32>(1i, -9731i, 17252i, 1i), vec4<i32>(-32131i, -51707i, 1i, 13680i), vec4<i32>(2147483647i, 3341i, 1i, -1852i), vec4<i32>(-1i, 0i, -1i, 11179i), vec4<i32>(-13545i, 2147483647i, -23284i, 32362i), vec4<i32>(28101i, 0i, -36868i, 0i), vec4<i32>(-25625i, -30217i, -18834i, -1i), vec4<i32>(-29268i, 14631i, 0i, -9381i), vec4<i32>(55698i, -9110i, 0i, -1i), vec4<i32>(i32(-2147483648), 52452i, 2147483647i, -49888i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 0i), vec4<i32>(22133i, 0i, 0i, i32(-2147483648)), vec4<i32>(-39353i, 2147483647i, -56146i, 42608i));

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<i32>(2147483647i, -1i, -24195i, -56570i), -1107f, vec3<bool>(true, false, true), vec2<f32>(211f, -1753f)), Struct_1(vec4<i32>(21756i, -59736i, 2147483647i, 0i), 657f, vec3<bool>(true, false, false), vec2<f32>(-1000f, 754f)), Struct_1(vec4<i32>(i32(-2147483648), -14232i, -12671i, -1i), 649f, vec3<bool>(true, false, false), vec2<f32>(-1230f, 1063f)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1608f)), 1f, _wgslsmith_f_op_f32(step(-2004f, _wgslsmith_div_f32(-800f, 947f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(145f * -1212f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(949f, 124f, 292f, 275f) * vec4<f32>(-263f, -140f, 951f, -107f)))))));
    global0 = array<vec2<f32>, 11>();
    global1 = array<vec4<i32>, 20>();
    global2 = array<Struct_1, 3>();
    let var_1 = Struct_1(~vec4<i32>(u_input.d.x, u_input.a.x, reverseBits(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], vec4<i32>(u_input.d.x, -28642i, 31661i, -2147483647i))), 0i | select(u_input.d.x, u_input.d.x, false)), -1000f, select(!select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), 1776f <= var_0.x), vec3<bool>(true, true, true), -623f >= _wgslsmith_f_op_f32(var_0.x * var_0.x)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(220f, 882f))), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))))));
    return var_1.c.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    var var_0 = !vec3<bool>(func_3(), select(false, true, !(!arg_1.c.x)), !(!arg_1.c.x));
    global2 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_dot_vec3_i32(select(~u_input.e, vec3<i32>(u_input.d.x, -1i, _wgslsmith_dot_vec3_i32(select(arg_1.a.www, vec3<i32>(u_input.d.x, u_input.a.x, arg_0.x), vec3<bool>(arg_3.x, true, arg_3.x)), countOneBits(u_input.d.yyy))), vec3<bool>(true, arg_2.a.c.x, !all(arg_2.c.c))), reverseBits(abs(~vec3<i32>(arg_0.x, arg_0.x, u_input.e.x))));
    var var_2 = arg_1.c.zz;
    let var_3 = u_input.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.d.x), arg_1.b)));
}

fn func_1() -> Struct_2 {
    return Struct_2(Struct_1(vec4<i32>(-u_input.a.x | (2147483647i >> (u_input.b.x % 32u)), u_input.a.x, u_input.a.x, firstLeadingBit(~(-2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -1572f), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(-7502i, 1i), global2[_wgslsmith_index_u32(0u, 3u)], Struct_2(global2[_wgslsmith_index_u32(53416u, 3u)], vec3<i32>(42968i, 24089i, 2147483647i), global2[_wgslsmith_index_u32(1u, 3u)], 506f, 660f), vec2<bool>(true, true)))), 848f)), ~select(u_input.d.yzw, -min(u_input.e, vec3<i32>(u_input.e.x, u_input.a.x, -2147483647i)), any(vec3<bool>(false, false, true))), Struct_1(firstTrailingBit(vec4<i32>(firstTrailingBit(21530i), min(u_input.e.x, u_input.e.x), -1i, ~2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-177f, 1000f), -1059f))), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1459f, -112f), vec2<f32>(1496f, -803f)) - global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 11u)])))), -220f, 363f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.zz;
    let var_1 = func_1();
    let var_2 = true;
    let var_3 = func_1();
    global1 = array<vec4<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b);
}

