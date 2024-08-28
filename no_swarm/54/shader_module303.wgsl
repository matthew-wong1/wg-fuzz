struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, all(vec4<bool>(false, true, true, true))), vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(select(true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true)), !any(vec4<bool>(false, false, false, false))), any(vec4<bool>(true, true, true, true))));
    var var_1 = false;
    let var_2 = vec2<i32>(_wgslsmith_div_i32(u_input.a.x, ~_wgslsmith_mod_i32(u_input.a.x, ~34287i)), ~u_input.a.x);
    let var_3 = abs(45428u);
    let var_4 = vec3<bool>(var_0.x, var_0.x, all(select(vec2<bool>(var_0.x, var_0.x), select(select(vec2<bool>(true, false), vec2<bool>(var_0.x, true), false), !vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false)), vec2<bool>(true, var_0.x))));
    return firstTrailingBit(-vec3<i32>(var_2.x, 2147483647i << (max(arg_0, arg_0) % 32u), 32268i));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_4(arg_1, all(vec3<bool>((arg_1.a.x & false) && true, all(vec4<bool>(false, arg_1.a.x, true, arg_1.a.x)), all(vec3<bool>(true, true, arg_1.a.x)))), vec4<bool>((true == all(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x))) != arg_1.a.x, all(vec3<bool>(true, any(vec4<bool>(false, arg_1.a.x, false, arg_1.a.x)), true)), true && (min(u_input.a.x, -16611i) != arg_1.d.c), arg_1.a.x), false);
    let var_2 = -719f;
    var var_3 = ~0u;
    var var_4 = Struct_4(Struct_2(!vec3<bool>(arg_1.e.x >= var_1.a.e.x, false, !arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1088f)))), Struct_1(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1195f, arg_1.d.d, false))), 1i, _wgslsmith_div_f32(arg_1.d.b, _wgslsmith_f_op_f32(round(-1382f))), vec2<u32>(arg_0, 0u)), select(arg_1.e, ~select(arg_1.e, vec4<i32>(arg_1.d.c, 76292i, arg_1.d.c, arg_1.d.c), var_1.c), var_1.c)), (any(vec3<bool>(true, false, var_1.c.x)) | true) != var_1.a.a.x, !(!vec4<bool>(arg_1.a.x, true, arg_1.a.x, false)), all(arg_1.a));
    return _wgslsmith_f_op_f32(f32(-1f) * -209f);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(60394u, arg_1, 530f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(495f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.d.b, _wgslsmith_f_op_f32(1677f - 1293f)))))) * -1180f);
    var var_2 = arg_1.d;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(180f, -1706f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_2.d))))), all(select(vec3<bool>(true, arg_1.a.x, true), vec3<bool>(false, arg_1.a.x, arg_1.a.x), !vec3<bool>(false, arg_1.a.x, false))))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1244f, -446f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1245f))), _wgslsmith_f_op_f32(-1f), ~u_input.a.x, 1f, vec2<u32>(81528u, firstLeadingBit(9264u))), -1000f, -reverseBits(func_1(u_input.b) & vec3<i32>(u_input.a.x, u_input.a.x, -42684i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1f, Struct_2(vec3<bool>(false, true, false), 541f, -508f, Struct_1(-603f, -1000f, 50790i, 594f, vec2<u32>(1u, 84013u)), vec4<i32>(u_input.a.x, u_input.a.x, 30344i, 2147483647i)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(sign(-495f))))), _wgslsmith_f_op_f32(-154f * _wgslsmith_f_op_f32(f32(-1f) * -1145f)), -reverseBits(u_input.a.x) >> (~50467u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2167f, -860f))), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.c), ~vec2<u32>(u_input.c, u_input.b))));
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    var var_1 = Struct_3(var_0.d, 300f, u_input.a, Struct_1(var_0.a.b, var_0.a.b, abs(~(u_input.a.x | -20146i)), _wgslsmith_f_op_f32(sign(-129f)), _wgslsmith_div_vec2_u32(~reverseBits(var_0.a.e), min(var_0.a.e, ~var_0.a.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(min(~vec4<i32>(-1i, u_input.a.x, var_0.c.x, 1i), abs(~vec4<i32>(38172i, var_0.a.c, var_1.d.c, u_input.a.x))), -vec4<i32>(var_0.d.c, var_0.c.x, u_input.a.x, var_1.a.c) | vec4<i32>(-var_0.c.x, 1i, ~u_input.a.x, var_1.d.c)));
}

