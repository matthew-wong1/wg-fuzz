struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(1i, false, 2422i, vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 38868u));

var<private> global2: array<f32, 5> = array<f32, 5>(-831f, 1756f, -502f, -657f, 1256f);

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-1i, true, 68694i, vec2<u32>(34512u, 4294967295u), vec2<u32>(102938u, 24911u)), Struct_1(2147483647i, true, -50163i, vec2<u32>(13630u, 4294967295u), vec2<u32>(0u, 35529u)), Struct_1(i32(-2147483648), false, 1i, vec2<u32>(0u, 40118u), vec2<u32>(4294967295u, 12678u)), Struct_1(7498i, false, 40878i, vec2<u32>(1u, 75899u), vec2<u32>(62553u, 0u)), Struct_1(9948i, true, i32(-2147483648), vec2<u32>(56808u, 10833u), vec2<u32>(4294967295u, 0u)), Struct_1(10566i, true, 346i, vec2<u32>(5186u, 29806u), vec2<u32>(9730u, 9337u)), Struct_1(i32(-2147483648), false, 0i, vec2<u32>(38298u, 58568u), vec2<u32>(30200u, 4294967295u)), Struct_1(-1194i, false, -8721i, vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u)), Struct_1(-6183i, false, -1i, vec2<u32>(1u, 40690u), vec2<u32>(40105u, 0u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> bool {
    return true;
}

fn func_3(arg_0: f32, arg_1: u32) -> bool {
    global2 = array<f32, 5>();
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-924f - _wgslsmith_div_f32(-446f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global1.d.x, 5u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))), arg_0), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(1u, 5u)], 637f, arg_0)))))), _wgslsmith_div_vec3_f32(vec3<f32>(2386f, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(81693u, 5u)])), 165f), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(-1470f)), 1276f)))));
    let var_1 = ~(~global1.c);
    var var_2 = vec4<bool>(global1.b, !((!global1.b | (global2[_wgslsmith_index_u32(62372u, 5u)] <= var_0.x)) & true), all(!(!select(vec4<bool>(global1.b, global1.b, global1.b, false), vec4<bool>(true, global1.b, false, false), vec4<bool>(false, false, true, global1.b)))), !(-391f == _wgslsmith_div_f32(var_0.x, 315f)) | global1.b);
    var var_3 = vec3<bool>(var_2.x, true, any(!select(vec4<bool>(true, global1.b, var_2.x, false), vec4<bool>(false, true, true, var_2.x), !vec4<bool>(global1.b, true, global1.b, false))));
    return !(var_1 < var_1);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(global1.c, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 5u)] + -630f))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u & arg_2.d.x, ~global1.e.x), _wgslsmith_add_u32(global1.d.x ^ global1.e.x, ~u_input.b.x))), -17513i, vec2<u32>(arg_1.e.x, u_input.b.x), abs(vec2<u32>(~(~27328u), _wgslsmith_div_u32(~arg_2.e.x, max(4294967295u, arg_2.e.x)))));
    return 25534u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 29373u;
    var var_1 = ~select((abs(vec2<u32>(4294967295u, u_input.b.x)) >> (~vec2<u32>(global1.d.x, 1u) % vec2<u32>(32u))) ^ vec2<u32>(reverseBits(var_0), u_input.a), vec2<u32>(u_input.a, _wgslsmith_add_u32(reverseBits(u_input.a), var_0 ^ u_input.b.x)), vec2<bool>(true != !global1.b, func_1(vec4<bool>(global1.b, false, global1.b, false), false)));
    var var_2 = global3[_wgslsmith_index_u32(var_1.x, 9u)];
    var var_3 = global2[_wgslsmith_index_u32(u_input.a, 5u)];
    var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, global2[_wgslsmith_index_u32(~global1.d.x, 5u)])) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1520f + global2[_wgslsmith_index_u32(var_0, 5u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f - 646f)))), -216f, true));
    var var_4 = 1u << (~(~var_2.d.x) % 32u);
    var var_5 = vec4<u32>(~global1.d.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 18850u), _wgslsmith_mult_u32(var_1.x, var_1.x)), vec2<u32>(var_0, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), global1.e), _wgslsmith_dot_vec4_u32(vec4<u32>(66284u, 4294967295u, var_1.x, 0u), vec4<u32>(var_1.x, 33430u, var_1.x, 29173u))))), min(var_1.x >> (max(_wgslsmith_mod_u32(global1.e.x, 7985u), 1u & var_1.x) % 32u), 36637u), ~var_0 & var_2.e.x);
    var var_6 = u_input.b ^ ~vec4<u32>(~0u, _wgslsmith_div_u32(24647u << (var_1.x % 32u), var_5.x), func_2(!global1.b, Struct_1(global1.a, global1.b, 60607i, vec2<u32>(global1.e.x, 4294967295u), vec2<u32>(4294967295u, u_input.b.x)), global3[_wgslsmith_index_u32(global1.e.x, 9u)]), ~(~33815u));
    global3 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, vec2<u32>(u_input.a, 0u));
}

