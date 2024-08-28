struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<Struct_1, 12>;

var<private> global3: array<Struct_1, 8>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(136f, -495f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    global3 = array<Struct_1, 8>();
    var var_0 = global4.a.yxw;
    global2 = array<Struct_1, 12>();
    var var_1 = -(i32(-1i) * -2147483647i);
    let var_2 = global2[_wgslsmith_index_u32(abs(0u), 12u)];
    return vec4<bool>(!(-33255i > u_input.a.x), true, all(var_2.a) & false, var_0.x);
}

fn func_2() -> f32 {
    global2 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(127f, -1232f, global4.b.x, -2089f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1008f, 122f, 735f, global4.b.x) - vec4<f32>(global4.b.x, -272f, global4.b.x, global4.b.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.b.x, 836f, global4.b.x, -1484f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, -887f, 700f, global4.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.b.x, -1803f, -138f, global4.b.x))))) * vec4<f32>(global4.b.x, _wgslsmith_f_op_f32(step(global4.b.x, 1927f)), _wgslsmith_f_op_f32(select(global4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -863f), !global4.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -333f))));
    var var_1 = u_input.b.x;
    let var_2 = -583f;
    global4 = Struct_1(select(!select(func_3(vec4<u32>(1u, 1u, 1u, 0u)), vec4<bool>(false, true, false, global4.a.x), select(vec4<bool>(true, global4.a.x, global4.a.x, global4.a.x), global4.a, global4.a.x)), select(!select(vec4<bool>(global4.a.x, global4.a.x, global4.a.x, false), vec4<bool>(true, global4.a.x, true, global4.a.x), global4.a), select(!global4.a, func_3(vec4<u32>(38976u, 0u, 0u, 0u)), global4.a.x), !vec4<bool>(true, global4.a.x, true, global4.a.x)), global4.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, var_0.x), -642f), global4.b.x), global4.b, func_3(firstTrailingBit(vec4<u32>(8265u, 107286u, 95738u, 0u)) | ~vec4<u32>(81730u, 29613u, 0u, 4294967295u)).yy)));
    return -567f;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(!global4.a, vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(arg_0 + arg_0)));
    var var_1 = global2[_wgslsmith_index_u32(~2321u, 12u)];
    global4 = global3[_wgslsmith_index_u32(1u, 8u)];
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)));
    var var_3 = !vec4<bool>(var_2.a.x, !(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) >= _wgslsmith_add_i32(46323i, u_input.b.x)), all(var_2.a.yxz), true);
    return Struct_1(!vec4<bool>(global4.a.x, var_2.a.x, false, !any(var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global4.b.x, _wgslsmith_f_op_f32(trunc(var_1.b.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> StorageBuffer {
    global4 = Struct_1(!global4.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(arg_3.b)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.x, -922f), global4.b)), arg_3.a.yw))) - arg_3.b));
    global3 = array<Struct_1, 8>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-587f, global4.b.x, global4.b.x, arg_3.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, global4.b.x, -835f, global4.b.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.b.x, 1740f, arg_2.x, arg_3.b.x), vec4<f32>(506f, 929f, arg_0.b.x, arg_0.b.x))), vec4<f32>(1851f, 1343f, arg_2.x, 1574f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2267f, -1192f, arg_3.b.x, 461f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(352f, arg_2.x, 497f, 354f) * vec4<f32>(arg_2.x, -152f, global4.b.x, -712f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_f32(ceil(global4.b.x))), ((_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 29963u, 4294967295u, 0u), vec4<u32>(1u, 0u, 1u, 38817u), vec4<u32>(30011u, 4294967295u, 4294967295u, 18287u)) << (select(vec4<u32>(4294967295u, 1u, 19783u, 38710u), vec4<u32>(30833u, 22002u, 1u, 62590u), global4.a.x) % vec4<u32>(32u))) ^ (vec4<u32>(27553u, 24155u, 1u, 13537u) << (select(vec4<u32>(3589u, 29913u, 36623u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 14016u), global4.a) % vec4<u32>(32u)))) >> (vec4<u32>(1u, 1u, 107784u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-725f, 320f, false)))), -1031f), global4.b)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(0u, 51466u, 0u, 0u))), 12u)]);
}

