struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(-2286i, 1i), vec2<i32>(-67280i, i32(-2147483648)), vec2<i32>(6626i, 19657i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-31770i, 1i), vec2<i32>(50985i, 16084i), vec2<i32>(-1i, 5078i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> vec3<u32> {
    let var_0 = (~abs(max(u_input.b.x, arg_1)) | (4294967295u & u_input.c)) ^ 0u;
    global0 = array<vec2<i32>, 7>();
    global0 = array<vec2<i32>, 7>();
    let var_1 = Struct_2(~(~u_input.d.x), Struct_1(84u, vec4<bool>(all(vec2<bool>(arg_0.c, arg_0.b.b.x)), ~81054i < (arg_0.a | 1i), (arg_0.b.b.x && false) != any(arg_0.b.b), any(select(arg_0.b.b.xx, arg_0.b.b.xw, arg_0.b.b.x))), abs(1i | max(arg_0.b.c, 6228i)), vec4<u32>(u_input.c, select(arg_1, 74775u, arg_0.b.b.x & false), _wgslsmith_add_u32(arg_0.b.d.x, 0u), firstTrailingBit(countOneBits(4294967295u)))), !select(1u == arg_1, true, true));
    let var_2 = select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) <= _wgslsmith_f_op_f32(arg_2.x - arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + 321f) + _wgslsmith_f_op_f32(-480f - -526f)) < arg_2.x), var_1.b.b.zz, var_1.b.b.xw);
    return ~(~arg_0.b.d.wyx);
}

fn func_2() -> Struct_3 {
    var var_0 = -reverseBits(-30817i);
    global0 = array<vec2<i32>, 7>();
    var_0 = ~u_input.d.x;
    global0 = array<vec2<i32>, 7>();
    var var_1 = countOneBits((countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(u_input.c, u_input.b.x, u_input.b.x))) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), func_3(Struct_2(u_input.d.x, Struct_1(u_input.c, vec4<bool>(true, true, true, true), u_input.d.x, vec4<u32>(42021u, 0u, u_input.c, 46779u)), false), u_input.c, vec4<f32>(-1310f, 1991f, -504f, 664f)))) >> (reverseBits(vec3<u32>(42099u, _wgslsmith_mod_u32(1u, u_input.a), ~0u)) % vec3<u32>(32u)));
    return Struct_3(Struct_2(-1i, Struct_1(~var_1.x, select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), 32990i, vec4<u32>(var_1.x, ~5224u, var_1.x, reverseBits(12932u))), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)))), 2147483647i, !vec3<bool>(_wgslsmith_mult_i32(-10603i, 29250i) == u_input.d.x, !all(vec4<bool>(false, true, false, false)), false));
}

fn func_1(arg_0: vec2<u32>) -> vec3<u32> {
    global0 = array<vec2<i32>, 7>();
    let var_0 = vec4<bool>(all(vec3<bool>(any(vec3<bool>(true, true, true)), true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)))), true, true, !any(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1981f, 1712f) * vec2<f32>(-1000f, 183f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(-1163f, 1831f)), -440f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2766f, 173f), vec2<f32>(821f, -622f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(310f, -1000f))), !(!var_0.xz)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(257f, -434f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(463f, -152f))))));
    global0 = array<vec2<i32>, 7>();
    var var_2 = func_2();
    return var_2.a.b.d.yyy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1804f, 948f, true))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-825f + _wgslsmith_div_f32(-1426f, -772f))))));
    global0 = array<vec2<i32>, 7>();
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(abs(reverseBits(16630u)), u_input.a | (u_input.a | u_input.c), u_input.b.x & ~u_input.b.x), max(_wgslsmith_add_vec3_u32(func_1(vec2<u32>(1u, 10686u)), vec3<u32>(111037u, u_input.a, u_input.a)), (vec3<u32>(u_input.a, 54459u, u_input.a) & vec3<u32>(u_input.a, 4294967295u, 4294967295u)) | vec3<u32>(1u, 1u, 1u))) | firstLeadingBit(vec3<u32>(~30267u, ~u_input.a, u_input.a));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(284f, _wgslsmith_f_op_f32(max(-319f, 860f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(2251f, 784f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-712f * 1312f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1390f + 1724f) * -1353f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(950f)) - 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1947f))))));
    var_0 = -1966f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(u_input.d.yx, global0[_wgslsmith_index_u32(0u, 7u)], false)) ^ firstLeadingBit(~firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 7u)])), u_input.d.x);
}

