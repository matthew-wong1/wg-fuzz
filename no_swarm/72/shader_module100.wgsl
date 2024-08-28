struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(-113f)), vec2<u32>(_wgslsmith_add_u32(10100u, firstTrailingBit(firstLeadingBit(arg_0))), abs(max(_wgslsmith_add_u32(u_input.a, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a, 43077u), vec3<u32>(1u, 34445u, u_input.a))))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, all(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, any(vec3<bool>(true, false, false)), true), vec4<bool>(true, true, true, true))), vec3<u32>(0u, firstLeadingBit(7484u), u_input.c.x));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a + -855f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_1.a)))));
    var var_3 = any(vec3<bool>(all(var_1.c), true, var_1.c.x));
    return vec4<i32>(1i, _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-586i, 2147483647i), vec2<i32>(3136i, 1i)))), abs(1i)), abs(~(~0i) & _wgslsmith_mult_i32(-16615i >> (var_1.e.x % 32u), -1i)), 0i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = arg_1.e.x;
    var_0 = _wgslsmith_mult_u32(arg_1.b.x, _wgslsmith_clamp_u32(countOneBits(firstLeadingBit(_wgslsmith_add_u32(arg_1.b.x, u_input.a))), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 6625u), vec3<u32>(arg_1.e.x, 21646u, 0u))), u_input.b));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.a)), select(countOneBits(max(u_input.c.zz, vec2<u32>(1u, 1u))), arg_1.b, vec2<bool>(arg_1.d.x, all(arg_1.d.xz))), select(arg_1.c, vec2<bool>(all(arg_1.d), ~u_input.a >= u_input.a), any(!arg_1.d.yw)), vec4<bool>(true, false, (any(arg_1.d.yyw) && all(vec4<bool>(arg_1.c.x, false, arg_1.c.x, arg_1.c.x))) && !all(vec2<bool>(arg_1.d.x, false)), any(arg_1.d)), ~_wgslsmith_sub_vec3_u32(u_input.c, ~(~vec3<u32>(u_input.b, arg_1.b.x, 4294967295u))));
    var var_2 = arg_1.d.x;
    let var_3 = Struct_3(~vec3<u32>(firstLeadingBit(~44507u), select(var_1.e.x, ~0u, !arg_1.c.x), var_1.b.x), arg_1.d.zwy);
    return vec4<bool>(all(arg_1.d.yxy), 0i != ~_wgslsmith_sub_i32(select(arg_0.x, 0i, false), arg_0.x), all(!(!(!vec2<bool>(false, var_1.c.x)))), var_3.b.x);
}

fn func_2() -> Struct_1 {
    let var_0 = func_4(~(-func_3(_wgslsmith_add_u32(u_input.c.x, 0u))), Struct_1(_wgslsmith_f_op_f32(-1157f + -282f), vec2<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, 20567u)), vec2<bool>(true, true), vec4<bool>(true, true, true, true), ~firstTrailingBit(u_input.c << (u_input.c % vec3<u32>(32u)))));
    var var_1 = Struct_3(vec3<u32>(4294967295u, 0u, _wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.xy)), vec3<bool>(false, var_0.x, select(true, true, !any(var_0))));
    var_1 = Struct_3(var_1.a, var_0.zwz);
    var var_2 = Struct_3((_wgslsmith_clamp_vec3_u32(u_input.c, u_input.c >> (u_input.c % vec3<u32>(32u)), var_1.a) | u_input.c) | ~_wgslsmith_sub_vec3_u32(var_1.a, _wgslsmith_mult_vec3_u32(u_input.c, u_input.c)), !(!select(var_0.xxy, select(var_1.b, vec3<bool>(var_0.x, false, var_1.b.x), var_0.x), vec3<bool>(false, true, false))));
    let var_3 = ~(~var_2.a.zy);
    return Struct_1(1f, _wgslsmith_mod_vec2_u32(countOneBits(~(~u_input.c.xy)), _wgslsmith_clamp_vec2_u32(var_2.a.zz, var_2.a.zy, firstTrailingBit(u_input.c.xx))), vec2<bool>(false, var_2.b.x), func_4(-vec4<i32>(~45221i, 1i, countOneBits(2147483647i), ~13543i), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-440f)))), firstTrailingBit(select(var_3, var_2.a.xz, vec2<bool>(var_1.b.x, false))), var_1.b.yy, var_0, _wgslsmith_clamp_vec3_u32(var_2.a, var_1.a | u_input.c, u_input.c))), ~abs(firstLeadingBit(vec3<u32>(67324u, var_3.x, 4294967295u))));
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = Struct_3(abs(vec3<u32>(~var_0.e.x, 1u, ~_wgslsmith_div_u32(u_input.b, 6656u))), !var_0.d.zwz);
    let var_2 = Struct_1(var_0.a, firstLeadingBit(abs(~max(vec2<u32>(22658u, 1u), u_input.c.xy))), !vec2<bool>(false, var_0.c.x | var_1.b.x), var_0.d, ~_wgslsmith_mod_vec3_u32(var_0.e, var_1.a));
    var var_3 = -2147483647i;
    return vec3<bool>(var_1.b.x, any(vec3<bool>(false, 1u > firstLeadingBit(var_2.b.x), var_2.c.x)), var_1.b.x | var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 877f;
    let var_1 = u_input.c.yy | ~u_input.c.yz;
    let var_2 = Struct_2(!(!(true | any(vec3<bool>(false, false, true)))), select(!select(vec3<bool>(true, true, true), func_1(vec2<i32>(2355i, 11904i)), false), func_4(vec4<i32>(1i, 1i, 1i, 1i), Struct_1(_wgslsmith_f_op_f32(-var_0), ~u_input.c.zz, vec2<bool>(false, true), vec4<bool>(true, true, true, true), max(vec3<u32>(var_1.x, u_input.b, var_1.x), vec3<u32>(10926u, var_1.x, 4294967295u)))).zyz, vec3<bool>(func_2().d.x || true, 1u <= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.c.yy), func_2().d.x | true)), firstTrailingBit(u_input.c.x));
    var var_3 = !func_1(vec2<i32>(1i, -(~(-34686i)))).x;
    let var_4 = Struct_3(_wgslsmith_div_vec3_u32(u_input.c, ~_wgslsmith_div_vec3_u32(~u_input.c, firstTrailingBit(vec3<u32>(u_input.c.x, var_2.c, var_2.c)))), !(!vec3<bool>(true, var_2.b.x, func_1(vec2<i32>(-1192i, 11161i)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~_wgslsmith_sub_i32(-17103i, 67686i)), _wgslsmith_div_i32(_wgslsmith_add_i32(1i >> (u_input.c.x % 32u), i32(-1i) * -2147483647i) & -2358i, -55607i >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.x, var_1.x), ~4294967295u) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(1014f + var_0)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2281f * var_0)))), 516f));
}

