struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<f32, 8>;

var<private> global2: vec2<u32>;

var<private> global3: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b.x >> (~52269u % 32u), 8u)] + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 8u)]), -917f))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-163f - _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(237f)), global3.x)), arg_0)));
    let var_1 = ~13152u;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -644f), global3.x)) + _wgslsmith_f_op_f32(-1f)))));
    var var_3 = Struct_1(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true))))), vec2<bool>(false, any(vec3<bool>(true, true, true))), 1153f);
    var var_4 = Struct_1(!(!(!var_3.a)), var_3.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c + -303f)), global1[_wgslsmith_index_u32(var_1, 8u)]))));
    return select(true, true, var_4.a.x);
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(func_3(-1494f, abs(vec4<u32>(411u, 4294967295u, 108368u, global0[_wgslsmith_index_u32(0u, 20u)]))), true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), false), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, all(vec3<bool>(false, false, false))), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1788f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(42748u, 8u)])) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 20u)], 8u)]))))));
    global0 = array<u32, 20>();
    global3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-517f, 554f) - vec2<f32>(-1075f, global3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 1045f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.x, var_0.c))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1482f * var_0.c), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(18073u, 8u)])) + vec2<f32>(global3.x, -983f)))));
    global0 = array<u32, 20>();
    var var_1 = Struct_1(vec3<bool>(true != var_0.a.x, any(var_0.a.yz), !(_wgslsmith_dot_vec4_u32(vec4<u32>(6440u, global2.x, 0u, global2.x), vec4<u32>(u_input.b.x, 1u, 4294967295u, global2.x)) >= ~u_input.b.x)), select(var_0.b, select(select(vec2<bool>(false, var_0.a.x), var_0.b, var_0.a.x), vec2<bool>(true, true), var_0.a.x), !((global2.x > 0u) || !var_0.a.x)), _wgslsmith_f_op_f32(-var_0.c));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-595f, global3.x, var_0.c, global1[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<f32>(global3.x, 1000f, -497f, -293f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-139f, -598f, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 2004f), vec4<f32>(-1276f, global1[_wgslsmith_index_u32(global2.x, 8u)], global1[_wgslsmith_index_u32(9642u, 8u)], 1669f), vec4<bool>(false, var_1.b.x, var_1.a.x, var_0.b.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], -471f, -585f, var_1.c) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 8u)], global3.x, global1[_wgslsmith_index_u32(global2.x, 8u)], 1345f), vec4<f32>(var_0.c, global1[_wgslsmith_index_u32(global2.x, 8u)], 260f, global3.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-1954f * 303f), _wgslsmith_f_op_f32(global3.x + 330f), _wgslsmith_f_op_f32(round(-363f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<i32> {
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    let var_0 = arg_1;
    let var_1 = any(!vec4<bool>(!(arg_3.b.x && true), arg_3.b.x, !arg_3.b.x, var_0.b.x));
    let var_2 = 570f;
    return vec4<i32>(41469i, -1i, _wgslsmith_add_i32(u_input.a, 1i), u_input.c);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    let var_0 = select(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1348f, -1054f, 794f, 1123f))), arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(790f, _wgslsmith_f_op_f32(-global3.x), arg_0.c, arg_0.c)), arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(~0i, max(u_input.c, -7668i), func_4(vec4<f32>(-1003f, global1[_wgslsmith_index_u32(global2.x, 8u)], -597f, global1[_wgslsmith_index_u32(53586u, 8u)]), Struct_1(arg_0.a, arg_0.b, 449f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], -630f, global3.x, -1170f), Struct_1(arg_0.a, arg_0.a.yx, arg_0.c)).x, -u_input.c), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-7253i, 2147483647i, u_input.a, 1i), vec4<i32>(2147483647i, u_input.a, u_input.c, u_input.c)), vec4<i32>(2147483647i, u_input.c, -10838i, 2147483647i))) >> (vec4<u32>(firstLeadingBit(4294967295u), 4294967295u, ~1u, abs(4294967295u)) % vec4<u32>(32u)), false);
    let var_1 = _wgslsmith_div_u32(u_input.d.x, _wgslsmith_add_u32(3903u, global0[_wgslsmith_index_u32(global2.x, 20u)])) >> (1u % 32u);
    global2 = ~u_input.b.zz;
    global1 = array<f32, 8>();
    global2 = vec2<u32>(28443u, firstLeadingBit(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_1, 20u)], global0[_wgslsmith_index_u32(14291u, 20u)]) | ~1u));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -800f)) + vec2<f32>(_wgslsmith_f_op_f32(-1792f - global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.x, -411f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(35277u, 8u)]) + _wgslsmith_f_op_f32(f32(-1f) * -425f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 20>();
    let var_0 = 679f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 8u)], -981f, true))));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(336f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 8u)] * 810f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(762f, global3.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -939f) * vec2<f32>(-1512f, global1[_wgslsmith_index_u32(3378u, 8u)])))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(517f)) * global3.x)));
    global3 = _wgslsmith_f_op_vec2_f32(func_1(Struct_1(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 8u)] < global1[_wgslsmith_index_u32(13193u, 8u)], any(vec2<bool>(var_0, false)), var_0), !select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0)), var_0), vec2<bool>(true & all(vec2<bool>(true, true)), var_0), 369f), var_0));
    global3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(350f + -823f)), vec2<f32>(global3.x, _wgslsmith_div_f32(640f, -299f)), select(vec2<bool>(var_0, true), select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), vec2<bool>(var_0, false)), true))))));
    var var_1 = !(var_0 || (!var_0 || (var_0 || var_0)));
    let var_2 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, var_0, select(true, true, var_0)), !(!vec3<bool>(false, false, var_0))), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, var_0), var_0), !vec3<bool>(false, false, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, var_0, true), !vec3<bool>(var_0, var_0, var_0))), var_0), vec2<bool>(false, var_0), _wgslsmith_div_f32(485f, global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global2.x, 8u)], -1000f, 116f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], -353f, global3.x)))))), vec3<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(921f, global1[_wgslsmith_index_u32(0u, 8u)])) * _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<bool>(false, var_2.b.x, var_0), vec2<bool>(var_0, false), 856f), false)).x), global1[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)]) & _wgslsmith_add_u32(u_input.b.x, u_input.b.x), 8u)]))));
}

