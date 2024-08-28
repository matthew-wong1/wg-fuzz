struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: array<Struct_3, 26>;

var<private> global2: array<i32, 28> = array<i32, 28>(i32(-2147483648), -1i, -1i, 1i, -30841i, 38476i, -1i, 31984i, i32(-2147483648), -1i, 24561i, 2147483647i, 54373i, 0i, i32(-2147483648), 75371i, 26211i, 0i, -37241i, 2147483647i, 27121i, -1i, i32(-2147483648), 0i, 2147483647i, 2235i, -25309i, -39069i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = reverseBits(arg_2.a) < 18557u;
    let var_1 = _wgslsmith_dot_vec2_i32(select(min(_wgslsmith_mult_vec2_i32(-vec2<i32>(-820i, global2[_wgslsmith_index_u32(0u, 28u)]), firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(arg_2.a, 28u)], global2[_wgslsmith_index_u32(18263u, 28u)]))), min(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(arg_1.a, 28u)]), vec2<i32>(global2[_wgslsmith_index_u32(36799u, 28u)], global2[_wgslsmith_index_u32(arg_1.a, 28u)])), ~u_input.b.zz)), u_input.b.zx, !all(select(vec3<bool>(arg_3.x, false, false), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), false))), vec2<i32>(~min(i32(-1i) * -738i, -u_input.a), _wgslsmith_sub_i32(10797i, -min(u_input.b.x, -3848i))));
    global2 = array<i32, 28>();
    var var_2 = arg_3.x;
    let var_3 = Struct_2(true);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    global0 = array<vec4<u32>, 29>();
    return vec3<bool>(true, _wgslsmith_dot_vec3_i32(-u_input.b, -firstLeadingBit(vec3<i32>(-28891i, 18969i, u_input.b.x))) == abs(global2[_wgslsmith_index_u32(1u, 28u)]), func_3(-838f, Struct_1(arg_0.a), arg_0, vec2<bool>(true, true)) & !(!all(vec4<bool>(true, true, true, false))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = -2975f;
    var var_1 = !select(select(!func_2(arg_1, vec3<f32>(-878f, 847f, -972f)), vec3<bool>(false, false, arg_2.a), select(vec3<bool>(arg_2.a, false, arg_2.a), !vec3<bool>(arg_2.a, true, arg_2.a), !vec3<bool>(true, arg_2.a, arg_2.a))), !(!(!vec3<bool>(arg_2.a, arg_2.a, arg_2.a))), true);
    var var_2 = Struct_1(~arg_0.a);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-330f - 629f), 256f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-163f)) * _wgslsmith_f_op_f32(f32(-1f) * -1696f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2504f * 640f), _wgslsmith_f_op_f32(floor(-1300f))))), func_2(arg_1, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -626f), -528f, -411f)).x)), -763f, 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-611f)) + -591f) - -463f))));
    global0 = array<vec4<u32>, 29>();
    return select(select(vec4<bool>(!(var_1.x | true), arg_2.a, all(vec2<bool>(var_1.x, false)), true), !(!select(vec4<bool>(true, arg_2.a, true, arg_2.a), vec4<bool>(true, arg_2.a, false, arg_2.a), vec4<bool>(var_1.x, false, arg_2.a, arg_2.a))), select(select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, false, true), !vec4<bool>(true, true, arg_2.a, arg_2.a)), !select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.x, var_1.x, true, true), false), select(!vec4<bool>(true, var_1.x, false, arg_2.a), select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, true, arg_2.a), vec4<bool>(arg_2.a, false, true, true)), vec4<bool>(true, false, true, true)))), select(select(!vec4<bool>(var_1.x, true, false, var_1.x), select(vec4<bool>(var_1.x, true, false, false), select(vec4<bool>(var_1.x, arg_2.a, var_1.x, false), vec4<bool>(true, false, false, arg_2.a), true), vec4<bool>(true, false, var_1.x, true)), any(!vec3<bool>(false, arg_2.a, var_1.x))), vec4<bool>(true, func_3(-984f, arg_0, Struct_1(var_2.a), var_1.xx), !any(vec4<bool>(arg_2.a, var_1.x, true, arg_2.a)), any(!vec4<bool>(var_1.x, false, var_1.x, false))), (true || !arg_2.a) & !select(false, false, arg_2.a)), select(!(!select(vec4<bool>(var_1.x, var_1.x, arg_2.a, var_1.x), vec4<bool>(var_1.x, arg_2.a, true, var_1.x), vec4<bool>(var_1.x, arg_2.a, var_1.x, true))), select(vec4<bool>(true | arg_2.a, select(false, true, arg_2.a), arg_2.a, false), vec4<bool>(!var_1.x, all(var_1.yy), false, true), !(!var_1.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), func_1(Struct_1(19246u), Struct_1(0u), Struct_2(true))), vec4<bool>(false, true, true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), select(func_1(Struct_1(1u), Struct_1(21884u), Struct_2(true)), vec4<bool>(true, true, true, func_2(Struct_1(4294967295u), vec3<f32>(1636f, -785f, -653f)).x), vec4<bool>(true, true, true, true))));
    var var_1 = ~(countOneBits(abs(~vec3<u32>(5956u, 431u, 0u))) | abs(vec3<u32>(61162u, 12037u, select(1u, 4294967295u, false))));
    var var_2 = Struct_2(true);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1003f, -161f, -823f, 1451f)))))));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(firstLeadingBit(abs(global0[_wgslsmith_index_u32(4294967295u, 29u)]))), vec4<u32>(_wgslsmith_mod_u32(~106820u, 12073u), ~10465u, ~_wgslsmith_clamp_u32(52836u, 8550u, var_1.x), var_1.x << (16173u % 32u))), vec2<i32>(37605i, firstLeadingBit(2147483647i)), -u_input.b.zx);
}

