struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: Struct_1 = Struct_1(false, vec3<u32>(1315u, 4294967295u, 74557u), vec4<f32>(-1233f, -112f, -100f, -317f), vec2<bool>(true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = global1.d;
    global0 = array<u32, 31>();
    global1 = Struct_1(any(select(!(!vec4<bool>(global1.d.x, arg_2.a, arg_2.a, true)), vec4<bool>(!var_0.x, true, true, arg_2.d.x), vec4<bool>(var_0.x, true, true, false))), abs(global1.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.c.x, arg_2.c.x)), arg_1.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f * -378f))), -563f, _wgslsmith_f_op_f32(trunc(2262f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)), _wgslsmith_f_op_f32(-arg_2.c.x)))), arg_1.d);
    let var_1 = u_input.d.xy;
    global0 = array<u32, 31>();
    return vec3<bool>(false, all(vec4<bool>(true, (u_input.d.x | u_input.d.x) <= u_input.a, arg_2.a, any(vec3<bool>(var_0.x, var_0.x, true)))), false);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> vec2<bool> {
    global1 = Struct_1(global1.d.x, vec3<u32>(u_input.c, _wgslsmith_mult_u32(~(~global1.b.x), ~(~0u)), 4294967295u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.c, global1.c)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, arg_1.x, -1656f, global1.c.x)), global1.c, global1.d.x))))), vec2<bool>(true, true));
    var var_0 = global1.c.yz;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(round(-311f))))) >= _wgslsmith_f_op_f32(334f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * -1203f) - _wgslsmith_f_op_f32(var_0.x - global1.c.x))), vec3<u32>(61491u, _wgslsmith_clamp_u32(~u_input.c, firstTrailingBit(~0u), ~firstLeadingBit(global0[_wgslsmith_index_u32(20374u, 31u)])), arg_2.x), vec4<f32>(global1.c.x, global1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), 891f)), global1.c.x), vec2<bool>(all(arg_3) | ((-45805i ^ arg_0.x) <= ~0i), false));
    var_0 = _wgslsmith_f_op_vec2_f32(var_1.c.xw - var_1.c.zx);
    var var_2 = vec3<i32>(-39363i, arg_0.x, ~u_input.a);
    return vec2<bool>(var_1.a, select(!global1.a, !(global1.a != true), any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    return Struct_1(global1.a, global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.x, 1699f, 481f, 1007f), vec4<f32>(global1.c.x, 1000f, global1.c.x, 1029f), vec4<bool>(global1.a, global1.a, global1.d.x, global1.a))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-387f, global1.c.x, global1.c.x, -898f), global1.c, false))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-255f, global1.c.x, global1.c.x, global1.c.x), vec4<f32>(507f, -559f, -2291f, global1.c.x))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1666f * 2058f), _wgslsmith_f_op_f32(-578f * 524f), global1.c.x, _wgslsmith_f_op_f32(-global1.c.x)), vec4<f32>(global1.c.x, -1730f, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_div_f32(649f, global1.c.x))))), select(select(global1.d, select(!global1.d, global1.d, select(vec2<bool>(global1.d.x, true), vec2<bool>(global1.a, true), true)), global1.a), !(!global1.d), func_4(max(u_input.d, reverseBits(vec3<i32>(u_input.a, u_input.d.x, 69928i))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -171f), global1.c.x), vec3<u32>(1u, 4294967295u, arg_0), func_3(select(vec2<u32>(u_input.b.x, 0u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(arg_0, 31u)]), vec2<bool>(global1.a, false)), Struct_1(global1.d.x, global1.b, vec4<f32>(global1.c.x, 1544f, -868f, global1.c.x), vec2<bool>(global1.d.x, true)), Struct_1(false, global1.b, global1.c, vec2<bool>(false, global1.d.x))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global1 = arg_3;
    return func_2(arg_3.b.x);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_div_u32(arg_1.b.x, ~arg_1.b.x);
    global0 = array<u32, 31>();
    let var_1 = arg_1;
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_f32(386f - arg_1.c.x);
    return !vec2<bool>(var_1.d.x, !(all(vec3<bool>(true, var_1.a, arg_1.a)) || true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    var var_1 = -351f;
    let var_2 = Struct_1(632f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, 860f) * _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(-global1.c.x))), ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 31u)], u_input.c, 1u, 4294967295u), vec4<u32>(u_input.b.x, u_input.c, global1.b.x, 1u)), ~global1.b.x, u_input.b.x << (1u % 32u))), _wgslsmith_f_op_vec4_f32(global1.c - global1.c), func_5(abs(u_input.d.xy), func_1(select(vec4<bool>(global1.d.x, global1.a, true, global1.a), !vec4<bool>(true, global1.a, global1.d.x, false), global1.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(372f, global1.c.x, -372f, 633f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(549f, global1.c.x, global1.c.x, -932f))))), !vec4<bool>(false, global1.d.x, false, true), Struct_1(!global1.a, firstLeadingBit(vec3<u32>(4294967295u, 20795u, u_input.b.x)), global1.c, vec2<bool>(true, global1.d.x)))));
    let var_3 = global1.b.yy;
    let var_4 = func_1(select(vec4<bool>(global1.a, !any(vec3<bool>(global1.d.x, var_2.a, global1.d.x)), abs(u_input.a) == ~u_input.a, true), !(!vec4<bool>(true, global1.a, false, var_2.a)), !select(vec4<bool>(false, global1.a, global1.d.x, global1.d.x), !vec4<bool>(false, global1.a, global1.a, var_2.a), vec4<bool>(global1.a, global1.d.x, var_2.a, true))), func_1(vec4<bool>(global1.a, false, global1.d.x, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.c.x, -748f, global1.c.x, 1000f))))), vec4<bool>(false, u_input.d.x >= 20862i, !var_2.d.x, true), func_1(!vec4<bool>(var_2.d.x, var_2.a, false, global1.a), vec4<f32>(_wgslsmith_f_op_f32(var_2.c.x * global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1530f), _wgslsmith_f_op_f32(f32(-1f) * -163f), -2216f), select(vec4<bool>(var_2.d.x, false, global1.a, var_2.a), select(vec4<bool>(false, global1.a, false, false), vec4<bool>(false, global1.d.x, true, var_2.d.x), global1.a), vec4<bool>(global1.d.x, true, global1.a, true)), func_1(select(vec4<bool>(true, false, var_2.d.x, false), vec4<bool>(true, true, true, var_2.a), vec4<bool>(var_2.a, false, global1.d.x, false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-488f, 3185f, global1.c.x, var_2.c.x))), !vec4<bool>(true, false, global1.d.x, false), Struct_1(true, var_2.b, vec4<f32>(287f, 863f, -1090f, -840f), vec2<bool>(global1.a, true))))).c, select(vec4<bool>(var_2.d.x, true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, var_2.a, global1.d.x), false)), global1.a), select(vec4<bool>(49167u == var_3.x, false, var_2.c.x > -184f, true), select(vec4<bool>(false, global1.a, true, false), !vec4<bool>(true, true, global1.a, true), vec4<bool>(var_2.d.x, false, false, global1.d.x)), false), func_2(27569u).d.x && true), func_2(~0u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f)) * -534f);
    global1 = Struct_1(global1.a, vec3<u32>(166618u, 4294967295u, abs(~(~var_2.b.x))), _wgslsmith_f_op_vec4_f32(-var_4.c), !select(global1.d, !vec2<bool>(global1.d.x, var_4.d.x), u_input.a != u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~4294967295u)) & func_2(4294967295u).b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, abs(u_input.c) >> (~global0[_wgslsmith_index_u32(u_input.b.x, 31u)] % 32u), ~_wgslsmith_dot_vec2_u32(global1.b.yx, var_2.b.yz)), u_input.c), 31u)], var_4.b.x);
}

