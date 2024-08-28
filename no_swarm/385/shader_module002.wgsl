struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    var var_0 = Struct_2(~((vec3<i32>(1i, 48749i, 2147483647i) ^ vec3<i32>(global0.x, global0.x, u_input.e)) << (~u_input.a % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(u_input.a, min(select(vec3<u32>(0u, 4044u, u_input.d.x), u_input.a, true), vec3<u32>(u_input.d.x, 0u, 30320u))) % vec3<u32>(32u)), Struct_1(vec3<bool>(true, true, any(vec2<bool>(true, false))), 14990u, true), Struct_1(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), false, true), ~1u, select(any(vec4<bool>(false, false, true, false)) == true, true, false)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-524f, -1064f))) * vec2<f32>(1f, 1f));
    var var_2 = any(var_0.c.a.zx);
    let var_3 = -23293i;
    let var_4 = var_0.a;
    return var_0.a.x;
}

fn func_3() -> i32 {
    let var_0 = Struct_2(vec3<i32>(global0.x, abs(global0.x), max(max(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), 0i), -13763i)), Struct_1(select(vec3<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, false)), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true)), _wgslsmith_div_u32(~27149u, min(49743u, u_input.a.x)), false), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), firstTrailingBit(~firstLeadingBit(1u)), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)))));
    var var_1 = Struct_1(select(select(select(select(var_0.c.a, var_0.c.a, true), var_0.b.a, var_0.b.a), vec3<bool>(true, true, all(vec3<bool>(true, var_0.c.c, var_0.c.c))), any(select(vec4<bool>(false, var_0.c.c, true, var_0.b.c), vec4<bool>(false, var_0.c.c, true, var_0.c.a.x), vec4<bool>(var_0.c.a.x, true, false, true)))), !vec3<bool>(all(vec2<bool>(true, true)), var_0.c.c, true), true), abs(59040u), true);
    let var_2 = _wgslsmith_mult_i32(0i, ~(_wgslsmith_add_i32(-51747i, var_0.a.x & var_0.a.x) ^ -(1i | global0.x)));
    global1 = var_1.c;
    global1 = var_1.a.x;
    return u_input.c.x;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(max(vec3<i32>(firstLeadingBit(~arg_0), func_2(), func_3()), _wgslsmith_sub_vec3_i32(firstTrailingBit(-vec3<i32>(2147483647i, arg_0, u_input.e)), max(-vec3<i32>(-6248i, arg_0, arg_0), -vec3<i32>(-41896i, global0.x, 42135i)))), Struct_1(select(vec3<bool>(false, true, all(vec4<bool>(false, true, false, false))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, false)), true), u_input.d.x, select(any(vec2<bool>(true, true)), select(any(vec4<bool>(true, false, true, false)), select(false, false, false), true), all(vec2<bool>(true, true)))), Struct_1(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(true, any(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, true)))), min(0u, ~_wgslsmith_clamp_u32(1u, 605u, u_input.a.x)), true));
    global0 = max(vec2<i32>(~_wgslsmith_clamp_i32(arg_0, arg_0, _wgslsmith_add_i32(-1i, 0i)), -2147483647i), u_input.c ^ u_input.c);
    global1 = var_0.b.c;
    let var_1 = min(u_input.a, _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(5566u, u_input.a.x, var_0.c.b)) >> (~(vec3<u32>(var_0.b.b, var_0.c.b, u_input.a.x) >> (u_input.d.zyw % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a, ~u_input.a), vec3<u32>(u_input.d.x, 82205u, 0u) | u_input.a)));
    global1 = select(all(select(vec4<bool>(true, false & var_0.b.a.x, true, true), !select(vec4<bool>(false, var_0.c.c, var_0.b.a.x, false), vec4<bool>(var_0.b.c, var_0.c.a.x, var_0.c.c, false), vec4<bool>(false, var_0.b.c, var_0.c.c, var_0.b.a.x)), all(select(vec4<bool>(var_0.b.a.x, var_0.c.c, false, true), vec4<bool>(var_0.b.a.x, true, false, false), vec4<bool>(false, false, false, var_0.c.c))))), select(var_0.c.a.x, select(true, true, true), true) | false, !(!var_0.c.a.x));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.x;
    global1 = !(!(!(!(u_input.e > u_input.e))));
    global0 = u_input.c;
    global0 = vec2<i32>(global0.x, max(global0.x, 2147483647i)) << (~vec2<u32>(u_input.a.x, firstLeadingBit(reverseBits(u_input.d.x))) % vec2<u32>(32u));
    var var_1 = func_1(_wgslsmith_div_i32(-global0.x, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(u_input.d.x << (~8258u % 32u), 30547u, var_1.b)), 1u);
}

