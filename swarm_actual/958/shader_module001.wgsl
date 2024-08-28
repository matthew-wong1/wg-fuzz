struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: array<u32, 1> = array<u32, 1>(27487u);

var<private> global2: Struct_1 = Struct_1(1u, true, vec4<bool>(true, true, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-410f, -291f, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], 763f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 24u)], -194f, global0[_wgslsmith_index_u32(18967u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])), vec4<bool>(true, false, global2.c.x, global2.c.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1558f, global0[_wgslsmith_index_u32(global2.a, 24u)], -598f, -1384f) * vec4<f32>(-999f, 220f, -1485f, 660f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(41704u, 24u)], 1000f, -164f, global0[_wgslsmith_index_u32(global2.a, 24u)]) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -957f)))), global2.c.x)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global2.a, 24u)], 561f, global0[_wgslsmith_index_u32(global2.a, 24u)]) - vec4<f32>(307f, global0[_wgslsmith_index_u32(global2.a, 24u)], global0[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(global2.a, 24u)])), _wgslsmith_div_vec4_f32(vec4<f32>(-101f, global0[_wgslsmith_index_u32(global2.a, 24u)], 964f, 1834f), vec4<f32>(614f, global0[_wgslsmith_index_u32(u_input.c, 24u)], -373f, global0[_wgslsmith_index_u32(u_input.c, 24u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global2.a, 24u)], 422f, global0[_wgslsmith_index_u32(4401u, 24u)], -550f) * vec4<f32>(2560f, 1041f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5434u, 1u)], 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)])))))));
    let var_1 = Struct_1(global2.a, false, global2.c);
    let var_2 = !var_1.c.x;
    let var_3 = -375f;
    let var_4 = vec4<bool>(true, var_2, var_2, !any(select(select(vec3<bool>(true, true, global2.b), var_1.c.zyy, vec3<bool>(global2.c.x, true, false)), var_1.c.xyw, global2.c.zyz)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 853f) - -342f))), global0[_wgslsmith_index_u32(var_1.a, 24u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 1u, u_input.d.x), vec3<u32>(35323u, global2.a, global1[_wgslsmith_index_u32(1u, 1u)])), 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1118f) * _wgslsmith_f_op_f32(max(-3310f, -1054f))))));
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<i32>(-1i, 0i);
    global0 = array<f32, 24>();
    global2 = Struct_1(_wgslsmith_mult_u32(max(1u, 1u), ~_wgslsmith_mult_u32(abs(1u), 1069u)), global2.c.x, global2.c);
    global0 = array<f32, 24>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(74016u, 24u)]) + vec3<f32>(-267f, 2238f, global0[_wgslsmith_index_u32(global2.a, 24u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 114f, global0[_wgslsmith_index_u32(u_input.a, 24u)]) - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(83201u, 24u)])))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 24u)], 1050f, global0[_wgslsmith_index_u32(4294967295u, 24u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)]))), !global2.c.wwy))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(203f, -1332f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 24u)]))), _wgslsmith_f_op_f32(floor(-536f)))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b - global0[_wgslsmith_index_u32(u_input.d.x, 24u)]), -662f, _wgslsmith_f_op_f32(-var_1.b)) - _wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-157f, global0[_wgslsmith_index_u32(4294967295u, 24u)]))))));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = -select(-(~_wgslsmith_mod_i32(-20476i, -52289i)), firstLeadingBit(-2147483647i), all(!(!vec4<bool>(true, global2.b, global2.b, global2.b))));
    global0 = array<f32, 24>();
    var var_1 = func_2();
    global0 = array<f32, 24>();
    var var_2 = Struct_2(Struct_1(reverseBits(global1[_wgslsmith_index_u32(max(28230u, ~9797u), 1u)]), select(global2.b, global2.b, global2.c.x | false), !vec4<bool>(var_0 < 2147483647i, true, global2.c.x, !global2.c.x)), vec4<bool>(var_1.b != _wgslsmith_f_op_f32(-1756f - _wgslsmith_f_op_f32(570f - -1380f)), false, global2.c.x, select(false, !(0i != var_0), true)), Struct_1(4294967295u, global2.b || !global2.c.x, vec4<bool>(global2.c.x, false, select(select(global2.b, true, global2.b), all(global2.c.xy), var_0 < var_0), abs(var_0) != _wgslsmith_add_i32(-25693i, var_0))), ~_wgslsmith_sub_vec4_u32(u_input.b, ~vec4<u32>(global2.a, 0u, u_input.c, global2.a)), -786f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.e + arg_0.x), global0[_wgslsmith_index_u32(var_2.a.a, 24u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 0u), 24u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(11478u, 24u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 24u)], -125f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.a, 1u)], 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], 796f, -944f))), global0[_wgslsmith_index_u32(u_input.a, 24u)], _wgslsmith_f_op_f32(-103f * global0[_wgslsmith_index_u32(1u, 24u)])))), ~1i);
}

