struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 22> = array<u32, 22>(50145u, 25482u, 40016u, 4294967295u, 4294967295u, 89180u, 4294967295u, 1u, 1469u, 54516u, 28207u, 6917u, 107110u, 2832u, 53550u, 9240u, 4294967295u, 0u, 12871u, 66120u, 39772u, 8980u);

var<private> global3: array<bool, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = u_input.a;
    var var_1 = select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 20u)], true, global0.x), !(!(!vec3<bool>(global0.x, global0.x, global0.x))), !vec3<bool>(global0.x, true | all(vec3<bool>(global0.x, global0.x, false)), global0.x));
    var var_2 = 1362f;
    let var_3 = -vec4<i32>(var_0.x, (reverseBits(u_input.a.x) ^ (i32(-1i) * -59472i)) << (global1.x % 32u), u_input.a.x, -(firstTrailingBit(var_0.x) >> (abs(global2[_wgslsmith_index_u32(1u, 22u)]) % 32u)));
    var_1 = select(select(select(!vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 20u)], var_1.x), vec3<bool>(var_1.x, any(vec3<bool>(var_1.x, var_1.x, var_1.x)), all(vec2<bool>(true, true))), any(vec3<bool>(var_1.x, var_1.x, var_1.x))), select(vec3<bool>(all(vec4<bool>(var_1.x, global0.x, global0.x, false)), true, var_1.x), !vec3<bool>(global0.x, true, var_1.x), all(var_1.zx)), any(select(vec4<bool>(global0.x, true, false, true), select(vec4<bool>(global0.x, true, false, false), vec4<bool>(var_1.x, false, false, false), global0.x), !vec4<bool>(global0.x, var_1.x, true, true)))), vec3<bool>(any(select(!vec3<bool>(true, true, var_1.x), select(vec3<bool>(true, global0.x, var_1.x), vec3<bool>(true, false, true), var_1.x), select(vec3<bool>(true, global3[_wgslsmith_index_u32(global1.x, 20u)], var_1.x), vec3<bool>(false, global0.x, false), true))), global3[_wgslsmith_index_u32(0u, 20u)], select(false, true, var_1.x)), select(vec3<bool>((var_1.x | true) && select(global0.x, true, global3[_wgslsmith_index_u32(global1.x, 20u)]), !global0.x, global3[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(u_input.d, u_input.d), global1.x), 20u)]), vec3<bool>(true, false, !global3[_wgslsmith_index_u32(~0u, 20u)]), var_1.x & all(select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 20u)], true, true), vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], 20u)], true, false), vec3<bool>(var_1.x, false, global0.x)))));
    return vec4<bool>(true, any(select(!(!vec4<bool>(false, true, var_1.x, global0.x)), !vec4<bool>(false, global3[_wgslsmith_index_u32(9954u, 20u)], global3[_wgslsmith_index_u32(114127u, 20u)], true), vec4<bool>(arg_0 < 1107f, true, true, any(vec2<bool>(true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(505f, _wgslsmith_f_op_f32(trunc(arg_0))))) != arg_0, global1.x < countOneBits(_wgslsmith_sub_u32(global1.x, 1703u)));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(false, ~global1.xxz, max(-abs(countOneBits(vec2<i32>(u_input.c, u_input.a.x))), ~(vec2<i32>(u_input.c, 32874i) ^ -u_input.a.xw)));
    let var_1 = Struct_1(any(func_3(-1036f)), vec3<u32>(abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(20116u, 7032u, var_0.b.x, var_0.b.x), vec4<u32>(1u, global1.x, 37598u, 4294967295u)))), global1.x, ~(~var_0.b.x) << (7946u % 32u)), vec2<i32>(_wgslsmith_div_i32(u_input.c, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.c), reverseBits(u_input.a.xz))), var_0.c.x));
    let var_2 = var_1;
    global1 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.b.x, 0u, var_0.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(117766u, 22u)], 22u)]), _wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global1.x, 22u)], var_2.b.x, 4294967295u, 43910u), vec4<u32>(var_1.b.x, var_0.b.x, var_0.b.x, 1u))), vec4<u32>(_wgslsmith_add_u32(global1.x, var_1.b.x), ~4294967295u, global1.x, ~1u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-678f + -783f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(sign(-265f)))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    return firstLeadingBit(var_0.c.x);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    let var_1 = -vec2<i32>(func_2(), var_0.c.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1687f)), -216f, 668f))))));
    global3 = array<bool, 20>();
    var var_3 = select(func_3(_wgslsmith_f_op_f32(var_2.x - arg_0)), vec4<bool>(func_3(arg_0).x, true, global0.x, !global3[_wgslsmith_index_u32(~max(u_input.d, global2[_wgslsmith_index_u32(1u, 22u)]), 20u)]), arg_1.a);
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(abs(global2[_wgslsmith_index_u32(~9901u, 22u)]), max(1u, reverseBits(64241u)), 47937u, 1u), vec4<u32>(reverseBits(~global1.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.x, 12288u, global2[_wgslsmith_index_u32(4294967295u, 22u)], 45764u)), vec4<u32>(4294967295u, 67568u, 0u, global1.x) << (vec4<u32>(53010u, 2623u, 4294967295u, u_input.b.x) % vec4<u32>(32u))), global1.x, reverseBits(0u))), countOneBits(firstTrailingBit(~global1.www << (abs(global1.xyw) % vec3<u32>(32u)))), -566f, max(-2147483647i, func_1(1f, Struct_1(true, global1.wwx | global1.wwx, min(vec2<i32>(8346i, u_input.a.x), u_input.a.xx)))), vec4<i32>(2147483647i, -abs(u_input.a.x), u_input.a.x, -1i));
}

