struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-31238i, vec2<f32>(-222f, 166f), 758f);

var<private> global1: Struct_2 = Struct_2(Struct_1(-1i, vec2<f32>(-1168f, 1917f), -688f), Struct_1(-66562i, vec2<f32>(-340f, 970f), -438f), vec2<bool>(false, true));

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(9192i, vec2<f32>(935f, -1899f), 111f), Struct_1(0i, vec2<f32>(-494f, -458f), 1381f), Struct_1(2147483647i, vec2<f32>(-1410f, -1000f), 810f));

var<private> global3: u32;

var<private> global4: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(1u, 3u)];
    let var_1 = Struct_2(Struct_1(34944i, global1.a.b, _wgslsmith_f_op_f32(step(arg_0, global1.b.b.x))), Struct_1(-26797i, _wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(_wgslsmith_f_op_f32(min(109f, global0.b.x)), -1148f), any(vec4<bool>(false, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_f32(abs(590f))), select(global1.c, !select(!global1.c, vec2<bool>(false, arg_1), vec2<bool>(true, false)), arg_1 && all(vec4<bool>(global1.c.x, false, false, true))));
    var var_2 = firstTrailingBit(global0.a);
    global1 = Struct_2(global1.a, Struct_1(-44152i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, global1.a.c)) - vec2<f32>(-257f, var_0.c))), -1252f), vec2<bool>(true, any(!vec2<bool>(arg_1, false))));
    global0 = Struct_1(_wgslsmith_add_i32(arg_2.a, _wgslsmith_mult_i32(var_1.b.a, -2147483647i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_0), _wgslsmith_f_op_vec2_f32(-arg_2.b), arg_1)))))), _wgslsmith_f_op_f32(-arg_2.b.x));
    return -2350f;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 577f, global0.b.x)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.b.b.x, -1003f, 704f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global1.b.b.x, 1000f)))))) + vec3<f32>(1252f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1505f)), global0.c), global1.c.x, global1.a)), 250f));
    var var_1 = 51315u;
    var_1 = u_input.b.x;
    var var_2 = Struct_2(Struct_1(-3166i, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b.b.x + -574f))), 615f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, -294f, true)), _wgslsmith_f_op_f32(global0.c + global0.c)), _wgslsmith_f_op_f32(-759f * var_0.x)))), global1.b, global1.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_0, var_0, global1.c.x)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(467f)), _wgslsmith_f_op_f32(var_0.x + global1.a.c), _wgslsmith_f_op_f32(1098f * global0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-global1.a.b.x), var_2.c.x, global2[_wgslsmith_index_u32(1u, 3u)])), global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-631f)), global0.c)))));
    return Struct_2(Struct_1(reverseBits(u_input.d), vec2<f32>(global1.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_2.a.c) + var_3.x)), global0.b.x), Struct_1(45257i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.c, global1.a.b.x) - var_3.zz)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(578f, global1.a.b.x, var_2.c.x)), var_2.c.x, Struct_1(-51627i, vec2<f32>(-1163f, -281f), global1.b.b.x))))), vec2<bool>(!(!(1539u < u_input.b.x)), global1.c.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(1u);
    global1 = func_2();
    var var_1 = arg_2;
    global2 = array<Struct_1, 3>();
    global0 = func_2().b;
    return Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(global0.c, -397f)), global0.c)), _wgslsmith_f_op_f32(730f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.b.x + 149f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-370f * global1.b.c), -539f), global1.b.b.x, _wgslsmith_f_op_f32(-747f + -752f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)));
    var var_2 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global1.a.c, var_1.x, -350f)), vec4<f32>(global0.b.x, var_1.x, global1.a.b.x, var_1.x)), vec4<f32>(1000f, _wgslsmith_f_op_f32(410f - global0.c), _wgslsmith_f_op_f32(sign(1901f)), _wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, global1.b.c, -722f, global0.b.x) + vec4<f32>(-183f, -374f, -316f, global0.b.x)) + vec4<f32>(2138f, 1615f, 1005f, global1.a.b.x)))), ~firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(844i, global0.a), _wgslsmith_mult_i32(global0.a, 1i))), vec2<bool>(all(vec3<bool>(true, true, true)), global1.c.x & (global1.c.x | all(global1.c))), Struct_1(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1622i, global0.a, 2147483647i), vec3<i32>(global0.a, -27767i, u_input.d))), var_1.xx, global0.c));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-629f, 933f, 1007f, var_2.c) + vec4<f32>(global0.c, var_1.x, -232f, global1.a.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(604f, global1.a.c, -572f, global0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, -695f, -1000f)), vec4<bool>(global1.c.x, true, false, global1.c.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, 786f, 1984f, var_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 858f, 629f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_2.b.x, 1619f, var_1.x), vec4<f32>(1000f, -394f, global1.b.b.x, global0.c), vec4<bool>(true, false, false, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-810f, -858f, var_1.x, 1097f))))));
    var var_3 = !(!(!(global1.c.x | global1.c.x) && global1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(var_0.x)));
}

