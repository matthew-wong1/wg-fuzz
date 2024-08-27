struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = all(select(!vec2<bool>(false, all(vec3<bool>(true, false, false))), vec2<bool>(true, true), vec2<bool>(true, false)));
    let var_1 = -1000f;
    let var_2 = !vec4<bool>(var_0, true, var_0 && !(!var_0), u_input.a.x < _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(56274u, u_input.a.x, 2275u), vec3<u32>(67714u, u_input.a.x, 7040u)), 4294967295u >> (u_input.a.x % 32u)));
    let var_3 = ~u_input.b;
    let var_4 = var_3.yyz;
    return 1u;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-639f, 2615f, _wgslsmith_div_f32(-537f, -371f), _wgslsmith_f_op_f32(400f * -556f)))));
    var var_1 = _wgslsmith_div_u32(reverseBits(1u), ~u_input.a.x);
    let var_2 = Struct_3(Struct_1(true && (select(-1i, u_input.c, true) <= -1i), select(vec2<bool>(true, false), vec2<bool>(true, any(vec3<bool>(true, false, true))), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))), 1i, reverseBits(~vec2<u32>(144802u, u_input.a.x)), firstLeadingBit(~_wgslsmith_dot_vec3_i32(u_input.b.xwy, vec3<i32>(u_input.d, -21457i, -1i)))), all(vec2<bool>(true, true)));
    var var_3 = Struct_2(!(!select(!vec4<bool>(var_2.b, false, var_2.a.a, var_2.b), !vec4<bool>(true, false, var_2.a.a, var_2.a.b.x), !vec4<bool>(var_2.b, true, var_2.b, true))), -countOneBits(-20137i) & _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -1i, var_2.a.c), -u_input.b.zzx), func_3());
    var var_4 = select(!var_3.a.x, false, var_2.b | (var_3.c <= _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.c, 1u, var_2.a.d.x, var_3.c), vec4<u32>(21685u, 13698u, var_2.a.d.x, var_2.a.d.x)), firstLeadingBit(vec4<u32>(0u, 1u, 12133u, u_input.a.x)))));
    return var_2.b;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> bool {
    var var_0 = Struct_1(all(select(vec3<bool>(any(arg_0.a.b), true, arg_0.b | arg_0.b), vec3<bool>(!arg_0.b, any(vec3<bool>(arg_0.b, arg_0.a.a, true)), !arg_0.a.a), select(vec3<bool>(arg_0.a.a, arg_0.b, false), select(vec3<bool>(arg_0.a.b.x, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.a.a, arg_0.a.b.x), true), vec3<bool>(arg_0.b, true, arg_0.b)))), select(vec2<bool>(arg_0.b, false), !arg_0.a.b, select(arg_0.a.b, !select(vec2<bool>(true, arg_0.a.a), vec2<bool>(arg_0.b, false), arg_0.a.b), arg_0.a.b)), abs(1i << (max(68934u, arg_0.a.d.x) % 32u)), u_input.a, u_input.b.x);
    var var_1 = 1359f;
    let var_2 = (u_input.a.x & var_0.d.x) == 1u;
    var var_3 = !func_2();
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -814f);
    return (31738i << (_wgslsmith_sub_u32(max(~var_0.d.x, u_input.a.x), u_input.a.x & 1u) % 32u)) == var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = select(select(select(vec4<bool>(!var_0, true, var_0, false), select(!vec4<bool>(false, false, false, var_0), select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(false, false, true, false), var_0), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, false), var_0)), vec4<bool>(var_0, select(false, var_0, var_0), true, u_input.b.x <= -1i)), vec4<bool>(func_1(Struct_3(Struct_1(var_0, vec2<bool>(true, var_0), 3203i, u_input.a, u_input.d), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1190f, 115f, 1885f, -126f))), false, !var_0, u_input.c > u_input.c), !vec4<bool>(true, 45229u == u_input.a.x, var_0, true)), vec4<bool>(!any(!vec4<bool>(false, var_0, var_0, false)), true, (var_0 | !var_0) | true, all(!select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(false, true, var_0, false), vec4<bool>(true, false, true, true)))), select(select(select(vec4<bool>(var_0, var_0, false, false), !vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, false, true, false)), !vec4<bool>(var_0, false, var_0, false), vec4<bool>(true, var_0, var_0, true)), !(!select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, var_0, true, false), var_0)), false));
    let var_2 = 2147483647i;
    let var_3 = 259f;
    let var_4 = _wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(min(vec4<i32>(var_2, 2147483647i, var_2, -39880i), u_input.b) | vec4<i32>(-2147483647i, u_input.b.x, 1i, 22453i), reverseBits(vec4<i32>(var_2, u_input.c, u_input.b.x, 35251i)))), -(~(~_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, var_2, 10997i, var_2), vec4<i32>(var_2, var_2, u_input.c, var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(-var_4, vec4<i32>(_wgslsmith_clamp_i32(var_4.x, 27690i, var_4.x), ~var_2, 1i, _wgslsmith_mult_i32(-10378i, -35399i)))), vec3<i32>(var_4.x | abs(abs(46179i)), 0i, -46201i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2027f, -704f))))));
}

