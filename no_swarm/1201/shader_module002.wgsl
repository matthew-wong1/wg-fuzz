struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec3<bool>(false, false, true), 192f)));

var<private> global2: array<bool, 23>;

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(1000f + -140f);
    let var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2178f);
    var var_4 = !(!arg_0.a.x);
    return global0.b;
}

fn func_2() -> f32 {
    var var_0 = 451f;
    let var_1 = u_input.b.wzy;
    var var_2 = Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 23u)], global0.a.x, global2[_wgslsmith_index_u32(var_1.x, 23u)]), global0.b);
    global1 = array<Struct_2, 1>();
    global3 = global0.b;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global0.a.x)), 235f), 11816i >> (_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, var_1.x), u_input.b, vec4<u32>(35864u, var_1.x, 37822u, var_1.x))) % 32u), u_input.a.x | ~(~u_input.a.x)))));
}

fn func_1(arg_0: bool, arg_1: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(global0.b * 2255f);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2())))));
    let var_2 = select(-(vec3<i32>(u_input.a.x, i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a.zx)) << (~min(vec3<u32>(u_input.b.x, u_input.b.x, 0u), u_input.b.zzx) % vec3<u32>(32u))), u_input.a ^ (vec3<i32>(-1i) * -u_input.a), vec3<bool>(true, ((50038u <= u_input.b.x) && true) & global2[_wgslsmith_index_u32(~u_input.b.x, 23u)], any(!select(global0.a.xz, vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], arg_0), global2[_wgslsmith_index_u32(u_input.b.x, 23u)]))));
    var var_3 = true;
    let var_4 = u_input.b.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 - global0.b), global0.b)), _wgslsmith_f_op_f32(var_1 + 1466f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) + vec3<f32>(global0.b, -535f, -195f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0.b;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - 241f));
    let var_1 = min(firstLeadingBit(vec2<u32>(0u, 263u)) >> (countOneBits(vec2<u32>(43948u, ~u_input.b.x)) % vec2<u32>(32u)), u_input.b.ww);
    global2 = array<bool, 23>();
    var var_2 = !vec3<bool>(global0.a.x, !(!global2[_wgslsmith_index_u32(45059u, 23u)] | true), false);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1623f + -214f), _wgslsmith_f_op_f32(global0.b * global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1795f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.b)), _wgslsmith_f_op_f32(-447f * global0.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-122f, 981f, global0.b), _wgslsmith_f_op_vec3_f32(func_1(false, -2786i)), !global0.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b, global0.b, 698f))))))));
    let var_4 = Struct_1(!select(vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 23u)], false, var_2.x, global2[_wgslsmith_index_u32(var_1.x, 23u)])), var_2.x, all(global0.a.xy)), vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 23u)], global0.a.x, var_1.x >= var_1.x), global2[_wgslsmith_index_u32(~(~u_input.b.x), 23u)]), -2146f);
    var_2 = !select(vec3<bool>(var_2.x, global0.a.x, false), !var_4.a, true);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, var_4.b, 242f, 909f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(538f, -1633f, var_4.b, 1241f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1492f, 981f, -1110f, global0.b)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.b, 1264f, var_4.b, 1000f), vec4<f32>(global0.b, var_3.x, -565f, 432f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(-318f, -577f, false)), -198f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(abs(var_3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1228f - -1000f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))))));
}

