struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = Struct_1(select(!arg_0.a, global0.a, true), countOneBits(vec2<u32>(select(_wgslsmith_sub_u32(0u, u_input.c.x), ~u_input.d, true), ~var_0.b.x << (1u % 32u))));
    var_1 = Struct_1(vec4<bool>(!any(select(vec2<bool>(var_0.a.x, var_0.a.x), var_1.a.xw, true)), false, any(vec3<bool>(global0.a.x, true, true)) && !var_0.a.x, any(vec2<bool>(true & arg_0.a.x, true))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~4777u, ~25947u), u_input.d), ~vec2<u32>(4294967295u, global0.b.x >> (1u % 32u))));
    let var_2 = arg_0;
    let var_3 = reverseBits(vec3<u32>(34554u, max(1u, ~0u), 77931u));
    return select(!var_2.a.yyw, global0.a.wzw, select(arg_0.a.xyy, select(vec3<bool>(!var_1.a.x, !global0.a.x, true), global0.a.xyy, var_0.a.x && !var_0.a.x), false));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_3(Struct_1(global0.a, ~vec2<u32>(45983u, 59299u) | global0.b));
    return Struct_1(select(vec4<bool>(select(func_3(arg_1).x, true, func_3(Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(53926u, u_input.d))).x), true, global0.a.x, true), vec4<bool>(func_3(Struct_1(arg_1.a, arg_0.yy)).x, true, !(!global0.a.x), true), false), ~abs(vec2<u32>(0u, 107968u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(~(~_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.d, 9307u, 38807u, global0.b.x), u_input.c), u_input.c)), u_input.c);
    var_0 = u_input.c;
    var var_1 = arg_0;
    let var_2 = !select(global0.a, arg_0.a, !(!arg_0.a));
    let var_3 = 656f;
    return func_2(var_0.zzw, arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = select(62805u, 37305u, 1i > _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, u_input.e), firstTrailingBit(1i), u_input.b)) & 4294967295u;
    global0 = func_1(arg_1);
    var var_1 = arg_0;
    let var_2 = -_wgslsmith_div_vec4_i32(-(vec4<i32>(u_input.b, u_input.e, -37488i, u_input.b) & vec4<i32>(u_input.b, -9073i, u_input.b, u_input.b)) << ((u_input.c & vec4<u32>(4294967295u, arg_1.b.x, 40736u, 1u)) % vec4<u32>(32u)), countOneBits(~vec4<i32>(u_input.e, -2147483647i, -2147483647i, -2820i)) << (~countOneBits(vec4<u32>(var_1.b.x, arg_0.b.x, 1u, var_1.b.x)) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(min(327f, _wgslsmith_f_op_f32(select(-618f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1686f - 625f), _wgslsmith_f_op_f32(522f + -137f)))), true))));
    return arg_1.a.yw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0.a.zy, select(select(func_4(func_1(Struct_1(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), u_input.c.wz)), Struct_1(global0.a, vec2<u32>(4294967295u, 77507u))), func_4(Struct_1(global0.a, global0.b), Struct_1(vec4<bool>(global0.a.x, false, false, global0.a.x), vec2<u32>(u_input.a.x, global0.b.x))), true), global0.a.zw, func_1(func_1(Struct_1(vec4<bool>(global0.a.x, false, true, global0.a.x), u_input.c.xw))).a.yw), false & !(148u < select(global0.b.x, 0u, global0.a.x)));
    global0 = func_2(_wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.c.wxz), abs(u_input.c.wzy), _wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(49726u), 25712u, 41533u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 17050u, 14405u) & vec3<u32>(0u, u_input.d, 1u), vec3<u32>(global0.b.x, 66186u, global0.b.x)))), func_2(~vec3<u32>(firstTrailingBit(global0.b.x), 96456u | u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), func_1(func_1(func_1(Struct_1(global0.a, vec2<u32>(30430u, u_input.a.x)))))));
    global0 = Struct_1(select(global0.a, global0.a, !vec4<bool>(true, true || var_0.x, any(global0.a), func_3(Struct_1(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), vec2<u32>(u_input.d, 20254u))).x)), ~(~(~(~u_input.c.xy))));
    global0 = Struct_1(select(func_2(u_input.c.wyy, func_1(func_1(Struct_1(vec4<bool>(true, var_0.x, global0.a.x, false), global0.b)))).a, global0.a, !(!func_3(Struct_1(global0.a, vec2<u32>(u_input.c.x, 4294967295u))).x)), u_input.a);
    let var_1 = global0.a;
    var var_2 = func_2(u_input.c.zxz, Struct_1(select(global0.a, global0.a, !var_0.x), min(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, 28911u, global0.b.x, global0.b.x), vec4<u32>(9882u, u_input.d, 46202u, 0u)), 4294967295u), ~u_input.c.yy)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-409f - -525f), _wgslsmith_f_op_f32(floor(212f)), -772f, _wgslsmith_f_op_f32(f32(-1f) * -517f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2362f, -732f, -231f, 389f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(139f, 1625f, 1020f, 982f) * vec4<f32>(-133f, -266f, 438f, -309f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-829f, -1047f, -1654f, -1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, 550f, var_3.x, var_3.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, -1000f, -175f, var_3.x))))), var_3), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_3.x, -1000f), _wgslsmith_f_op_f32(ceil(1452f)), _wgslsmith_f_op_f32(ceil(-539f)), 107f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(210f, -346f, -465f, var_3.x)))), global0.a.x)))), u_input.e, -41470i | select(u_input.b, u_input.b, (u_input.e <= -1i) | !var_0.x));
}

