struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-989f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c, 347f, false)) - _wgslsmith_div_f32(arg_1.b.x, arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -2608f))));
    let var_1 = arg_0.yw;
    let var_2 = any(vec3<bool>(true, true, true));
    var var_3 = var_2;
    var var_4 = arg_0.x;
    return -19376i;
}

fn func_3() -> vec2<bool> {
    let var_0 = vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(27912u, u_input.e.x, 6215u, 1702u) << (~vec4<u32>(1u, 4294967295u, u_input.b, u_input.e.x) % vec4<u32>(32u))), ~vec4<u32>(abs(u_input.b), 29362u, 46961u & u_input.e.x, ~4294967295u)), ~(~_wgslsmith_mod_u32(abs(4294967295u), ~77084u)));
    var var_1 = u_input.a;
    var var_2 = all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(126f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -712f));
    let var_4 = select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), select(vec3<bool>(-528f == var_3.x, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true)), vec3<bool>(false, countOneBits(u_input.a.x) == _wgslsmith_add_i32(-41659i, var_1.x), true)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true)));
    return !select(select(select(!var_4.yy, !var_4.xy, !var_4.xz), !select(vec2<bool>(true, var_4.x), var_4.yz, var_4.zy), true | (230f >= var_3.x)), !(!(!vec2<bool>(var_4.x, false))), vec2<bool>(false, false));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = ~(~select(vec2<i32>(1i, 1i), u_input.c.yw, _wgslsmith_f_op_f32(775f * arg_0) == _wgslsmith_f_op_f32(round(-1000f))));
    let var_1 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -51172i, countOneBits(-var_0.x)), (func_2(vec4<f32>(arg_0, arg_0, arg_0, arg_0), Struct_1(vec4<u32>(0u, u_input.b, 4294967295u, 0u), vec3<f32>(1000f, arg_0, 955f), 281f), u_input.d, u_input.b) & select(var_0.x, 2147483647i, true)) | abs(2147483647i)), select(firstLeadingBit(~u_input.a.x), ~0i, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true))) & -2147483647i, abs(u_input.d.x), _wgslsmith_div_i32(~36319i, ~_wgslsmith_sub_i32(var_0.x >> (u_input.b % 32u), _wgslsmith_sub_i32(2147483647i, u_input.a.x))));
    var var_2 = select(vec2<bool>(true, any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), false)))), select(vec2<bool>(select(0i == var_0.x, true, select(true, false, true)), true), vec2<bool>(true, any(vec2<bool>(false, true))), func_3()), true);
    var var_3 = true;
    var var_4 = abs(_wgslsmith_mult_u32(u_input.b, u_input.e.x)) << ((~1u & abs(~u_input.e.x)) % 32u);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) - 172f), 913f)))));
}

fn func_4(arg_0: f32) -> vec3<f32> {
    let var_0 = Struct_1(~(~vec4<u32>(~18519u, ~1u, 39576u, ~u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(809f, 1262f, 1175f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(735f, -132f, arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(326f, 894f, arg_0) - vec3<f32>(arg_0, 1000f, arg_0))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 584f, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0) + vec3<f32>(369f, arg_0, 1413f)), true)))), _wgslsmith_f_op_f32(477f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(112f - arg_0)))));
    let var_1 = _wgslsmith_div_i32(-25044i, -(~(_wgslsmith_add_i32(u_input.a.x, u_input.c.x) & select(u_input.d.x, u_input.a.x, false))));
    let var_2 = var_0;
    var var_3 = !(!any(vec2<bool>(false, true)));
    var var_4 = firstTrailingBit(var_2.a);
    return vec3<f32>(769f, -313f, _wgslsmith_f_op_f32(step(var_2.c, 2012f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(countOneBits(~firstTrailingBit(1u)), 0u, u_input.b, 1u), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1156f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(566f)) * _wgslsmith_f_op_f32(min(-412f, -605f)))))), -892f);
    let var_1 = var_0.c;
    let var_2 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.a ^ var_0.a, ~vec4<u32>(var_0.a.x, var_0.a.x, 100307u, 1u)), ~1u, ~(~47960u), 4294967295u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.c - 1177f), -931f))), 275f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), -2946f)));
    var_0 = var_2.a;
    let var_3 = vec2<i32>(firstTrailingBit(-28837i), 2147483647i);
    var var_4 = Struct_2(Struct_1(vec4<u32>(1u, ~var_0.a.x, ~0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_2.a.a.x), vec2<u32>(4294967295u, var_2.a.a.x)) % 32u), _wgslsmith_div_u32(~27141u, var_2.a.a.x)), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1777f))))), -309f), var_0.c);
    let var_5 = vec4<u32>(_wgslsmith_mod_u32(~0u, 4294967295u), ~firstLeadingBit(0u & ~u_input.b), 1u, 58853u);
    let var_6 = firstTrailingBit(_wgslsmith_dot_vec2_u32(~(~(vec2<u32>(u_input.b, var_4.a.a.x) >> (vec2<u32>(41306u, var_0.a.x) % vec2<u32>(32u)))), _wgslsmith_mult_vec2_u32(firstTrailingBit(var_2.a.a.xy), vec2<u32>(14657u, 3709u) & firstLeadingBit(var_2.a.a.yx))));
    var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - var_2.a.b.x)), _wgslsmith_f_op_f32(614f + -1000f)), u_input.d << (select(_wgslsmith_mult_vec3_u32(var_5.zzy, var_5.xyy), ~var_4.a.a.yxz | vec3<u32>(62814u, 62137u, 36013u), reverseBits(var_0.a.x) <= 57079u) % vec3<u32>(32u)), -2147483647i, _wgslsmith_f_op_f32(var_4.b + -1492f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.a.b.x), _wgslsmith_f_op_f32(-var_0.c))) - _wgslsmith_div_vec2_f32(vec2<f32>(1277f, 546f), _wgslsmith_f_op_vec2_f32(var_2.a.b.yz + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4.a.c, var_4.a.c)))))));
}

