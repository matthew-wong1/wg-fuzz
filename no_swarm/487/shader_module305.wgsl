struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -735f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_div_f32(-623f, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(f32(-1f) * -2244f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2229f, 749f, 279f))) * arg_0.xzy))));
    let var_2 = u_input.a;
    let var_3 = Struct_1(all(vec2<bool>((-167i <= u_input.d) & true, true)));
    let var_4 = Struct_3(arg_0, var_1.b);
    return select(~u_input.b, 0u, !(u_input.b < _wgslsmith_mult_u32(1u, 1u)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = select(-2147483647i, abs(_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(-36881i, 2147483647i))), true);
    var var_1 = Struct_4(Struct_1(true), vec3<u32>(0u, func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1097f, 1434f, -182f, -1000f)))), abs(arg_0)), Struct_1(all(vec3<bool>(true, true, true))), countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 37437u, arg_0), abs(vec3<u32>(u_input.b, 34709u, u_input.b))), vec3<u32>(2247u, arg_0, ~u_input.b))), Struct_2(vec2<bool>(true, true), Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(479f, -2982f) - -1000f))), !vec4<bool>(false, true, arg_0 > arg_0, var_0 <= -2147483647i)));
    var_1 = Struct_4(var_1.a, _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(max(1042u, 4294967295u)), 0u, firstTrailingBit(56949u)), vec3<u32>(func_3(vec4<f32>(-1116f, var_1.e.d, -166f, 147f)) << (~u_input.b % 32u), arg_0, 48725u)), Struct_1(any(select(select(vec2<bool>(false, var_1.a.a), var_1.e.a, vec2<bool>(true, false)), var_1.e.a, vec2<bool>(var_1.e.b.a, var_1.a.a)))), vec3<u32>(~abs(~1u), var_1.d.x, var_1.b.x), Struct_2(vec2<bool>(!any(vec2<bool>(false, var_1.e.b.a)), false), var_1.e.b, var_1.e.e.zxy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.e.d)))))), vec4<bool>(true, var_1.e.a.x, var_1.c.a, var_1.e.c.x)));
    var var_2 = ~(~max(~1i, -(~2147483647i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.e.d, var_1.e.d, -1989f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.d, var_1.e.d, -115f) - vec3<f32>(var_1.e.d, 939f, -878f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.e.d), -485f, 226f)))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1840f, var_1.e.d, -665f, 659f), vec4<f32>(-819f, var_1.e.d, -239f, 488f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.e.d, 144f, -250f, 243f), vec4<f32>(var_1.e.d, var_1.e.d, 540f, -369f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -537f, var_1.e.d, var_1.e.d))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.d, 1969f, 721f, var_3.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.e.d, 923f, 580f, var_1.e.d), vec4<f32>(-1497f, var_1.e.d, -1324f, var_3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, 225f, var_3.x, 187f))) + vec4<f32>(357f, var_3.x, 325f, var_3.x))))), var_3);
}

fn func_1() -> Struct_4 {
    let var_0 = !vec4<bool>(false, true, true | any(vec2<bool>(true, true)), false);
    var var_1 = -112f;
    var var_2 = u_input.b << (u_input.b % 32u);
    let var_3 = Struct_1((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1576f, -1693f)) + _wgslsmith_f_op_f32(ceil(-1650f))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(767f))))) & !var_0.x);
    var var_4 = func_2(30986u);
    return Struct_4(Struct_1(false), countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(2359u, 1u, u_input.b)), ~vec3<u32>(u_input.b, 19506u, 19026u)), ~func_3(var_4.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), select(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, 24247u, 19647u), vec3<bool>(false, var_0.x, true))))), Struct_1(var_0.x), vec3<u32>(27248u, ~(1u >> (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u)), max(~u_input.b, 4294967295u)), Struct_2(select(!var_0.wx, !(!var_0.zw), select(select(vec2<bool>(false, var_3.a), var_0.zx, vec2<bool>(var_3.a, false)), select(var_0.zz, var_0.wx, var_0.yy), var_0.x)), var_3, select(vec3<bool>(true, var_3.a, var_3.a), var_0.zyy, var_0.xzw), var_4.a.x, select(var_0, select(select(vec4<bool>(var_3.a, var_3.a, true, false), var_0, false), select(vec4<bool>(var_0.x, var_3.a, var_3.a, true), var_0, var_0), true), !select(vec4<bool>(var_3.a, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_3.a, false, false), vec4<bool>(true, false, var_3.a, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, _wgslsmith_add_i32(-firstTrailingBit(22296i), 1i) < ~(-28617i ^ u_input.a), all(vec2<bool>(true, true)) | true, all(vec2<bool>(true, true)));
    var var_1 = abs(-43499i);
    var_1 = _wgslsmith_mod_i32(max(~(-2147483647i << (u_input.b % 32u)), -9977i), 1i);
    let var_2 = Struct_1(var_0.x);
    let var_3 = func_1();
    var var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.d, _wgslsmith_f_op_f32(var_3.e.d - var_3.e.d), func_1().e.d, var_3.e.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1024f, 233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e.d * var_3.e.d) - _wgslsmith_f_op_f32(select(var_3.e.d, -1277f, false))))));
    var var_5 = var_3.e;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_add_u32(134u, _wgslsmith_div_u32(~(~49673u), _wgslsmith_div_u32(35291u, u_input.b))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_2(u_input.b).b.x))), _wgslsmith_f_op_f32(688f - var_5.d), func_1().e.d, _wgslsmith_f_op_f32(select(-522f, func_1().e.d, var_0.x))));
}

