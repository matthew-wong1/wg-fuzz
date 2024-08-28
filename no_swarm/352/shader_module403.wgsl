struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(1864f, 4294967295u), Struct_1(1924f, 1u), Struct_1(975f, 32015u), Struct_1(183f, 47383u), Struct_1(392f, 49707u), Struct_1(-215f, 32811u), Struct_1(-1147f, 0u), Struct_1(-723f, 31873u), Struct_1(-945f, 4294967295u), Struct_1(363f, 4294967295u), Struct_1(499f, 1u), Struct_1(-1043f, 0u), Struct_1(1346f, 22405u), Struct_1(-418f, 4294967295u), Struct_1(-2652f, 1u), Struct_1(-143f, 4294967295u), Struct_1(-635f, 843u), Struct_1(113f, 2706u), Struct_1(1498f, 52099u), Struct_1(-598f, 36534u), Struct_1(-1198f, 63100u), Struct_1(1012f, 12334u), Struct_1(634f, 11684u));

var<private> global1: vec4<i32> = vec4<i32>(27253i, -47158i, 24868i, 0i);

var<private> global2: bool;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1182f, 0u), Struct_1(-443f, 45657u), Struct_1(585f, 0u), Struct_1(1000f, 1u), Struct_1(-1559f, 76099u), Struct_1(294f, 1u), Struct_1(-884f, 4294967295u), Struct_1(-502f, 27094u), Struct_1(1204f, 13737u), Struct_1(-1762f, 22212u), Struct_1(-417f, 38460u), Struct_1(-1000f, 4294967295u), Struct_1(342f, 4294967295u), Struct_1(-908f, 4294967295u), Struct_1(-403f, 0u), Struct_1(-670f, 16623u), Struct_1(1352f, 1u), Struct_1(882f, 4294967295u), Struct_1(1415f, 85944u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    var var_0 = reverseBits(vec2<u32>(arg_2.x, arg_2.x));
    var var_1 = false;
    global3 = array<Struct_1, 19>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-196f))), _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(f32(-1f) * -758f))))), arg_1.b);
    global0 = array<Struct_1, 23>();
    return 1706f;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    var var_0 = vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = global0[_wgslsmith_index_u32(arg_0.b, 23u)];
    global3 = array<Struct_1, 19>();
    global3 = array<Struct_1, 19>();
    var var_2 = arg_1.x;
    return _wgslsmith_mod_u32(~10298u, ~var_1.b) >> (32108u % 32u);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_add_u32(func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2312f) - _wgslsmith_f_op_f32(round(arg_1.a))), arg_1.b), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(arg_1.a, 25146u), Struct_1(arg_1.a, arg_1.b), select(vec3<u32>(4294967295u, arg_1.b, arg_1.b), vec3<u32>(4294967295u, 49583u, arg_1.b), false))), -468f, arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(921f)) - _wgslsmith_f_op_f32(arg_1.a + 1007f))), _wgslsmith_f_op_f32(-1000f + 601f)), arg_1.b);
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_1 = arg_1;
    global1 = vec4<i32>(-20244i, u_input.b.x, -_wgslsmith_mult_i32(-53098i, -13144i << (~arg_1.b % 32u)), ~(-19539i));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 952f, _wgslsmith_f_op_f32(arg_1.a - var_1.a), _wgslsmith_f_op_f32(var_1.a * 130f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.c.x, global3[_wgslsmith_index_u32(countOneBits(4294967295u), 19u)]))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) + -183f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1255f + -520f) * -1060f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-239f * 1000f)))))));
    var var_2 = !var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

