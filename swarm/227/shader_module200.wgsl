struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(16808u, 32656u), vec2<u32>(33272u, 8405u), vec2<u32>(20931u, 1u), vec2<u32>(98016u, 30480u), vec2<u32>(4294967295u, 2521u), vec2<u32>(86374u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 14836u), vec2<u32>(4397u, 4294967295u), vec2<u32>(49158u, 1u), vec2<u32>(18405u, 4294967295u), vec2<u32>(7196u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(55074u, 54159u), vec2<u32>(11257u, 39961u));

var<private> global1: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(-9464i, 2147483647i, -11309i), vec3<i32>(36608i, 7509i, -1i), vec3<i32>(2147483647i, 2147483647i, 3223i), vec3<i32>(9778i, 24563i, 0i), vec3<i32>(0i, 1i, -41525i), vec3<i32>(4998i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), -13649i, -42251i), vec3<i32>(35449i, 1i, 68453i), vec3<i32>(7306i, 2147483647i, 0i), vec3<i32>(0i, 17044i, -11242i), vec3<i32>(2147483647i, 2147483647i, -37i), vec3<i32>(6637i, 37906i, 0i), vec3<i32>(-74828i, -1i, 18548i), vec3<i32>(10775i, i32(-2147483648), 46066i), vec3<i32>(2147483647i, 4801i, 0i), vec3<i32>(38805i, 0i, 16895i), vec3<i32>(-24946i, 36987i, 10331i), vec3<i32>(23168i, 1i, 51126i), vec3<i32>(-15437i, 0i, -21356i));

var<private> global2: i32 = 7959i;

var<private> global3: Struct_1 = Struct_1(false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    var var_0 = 1i;
    var var_1 = Struct_2(any(select(vec2<bool>(u_input.c < 4294967295u, any(vec3<bool>(true, arg_0, false))), select(vec2<bool>(true, true), !vec2<bool>(arg_0, false), true), vec2<bool>(true, true))), Struct_1(!arg_0 & true), -_wgslsmith_div_i32(u_input.d, ~u_input.d), u_input.c, u_input.b.zzz);
    var var_2 = min(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_1.d, 0u, u_input.c), ~vec4<u32>(0u, 35359u, u_input.c, 22559u)), 15u)] >> (reverseBits(~vec2<u32>(u_input.c, var_1.d)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(firstLeadingBit(firstLeadingBit(~global0[_wgslsmith_index_u32(u_input.c, 15u)])), vec2<u32>(abs(u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, var_1.d, 0u), vec3<u32>(var_1.d, 104519u, 9955u)) << (reverseBits(34048u) % 32u))));
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    return var_1.c;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(all(vec2<bool>(false, arg_0)));
    let var_1 = Struct_2(arg_0, var_0, max(3265i, firstTrailingBit(func_3(true, _wgslsmith_f_op_f32(1000f - -1180f)))), u_input.c, abs(u_input.b.yzy));
    global0 = array<vec2<u32>, 15>();
    var var_2 = vec3<bool>(false, !arg_0, false);
    let var_3 = true;
    return ~43418u;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> vec4<u32> {
    var var_0 = func_2(true);
    global2 = ~1i;
    let var_1 = Struct_1(global3.a);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.x)));
    return vec4<u32>(abs(44906u), u_input.c, max(max(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), global0[_wgslsmith_index_u32(u_input.c, 15u)])), ~25957u), 4294967295u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global3.a, all(vec2<bool>(true, true)), global3.a) || !global3.a;
    var var_1 = _wgslsmith_dot_vec4_u32(~abs(_wgslsmith_sub_vec4_u32(func_1(vec3<i32>(-2147483647i, u_input.a, u_input.d), vec2<u32>(12044u, u_input.c), global1[_wgslsmith_index_u32(24332u, 19u)], vec4<f32>(2089f, 480f, 1481f, 2001f)), ~vec4<u32>(4294967295u, 60637u, u_input.c, u_input.c))), ~vec4<u32>(abs(~u_input.c), u_input.c, 0u, ~u_input.c << (0u % 32u)));
    let var_2 = Struct_2(global3.a, Struct_1(!(!global3.a)), u_input.a, min(~_wgslsmith_add_u32(41566u, u_input.c), ~0u), reverseBits(u_input.b.zzz));
    var_0 = (global3.a && !select(true, var_2.a || false, !global3.a)) && !(!any(vec2<bool>(true, true)));
    var var_3 = _wgslsmith_div_u32(u_input.c, _wgslsmith_mod_u32(15536u, 1u));
    let var_4 = false;
    global1 = array<vec3<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(-951f, vec3<i32>(u_input.b.x, i32(-1i) * -26832i, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(reverseBits(~var_2.d), 19u)], u_input.b.zxz)));
}

