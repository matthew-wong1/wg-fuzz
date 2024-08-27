struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -727f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = ~u_input.a.x;
    global0 = _wgslsmith_f_op_f32(floor(884f));
    global0 = -690f;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -131f);
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -417f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(-573f + -1029f))), 616f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(800f, 1000f, false)))) * -1711f)), true));
    return ~1u;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> bool {
    let var_0 = Struct_3(-108f);
    var var_1 = !vec4<bool>(any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, false))), true, true, false);
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, var_0.a)) - -913f) - _wgslsmith_div_f32(-665f, _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-303f, var_0.a)) + _wgslsmith_div_f32(850f, -821f)), var_0.a), ~_wgslsmith_mod_u32(abs(1u), func_3()), true, select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), var_1.yx));
    let var_3 = max(u_input.a, arg_0.xy);
    var var_4 = var_2.a;
    return !var_2.c && !var_1.x;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1428f, 1282f, 1087f, 1470f))) + vec4<f32>(-800f, _wgslsmith_f_op_f32(1000f + -1154f), -421f, _wgslsmith_f_op_f32(min(-861f, -1995f))))), !(!any(vec3<bool>(false, false, true))) || ((true | func_2(vec4<i32>(-37730i, -25169i, -9181i, u_input.a.x), -1i)) && func_2(vec4<i32>(u_input.a.x, 13307i, -36822i, u_input.a.x), u_input.a.x)), true);
    global0 = var_0.b.x;
    global0 = _wgslsmith_f_op_f32(-var_0.b.x);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.wwz)))), func_3(), select(1u, firstLeadingBit(~0u), !var_0.c) >= 4239u, vec2<u32>(~7419u, firstTrailingBit(1u)));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(~4294u, 6140u), arg_0.c.d.x);
    let var_1 = select(arg_3.xy, select(vec2<bool>(arg_1, false), !(!(!arg_3.xz)), arg_0.c.d.x > var_0.x), !(!vec2<bool>(!arg_2.d, u_input.a.x > -7607i)));
    var var_2 = ~vec4<u32>(arg_0.a.d.x >> (1u % 32u), ~var_0.x, countOneBits(1u), 4294967295u);
    var var_3 = Struct_3(1990f);
    let var_4 = select(!vec2<bool>(arg_3.x | (var_0.x <= var_2.x), !(!arg_3.x)), select(!var_1, select(vec2<bool>(arg_0.a.c, arg_2.d), vec2<bool>(all(vec4<bool>(false, arg_1, var_1.x, arg_2.c)), all(vec2<bool>(arg_0.a.c, false))), !(!vec2<bool>(arg_1, arg_1))), !arg_3.xy), select(arg_3.yz, arg_3.xz, true));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(func_1(), u_input.a, func_1()), all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(false, false, false)), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(max(countOneBits(u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, 2147483647i)) << (_wgslsmith_mod_u32(1u, 92400u) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(472f, -386f, 552f, 135f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(789f, 1094f, -1000f, -1840f) - vec4<f32>(-1159f, 854f, 1000f, 507f)))), true, all(vec3<bool>(true, false, true))), vec3<bool>(select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), false, true), !(!all(vec3<bool>(true, false, true))), true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f - var_0.a.x))))));
    let var_1 = var_0.c;
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(371f - var_0.a.x))) >= var_0.a.x, false, all(vec4<bool>(select(func_4(Struct_4(Struct_2(vec3<f32>(861f, var_0.a.x, var_0.a.x), 1u, var_0.c, var_0.d), vec2<i32>(2147483647i, u_input.a.x), Struct_2(var_0.a, var_0.b, var_0.c, var_0.d)), true, Struct_1(u_input.a.x, vec4<f32>(var_0.a.x, 279f, var_0.a.x, 355f), var_0.c, true), vec3<bool>(true, var_0.c, var_0.c)).c, true, var_0.a.x == 202f), var_0.c, false, any(vec3<bool>(false, var_0.c, var_0.c)))));
    let var_3 = u_input.a.x;
    var var_4 = !vec2<bool>(~4294967295u >= var_0.b, true);
    var_4 = select(select(!(!var_2.yx), vec2<bool>(var_2.x, true), !vec2<bool>(true, var_0.c)), !var_2.zx, !select(select(!vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_4.x, var_4.x), true), vec2<bool>(false, false), !select(var_2.xx, var_2.yy, var_2.zz)));
    let var_5 = func_4(Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(func_4(Struct_4(Struct_2(vec3<f32>(-507f, -550f, -978f), 40226u, var_2.x, vec2<u32>(var_0.d.x, var_0.b)), vec2<i32>(-1i, 34289i), Struct_2(var_0.a, 17342u, var_0.c, var_0.d)), var_4.x, Struct_1(u_input.a.x, vec4<f32>(var_0.a.x, var_0.a.x, -539f, -152f), true, var_0.c), vec3<bool>(var_0.c, true, var_2.x)).a)), _wgslsmith_div_u32(~0u, var_0.b), !(var_0.c | false), var_0.d), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~u_input.a, -vec2<i32>(-1i, 32113i)), firstLeadingBit(u_input.a)), Struct_2(var_0.a, reverseBits(var_0.b), all(var_2), firstTrailingBit(~var_0.d))), _wgslsmith_dot_vec2_u32(~(~var_0.d), vec2<u32>(var_0.b, _wgslsmith_sub_u32(var_0.b, var_0.d.x))) == 47224u, Struct_1(~max(reverseBits(var_3), var_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(677f, -1646f, var_0.a.x, -174f))), any(select(!var_2, vec3<bool>(var_4.x, false, var_4.x), var_2)), !(var_4.x | var_0.c) || var_4.x), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, -1i, _wgslsmith_mult_i32(reverseBits(~71785i), firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, firstTrailingBit(11590i)))));
}

