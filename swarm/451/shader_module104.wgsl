struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2632f, _wgslsmith_f_op_f32(f32(-1f) * -962f), true)))));
    var var_1 = arg_0;
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(850f + var_0.x) - -695f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1043f + var_0.x)))))));
    var_2 = var_1.a;
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(false);
    let var_1 = !select(false, !var_0.a, (true | any(vec2<bool>(true, true))) && (func_3(var_0, vec4<u32>(1u, 1u, 70375u, u_input.b.x)) | !var_0.a));
    let var_2 = Struct_1(all(!select(vec2<bool>(true, true), vec2<bool>(false, false), !vec2<bool>(false, var_0.a))));
    var var_3 = countOneBits(_wgslsmith_mult_vec4_u32(abs(select(u_input.b, abs(vec4<u32>(5049u, u_input.d, u_input.b.x, 3102u)), !var_1)), max(u_input.b, ~vec4<u32>(4294967295u, u_input.d, 0u, 0u))));
    let var_4 = true;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = select(select(!(!select(vec4<bool>(var_0.a, arg_1.a, true, arg_1.a), vec4<bool>(true, arg_0.a, arg_1.a, false), var_0.a)), select(vec4<bool>(arg_0.a | true, true, true, arg_1.a), select(!vec4<bool>(true, arg_0.a, false, arg_2.a), vec4<bool>(arg_2.a, arg_0.a, arg_0.a, true), select(vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(var_0.a, arg_2.a, true, true), vec4<bool>(false, true, arg_0.a, true))), !select(vec4<bool>(false, true, true, true), vec4<bool>(arg_2.a, false, false, var_0.a), vec4<bool>(arg_0.a, arg_1.a, false, var_0.a))), all(vec4<bool>(true, arg_1.a, all(vec2<bool>(arg_0.a, arg_0.a)), arg_2.a))), select(!select(vec4<bool>(arg_0.a, false, false, true), !vec4<bool>(arg_1.a, arg_2.a, false, false), all(vec3<bool>(var_0.a, false, false))), vec4<bool>(!any(vec2<bool>(true, false)), true, arg_0.a, !arg_2.a), func_2().a), arg_0.a);
    var var_2 = Struct_1(func_2().a);
    var_1 = select(select(select(vec4<bool>(true, var_0.a, true, true), !(!vec4<bool>(false, arg_1.a, true, var_2.a)), arg_1.a), !(!vec4<bool>(arg_1.a, var_2.a, false, false)), arg_0.a), select(!(!vec4<bool>(arg_0.a, true, true, arg_2.a)), vec4<bool>(var_2.a, true, select(true, arg_1.a, var_2.a), true), var_1.x), true);
    var var_3 = ~min(vec2<u32>(8958u, u_input.d), select(vec2<u32>(22174u, 4294967295u), u_input.b.ww, func_3(arg_0, vec4<u32>(97621u, u_input.d, u_input.d, u_input.b.x))) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, u_input.d)));
    return 469f;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(-888f - _wgslsmith_f_op_f32(func_4(func_2(), func_2(), Struct_1(true)))), _wgslsmith_f_op_f32(select(878f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(939f))), false)), 343f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.yyz);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 572f, 276f, 1000f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -352f, 440f, 429f))), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_0.x, 1360f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(162f, 1096f, 558f, var_0.x), vec4<f32>(var_0.x, var_1.x, 146f, var_1.x), vec4<bool>(true, false, true, true)))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, var_0.x, -666f) * vec4<f32>(var_0.x, 178f, var_1.x, 1000f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.x, var_0.x, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 999f, var_1.x))))))));
    let var_2 = -905f;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, _wgslsmith_div_f32(var_0.x, var_1.x), var_2, _wgslsmith_div_f32(var_1.x, var_0.x)))))));
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec3<bool>(true, var_0.a, u_input.c < -2147483647i);
    var var_2 = func_1();
    var_1 = !select(vec3<bool>(true && (26052u <= u_input.d), false, any(vec2<bool>(true, false))), select(vec3<bool>(func_1().a, true, var_2.a && var_2.a), select(vec3<bool>(true, false, var_2.a), select(vec3<bool>(var_0.a, false, false), vec3<bool>(true, false, var_2.a), vec3<bool>(true, false, var_0.a)), vec3<bool>(false, var_0.a, var_2.a)), var_2.a), !vec3<bool>(any(vec3<bool>(true, var_2.a, false)), true, var_2.a));
    var_1 = !(!vec3<bool>(true, true, all(vec4<bool>(var_1.x, var_1.x, false, false)) && var_2.a));
    var var_3 = func_1();
    var_0 = func_2();
    var var_4 = _wgslsmith_mult_u32(~(~1u), 4294967295u);
    var var_5 = vec3<f32>(-998f, _wgslsmith_f_op_f32(-235f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1330f + -983f)))), -279f);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b), max(vec4<u32>(~(~u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u) << (u_input.b.zy % vec2<u32>(32u)), ~u_input.b.zz), 1u, ~u_input.d), u_input.b << (min(select(vec4<u32>(u_input.d, u_input.d, 4294967295u, 29652u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(true, var_3.a, var_0.a, false)), u_input.b) % vec4<u32>(32u))), vec2<u32>(4294967295u, u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_5.x))), -1020f, -1208f)));
}

