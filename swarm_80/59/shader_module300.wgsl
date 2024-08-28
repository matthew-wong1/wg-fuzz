struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    var var_0 = !(!select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))));
    var_0 = select(!select(vec4<bool>(var_0.x, select(var_0.x, false, false), var_0.x, true), select(vec4<bool>(var_0.x, false, false, var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, var_0.x, var_0.x), true)), true), !vec4<bool>(~u_input.e.x <= _wgslsmith_clamp_i32(u_input.e.x, 2147483647i, -1i), true, var_0.x, var_0.x), true);
    var_0 = !(!vec4<bool>(true, select(!var_0.x, var_0.x, true && var_0.x), true & var_0.x, any(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))));
    var_0 = select(!(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), any(vec2<bool>(true, false)))), select(!vec4<bool>(var_0.x, true, false, all(vec3<bool>(var_0.x, true, false))), select(!(!vec4<bool>(var_0.x, var_0.x, false, true)), vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, true, false, var_0.x)), true), true | var_0.x);
    var_0 = vec4<bool>(true, true, true, !any(!select(var_0.xyy, var_0.yxy, var_0.x)));
    return vec2<i32>(u_input.e.x, u_input.e.x);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(~u_input.a.zy, u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -859f))), _wgslsmith_f_op_f32(1340f + _wgslsmith_div_f32(_wgslsmith_div_f32(-706f, -108f), _wgslsmith_div_f32(2103f, -476f))), -2159f, _wgslsmith_f_op_f32(f32(-1f) * -592f)), -vec2<i32>(u_input.e.x, ~(-16519i) << (u_input.b % 32u)));
    var_0 = Struct_1(var_0.a & (firstLeadingBit(reverseBits(vec2<u32>(1u, u_input.b))) << (min(firstLeadingBit(vec2<u32>(var_0.b, 84344u)), vec2<u32>(var_0.b, u_input.b)) % vec2<u32>(32u))), ~abs(countOneBits(1u)), var_0.c, func_3());
    let var_1 = Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(45722u), ~var_0.a.x), select(~vec2<u32>(0u, 0u), vec2<u32>(54683u, var_0.a.x), vec2<bool>(true, true))), 1u, var_0.c, var_0.d);
    let var_2 = reverseBits(~u_input.d.x);
    let var_3 = Struct_1(firstTrailingBit(~var_1.a), 1u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(var_1.c)))), _wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-717i, 5871i)), -vec2<i32>(32546i, 81489i)), abs(abs(u_input.e.yx) | vec2<i32>(-12010i, 27267i))));
    return var_3;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.c.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_div_f32(arg_0.c.x, -1371f), true)))))));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mod_u32(~(~1u), ~abs(u_input.d.x))), ~u_input.b, 14787u);
    var_1 = countOneBits(~(~(~(~vec3<u32>(0u, arg_0.a.x, var_1.x)))));
    var_0 = _wgslsmith_div_f32(func_2(_wgslsmith_sub_i32(-2147483647i, -u_input.e.x & abs(u_input.e.x))).c.x, _wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x));
    return -1599f;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2.c;
    var_0 = vec4<f32>(_wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1083f - 900f) + _wgslsmith_f_op_f32(arg_1.x - arg_1.x))))), arg_2.c.x, arg_3.c.x, arg_1.x);
    var var_1 = arg_3;
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(276f - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x), -509f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1503f - -707f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1510f * arg_2.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -488f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), arg_3.c, arg_0));
    let var_2 = func_2(-2147483647i);
    return Struct_1(var_1.a, arg_2.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_2.c)) - _wgslsmith_f_op_vec4_f32(var_2.c - vec4<f32>(286f, var_2.c.x, -1394f, 387f))), var_1.c)) * var_1.c), arg_2.d);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = 1i;
    var var_1 = u_input.a.x;
    let var_2 = func_5(any(vec2<bool>(false, true)), vec3<f32>(_wgslsmith_f_op_f32(round(788f)), -777f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1376f, 439f)) + _wgslsmith_f_op_f32(1000f + 1000f)))), Struct_1(vec2<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.a, min(u_input.a, u_input.a))), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2(-45292i))), 1000f, -1259f, _wgslsmith_f_op_f32(1331f - -1023f)), _wgslsmith_sub_vec2_i32(~(u_input.e.yy ^ arg_1.zz), -vec2<i32>(9350i, var_0))), func_2(arg_0.x));
    var var_3 = var_2;
    let var_4 = arg_1.x;
    return ~var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -435f))))));
    let var_1 = ~func_1(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x) | vec2<i32>(-43862i, -30574i), ~vec2<i32>(1i, u_input.e.x)), _wgslsmith_mult_vec3_i32(u_input.e << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.b), u_input.a, vec3<u32>(94793u, 1u, 5289u)) % vec3<u32>(32u)), reverseBits(vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x))));
    let var_2 = var_0;
    var var_3 = 0i;
    var var_4 = ~_wgslsmith_mult_vec3_u32(u_input.a, min(u_input.a, ~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(8172u, func_2(-1i).b, _wgslsmith_sub_u32(~0u, u_input.b)), vec4<i32>(u_input.e.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), u_input.e), 1i, -21732i << (1u % 32u)));
}

