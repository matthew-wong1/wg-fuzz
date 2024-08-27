struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, -46324i));

var<private> global2: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1000f, 992f, -900f), vec3<f32>(1120f, -1000f, -1338f), vec3<f32>(211f, 758f, 1129f), vec3<f32>(-1340f, 326f, -567f), vec3<f32>(1027f, 1926f, -836f), vec3<f32>(773f, -427f, 750f), vec3<f32>(-1620f, -1471f, -1000f), vec3<f32>(159f, 917f, -462f), vec3<f32>(1366f, -1829f, 1058f), vec3<f32>(-773f, -1633f, -477f), vec3<f32>(105f, -1000f, -880f), vec3<f32>(506f, -1967f, 651f), vec3<f32>(-103f, 120f, 357f), vec3<f32>(-1351f, -1399f, 530f), vec3<f32>(468f, 1000f, 2159f), vec3<f32>(-703f, 919f, -787f));

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(-52857i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 36854i)), Struct_1(vec2<i32>(17493i, 17799i)), Struct_1(vec2<i32>(21018i, -35068i)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<bool>) -> f32 {
    global2 = array<vec3<f32>, 16>();
    var var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-419f, _wgslsmith_f_op_f32(1f * -226f)) * -1771f);
    let var_1 = ~(~(~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_2 = var_1.xyz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1114f, -430f)) + -550f), 679f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1467f)), -830f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2470f * -722f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(func_3(Struct_1(-global1.a), Struct_1(~vec2<i32>(u_input.a, 14590i)), vec2<bool>(!arg_0, any(vec2<bool>(arg_0, arg_0))), !vec4<bool>(arg_0, false, arg_0, true))))) + 1594f);
    let var_1 = max(global1.a.x, u_input.a >> (4294967295u % 32u)) ^ global0.a.x;
    return select(select(select(select(vec3<bool>(true, arg_0, true), vec3<bool>(false, true, false), !vec3<bool>(true, true, arg_0)), vec3<bool>(true, true, true), arg_0), select(!select(vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0, true), vec3<bool>(true, false, false)), vec3<bool>(!arg_0, false, arg_0 || false), vec3<bool>(true, true, !arg_0)), all(!vec3<bool>(arg_0, false, arg_0))), !select(!(!vec3<bool>(false, arg_0, arg_0)), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), true), !vec3<bool>(arg_0, false, true), !arg_0), vec3<bool>(any(vec2<bool>(arg_0, false)), true, !arg_0)), arg_0);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(true);
    let var_1 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(~(-38603i), abs(-2147483647i)));
    let var_2 = vec3<bool>(true, var_0.x, var_0.x);
    let var_3 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(global0.a.x), u_input.a), ~vec2<i32>(u_input.a, 16933i)), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-24263i, -71278i, u_input.b, global1.a.x), vec4<i32>(0i, -15307i, var_1.a.x, -86120i)), 3171i)));
    global2 = array<vec3<f32>, 16>();
    return Struct_1(abs(var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 5>();
    var var_0 = global3[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = func_1();
    var_0 = func_1();
    global1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(671f - 1719f))) - -1178f)))));
    let var_3 = Struct_1(select(_wgslsmith_add_vec2_i32(reverseBits(~vec2<i32>(23878i, u_input.a)), countOneBits(vec2<i32>(-34129i, var_1.a.x) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)))), vec2<i32>(2147483647i, countOneBits(1i)), select(func_2(true).yy, vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-reverseBits(-6531i)), 1i, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-457f)), _wgslsmith_div_f32(110f, _wgslsmith_f_op_f32(select(655f, -680f, false)))), -556f));
}

