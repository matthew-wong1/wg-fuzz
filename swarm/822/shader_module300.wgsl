struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> f32 {
    var var_0 = u_input.a.xx;
    global0 = array<Struct_3, 18>();
    let var_1 = vec4<i32>(14469i, _wgslsmith_mod_i32(_wgslsmith_add_i32(~reverseBits(-1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-61348i, -55336i, 2147483647i), -vec3<i32>(2147483647i, 1i, -2147483647i))), -1i), abs(_wgslsmith_sub_i32(1i, 41792i)), 1i);
    var var_2 = -max(select(reverseBits(vec4<i32>(13233i, var_1.x, 67910i, var_1.x)), var_1, true), vec4<i32>(var_1.x, var_1.x, _wgslsmith_sub_i32(var_1.x, var_1.x) >> (~0u % 32u), _wgslsmith_div_i32(1i, 58181i)));
    let var_3 = -1i;
    return 1147f;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    global0 = array<Struct_3, 18>();
    var var_0 = vec3<f32>(1479f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(519f, 1173f) + _wgslsmith_f_op_f32(trunc(-410f))))), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) - 721f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-2800f)), -2024f, arg_0.a == arg_0.a))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(807f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 225f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_f32(-1108f + var_0.x), 600f);
    let var_2 = ~4294967295u;
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.zz)));
}

fn func_1(arg_0: vec4<i32>) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2248f + -1835f), _wgslsmith_f_op_f32(round(1119f)))))), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), -(1i ^ -arg_0.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(566f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-752f - 1423f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-603f, 258f), -544f), vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(1501f * 353f))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_0.x, arg_0.x), -2147483647i))), Struct_1(_wgslsmith_div_i32(arg_0.x | arg_0.x, 45688i), firstTrailingBit(~arg_0.x)), Struct_1(arg_0.x, arg_0.x), any(vec4<bool>(true, true, true, true))));
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_1 = Struct_1(arg_0.x ^ countOneBits(1i), _wgslsmith_sub_i32(var_0.e.b.b, -15524i));
    return var_0.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1(~(~vec4<i32>(40948i, -8724i, 81884i, -18770i)) >> (~min(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 32287u), vec4<u32>(6607u, u_input.a.x, 3830u, 4294967295u)) % vec4<u32>(32u)))), vec3<f32>(-892f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1866f), _wgslsmith_f_op_f32(946f + 536f), false)))));
}

