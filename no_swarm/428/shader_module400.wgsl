struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(2147483647i), Struct_1(1i), Struct_1(0i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(0i), Struct_1(-47543i), Struct_1(28281i), Struct_1(42616i), Struct_1(0i), Struct_1(-25229i), Struct_1(1i), Struct_1(i32(-2147483648)));

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, true, false, false, false, true, false);

var<private> global2: Struct_1 = Struct_1(-58122i);

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(global2.a);
    var var_1 = !(!(!global1[_wgslsmith_index_u32(abs(global3.x), 8u)]));
    return ~_wgslsmith_mult_u32(abs(4294967295u), ~u_input.a) & select(21838u, 0u, global1[_wgslsmith_index_u32(u_input.a, 8u)]);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1902f, _wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(max(-168f, 1016f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(786f, -1159f, 930f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1184f, 543f, 424f) * vec3<f32>(322f, 1161f, 1203f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(417f, -852f, -765f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(153f, 831f, 201f)), !global1[_wgslsmith_index_u32(global3.x, 8u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(313f, -1032f, 596f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-366f, 873f, 1699f)))))));
    global2 = global0[_wgslsmith_index_u32(0u, 13u)];
    global0 = array<Struct_1, 13>();
    global1 = array<bool, 8>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -132f) * 423f);
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = global2.a;
    var var_1 = (global1[_wgslsmith_index_u32(func_2(), 8u)] & global1[_wgslsmith_index_u32(0u, 8u)]) & (arg_1 > -751f);
    let var_2 = global2.a;
    global0 = array<Struct_1, 13>();
    var var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-609f - -1172f) * -199f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<u32>(11461u, 4294967295u, u_input.a))), -267f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), -1000f, !global1[_wgslsmith_index_u32(global3.x, 8u)])) * _wgslsmith_f_op_f32(857f + 1090f)));
    return Struct_1(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(13903u, 13u)];
    var var_1 = -7041i;
    global1 = array<bool, 8>();
    let var_2 = func_1(Struct_1(global2.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-169f)), 296f)) - -430f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -873f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(141f + -273f) - _wgslsmith_f_op_f32(floor(-1010f))))), ~29473u ^ global3.x);
    let var_3 = -1i;
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(669f, 169f, 1364f, -542f) - vec4<f32>(861f, 350f, 232f, -527f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_div_f32(var_4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), -500f))), -22768i, _wgslsmith_div_i32(54238i, _wgslsmith_sub_i32(-8398i, -2147483647i)));
}

