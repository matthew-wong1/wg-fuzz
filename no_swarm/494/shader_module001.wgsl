struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, true, false, false, true, false, false, false, true, false, false, true, true, false, false, false, true, true, true, true, false, true, true, true, true, false, false, true, false, true, true);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<u32, 12>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-735f))));
    let var_1 = u_input.b.x;
    global3 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(min(u_input.a.x, global1.a.x), ~global1.a.x << ((1u << (1u % 32u)) % 32u)), ~global3.a.x));
    global1 = Struct_1(u_input.a.wz);
    let var_2 = Struct_1(global1.a);
    return u_input.a.x;
}

fn func_2() -> vec4<f32> {
    global4 = array<u32, 12>();
    var var_0 = ~u_input.a.x & func_3();
    global4 = array<u32, 12>();
    global2 = Struct_1(_wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(global2.a, _wgslsmith_mod_vec2_i32(global2.a, vec2<i32>(global1.a.x, 18975i))), vec2<i32>(~14908i, reverseBits(-global1.a.x)), abs(global3.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1588f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1671f)), _wgslsmith_f_op_f32(611f - _wgslsmith_f_op_f32(f32(-1f) * -914f))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_div_f32(var_1.x, 945f)) - _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1579f) + _wgslsmith_f_op_f32(856f * 354f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f) * -624f)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(-218f + -121f))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(func_2())) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2595f)), 1067f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1038f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f)), 1324f))));
    let var_1 = global1.a.x;
    global1 = Struct_1(global1.a);
    global1 = Struct_1(max(abs(global2.a), vec2<i32>(u_input.a.x, 22652i) | (vec2<i32>(u_input.a.x, -39852i) | vec2<i32>(u_input.a.x, -41659i))) >> (vec2<u32>(89903u, reverseBits(abs(50246u))) % vec2<u32>(32u)));
    global3 = Struct_1(abs(~global1.a));
    return Struct_1(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(46101i, -63480i);
    let var_1 = !any(select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 12u)], 32u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12812u, 12u)], 32u)])), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.b.x, 32u)], true, global0[_wgslsmith_index_u32(1u, 32u)], any(vec4<bool>(global0[_wgslsmith_index_u32(14235u, 32u)], false, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]))), any(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 32u)]))));
    let var_2 = abs(u_input.b);
    global2 = func_1(global0[_wgslsmith_index_u32(102617u, 32u)]);
    global3 = func_1(var_1);
    global4 = array<u32, 12>();
    global3 = func_1(false);
    global1 = Struct_1(max(global3.a, global1.a));
    global4 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(~1u, 12u)], firstLeadingBit(~0u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 37418u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(316f, 2138f, -1896f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, -1506f, -355f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1586f, 569f, -2160f)))))), vec3<f32>(115f, 834f, 1f))));
}

