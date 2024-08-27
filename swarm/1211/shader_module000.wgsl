struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, i32(-2147483648), 23178i, i32(-2147483648));

var<private> global1: vec4<f32> = vec4<f32>(799f, -1000f, 381f, 1738f);

var<private> global2: array<bool, 20> = array<bool, 20>(true, true, false, true, true, true, true, true, false, false, false, false, false, false, true, true, false, false, true, false);

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, true), -1433f);

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    global3 = Struct_1(select(select(global3.a, vec2<bool>(global3.b >= 2423f, true), !select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global3.a.x), global3.a, vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec2<bool>(false, global3.a.x)), global3.b);
    let var_0 = _wgslsmith_f_op_f32(floor(global1.x));
    let var_1 = !global3.a;
    let var_2 = Struct_1(vec2<bool>(var_1.x, global2[_wgslsmith_index_u32(55611u, 20u)] | (true & any(vec2<bool>(true, var_1.x)))), _wgslsmith_f_op_f32(step(global3.b, -1448f)));
    let var_3 = true;
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) + _wgslsmith_f_op_f32(-global3.b)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<i32> {
    global2 = array<bool, 20>();
    global4 = ~u_input.a.x;
    let var_0 = 55802i;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-833f + arg_1.b), _wgslsmith_f_op_f32(trunc(-657f)), -637f, _wgslsmith_f_op_f32(-arg_1.b)) - vec4<f32>(-1348f, _wgslsmith_f_op_f32(250f * 411f), _wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -1859f, -357f, global1.x)))))));
    let var_1 = !vec3<bool>(false, any(select(arg_1.a, global3.a, !vec2<bool>(global3.a.x, true))), all(select(global3.a, select(arg_1.a, vec2<bool>(arg_1.a.x, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], true)), true)));
    return ~((vec4<i32>(_wgslsmith_mod_i32(5813i, -24443i), _wgslsmith_clamp_i32(global0.x, 0i, -61011i), -global0.x, arg_0.x) | countOneBits(arg_0)) << ((u_input.c ^ firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, 37800u, u_input.c.x) << (vec4<u32>(21507u, u_input.a.x, u_input.a.x, 10107u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
}

fn func_1() -> f32 {
    global3 = Struct_1(global3.a, _wgslsmith_div_f32(-185f, global3.b));
    global0 = func_2(-abs(vec4<i32>(-28777i, ~global0.x, _wgslsmith_clamp_i32(-22396i, global0.x, 1i), reverseBits(-37277i))), Struct_1(global3.a, global3.b));
    global2 = array<bool, 20>();
    global4 = u_input.a.x;
    var var_0 = Struct_1(vec2<bool>(global3.a.x, true && global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-960f)) * _wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(global3.b, global3.b))))));
    return 1389f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)), global1.x, _wgslsmith_f_op_f32(-global3.b));
    let var_0 = Struct_1(select(global3.a, select(select(select(vec2<bool>(global3.a.x, false), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 20u)]), global3.a), vec2<bool>(global3.a.x, global3.a.x), !vec2<bool>(true, global3.a.x)), !select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], true), global3.a), all(select(vec3<bool>(global3.a.x, true, true), vec3<bool>(true, global3.a.x, false), vec3<bool>(true, global2[_wgslsmith_index_u32(30639u, 20u)], false)))), global3.a), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_2(vec4<i32>(min(global0.x, u_input.b), u_input.d.x, u_input.b, ~0i), var_0).x, min(-(global0.x ^ 1i), u_input.d.x), firstTrailingBit(min(global0.x, -83677i)) & global0.x, u_input.b << ((23316u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.c.x), vec2<u32>(1u, u_input.c.x))) % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.zzw + vec3<f32>(var_0.b, 1000f, 688f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 943f, 1609f), _wgslsmith_f_op_vec3_f32(-global1.xxx), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(304f, var_0.b, var_0.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.x, global1.x))))), u_input.a.x, 61183u);
}

