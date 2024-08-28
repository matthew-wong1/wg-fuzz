struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = -1014f;
    var_0 = arg_2;
    var var_1 = arg_1;
    let var_2 = ~vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.e), _wgslsmith_div_u32(firstLeadingBit(u_input.e & u_input.b.x), u_input.e), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 3035u, u_input.e), vec3<u32>(u_input.e, u_input.b.x, 55904u)), select(vec3<u32>(u_input.e, u_input.e, 18865u), ~vec3<u32>(4523u, 1u, 1u), arg_1.d.wwz)), max(1u, 1u ^ u_input.e));
    var_1 = Struct_1(arg_3, vec4<bool>(var_1.d.x, arg_1.b.x, var_1.e.x && all(!arg_0.b.zz), !any(vec2<bool>(arg_1.d.x, arg_0.e.x))), u_input.a.zx, arg_1.d, arg_0.b);
    return -firstLeadingBit(_wgslsmith_add_i32(-var_1.c.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(var_1.c, var_1.c))));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = u_input.a;
    var_0 = ~(vec4<i32>(func_3(Struct_1(-31309i, vec4<bool>(false, false, arg_0, true), vec2<i32>(-67382i, var_0.x), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), Struct_1(var_0.x, vec4<bool>(arg_0, true, false, false), var_0.xy, vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)), 1824f, firstTrailingBit(var_0.x)), i32(-1i) * -u_input.a.x, 22287i, ~_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(var_0.x, u_input.d.x))) | firstLeadingBit(~max(u_input.a, vec4<i32>(1i, u_input.a.x, u_input.a.x, var_0.x))));
    let var_1 = u_input.a.zww;
    var var_2 = arg_2;
    let var_3 = !select(select(!vec4<bool>(arg_0, false, arg_0, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, true, false)), !vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, true, arg_0, false)), vec4<bool>(select(true, false, false), true, true | arg_0, arg_0)), select(!(!vec4<bool>(arg_0, arg_0, arg_0, false)), !select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, false, false, true), arg_0), 15756u != ~u_input.b.x), true);
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = max(u_input.d.x, firstLeadingBit(u_input.d.x));
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(49594u, 0u), u_input.b & u_input.b);
    let var_2 = u_input.a.x;
    var_0 = var_2;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(218f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * _wgslsmith_f_op_f32(func_2(arg_2.a.x, vec3<f32>(arg_1.x, 627f, 1000f), ~1u, ~4294967295u))))));
    return abs(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(~(~u_input.b.x), _wgslsmith_clamp_u32(func_1(vec3<i32>(u_input.c, u_input.c, u_input.a.x), vec4<f32>(-589f, -2273f, -360f, -302f), Struct_2(vec2<bool>(true, false))), 4294967295u, 3238u)), 0u);
    var var_1 = Struct_2(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)))));
    let var_2 = Struct_1(2147483647i, vec4<bool>(true & var_1.a.x, true, !all(vec2<bool>(true, false)), any(select(select(vec4<bool>(true, false, false, var_1.a.x), vec4<bool>(false, true, true, true), false), vec4<bool>(false, var_1.a.x, true, var_1.a.x), select(vec4<bool>(true, var_1.a.x, true, false), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), false)))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.zw, vec2<i32>(u_input.d.x, u_input.d.x)), func_3(Struct_1(u_input.c, vec4<bool>(false, var_1.a.x, var_1.a.x, true), u_input.a.yw, vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)), Struct_1(u_input.c, vec4<bool>(var_1.a.x, true, true, var_1.a.x), u_input.a.xx, vec4<bool>(true, true, false, true), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x)), 728f, u_input.a.x))), u_input.a.xy), !vec4<bool>(!all(vec2<bool>(var_1.a.x, true)), !var_1.a.x, !(!var_1.a.x), var_0 > var_0), select(!(!select(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, true), true)), !vec4<bool>(true, !var_1.a.x, any(var_1.a), var_1.a.x), !var_1.a.x));
    var var_3 = Struct_2(!var_2.d.xz);
    let var_4 = Struct_1(~47699i, var_2.e, max(var_2.c, u_input.a.yw), select(vec4<bool>(true, select(var_3.a.x, var_3.a.x && true, var_2.b.x), select(!var_1.a.x, true, !var_3.a.x), var_3.a.x), vec4<bool>(var_1.a.x, var_2.a <= (i32(-1i) * -2147483647i), true, var_2.b.x), select(!vec4<bool>(var_1.a.x, var_3.a.x, var_1.a.x, var_3.a.x), vec4<bool>(true, all(vec4<bool>(false, false, var_1.a.x, var_2.b.x)), var_1.a.x, true), !var_1.a.x)), select(var_2.d, var_2.b, !select(select(var_2.b, vec4<bool>(var_3.a.x, true, true, true), var_1.a.x), !var_2.b, vec4<bool>(false, true, true, var_2.b.x))));
    var_1 = Struct_2(vec2<bool>(all(var_2.b), select(var_4.b.x, true, !var_4.b.x)));
    var_1 = Struct_2(!vec2<bool>(true, var_2.e.x));
    let var_5 = Struct_2(!var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(~firstTrailingBit(var_2.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-22629i, 12482i, -2147483647i, 2576i), -u_input.a), var_4.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, 24757i, 7664i), vec3<i32>(-1i, 0i, 2147483647i)), _wgslsmith_sub_i32(var_4.c.x, var_4.c.x)))), 52858u, ~(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), var_2.a, -1i, 32750i >> (var_0 % 32u)) | vec4<i32>(6897i, 76952i, _wgslsmith_dot_vec3_i32(u_input.a.xxx, vec3<i32>(0i, -7141i, 2147483647i)), var_4.a)), 62270u);
}

