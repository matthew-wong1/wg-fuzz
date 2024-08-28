struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 17641u);

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: u32;

var<private> global3: Struct_2 = Struct_2(Struct_1(true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    return Struct_1(true);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = !(!select(select(vec4<bool>(false, arg_0.a, arg_0.a, global1.a), !vec4<bool>(arg_1.a.a, global3.a.a, arg_0.a, arg_0.a), select(vec4<bool>(global1.a, global3.a.a, arg_1.a.a, global1.a), vec4<bool>(arg_1.a.a, global1.a, global1.a, true), false)), !(!vec4<bool>(global1.a, true, global1.a, true)), vec4<bool>(all(vec4<bool>(false, false, global3.a.a, global3.a.a)), 30449u != arg_3.x, true, select(arg_1.a.a, arg_1.a.a, global3.a.a))));
    var var_1 = 65484u;
    global1 = func_2(u_input.a);
    var var_2 = func_2(u_input.a);
    global3 = arg_1;
    return 1u;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = reverseBits(-(~vec3<i32>(_wgslsmith_sub_i32(0i, 2147483647i), u_input.a, u_input.a)));
    let var_1 = max(countOneBits(~arg_2.zyw), vec3<u32>(_wgslsmith_mod_u32(~abs(arg_1.x), ~1u), global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, 20911u), 34695u, arg_2.x), ~arg_2.wzw)));
    let var_2 = func_2(-2147483647i);
    var var_3 = global3.a.a;
    var var_4 = var_2.a;
    return Struct_2(func_2(~var_0.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = firstTrailingBit(firstTrailingBit(~vec2<i32>(72078i, 1i))) << (vec2<u32>(~(global0.x & u_input.b) & u_input.b, ~_wgslsmith_mod_u32(1u, global0.x)) % vec2<u32>(32u));
    global3 = func_4(select(!arg_0.yx, !vec2<bool>(arg_1.a, !arg_0.x), vec2<bool>(all(vec4<bool>(arg_1.a, global1.a, arg_1.a, global1.a)) | select(true, false, arg_1.a), true)), vec2<u32>(_wgslsmith_sub_u32(~0u, ~abs(u_input.b)), _wgslsmith_add_u32(_wgslsmith_add_u32(~global0.x, ~102212u), func_3(func_2(var_0.x), Struct_2(arg_1), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(960f, -1149f, -1000f, 1512f))), ~vec4<u32>(42121u, global0.x, 1u, u_input.b)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(func_3(global3.a, Struct_2(Struct_1(true)), vec4<f32>(-780f, 1196f, -1405f, -1145f), vec4<u32>(global0.x, 4294967295u, 1u, global0.x)), global0.x, ~73179u, ~11671u), ~vec4<u32>(global0.x, 4294967295u, 4294967295u, global0.x)));
    var var_1 = var_0.x;
    var var_2 = func_2(~var_0.x);
    global3 = func_4(!(!arg_0.xx), global0.zz, ~(~(vec4<u32>(global0.x, u_input.b, 4294967295u, global0.x) & vec4<u32>(0u, 0u, global0.x, u_input.b))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global0.x, 46934u, 1u, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(10417u, u_input.b, global0.x, u_input.b), vec4<u32>(51767u, 42603u, 0u, global0.x))), vec4<u32>(abs(1u), ~global0.x, _wgslsmith_dot_vec2_u32(global0.xx, vec2<u32>(global0.x, u_input.b)), countOneBits(22847u))) % vec4<u32>(32u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(vec3<u32>(4294967295u, max(_wgslsmith_mod_u32(global0.x | u_input.b, select(u_input.b, u_input.b, true)), ~u_input.b), u_input.b), select(vec3<u32>(firstLeadingBit(~1u), 1u, u_input.b), firstTrailingBit(vec3<u32>(abs(global0.x), 1u, select(u_input.b, 0u, global1.a))), select(select(vec3<bool>(true, global3.a.a, true), func_1(vec3<bool>(global3.a.a, false, global1.a), Struct_1(false)), global3.a.a), select(select(vec3<bool>(global1.a, false, true), vec3<bool>(global1.a, global3.a.a, global3.a.a), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(global1.a, global1.a, global3.a.a), true), vec3<bool>(false, global1.a, global1.a)), vec3<bool>(true, func_1(vec3<bool>(false, false, false), global3.a).x, !global1.a))));
    global0 = select(vec3<u32>(_wgslsmith_div_u32(35439u, u_input.b), max(~1u, abs(u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), ~vec3<u32>(global0.x, u_input.b, global0.x))), ~(~vec3<u32>(global0.x, 4294967295u, global0.x)), false) | ~vec3<u32>(57212u, min(global0.x, ~0u), ~global0.x);
    global3 = func_4(vec2<bool>(true, ~firstTrailingBit(u_input.a) < -(~(-5756i))), select(select(vec2<u32>(5611u, func_3(global3.a, Struct_2(Struct_1(global1.a)), vec4<f32>(-323f, -2041f, -1125f, -687f), vec4<u32>(90256u, 68649u, 0u, 45802u))), ~(~vec2<u32>(u_input.b, u_input.b)), select(vec2<bool>(true, true), !vec2<bool>(true, global3.a.a), global1.a)), global0.yx, 1i <= -u_input.a), min(~vec4<u32>(~u_input.b, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 33663u, global0.x), vec3<u32>(u_input.b, 0u, 2485u)), global0.x), firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(23395u, 1u, u_input.b, 51720u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u)))));
    global3 = Struct_2(Struct_1(true));
    let var_0 = func_4(func_1(vec3<bool>(true, global1.a, false), func_4(vec2<bool>(func_4(vec2<bool>(global1.a, true), global0.xz, vec4<u32>(43622u, 3015u, global0.x, 1u)).a.a, global3.a.a), abs(global0.xy & vec2<u32>(5666u, 21039u)), vec4<u32>(~global0.x, ~u_input.b, ~0u, global0.x)).a).yz, ~global0.xx, ~firstTrailingBit(abs(~vec4<u32>(u_input.b, global0.x, 1u, 11640u))));
    global2 = u_input.b;
    var var_1 = func_4(!select(!select(vec2<bool>(var_0.a.a, global3.a.a), vec2<bool>(global1.a, global1.a), vec2<bool>(true, true)), func_1(vec3<bool>(global1.a, global3.a.a, false), func_2(u_input.a)).xx, vec2<bool>(false, true)), ~(~(~vec2<u32>(u_input.b, u_input.b))) & ~global0.xz, ~(~(vec4<u32>(global0.x, 41395u, u_input.b, u_input.b) >> (~vec4<u32>(4294967295u, u_input.b, global0.x, global0.x) % vec4<u32>(32u))))).a;
    let var_2 = !vec2<bool>(true, func_1(vec3<bool>(true, true, true), Struct_1(!var_1.a)).x);
    let var_3 = func_4(!func_1(select(vec3<bool>(global1.a, true, global1.a), !vec3<bool>(var_2.x, true, var_1.a), !vec3<bool>(true, false, global3.a.a)), Struct_1(u_input.b <= global0.x)).xy, vec2<u32>(_wgslsmith_add_u32(select(1u, _wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b), u_input.a != 1i), select(~94319u, 1u, false)), 1u), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(1u, 4294967295u, u_input.b, 0u)) ^ firstLeadingBit(~vec4<u32>(12970u, 4294967295u, u_input.b, 68474u)), abs(vec4<u32>(global0.x, 15226u, 0u, 23251u) << (vec4<u32>(global0.x, global0.x, 50121u, 38652u) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, 6321u, global0.x, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(15664u, 0u, u_input.b, global0.x)), vec4<u32>(global0.x, 31519u, global0.x, u_input.b)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(946f, 1042f)), vec2<f32>(1f, 1f), true)))), ~vec3<u32>(~abs(u_input.b), max(~u_input.b, 4294967295u >> (u_input.b % 32u)), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(586f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-705f * -899f), 123f, -1097f, _wgslsmith_f_op_f32(f32(-1f) * -1877f))))));
}

