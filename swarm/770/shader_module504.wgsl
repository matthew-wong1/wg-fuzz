struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(2147483647i, false, 1i, vec3<u32>(0u, 1u, 0u), false), Struct_1(-1i, true, 2531i, vec3<u32>(48474u, 59625u, 0u), true), Struct_1(-48940i, false, 4565i, vec3<u32>(78602u, 72924u, 1u), true));

var<private> global2: array<bool, 2> = array<bool, 2>(true, true);

var<private> global3: Struct_1 = Struct_1(-8883i, true, 1i, vec3<u32>(4294967295u, 1u, 1u), false);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_2(select(vec3<bool>(true, false, arg_0.a.x), vec3<bool>(global3.b, false, global3.e), true));
    return ~arg_3 >> (arg_1.zx % vec2<u32>(32u));
}

fn func_3() -> f32 {
    var var_0 = ~global3.d.yx;
    var_0 = u_input.c;
    var var_1 = Struct_2(!select(vec3<bool>(true, true, !global2[_wgslsmith_index_u32(0u, 2u)]), select(!vec3<bool>(global3.b, true, global3.b), select(global0[_wgslsmith_index_u32(var_0.x, 24u)], vec3<bool>(global2[_wgslsmith_index_u32(global3.d.x, 2u)], true, global2[_wgslsmith_index_u32(10520u, 2u)]), vec3<bool>(global3.b, global2[_wgslsmith_index_u32(u_input.d, 2u)], true)), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], true))), select(vec3<bool>(false, false, false), vec3<bool>(global3.e, false, true), select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 2u)], false, global3.e), vec3<bool>(global3.e, global3.e, false), vec3<bool>(global3.b, true, global3.e)))));
    let var_2 = global1[_wgslsmith_index_u32(u_input.d << (_wgslsmith_dot_vec4_u32(~select(vec4<u32>(1u, 32849u, u_input.d, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 102108u, 0u, global3.d.x), vec4<u32>(4294967295u, var_0.x, 48930u, global3.d.x)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)], true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], false, var_1.a.x, true), vec4<bool>(var_1.a.x, true, global3.e, false))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.d.x, u_input.a.x, global3.d.x, 4230u), vec4<u32>(global3.d.x, u_input.d, global3.d.x, global3.d.x))) % 32u), 3u)];
    var_1 = Struct_2(var_1.a);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-182f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-172f)), _wgslsmith_f_op_f32(f32(-1f) * -1496f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1082f, -1468f, global3.e)) - -784f))), 326f));
    global0 = array<vec3<bool>, 24>();
    var var_1 = -select(vec2<i32>(_wgslsmith_add_i32(19373i & arg_0.c, _wgslsmith_sub_i32(0i, 18433i)), abs(~u_input.b)), func_2(arg_1, ~vec4<u32>(0u, 29462u, 0u, arg_0.d.x) | ~vec4<u32>(0u, 37498u, global3.d.x, arg_0.d.x), u_input.b, ~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, global3.a), vec2<i32>(2147483647i, -41432i))), arg_1.a.x);
    let var_2 = var_0;
    let var_3 = global1[_wgslsmith_index_u32(1u, 3u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 24>();
    let var_0 = Struct_2(vec3<bool>(~global3.c > u_input.b, global3.e, true));
    global0 = array<vec3<bool>, 24>();
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    let var_1 = Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1348f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1053f, _wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, false, global3.c, vec3<u32>(global3.d.x, u_input.d, global3.d.x), var_0.a.x), var_0)), false))), -27936i, ~u_input.a, var_0.a.x);
    let var_2 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), 1455f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1412f, 338f) - vec2<f32>(192f, 230f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2075f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-398f, 2097f)), -1201f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-672f, 136f), _wgslsmith_f_op_f32(min(1032f, 515f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-132f, _wgslsmith_f_op_f32(-875f + 139f), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 516f) - _wgslsmith_f_op_f32(985f + 583f))), 459f), ~(~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.d.x, u_input.a.x), vec2<u32>(u_input.a.x, 1u)), ~vec2<u32>(global3.d.x, global3.d.x))));
}

