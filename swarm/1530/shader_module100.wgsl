struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true, false, vec3<f32>(-730f, 303f, -1000f)), Struct_1(true, true, vec3<f32>(-1000f, -347f, -1442f)), Struct_1(false, true, vec3<f32>(1898f, 1698f, 1106f)), Struct_1(true, false, vec3<f32>(-1168f, 1022f, 913f)), Struct_1(true, true, vec3<f32>(752f, -1157f, -1640f)), Struct_1(true, true, vec3<f32>(801f, -679f, 696f)), Struct_1(true, false, vec3<f32>(-395f, 962f, -1005f)), Struct_1(true, true, vec3<f32>(327f, -1605f, -800f)), Struct_1(false, true, vec3<f32>(440f, 768f, -1516f)), Struct_1(true, false, vec3<f32>(2304f, 832f, 1029f)), Struct_1(true, true, vec3<f32>(146f, -1439f, -797f)), Struct_1(false, true, vec3<f32>(-1543f, -440f, -1784f)), Struct_1(false, false, vec3<f32>(-217f, -1000f, 1000f)), Struct_1(true, true, vec3<f32>(1054f, -277f, -326f)), Struct_1(false, true, vec3<f32>(-745f, 970f, -1206f)), Struct_1(true, false, vec3<f32>(-1117f, 140f, -1866f)), Struct_1(false, true, vec3<f32>(327f, 1946f, -561f)), Struct_1(false, false, vec3<f32>(-1268f, 1030f, -308f)), Struct_1(false, false, vec3<f32>(1594f, 943f, 901f)), Struct_1(false, false, vec3<f32>(132f, -846f, 189f)), Struct_1(false, false, vec3<f32>(1553f, 458f, 805f)), Struct_1(false, true, vec3<f32>(-744f, 810f, 777f)), Struct_1(true, false, vec3<f32>(366f, 1324f, -879f)), Struct_1(true, false, vec3<f32>(427f, 668f, 1928f)));

var<private> global1: array<f32, 12>;

var<private> global2: Struct_1 = Struct_1(false, true, vec3<f32>(-1026f, 272f, 1012f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global1 = array<f32, 12>();
    global2 = arg_0;
    let var_0 = Struct_1(u_input.d <= 7330u, true, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-707f, 1000f, arg_0.c.x)))), arg_0.c), _wgslsmith_f_op_vec3_f32(min(global2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, global1[_wgslsmith_index_u32(u_input.d, 12u)], global2.c.x)))))));
    var var_1 = u_input.b;
    var var_2 = var_0;
    return select(!vec3<bool>(all(vec3<bool>(arg_0.b, true, false)), true, all(vec3<bool>(var_2.b, global2.a, var_0.a))), vec3<bool>(false, var_2.a, false), vec3<bool>(global2.a, any(select(!vec3<bool>(true, arg_0.b, false), select(vec3<bool>(var_2.b, false, var_0.b), vec3<bool>(false, var_0.a, true), vec3<bool>(false, true, true)), true)), !var_2.b));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = !select(select(vec3<bool>(global2.a, true, !arg_0), !select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(false, arg_0, arg_0)), true), func_3(Struct_1(true, all(vec3<bool>(global2.a, false, global2.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, -202f, -713f) - vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global2.c.x, global2.c.x)))), 0u == u_input.c.x);
    var var_1 = var_0.xz;
    global1 = array<f32, 12>();
    let var_2 = -2147483647i;
    var_1 = func_3(Struct_1(false, all(vec2<bool>(global2.b, select(true, false, arg_0))), global2.c)).xx;
    return global0[_wgslsmith_index_u32(0u, 24u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 24u)];
    let var_1 = func_2(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global2.b, true, arg_0.b, true), vec4<bool>(arg_2.a, true, false, global2.a), var_0.b), vec4<bool>(arg_3.a, var_0.b, var_0.b, global2.a)), var_0.b)));
    global2 = Struct_1(true, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2130f, arg_1, var_0.c.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-706f, 1111f, -1634f), vec3<f32>(1000f, -836f, -256f)))) + arg_2.c)));
    var var_2 = u_input.a.x;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.c.x, -419f)) * global2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(21920u, u_input.d), 24u)];
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x << (29053u % 32u), 24u)];
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global2.a, var_0.b, var_1.c), -685f, global0[_wgslsmith_index_u32(0u, 24u)], Struct_1(global2.b, var_1.b, vec3<f32>(-263f, global1[_wgslsmith_index_u32(4294967295u, 12u)], var_1.c.x)))) - _wgslsmith_div_f32(var_1.c.x, 1586f)), -308f, _wgslsmith_f_op_f32(f32(-1f) * -1351f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, -767f) + _wgslsmith_f_op_f32(798f - 3043f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(global2.c.x, var_1.c.x), var_0.c.x, _wgslsmith_f_op_f32(floor(global2.c.x)), _wgslsmith_f_op_f32(-1493f + 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, global2.c.x, global2.c.x, -140f))), var_1.b))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(321f, -1650f, 943f, var_1.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2251f, var_0.c.x, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)])))))));
    let var_4 = vec2<i32>(min(1i, u_input.a.x), u_input.a.x) >> (~firstTrailingBit(select(vec2<u32>(1u, var_2.x), countOneBits(vec2<u32>(u_input.b.x, 55399u)), u_input.a.x < u_input.a.x)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.xz) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1227f * -897f) - _wgslsmith_div_f32(var_3.x, global1[_wgslsmith_index_u32(var_2.x, 12u)])), var_1.c.x)), vec2<i32>((~var_4.x >> (u_input.c.x % 32u)) & -var_4.x, u_input.a.x), firstLeadingBit(-select(u_input.a.zwx, vec3<i32>(var_4.x, u_input.a.x, var_4.x), select(vec3<bool>(var_1.b, var_0.b, false), vec3<bool>(global2.b, false, false), true))));
}

