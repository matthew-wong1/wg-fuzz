struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = u_input.b;
    let var_1 = max(~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 36108u, u_input.b.x), vec4<u32>(4294967295u, 55824u, var_0.x, u_input.b.x)), abs(~57381u), 4294967295u, 1u), vec4<u32>(_wgslsmith_mod_u32(~(var_0.x << (32986u % 32u)), _wgslsmith_div_u32(u_input.c, 1u | var_0.x)), 16452u, u_input.b.x, ~(0u | select(u_input.b.x, u_input.b.x, global2.x))));
    var var_2 = Struct_4(Struct_1(u_input.e.x, vec3<bool>(_wgslsmith_f_op_f32(select(arg_0, arg_0, false)) <= global0[_wgslsmith_index_u32(abs(53539u), 32u)], global1.x, false)));
    let var_3 = Struct_4(Struct_1(-(50722i & -u_input.e.x), select(vec3<bool>(global1.x, !global1.x, !global1.x), vec3<bool>(true, select(false, global2.x, true), global2.x), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, var_2.a.b.x, global2.x), false))));
    let var_4 = any(select(vec3<bool>(any(var_2.a.b), false, all(vec2<bool>(false, var_3.a.b.x))), var_3.a.b, !(_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(-1047f + arg_0))));
    return firstLeadingBit(-(~abs(var_2.a.a)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_3(u_input.e.xzz, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-692f + _wgslsmith_f_op_f32(-1009f + 1309f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), global0[_wgslsmith_index_u32(arg_3.x, 32u)]), 1u, Struct_1(func_3(1410f) << (0u % 32u), !(!vec3<bool>(true, global1.x, global2.x)))), countOneBits(0u), 1u, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(156f, global0[_wgslsmith_index_u32(54548u, 32u)], 887f) * vec3<f32>(arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 1000f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, 1u, 1u, 41921u), vec4<u32>(u_input.b.x, 99438u, u_input.c, u_input.b.x) | vec4<u32>(3579u, u_input.c, 67090u, arg_3.x)), Struct_1(~(~(-36159i)), !(!global1.yzz))));
    var var_1 = u_input.a;
    global1 = vec4<bool>(global1.x, all(select(global2.xz, global1.yz, !select(vec2<bool>(false, true), vec2<bool>(global2.x, var_0.b.c.b.x), arg_2))), all(select(vec3<bool>(false, var_0.e.c.a >= u_input.a, any(var_0.e.c.b)), !select(var_0.b.c.b, global1.ywx, global1.ywx), vec3<bool>(var_0.e.c.b.x, any(global1.xz), true))), any(select(select(global1.xx, vec2<bool>(false, global1.x), false), !select(global2.yy, var_0.e.c.b.zy, vec2<bool>(arg_2.x, false)), select(vec2<bool>(false, false), arg_2, true))));
    global2 = vec3<bool>(any(var_0.b.c.b.yy), var_0.b.c.b.x, !global1.x);
    let var_2 = false != (all(vec4<bool>(false, u_input.b.x == 5237u, any(global1.zxx), true)) && (var_0.d >= (_wgslsmith_add_u32(0u, 1u) | (arg_3.x & 4294967295u))));
    return Struct_1(0i, global1.xzy);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    global0 = array<f32, 32>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4596u, 32u)], 786f, -1000f) - _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(38434u, 32u)], global0[_wgslsmith_index_u32(arg_2, 32u)]), vec3<f32>(-2342f, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]))), vec3<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 32u)])), -208f, _wgslsmith_f_op_f32(ceil(-1050f)))))), reverseBits(u_input.b.x), func_2(1f, -2147483647i, arg_0.wx, vec2<u32>(u_input.c, ~36746u)));
    var var_1 = Struct_1(i32(-1i) * -1i, var_0.c.b);
    var_0 = Struct_2(var_0.a, ~u_input.b.x & var_0.b, func_2(-1000f, -var_0.c.a, global1.wz, abs(vec2<u32>(~var_0.b, _wgslsmith_mod_u32(92081u, u_input.c)))));
    let var_2 = Struct_3(~_wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(var_0.c.a), ~arg_1.x, u_input.a ^ var_0.c.a), vec3<i32>(firstLeadingBit(2147483647i), arg_1.x, ~(-7902i))), Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), firstTrailingBit(var_0.b), Struct_1(-37857i, vec3<bool>(!arg_0.x, !global2.x, global2.x))), min(~(~4294967295u & arg_2), firstLeadingBit(_wgslsmith_mult_u32(arg_2, 48388u))), var_0.b, Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 1711f, var_0.a.x) * _wgslsmith_f_op_vec3_f32(-var_0.a)))), countOneBits(49292u), func_2(_wgslsmith_f_op_f32(1382f + var_0.a.x), var_0.c.a, select(func_2(1000f, u_input.d.x, global1.yy, u_input.b.yz).b.zz, !vec2<bool>(global2.x, global2.x), global1.x), u_input.b.zy)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(292f - _wgslsmith_f_op_f32(func_1(vec4<bool>(global2.x, true, false, global1.x), u_input.d, u_input.c))), _wgslsmith_f_op_f32(abs(-466f)), global0[_wgslsmith_index_u32(30791u, 32u)]) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)], -297f))))));
    var var_1 = global1.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -441f), var_0.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1627f, -156f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(0u, 32u)], var_0.x), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], var_0.x)))))))), ~min(1u, 1u), func_2(_wgslsmith_f_op_f32(-var_0.x), u_input.a, global2.zz, vec2<u32>(u_input.b.x, ~u_input.c) >> (u_input.b.yy % vec2<u32>(32u))));
    var var_3 = Struct_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-421f)) - -603f)), u_input.e.x, global2.yz, reverseBits(vec2<u32>(_wgslsmith_div_u32(0u, var_2.b), 78085u))));
    global1 = vec4<bool>(true, global2.x, var_3.a.b.x, global1.x);
    var var_4 = Struct_4(var_3.a);
    var var_5 = !global2.yx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.e.wyw, vec3<i32>(2147483647i, var_3.a.a, var_2.c.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(u_input.b.x, 1u)), 32u)]))));
}

