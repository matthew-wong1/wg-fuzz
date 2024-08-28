struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false));

var<private> global1: Struct_1 = Struct_1(37082u, 4294967295u, 30059i);

var<private> global2: vec4<u32> = vec4<u32>(80647u, 1u, 137193u, 4294967295u);

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<f32>(-522f, 658f, -617f)), Struct_2(vec3<f32>(1000f, -499f, -1484f)), Struct_2(vec3<f32>(704f, 1426f, 657f)), Struct_2(vec3<f32>(1000f, -230f, 1000f)), Struct_2(vec3<f32>(792f, -758f, -764f)), Struct_2(vec3<f32>(-479f, 367f, -1134f)), Struct_2(vec3<f32>(852f, -1000f, -270f)), Struct_2(vec3<f32>(411f, -1033f, -308f)), Struct_2(vec3<f32>(419f, -597f, 1443f)), Struct_2(vec3<f32>(-1616f, 618f, 2519f)), Struct_2(vec3<f32>(-544f, 721f, -399f)), Struct_2(vec3<f32>(446f, -2690f, 312f)), Struct_2(vec3<f32>(699f, 1149f, 1993f)), Struct_2(vec3<f32>(562f, -776f, -1811f)), Struct_2(vec3<f32>(-636f, -155f, -270f)), Struct_2(vec3<f32>(-213f, -576f, -528f)), Struct_2(vec3<f32>(-115f, 1000f, 1415f)), Struct_2(vec3<f32>(1000f, 630f, -951f)), Struct_2(vec3<f32>(-2235f, -1695f, -493f)), Struct_2(vec3<f32>(-316f, 1130f, 453f)), Struct_2(vec3<f32>(-503f, -1000f, -714f)), Struct_2(vec3<f32>(1783f, -1607f, -901f)));

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(4294967295u, 0u, 0i), Struct_1(32723u, 69670u, -1i), Struct_1(43736u, 1u, 41785i), Struct_1(35254u, 1u, 2147483647i), Struct_1(1u, 4294967295u, 2147483647i), Struct_1(2768u, 1u, -32577i), Struct_1(1u, 4294967295u, i32(-2147483648)), Struct_1(42006u, 47529u, -13970i), Struct_1(50544u, 4294967295u, -1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    global3 = array<Struct_2, 22>();
    let var_0 = select(true, true, all(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    let var_1 = global2.wzy;
    global1 = global4[_wgslsmith_index_u32(u_input.a.x, 9u)];
    let var_2 = arg_0;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(802f, 273f, 1470f)))));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1206f), _wgslsmith_div_f32(1949f, 396f)) - -1012f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-738f)) - _wgslsmith_f_op_f32(round(246f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1643f - 341f)))), 1933f));
    let var_1 = (arg_0.xx | ~max(abs(vec2<i32>(-6575i, -26609i)), ~vec2<i32>(arg_0.x, 1i))) ^ _wgslsmith_clamp_vec2_i32(firstLeadingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(0i, u_input.c.x), vec2<i32>(12438i, 11904i))), arg_0.zy, countOneBits(_wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.d), ~vec2<i32>(0i, global1.c), countOneBits(arg_0.yz))));
    global4 = array<Struct_1, 9>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.a.x, var_0.a.x, -617f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.a))))));
    return _wgslsmith_f_op_f32(floor(var_2.a.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(global1.c, u_input.c.x), _wgslsmith_mod_vec2_i32(u_input.c.xz, vec2<i32>(0i, global1.c) >> (global2.wz % vec2<u32>(32u))) ^ ~u_input.d);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-549f)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-428f - 812f), arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(162f, 871f)), 1228f)) + _wgslsmith_f_op_f32(func_3(u_input.c))), arg_2);
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = _wgslsmith_f_op_f32(1611f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))));
    global2 = arg_0;
    return global3[_wgslsmith_index_u32(4294967295u, 22u)];
}

fn func_1() -> vec3<f32> {
    let var_0 = func_2(firstTrailingBit(global1.c), -u_input.d.x);
    var var_1 = func_4(~vec4<u32>(_wgslsmith_sub_u32(~global1.a, 12513u << (u_input.a.x % 32u)), ~_wgslsmith_sub_u32(33679u, global1.a), 0u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-vec3<i32>(1i, 1i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)));
    global0 = array<vec4<bool>, 21>();
    var var_2 = global2.yzy;
    let var_3 = var_2.xx;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~4294967295u & max(select(~1u, global2.x, all(vec2<bool>(false, true))), 11041u);
    global3 = array<Struct_2, 22>();
    global3 = array<Struct_2, 22>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(0u, ~22482u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)), var_1.a, vec3<bool>(true, true, true))), vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x), -1000f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)), var_1.a, any(vec2<bool>(true, false))))), min(u_input.a, select(_wgslsmith_clamp_vec4_u32(vec4<u32>(17766u, global1.a, 4294967295u, u_input.a.x), vec4<u32>(global2.x, 38530u, global1.a, var_0), ~u_input.a), vec4<u32>(global1.a, u_input.a.x >> (1u % 32u), global1.b, global1.b), global0[_wgslsmith_index_u32(global1.b, 21u)])));
}

