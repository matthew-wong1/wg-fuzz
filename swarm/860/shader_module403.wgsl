struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: array<i32, 3>;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(134f, 330f), 4294967295u, false, vec2<f32>(1916f, -693f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a), ~select(_wgslsmith_mod_u32(global3.b, global3.b), ~4294967295u, all(vec2<bool>(arg_0.c, true))) ^ (~(42832u >> (u_input.c % 32u)) | firstTrailingBit(4294967295u)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-224f + arg_0.d.x), -235f) + _wgslsmith_f_op_vec2_f32(arg_0.a * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-508f, -704f)))))));
}

fn func_1() -> vec2<f32> {
    global1 = array<i32, 3>();
    global1 = array<i32, 3>();
    let var_0 = ~u_input.c;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1577f) * _wgslsmith_f_op_f32(f32(-1f) * -148f));
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.d - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.x, global3.a.x) - vec2<f32>(global3.d.x, -1363f)))), u_input.a.x, select(true, false, true), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global3.d)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, var_1) - global3.a))))));
    return global3.d;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = !select(select(!(!vec4<bool>(false, false, arg_0.c, arg_1.c)), vec4<bool>(all(vec2<bool>(false, arg_1.c)), false, all(vec4<bool>(true, arg_1.c, arg_1.c, false)), false), global3.c), !vec4<bool>(false, 2630u == arg_1.b, true, -30293i == global1[_wgslsmith_index_u32(60221u, 3u)]), any(!select(vec2<bool>(true, global3.c), vec2<bool>(true, true), arg_0.c)));
    let var_1 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2404f, global3.a.x) * vec2<f32>(arg_0.a.x, 1000f)), arg_0.b, !(arg_0.d.x == 861f), vec2<f32>(_wgslsmith_f_op_f32(-311f - global3.d.x), 1436f))));
    let var_2 = select(!(!(!var_0.xww)), !(!var_0.wzz), !(!vec3<bool>(true, select(false, arg_1.c, var_1.c), false)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(523f * -517f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_1.d.x))), -219f, _wgslsmith_f_op_f32(-633f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, 201f, -1000f, -1533f)) - vec4<f32>(global3.a.x, var_1.d.x, 1279f, -932f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, arg_0.d.x, var_1.a.x, arg_1.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-310f, 594f, arg_0.d.x, -1000f)), vec4<bool>(false, false, arg_1.c, var_0.x))))))));
    global0 = array<vec2<i32>, 15>();
    return func_2(func_2(arg_1)).a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.d.x)), 258f, arg_1.d.x)));
    let var_1 = func_2(arg_0);
    let var_2 = u_input.b.x;
    var var_3 = func_2(var_1);
    global1 = array<i32, 3>();
    return StorageBuffer(global3.b, _wgslsmith_mult_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(var_2, global1[_wgslsmith_index_u32(arg_1.b, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]))) >> (~vec3<u32>(var_3.b, 52213u, arg_1.b) % vec3<u32>(32u)), reverseBits(u_input.b.yzz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1571f, -208f) - -1857f)), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), ~(~u_input.a.x), func_2(func_2(Struct_1(vec2<f32>(global3.d.x, global3.a.x), 29155u, global3.c, vec2<f32>(global3.d.x, global3.d.x)))).c, vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(-1451f, global3.d.x), 1u, false, vec2<f32>(336f, global3.d.x)), Struct_1(global3.d, 4294967295u, global3.c, global3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d.x * global3.d.x) + global3.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-706f, -2592f)), global3.b, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.a.x, 1463f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1585f, -787f), global3.d)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(228f, 1000f)))))), select(!select(vec3<bool>(true, global3.c, global3.c), select(vec3<bool>(global3.c, false, global3.c), vec3<bool>(true, false, global3.c), vec3<bool>(true, false, true)), any(vec4<bool>(false, true, false, global3.c))), !select(vec3<bool>(global3.c, true, global3.c), vec3<bool>(global3.c, global3.c, global3.c), false), select(select(!vec3<bool>(global3.c, true, false), vec3<bool>(global3.c, false, global3.c), global3.c), select(vec3<bool>(global3.c, false, global3.c), select(vec3<bool>(true, false, global3.c), vec3<bool>(true, true, global3.c), vec3<bool>(global3.c, false, false)), select(vec3<bool>(global3.c, false, true), vec3<bool>(false, global3.c, global3.c), vec3<bool>(global3.c, false, global3.c))), select(!vec3<bool>(global3.c, true, global3.c), vec3<bool>(global3.c, global3.c, global3.c), any(vec3<bool>(true, true, global3.c))))));
}

