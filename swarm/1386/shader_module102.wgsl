struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: u32) -> vec3<bool> {
    var var_0 = all(select(arg_1.a.b.a, select(select(vec3<bool>(arg_0.x, arg_1.d.a.x, true), !vec3<bool>(arg_0.x, arg_0.x, arg_1.d.a.x), arg_1.b.x >= arg_1.b.x), select(!vec3<bool>(false, true, arg_1.c.a.x), select(vec3<bool>(arg_0.x, false, false), arg_1.a.b.a, arg_1.d.a.x), true), vec3<bool>(all(vec4<bool>(true, true, arg_0.x, false)), u_input.a.x < -52188i, false & arg_1.d.a.x)), arg_1.c.a.x));
    let var_1 = vec3<i32>(u_input.b, u_input.a.x, -54074i);
    var var_2 = Struct_2(firstLeadingBit(select(arg_1.a.c.xzy, reverseBits(firstTrailingBit(arg_1.a.c.xww)), vec3<bool>(arg_1.a.d.x, false, all(vec4<bool>(arg_1.d.a.x, false, arg_1.c.a.x, true))))), arg_1.a.c.x, u_input.a.yy, min(vec4<u32>(firstLeadingBit(36519u), arg_2, _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.a.c.x, arg_1.a.c.x), 1u), _wgslsmith_sub_u32(arg_2 << (24036u % 32u), arg_1.a.c.x)), arg_1.a.c));
    let var_3 = 8511u;
    var var_4 = Struct_2(_wgslsmith_sub_vec3_u32(var_2.d.wyw, vec3<u32>(72700u, 1u, _wgslsmith_sub_u32(var_3, 68505u))) & vec3<u32>(var_2.d.x, 1u, countOneBits(_wgslsmith_div_u32(1u, arg_2))), reverseBits(arg_2), vec2<i32>(~(-(~2147483647i)), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, -14138i, -35494i, var_1.x), vec4<i32>(21158i, -1i, -4742i, 1i)))), vec4<u32>(firstLeadingBit(var_3), arg_2, ~4294967295u, reverseBits(reverseBits(arg_2) ^ 1u)));
    return arg_1.c.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> u32 {
    let var_0 = arg_0;
    let var_1 = Struct_4(Struct_1(select(!func_3(var_0.a.zx, Struct_5(Struct_3(arg_0.a.x, Struct_1(vec3<bool>(false, arg_0.a.x, var_0.a.x)), vec4<u32>(97618u, arg_1.x, 12055u, arg_1.x), vec2<bool>(var_0.a.x, var_0.a.x)), vec2<f32>(1000f, 1731f), arg_0, Struct_1(vec3<bool>(var_0.a.x, true, arg_0.a.x))), arg_1.x), select(var_0.a, !arg_0.a, vec3<bool>(arg_0.a.x, false, arg_0.a.x)), select(!var_0.a, vec3<bool>(true, var_0.a.x, true), var_0.a.x | arg_0.a.x))));
    let var_2 = true;
    var var_3 = Struct_5(Struct_3(true, Struct_1(select(!vec3<bool>(true, var_2, true), !vec3<bool>(arg_0.a.x, var_2, false), func_3(vec2<bool>(true, var_1.a.a.x), Struct_5(Struct_3(arg_0.a.x, var_1.a, vec4<u32>(0u, arg_1.x, 25845u, 49900u), vec2<bool>(false, false)), vec2<f32>(arg_2, arg_2), Struct_1(arg_0.a), arg_0), arg_1.x))), firstLeadingBit(~vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x)), func_3(arg_0.a.yx, Struct_5(Struct_3(true, var_0, vec4<u32>(arg_1.x, 49880u, 112361u, arg_1.x), vec2<bool>(arg_0.a.x, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1286f)), Struct_1(vec3<bool>(var_1.a.a.x, arg_0.a.x, var_2)), Struct_1(arg_0.a)), arg_1.x).xz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, arg_2)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_div_f32(145f, arg_2)) + vec2<f32>(_wgslsmith_div_f32(739f, arg_2), _wgslsmith_f_op_f32(round(1122f))))), var_1.a, Struct_1(!(!var_0.a)));
    var_3 = Struct_5(var_3.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.b.x)), -572f)), var_3.b.x), Struct_1(func_3(var_0.a.yz, Struct_5(Struct_3(var_3.c.a.x, var_1.a, vec4<u32>(14674u, 120357u, 0u, var_3.a.c.x), vec2<bool>(var_0.a.x, arg_0.a.x)), vec2<f32>(-244f, -198f), var_1.a, Struct_1(arg_0.a)), ~(~var_3.a.c.x))), var_1.a);
    return 2242u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<f32>) -> vec4<f32> {
    let var_0 = Struct_5(Struct_3(any(!vec4<bool>(true, arg_2.x, arg_0.a.x, arg_2.x)), Struct_1(vec3<bool>(any(vec4<bool>(false, arg_0.a.x, arg_2.x, false)), false, false)), arg_1.d, select(vec2<bool>(all(vec2<bool>(arg_2.x, false)), true), arg_2.xy, arg_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(min(arg_3.x, -736f)), -249f), arg_0, Struct_1(arg_0.a));
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, var_0.a.c.x, 4294967295u, 4294967295u), vec4<u32>(0u, var_0.a.c.x, arg_1.d.x, var_0.a.c.x)), ~1u), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(5105u, 83213u, arg_1.a.x), vec3<u32>(22685u, var_0.a.c.x, var_0.a.c.x)), var_0.a.c.xxz)), ~(arg_1.b | 1u));
    var var_2 = arg_3.x;
    var_2 = -265f;
    var var_3 = var_0.c;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, 1689f, -1031f, -196f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -176f, 151f, var_0.b.x))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1040f, var_0.b.x, arg_3.x, arg_3.x), vec4<f32>(-1905f, var_0.b.x, var_0.b.x, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1317f, var_0.b.x, 940f, -665f))))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = any(vec3<bool>(-40692i > u_input.a.x, select(true, false, true), true));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -759f);
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(461f, _wgslsmith_div_f32(var_1, -126f))), _wgslsmith_f_op_f32(select(-2182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))), _wgslsmith_mult_i32(u_input.b, u_input.a.x) != arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -819f), var_1), _wgslsmith_f_op_vec4_f32(func_4(arg_2.b, Struct_2(vec3<u32>(func_2(Struct_1(vec3<bool>(var_0, var_0, true)), arg_2.c.xwx, 153f), arg_2.c.x, _wgslsmith_dot_vec4_u32(arg_2.c, vec4<u32>(arg_2.c.x, 0u, 1u, arg_2.c.x))), ~arg_2.c.x, select(arg_1.zy, abs(arg_1.xz), vec2<bool>(false, arg_2.b.a.x)), arg_2.c), func_3(vec2<bool>(true, var_1 == 1000f), Struct_5(Struct_3(var_0, arg_2.b, arg_2.c, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1) * vec2<f32>(var_1, var_1)), Struct_1(arg_2.b.a), arg_2.b), countOneBits(~4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1132f, var_1))))))));
    var var_3 = arg_0;
    var var_4 = arg_2;
    return arg_2.c.x;
}

fn func_5(arg_0: vec4<u32>) -> vec3<bool> {
    return !(!vec3<bool>(!select(true, true, true), _wgslsmith_f_op_f32(floor(781f)) <= -1089f, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    var var_1 = func_5(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(28217u, 63266u, 24585u, 14428u), reverseBits(vec4<u32>(43731u, 1u, 0u, 2699u)), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<u32>(3219u, _wgslsmith_mult_u32(1u, 1u), 25401u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(min(1u, 104062u), ~5335u, ~0u, 1u), vec4<u32>(~4294967295u, func_1(vec2<bool>(false, var_0.x), vec3<i32>(27544i, u_input.b, 47849i), Struct_3(var_0.x, Struct_1(vec3<bool>(true, false, false)), vec4<u32>(40103u, 1u, 4249u, 1u), vec2<bool>(true, var_0.x))), ~1u, func_2(Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<u32>(27414u, 25156u, 44517u), 689f)))));
    var var_2 = Struct_5(Struct_3(~1u > _wgslsmith_dot_vec3_u32(vec3<u32>(2732u, 1u, 0u), abs(vec3<u32>(4294967295u, 4294967295u, 35713u))), Struct_1(select(select(vec3<bool>(true, var_0.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, false, var_0.x)), !vec3<bool>(var_1.x, true, var_0.x), !var_1.x)), vec4<u32>(1u, 1u, 1u, 1u), vec2<bool>(all(select(vec2<bool>(false, false), var_1.xy, var_1.yx)), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1103f))), 1446f)), Struct_1(func_5(vec4<u32>(abs(13889u), countOneBits(0u), ~0u, ~0u))), Struct_1(vec3<bool>(var_1.x, var_1.x, !all(vec3<bool>(var_1.x, false, var_0.x)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-802f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(617f)) * var_2.b.x))), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(270f, _wgslsmith_f_op_f32(-var_2.b.x), func_5(var_2.a.c).x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2515f), -172f)), var_2.b.x)));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-204f, -1667f)) - _wgslsmith_f_op_f32(var_2.b.x + -898f));
    var var_4 = vec3<i32>(u_input.a.x, firstTrailingBit(0i) << (min(var_2.a.c.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, var_2.a.c.x), _wgslsmith_mod_u32(4294967295u, var_2.a.c.x))) % 32u), 2557i);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 0i, -1761f, 341f);
}

