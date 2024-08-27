struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 1u, 49003u), vec3<u32>(4294967295u, 49914u, 75212u), vec3<u32>(16601u, 4294967295u, 0u), vec3<u32>(13745u, 0u, 10948u), vec3<u32>(30107u, 1u, 6914u), vec3<u32>(25356u, 1u, 22315u), vec3<u32>(4294967295u, 1u, 11514u), vec3<u32>(16095u, 0u, 1653u), vec3<u32>(4294967295u, 4294967295u, 68666u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 35244u, 90440u), vec3<u32>(1u, 218u, 8220u), vec3<u32>(6974u, 0u, 4294967295u), vec3<u32>(40861u, 1u, 94460u), vec3<u32>(1u, 1u, 1u), vec3<u32>(63258u, 16322u, 0u), vec3<u32>(10334u, 0u, 33156u), vec3<u32>(4294967295u, 1u, 72942u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 60789u, 39528u), vec3<u32>(0u, 4337u, 26948u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 33878u, 4294967295u), vec3<u32>(123940u, 73132u, 38338u), vec3<u32>(31310u, 0u, 13134u), vec3<u32>(14945u, 4294967295u, 45983u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    global0 = array<vec3<u32>, 26>();
    global0 = array<vec3<u32>, 26>();
    var var_0 = arg_1.c;
    let var_1 = arg_1;
    global0 = array<vec3<u32>, 26>();
    return vec3<bool>(u_input.e < 1u, all(!select(!vec3<bool>(false, arg_1.a, var_1.a), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), var_1.a), !vec3<bool>(false, arg_1.a, arg_1.a))), true);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f + 1f));
    let var_1 = Struct_2(all(select(vec3<bool>(true, true, true), select(func_3(arg_0, Struct_2(true, Struct_1(vec3<f32>(-594f, -1095f, 704f)), Struct_1(vec3<f32>(-507f, -386f, -479f)), Struct_1(arg_0)), 1u), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(-321f == arg_0.x, true, u_input.b != u_input.b))), Struct_1(arg_0), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, arg_0.x, arg_0.x)), vec3<f32>(var_0, 868f, -1571f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1, arg_0.x) * vec3<f32>(1378f, -1381f, var_0)) - arg_0))));
    let var_2 = Struct_1(vec3<f32>(560f, -205f, arg_1));
    global0 = array<vec3<u32>, 26>();
    let var_3 = Struct_2(!var_1.a, var_2, var_1.d, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, arg_0.x, var_2.a.x) * arg_0)) + vec3<f32>(_wgslsmith_f_op_f32(1055f * 223f), 1000f, _wgslsmith_f_op_f32(ceil(969f))))));
    return ~18677u;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(1423f))), _wgslsmith_f_op_f32(f32(-1f) * -1279f)), -1309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1177f))) + 427f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(487f, 1276f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-574f + -2253f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(735f, -742f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1136f, -849f, -209f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2269f, 1000f, 895f))) * vec3<f32>(-1304f, -515f, 1784f))))));
    global0 = array<vec3<u32>, 26>();
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.a.x, 724f), _wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)))));
    let var_2 = Struct_2((abs(firstLeadingBit(4294967295u)) != select(4294967295u >> (u_input.e % 32u), 24252u, true)) == any(vec2<bool>(-1i <= u_input.b, true)), Struct_1(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1835f)) * var_1.a.x), var_1.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-646f, var_1.a.x, var_1.a.x)))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, var_1.a.x, -557f)))));
    return StorageBuffer(u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

