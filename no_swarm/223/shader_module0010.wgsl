struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: vec3<f32>;

var<private> global3: array<f32, 32> = array<f32, 32>(948f, -1168f, -1137f, 2451f, 202f, -1108f, -173f, -1000f, 751f, -1412f, 793f, 1000f, 1000f, -1372f, -1385f, -1352f, 1004f, -1000f, 1960f, -990f, 2099f, -2116f, -453f, -833f, 1683f, -1405f, 506f, -525f, 1838f, 449f, 1819f, 1035f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_3 {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(~u_input.a.x, 32u)], -1349f))));
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x << (0u % 32u), u_input.a.x), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(global0.e, u_input.a.x))) ^ ~(~4294967295u), 32u)]);
    return Struct_3(_wgslsmith_f_op_f32(abs(var_2.a)));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = func_2();
    global2 = vec3<f32>(global3[_wgslsmith_index_u32(global0.b.x, 32u)], -767f, 707f);
    global0 = global1.a;
    let var_1 = var_0;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1509f, -1962f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global2.x, 647f) * vec3<f32>(1436f, -650f, 1156f)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), var_1.a, _wgslsmith_f_op_f32(var_1.a * var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 514f, var_1.a)))))));
    return _wgslsmith_mult_u32(4294967295u, global1.a.b.x);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_3) -> bool {
    var var_0 = 1u;
    var var_1 = 935f;
    let var_2 = Struct_3(216f);
    let var_3 = -1i;
    var_0 = ~global0.e;
    return !(!any(vec2<bool>(all(global1.a.d.xw), global1.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(select(4294967295u, 4294967295u, global1.a.a.x), ~1u)), 32u)], select(_wgslsmith_mod_vec4_i32(select(select(vec4<i32>(58791i, 28908i, -1i, -17397i), vec4<i32>(48825i, -28626i, 1i, 1i), false), -vec4<i32>(33768i, -1i, 10424i, -2147483647i), select(vec4<bool>(global1.a.c, true, global1.a.a.x, global1.a.c), vec4<bool>(global0.a.x, true, global1.a.c, global1.a.c), vec4<bool>(global1.a.d.x, global0.a.x, true, global0.c))), -vec4<i32>(1i, 1i, 1i, 1i)), ~(~select(vec4<i32>(-1i, -68209i, -26932i, 2147483647i), vec4<i32>(-37381i, 11464i, -52891i, -1i), false)), true), Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.b.x, ~func_1(vec2<bool>(global0.c, global0.d.x))), 32u)]));
    global3 = array<f32, 32>();
    var var_1 = 1u;
    let var_2 = func_2();
    let var_3 = select(select(global0.a, global0.d, global0.d.x && var_0), !(!(!select(vec4<bool>(global0.d.x, true, false, global1.a.a.x), vec4<bool>(global1.a.c, true, var_0, global1.a.c), vec4<bool>(true, true, false, global1.a.c)))), select(select(select(!global1.a.a, !vec4<bool>(false, true, var_0, false), false), global0.a, !var_0 || !global1.a.a.x), global1.a.d, !vec4<bool>(global0.d.x, var_0, any(vec3<bool>(false, false, false)), all(vec4<bool>(global0.a.x, true, global1.a.d.x, true)))));
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_2.a, func_2().a))), abs(reverseBits(-(vec2<i32>(0i, -12684i) >> (u_input.a.zx % vec2<u32>(32u))))));
}

