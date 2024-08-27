struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = arg_1.d.zx;
    var var_1 = arg_0.b.x;
    var_1 = true;
    let var_2 = arg_0;
    var var_3 = arg_1;
    return max(vec3<u32>(firstLeadingBit(32966u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_2.x, 37284u), u_input.a.x), _wgslsmith_mod_u32(~4848u, arg_2.x)), arg_2.x), arg_2);
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1342f * 2316f) + -1706f), select(select(select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), true), select(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, arg_0.x, true, true), !vec4<bool>(arg_0.x, true, arg_0.x, true)), select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, true, true, arg_0.x)), !arg_0.x)), vec4<bool>(!any(vec4<bool>(arg_0.x, true, false, arg_0.x)), true, true, arg_0.x), !(!select(false, true, arg_0.x))), vec2<i32>(u_input.c.x | u_input.c.x, 2147483647i), vec3<bool>(any(!vec4<bool>(true, arg_0.x, false, false)), all(vec2<bool>(!arg_0.x, true)), all(select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), !vec4<bool>(false, arg_0.x, false, arg_0.x), true))));
    var_0 = Struct_1(var_0.a, !select(var_0.b, !var_0.b, _wgslsmith_f_op_f32(var_0.a + 600f) > var_0.a), vec2<i32>(var_0.c.x, u_input.c.x), select(!select(!var_0.b.zww, select(vec3<bool>(false, arg_0.x, var_0.b.x), vec3<bool>(var_0.d.x, false, arg_0.x), var_0.d), vec3<bool>(var_0.d.x, var_0.d.x, var_0.b.x)), !var_0.b.xyx, select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(u_input.c.x <= 0i, false, true), !var_0.d)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-1061f)), var_0.b, min(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(var_0.c.x, u_input.b), u_input.c.yx), vec2<i32>(-28468i >> (u_input.a.x % 32u), i32(-1i) * -6268i)), ~(vec2<i32>(u_input.c.x, var_0.c.x) | vec2<i32>(u_input.c.x, 35041i))), select(var_0.b.xwz, vec3<bool>(arg_0.x, all(select(var_0.d, vec3<bool>(var_0.b.x, var_0.d.x, false), vec3<bool>(var_0.b.x, false, true))), true), any(vec2<bool>(any(var_0.b), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1167f * _wgslsmith_f_op_f32(var_0.a + var_0.a)), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(677f - var_0.a))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.b, u_input.c.yy, !vec3<bool>(select(true, any(var_0.b), false), !(!arg_0.x), select(any(var_0.b.xzz), select(var_0.d.x, arg_0.x, false), arg_0.x || var_0.d.x)));
    let var_2 = _wgslsmith_div_i32(abs(-22620i), ((-14787i << (u_input.a.x % 32u)) >> (~67589u % 32u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(13716u, u_input.a.x, 25267u, u_input.a.x), vec4<u32>(55399u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(69090u, 4294967295u, u_input.a.x, 0u)) % 32u)) > -40815i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    var var_0 = abs(~(~(~func_2(arg_1, Struct_1(717f, vec4<bool>(arg_2, arg_1.d.x, arg_1.b.x, arg_2), arg_1.c, arg_1.d), vec3<u32>(39273u, 4294967295u, 1u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_1.b.wz)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_1.a, arg_1.a)), arg_1.a))))), !(!(!(!vec4<bool>(arg_2, true, arg_1.b.x, arg_2)))), reverseBits(-_wgslsmith_add_vec2_i32(firstTrailingBit(arg_1.c), arg_1.c)), vec3<bool>(arg_2 & true, arg_2, true));
    let var_2 = 1u;
    var_0 = vec3<u32>(42345u, ~(0u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(3699u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 1u, 76347u))), 21412u);
    var_1 = arg_1;
    return var_1.b.yyw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(u_input.a.x > u_input.a.x, !(!any(vec2<bool>(true, true))));
    var var_1 = 4294967295u;
    var_1 = ~(~(~(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) | _wgslsmith_div_u32(u_input.a.x, 1u))));
    let var_2 = vec4<bool>(0i == u_input.b, var_0.x, false, all(select(!(!vec3<bool>(false, var_0.x, var_0.x)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-586f, -776f, -280f)), Struct_1(-299f, vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec2<i32>(u_input.b, u_input.b), vec3<bool>(true, true, false)), var_0.x), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, 367f, -586f)), Struct_1(109f, vec4<bool>(var_0.x, var_0.x, true, var_0.x), u_input.c.xz, vec3<bool>(true, true, false)), var_0.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1012f, 1535f, -1181f), vec3<f32>(1353f, 1529f, -490f))))))));
    var var_4 = min(select(_wgslsmith_add_u32(18207u, countOneBits(75941u)), 0u, func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2157f, var_3.x, var_3.x), vec3<f32>(-313f, 1525f, var_3.x))), Struct_1(var_3.x, var_2, vec2<i32>(u_input.c.x, u_input.c.x), vec3<bool>(var_0.x, var_2.x, var_0.x)), true).x) << (0u % 32u), ~1u);
    let var_5 = ~(~(_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.a.x)), countOneBits(u_input.a)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(u_input.a.x, u_input.a.x))));
    var var_6 = -(~u_input.c.x);
    let var_7 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, -464f, var_3.x))) + vec3<f32>(var_3.x, var_3.x, var_3.x)), Struct_1(var_3.x, vec4<bool>(true || all(vec2<bool>(var_2.x, true)), any(var_2.yyy) & var_0.x, true, any(select(var_2, vec4<bool>(true, var_0.x, var_2.x, true), var_2))), u_input.c.zz, vec3<bool>(false, all(!vec4<bool>(var_2.x, var_0.x, var_2.x, true)), ~1275u < (36768u & var_5.x))), var_2.x).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x)))));
}

