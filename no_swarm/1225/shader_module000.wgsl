struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 20> = array<u32, 20>(38173u, 77880u, 21499u, 65441u, 49108u, 132866u, 1u, 1u, 1u, 54586u, 42208u, 78776u, 33592u, 37368u, 15736u, 10398u, 103968u, 10944u, 0u, 4294967295u);

var<private> global2: array<i32, 4> = array<i32, 4>(66012i, 2147483647i, 0i, -48832i);

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -841f, -1977f) + vec3<f32>(-331f, -1628f, 239f))) - vec3<f32>(_wgslsmith_div_f32(arg_1.a, global3.a), _wgslsmith_f_op_f32(sign(global3.e)), _wgslsmith_f_op_f32(global3.a - global3.e))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-531f, 927f)) - _wgslsmith_f_op_f32(f32(-1f) * -1768f)), -1000f, _wgslsmith_f_op_f32(floor(-1084f))), select(select(arg_1.b.a, vec3<bool>(arg_1.c.b, false, false), arg_1.b.a.x), arg_2.a, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(trunc(-153f)), _wgslsmith_f_op_f32(floor(global3.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(464f, arg_1.e, 636f))))))));
    let var_1 = global3.c.c;
    global1 = array<u32, 20>();
    global2 = array<i32, 4>();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.a, -341f, global3.a, global3.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.e, var_0.x, arg_1.a, arg_1.a)))), select(!vec4<bool>(false, arg_1.c.a.x, false, true), vec4<bool>(global3.b.a.x, arg_2.b, arg_1.b.a.x, true), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(549f, 355f, -683f, global3.a)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, arg_1.a, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, 638f, 675f, 540f) + vec4<f32>(-688f, global3.a, global3.a, 911f)), u_input.a.x < u_input.a.x)), vec4<bool>(global3.b.b || true, true, arg_2.b, global3.b.a.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.e, 1820f, 325f, 1916f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, global3.a, -206f, arg_1.e), vec4<f32>(global3.a, var_0.x, 695f, 1928f), vec4<bool>(global3.c.b, arg_2.b, true, arg_2.b)))) + vec4<f32>(_wgslsmith_f_op_f32(1697f * arg_1.e), -1204f, _wgslsmith_f_op_f32(sign(arg_1.a)), -1073f))), select(!select(select(vec4<bool>(true, arg_1.d.x, false, true), vec4<bool>(global3.c.a.x, true, false, false), vec4<bool>(true, global3.b.b, true, arg_1.b.a.x)), vec4<bool>(arg_2.a.x, false, arg_2.a.x, global3.b.b), false), select(vec4<bool>(arg_1.c.a.x, all(vec4<bool>(true, true, arg_1.d.x, false)), select(arg_2.a.x, true, false), true), select(vec4<bool>(global3.d.x, arg_2.a.x, global3.b.a.x, false), vec4<bool>(true, arg_2.a.x, arg_1.c.a.x, global3.b.a.x), global3.d.x), vec4<bool>(arg_1.c.a.x, arg_1.b.b, any(vec2<bool>(arg_2.b, arg_1.c.a.x)), !arg_2.a.x)), vec4<bool>(arg_2.b, true, arg_1.d.x, global3.d.x))));
    return arg_2.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = vec2<bool>(_wgslsmith_clamp_u32(func_3(~vec3<u32>(global3.c.c, global3.b.c, arg_2.c), Struct_2(global3.a, arg_0, global3.b, vec2<bool>(true, false), global3.e), Struct_1(vec3<bool>(true, global3.c.b, false), true, arg_0.c)), global1[_wgslsmith_index_u32(52515u, 20u)], ~(~arg_0.c)) == ~(arg_0.c ^ 4294967295u), any(!arg_0.a.yx));
    let var_1 = Struct_1(!(!(!vec3<bool>(var_0.x, arg_3, arg_0.b))), any(!(!(!vec4<bool>(true, arg_2.a.x, arg_0.a.x, false)))), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(select(0u, global1[_wgslsmith_index_u32(4294967295u, 20u)], false), firstTrailingBit(123351u))), ~(~abs(vec2<u32>(global3.c.c, arg_0.c)))));
    global2 = array<i32, 4>();
    var var_2 = _wgslsmith_f_op_f32(ceil(-514f));
    var_0 = !select(select(!(!arg_2.a.zx), !select(arg_0.a.yx, vec2<bool>(true, global3.b.a.x), global3.d.x), !(!arg_0.a.xx)), !(!vec2<bool>(arg_2.a.x, true)), any(!vec4<bool>(arg_3, arg_0.b, false, false)) & any(!arg_2.a.yz));
    return Struct_2(arg_1.x, Struct_1(var_1.a, false, ~1u), Struct_1(vec3<bool>(!any(arg_0.a), !all(vec4<bool>(true, false, false, false)), var_0.x), false, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3.c.c, 27858u, global1[_wgslsmith_index_u32(arg_0.c, 20u)]), vec3<u32>(arg_0.c, global1[_wgslsmith_index_u32(global3.b.c, 20u)], arg_0.c)), vec3<u32>(global3.b.c, global3.b.c, 4294967295u) & vec3<u32>(0u, 1u, 13646u)), max(vec3<u32>(arg_2.c, arg_0.c, 81426u) ^ vec3<u32>(46235u, 29091u, 0u), ~vec3<u32>(var_1.c, arg_2.c, global3.b.c)))), select(select(vec2<bool>(false, false), vec2<bool>(true, arg_2.b), arg_2.a.yx), var_1.a.xz, select(vec2<bool>(arg_2.b, false), select(vec2<bool>(false, arg_3), arg_0.a.zz, global3.c.a.yy), var_1.a.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1757f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-global3.e)))))));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 20u)], countOneBits(~(~global3.b.c)));
    let var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1319f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f - _wgslsmith_f_op_f32(-arg_0.x))));
    global2 = array<i32, 4>();
    let var_2 = var_1.x;
    global3 = func_2(global3.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.e, _wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_0.x))))), global3.b, global3.b.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(global3.e * -664f))), arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 20>();
    global1 = array<u32, 20>();
    var var_0 = 167f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e) * _wgslsmith_f_op_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(943f))), 683f, _wgslsmith_f_op_f32(-253f + global3.a)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(215f, -264f))));
    var var_1 = !global3.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, global1[_wgslsmith_index_u32(~(~(~abs(global3.b.c))), 20u)], u_input.a.x);
}

