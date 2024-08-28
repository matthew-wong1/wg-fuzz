struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-279f, 973f);

var<private> global1: vec2<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>) -> vec4<u32> {
    global1 = !select(vec2<bool>(arg_0.x < _wgslsmith_f_op_f32(-1000f + arg_0.x), any(vec2<bool>(global1.x, global1.x))), select(vec2<bool>(!global1.x, !global1.x), select(select(vec2<bool>(global1.x, true), vec2<bool>(true, true), global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x)), select(vec2<bool>(false, false), vec2<bool>(false, false), global1.x)), select(false != global1.x, true, global1.x)), !select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, true), select(vec2<bool>(true, false), vec2<bool>(global1.x, false), vec2<bool>(false, global1.x))));
    var var_0 = vec4<i32>(1i, _wgslsmith_div_i32(-23918i, select(u_input.a.x, 16278i, global1.x)), u_input.a.x & _wgslsmith_sub_i32(~2147483647i, u_input.a.x << (_wgslsmith_add_u32(92700u, 0u) % 32u)), ~(~(-51492i)));
    var var_1 = vec3<u32>(1u, min(50993u, _wgslsmith_sub_u32(firstTrailingBit(~1u), countOneBits(_wgslsmith_clamp_u32(1148u, 1u, 95877u)))), ~(~(~(~0u))));
    var var_2 = Struct_1(~(~22850u), select(4294967295u, reverseBits(var_1.x), !global1.x), firstTrailingBit(1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(global0.x * global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-686f * 627f)), _wgslsmith_f_op_f32(abs(-1185f))))));
    var var_3 = Struct_2(21595u ^ ~var_1.x);
    return vec4<u32>(~(~select(22602u, 6534u, global1.x) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a, 1u, var_1.x, 41882u), vec4<u32>(var_3.a, var_1.x, var_1.x, 6825u)), abs(vec4<u32>(22523u, 67880u, 0u, 4294967295u)))), _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, 16633u), var_3.a), var_2.a, 0u);
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, _wgslsmith_div_u32(4294967295u, 15129u), ~4294967295u) >> ((firstLeadingBit(vec4<u32>(17506u, 1980u, 4294967295u, 1u)) >> (func_2(arg_0.xy) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(vec4<u32>(1u, 1u, 1u, 1u)) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(47517u, 70833u, 4854u, 15032u), ~vec4<u32>(4294967295u, 40449u, 49594u, 0u), vec4<u32>(1u, 1u, 1u, 1u))), ~_wgslsmith_mult_u32(22087u, min(~52418u, 23764u)), global1.x);
    return 986f;
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(1466f, -2527f, global1.x)))), _wgslsmith_f_op_f32(985f - -336f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(-690f)), global0.x))));
    let var_0 = select(select(!select(vec4<bool>(true, true, global1.x, true), vec4<bool>(true, global1.x, true, true), true), vec4<bool>(global1.x, global1.x, true, any(select(vec3<bool>(true, global1.x, true), vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, false, global1.x)))), _wgslsmith_mod_i32(i32(-1i) * -13775i, -74003i) < -select(arg_0.c, 44866i, true)), vec4<bool>(false, false, true, any(vec2<bool>(!global1.x, !global1.x))), ~(arg_0.a | ~37190u) >= _wgslsmith_add_u32(arg_0.a, min(~0u, arg_0.a)));
    var var_1 = Struct_2(arg_0.b);
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(799f, -988f), vec2<f32>(global0.x, global0.x)), vec2<f32>(1440f, global0.x))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 538f) + vec2<f32>(global0.x, 579f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1257f, -2557f))))))), select(global1.x, true, true)));
    let var_2 = var_0;
    return Struct_2(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 986f, global0.x);
    let var_1 = global1.x;
    global1 = vec2<bool>(true, any(vec4<bool>(true, global1.x, false, all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), false)))));
    var var_2 = any(!select(vec2<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), false), vec2<bool>(select(global1.x, false, global1.x), global1.x), vec2<bool>(true || global1.x, true)));
    let var_3 = func_3(Struct_1(~80966u, ~(~(~1u)), 1i, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(abs(var_0))))));
    var var_4 = Struct_3(u_input.a.x, !vec2<bool>(false & (var_3.a <= var_3.a), all(vec3<bool>(global1.x, true, global1.x)) & true));
    var var_5 = 4294967295u;
    global0 = _wgslsmith_f_op_vec2_f32(round(var_0.xx));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_3.a, abs(var_3.a));
}

