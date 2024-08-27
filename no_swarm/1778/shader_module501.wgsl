struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: i32 = -1i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> f32 {
    global1 = u_input.a;
    global0 = array<i32, 18>();
    let var_0 = Struct_2(Struct_1(arg_1.a.a | !all(vec2<bool>(arg_1.a.a, false)), vec3<u32>(1u, ~(~58897u), 4294967295u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(762f - 695f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1415f), _wgslsmith_f_op_f32(-557f - -963f)))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(1118f, 296f), _wgslsmith_div_f32(-1285f, -602f), _wgslsmith_f_op_f32(step(1809f, -582f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1222f, 1238f, 1000f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-3371f)), _wgslsmith_f_op_f32(1120f + 1191f), _wgslsmith_f_op_f32(func_3(u_input.c.yy, Struct_2(Struct_1(true, vec3<u32>(u_input.e, 55974u, u_input.b))), 0u, Struct_3(Struct_2(Struct_1(false, vec3<u32>(u_input.d, u_input.e, u_input.d))))))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-148f * _wgslsmith_f_op_f32(func_3(vec2<i32>(-44230i, global0[_wgslsmith_index_u32(u_input.d, 18u)]), Struct_2(Struct_1(true, vec3<u32>(u_input.d, 13936u, u_input.b))), u_input.d, Struct_3(Struct_2(Struct_1(false, vec3<u32>(73774u, u_input.b, 5005u))))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-248f * -890f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(u_input.c.zy, Struct_2(Struct_1(false, vec3<u32>(1u, u_input.e, 0u))), 4294967295u, Struct_3(Struct_2(Struct_1(false, vec3<u32>(u_input.d, u_input.d, 6644u)))))))) - -710f)));
    var var_1 = Struct_3(Struct_2(Struct_1(u_input.b <= ~70931u, countOneBits(~vec3<u32>(1u, u_input.b, 1u)))));
    return 1u | u_input.d;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = vec2<bool>(arg_0.a.a == true, any(select(vec3<bool>(true, true, false), select(!vec3<bool>(arg_0.a.a, true, arg_0.a.a), !vec3<bool>(arg_0.a.a, true, false), true), !(!vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a)))));
    var_0 = !vec2<bool>(var_0.x, arg_0.a.a);
    let var_1 = _wgslsmith_f_op_f32(abs(1664f));
    let var_2 = ~1u < ~(~(~u_input.d) | func_2());
    var var_3 = arg_0.a;
    return Struct_1(~global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.a.b.x ^ u_input.b), 18u)] >= _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-17045i, -22935i), ~global0[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_dot_vec3_i32(u_input.c.xxz << (vec3<u32>(1u, 4294967295u, arg_1) % vec3<u32>(32u)), countOneBits(u_input.c.xzy))), select(~abs(~vec3<u32>(var_3.b.x, var_3.b.x, 0u)), ~(~(~vec3<u32>(var_3.b.x, var_3.b.x, u_input.d))), (_wgslsmith_clamp_i32(0i, global0[_wgslsmith_index_u32(16458u, 18u)], global0[_wgslsmith_index_u32(33002u, 18u)]) & reverseBits(global0[_wgslsmith_index_u32(arg_1, 18u)])) <= u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), false));
    let var_1 = false | ((!any(vec2<bool>(var_0.x, var_0.x)) || !all(vec4<bool>(true, true, var_0.x, true))) && (u_input.e < ~0u));
    var var_2 = vec3<f32>(-393f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-774f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-974f - -516f)) + -1000f), 200f);
    let var_3 = Struct_2(func_1(Struct_2(Struct_1(var_0.x, vec3<u32>(10448u, 9665u, 4294967295u) << (vec3<u32>(1u, u_input.e, u_input.d) % vec3<u32>(32u)))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(74615u, u_input.b)), vec2<u32>(u_input.b, countOneBits(u_input.d)))));
    let var_4 = select(select(!select(vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(true, true, var_0.x, var_3.a.a), select(vec4<bool>(var_1, var_3.a.a, true, var_3.a.a), vec4<bool>(var_0.x, var_3.a.a, var_0.x, false), vec4<bool>(false, var_1, var_3.a.a, var_3.a.a))), select(!select(vec4<bool>(true, var_1, var_0.x, true), vec4<bool>(var_3.a.a, false, var_1, var_1), vec4<bool>(false, var_3.a.a, var_0.x, var_3.a.a)), select(select(vec4<bool>(var_3.a.a, false, false, var_3.a.a), vec4<bool>(var_0.x, false, true, var_3.a.a), var_1), select(vec4<bool>(var_0.x, var_3.a.a, true, var_3.a.a), vec4<bool>(var_3.a.a, var_1, var_1, var_0.x), vec4<bool>(var_3.a.a, var_1, false, false)), !vec4<bool>(var_1, true, false, false)), (-915f == var_2.x) && select(false, var_1, var_0.x)), !any(!var_0)), select(!select(select(vec4<bool>(var_0.x, var_1, var_3.a.a, true), vec4<bool>(var_3.a.a, var_3.a.a, var_0.x, var_1), vec4<bool>(var_0.x, var_3.a.a, false, var_1)), vec4<bool>(false, false, false, true), var_3.a.a & true), !(!select(vec4<bool>(false, var_3.a.a, var_1, var_1), vec4<bool>(true, var_3.a.a, false, false), vec4<bool>(true, var_3.a.a, var_0.x, var_0.x))), select(true || all(vec4<bool>(false, false, var_1, false)), var_0.x | var_3.a.a, any(!var_0.yx))), !(!select(vec4<bool>(var_3.a.a, var_0.x, true, false), !vec4<bool>(true, var_3.a.a, var_3.a.a, var_0.x), false)));
    global1 = (global0[_wgslsmith_index_u32(4294967295u, 18u)] & u_input.a) | ~u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b);
}

