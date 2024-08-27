struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
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

var<private> global0: array<i32, 3>;

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-653f + -1307f), arg_0.x);
    global0 = array<i32, 3>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1652f) - _wgslsmith_f_op_f32(-var_0))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1379f, -1588f, arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 623f, 1302f) * vec4<f32>(arg_0.x, 243f, arg_0.x, 1196f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(982f, -160f, arg_0.x, _wgslsmith_f_op_f32(floor(1294f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(914f, -1290f, 891f, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -670f, -1291f, 1796f) + vec4<f32>(arg_0.x, -593f, 802f, 593f))) + vec4<f32>(arg_0.x, -194f, 252f, _wgslsmith_f_op_f32(1128f + 1151f)))), true));
    global1 = arg_1.a;
    let var_1 = !(!(!(!(!vec2<bool>(false, arg_1.a)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, var_0.x)))) + _wgslsmith_f_op_f32(sign(1811f))), 842f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(346f, 2705f, -1336f) * var_0.zww) * vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -957f))), arg_1, select(vec3<bool>(!arg_1.a, arg_1.a | var_1.x, true), !(!vec3<bool>(true, false, arg_1.a)), true))));
    let var_3 = u_input.b >> (~vec2<u32>(72905u, ~(~u_input.d.x)) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zx) + _wgslsmith_f_op_vec2_f32(min(var_0.yw, _wgslsmith_f_op_vec2_f32(select(arg_0, arg_0, var_1)))))))));
}

fn func_2() -> vec4<bool> {
    var var_0 = u_input.d.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 982f), vec2<f32>(452f, 815f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1396f, 152f)))))), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.a), ~vec3<u32>(39375u, 52509u, u_input.d.x)) > _wgslsmith_div_u32(countOneBits(u_input.d.x), _wgslsmith_mod_u32(u_input.a, 4294967295u)), vec3<u32>(reverseBits(abs(1u)), ~u_input.d.x, ~(~0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(-292f, 1061f), Struct_3(false)))))), u_input.b, ~((_wgslsmith_div_vec4_u32(vec4<u32>(29119u, 47245u, 11253u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 0u, 4294967295u)) & ~vec4<u32>(1u, u_input.a, u_input.d.x, u_input.d.x)) & max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, u_input.a, 5436u), vec4<u32>(u_input.d.x, 0u, u_input.a, u_input.d.x)), min(vec4<u32>(1u, 8031u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.d.x, u_input.a)))));
    let var_2 = u_input.a >> (max(~(40344u ^ firstTrailingBit(var_1.d.x)), ~4294967295u) % 32u);
    var var_3 = -_wgslsmith_mult_i32(7083i | _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(abs(var_2), 3u)], _wgslsmith_mod_i32(8426i, global0[_wgslsmith_index_u32(4294967295u, 3u)])), abs(-40700i));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.c.x, var_1.b.c.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-277f, var_1.b.c.x)))))), var_1.b, -(~vec2<i32>(13109i, u_input.e)), ~(vec4<u32>(50283u >> (var_1.d.x % 32u), _wgslsmith_mod_u32(0u, u_input.a), ~var_2, u_input.d.x) << ((select(vec4<u32>(4294967295u, 23828u, var_2, var_2), var_1.d, false) & vec4<u32>(var_2, 1u, 4294967295u, var_2)) % vec4<u32>(32u))));
    return vec4<bool>(!var_1.b.a, true, all(vec3<bool>(true, !var_1.b.a, false)) & (true & (false & !var_1.b.a)), var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(455f - 366f), _wgslsmith_f_op_f32(-291f * -1000f))) + 397f) * 307f));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 2699f) * vec2<f32>(375f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 1000f), _wgslsmith_f_op_f32(select(2056f, 896f, true))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-545f * 2526f), var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), any(vec3<bool>(false, false, true)))) - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-410f, var_0, var_1.x))), Struct_3(true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))))));
    let var_3 = 83150u;
    var var_4 = select(func_2(), select(vec4<bool>(func_2().x, ~var_3 >= _wgslsmith_add_u32(27261u, u_input.a), any(vec3<bool>(true, true, true)), !(var_3 <= u_input.a)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_2(), vec4<bool>(func_2().x, 1u >= u_input.d.x, false, true))), vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

