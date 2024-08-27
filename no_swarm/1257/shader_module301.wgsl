struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -15436i, 0i);

var<private> global1: vec2<u32> = vec2<u32>(1u, 0u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.wwz, _wgslsmith_mult_vec3_i32(u_input.b.yww, u_input.b.zwy), _wgslsmith_div_vec3_i32(u_input.b.xyy, u_input.b.www)), reverseBits(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(1i, -23598i, u_input.b.x)), u_input.b.www)));
    global1 = vec2<u32>(4294967295u, 1u);
    global1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 6681u, u_input.a.x), u_input.a), arg_1.d), 1u, arg_2), _wgslsmith_mod_u32(~33122u, (u_input.a.x << (arg_1.d % 32u)) ^ arg_0)), vec2<u32>(global1.x, global1.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), ~u_input.a.yx, abs(select(u_input.a.yw, vec2<u32>(arg_0, 58150u), arg_2))));
    var var_0 = max(firstTrailingBit(u_input.a.yxy), u_input.a.xyx);
    var_0 = u_input.a.xyx;
    return select(vec4<bool>(all(arg_1.c.xwy), any(arg_1.c), !arg_2, !all(!arg_1.c.yy)), !arg_1.c, !select(select(select(arg_1.c, arg_1.c, vec4<bool>(true, arg_1.c.x, true, arg_2)), vec4<bool>(arg_1.a, false, arg_2, arg_1.a), !arg_2), vec4<bool>(false, false, true, all(vec4<bool>(false, true, arg_2, arg_2))), all(!arg_1.c.yww)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global0 = ~u_input.b.yzy;
    var var_0 = countOneBits(arg_3.b);
    var var_1 = ~(~vec4<u32>(4294967295u, arg_2.d, firstLeadingBit(arg_2.d << (0u % 32u)), _wgslsmith_dot_vec3_u32(u_input.a.wwx, vec3<u32>(29951u, 1u, 1u))));
    let var_2 = u_input.b.yzy;
    let var_3 = Struct_1(true, arg_3.b, vec4<bool>(true, false, true, !select(arg_0.a, u_input.a.x < 62553u, arg_2.a)), arg_2.d);
    return arg_2.c.wzx;
}

fn func_2() -> vec2<bool> {
    global1 = vec2<u32>(1u, _wgslsmith_add_u32(global1.x, 4294967295u));
    let var_0 = u_input.b.x;
    let var_1 = func_4(Struct_1(!(!any(vec2<bool>(false, false))), 0i, !func_3(global1.x, Struct_1(false, -7177i, vec4<bool>(true, true, true, false), 4294967295u), true), global1.x), min(reverseBits(u_input.a.wy >> ((u_input.a.yx ^ u_input.a.wz) % vec2<u32>(32u))), vec2<u32>(global1.x, _wgslsmith_mult_u32(1u, u_input.a.x))), Struct_1(select(true, !all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), 21891i, vec4<bool>(var_0 <= -global0.x, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), true, select(select(true, false, false), true, true)), global1.x | _wgslsmith_dot_vec4_u32(vec4<u32>(43301u, u_input.a.x, u_input.a.x, 4294967295u), ~u_input.a)), Struct_1(true, 11541i, vec4<bool>(true, abs(var_0) > -19803i, -1249f == _wgslsmith_f_op_f32(step(474f, -137f)), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), abs(40687u) >> (abs(~global1.x) % 32u)));
    global0 = ~(~countOneBits(_wgslsmith_sub_vec3_i32(u_input.b.xxz, vec3<i32>(-2147483647i, global0.x, var_0)) & u_input.b.wxx));
    let var_2 = abs(~(~_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-2147483647i, 9479i, 2147483647i, u_input.b.x) << (vec4<u32>(4677u, u_input.a.x, u_input.a.x, global1.x) % vec4<u32>(32u)))));
    return select(var_1.xx, var_1.xy, var_1.x & var_1.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_2.c.wyw;
    global1 = select(u_input.a.xy, arg_0.yz, func_2());
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(634f, _wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(f32(-1f) * -2882f))))));
    global1 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(~arg_0, select(arg_0, vec4<u32>(1u, arg_2.d, arg_0.x, 4294967295u), arg_2.a)), max(~arg_0.x, u_input.a.x)), select(~arg_0.yz | vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(arg_2.d, u_input.a.x), arg_2.c.yw)), u_input.a.xy);
    return !(!var_0.x) != !(!(!(arg_2.a && false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!func_1(vec4<u32>(max(global1.x, u_input.a.x), ~1u, global1.x, ~global1.x), _wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, u_input.b.x), ~vec2<i32>(u_input.b.x, u_input.b.x)), Struct_1(all(vec2<bool>(true, false)), u_input.b.x | u_input.b.x, vec4<bool>(false, true, true, false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 51368u)))), -15785i, func_3(u_input.a.x, Struct_1(func_2().x, select(reverseBits(-2147483647i), -u_input.b.x, false), func_3(global1.x, Struct_1(false, -2147483647i, vec4<bool>(true, false, true, true), 0u), true), u_input.a.x | ~u_input.a.x), !func_2().x), 78016u);
    global1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a.wz, vec2<u32>(var_0.d, 66150u)), u_input.a.ww) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x & global1.x, ~select(global1.x, 0u, var_0.a)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.yx, u_input.a.ww), u_input.a.xx));
    var var_1 = Struct_1(true, _wgslsmith_dot_vec2_i32((-u_input.b.zw & (global0.zx ^ vec2<i32>(u_input.b.x, var_0.b))) << (~countOneBits(vec2<u32>(u_input.a.x, var_0.d)) % vec2<u32>(32u)), u_input.b.yy), select(vec4<bool>(any(select(vec3<bool>(var_0.a, var_0.c.x, true), var_0.c.xyw, var_0.c.xyz)), var_0.a, true, true), vec4<bool>(~0u < countOneBits(var_0.d), select(var_0.c.x && true, var_0.b > var_0.b, true), false, !var_0.c.x), any(vec2<bool>(var_0.c.x, true))), ~select(_wgslsmith_mod_u32(abs(global1.x), ~global1.x), ~_wgslsmith_sub_u32(13597u, global1.x), var_0.a));
    var_1 = var_0;
    var var_2 = true;
    global0 = abs(countOneBits(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), u_input.b.yz), abs(u_input.b.x)), 1130i, 3039i)));
    let x = u_input.a;
    s_output = StorageBuffer(-5814i, select(~_wgslsmith_dot_vec3_u32(u_input.a.xyy, vec3<u32>(var_0.d, var_0.d, var_1.d) | u_input.a.zyx), 4294967295u, true));
}

