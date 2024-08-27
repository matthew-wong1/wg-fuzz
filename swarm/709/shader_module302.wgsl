struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = ~(-_wgslsmith_div_vec4_i32(abs(arg_0), arg_1) | arg_0);
    var var_1 = vec3<u32>(~1u, _wgslsmith_clamp_u32(arg_2.a.c, arg_2.a.a.x << (_wgslsmith_mod_u32(arg_2.a.a.x, reverseBits(6640u)) % 32u), abs(_wgslsmith_div_u32(arg_2.a.a.x, _wgslsmith_sub_u32(u_input.a.x, arg_2.a.a.x)))), u_input.a.x);
    let var_2 = arg_2.a;
    var_1 = arg_2.a.a;
    var_1 = vec3<u32>(var_1.x, 41243u, ~(~firstTrailingBit(0u))) | var_2.a;
    return (-countOneBits(arg_0.x) >> (max(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.ywz, var_2.a), ~arg_2.a.c), _wgslsmith_dot_vec2_u32(max(arg_2.a.a.xz, u_input.a.xx), vec2<u32>(arg_2.a.c, 4294967295u) | vec2<u32>(47967u, u_input.b))) % 32u)) << (~var_2.c % 32u);
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = arg_0.a.b;
    let var_1 = arg_0.a;
    let var_2 = var_1;
    let var_3 = Struct_1(~((vec3<u32>(32090u, 4294967295u, var_2.a.x) << (~vec3<u32>(4294967295u, var_1.a.x, var_2.a.x) % vec3<u32>(32u))) | ~var_1.a), func_3(min(-(~vec4<i32>(var_2.b, -2147483647i, var_2.b, var_1.b)), -vec4<i32>(-27646i, var_0, arg_0.a.b, var_0)), vec4<i32>(arg_0.a.b, -(-2147483647i << (u_input.b % 32u)), var_2.b, -24485i), Struct_2(Struct_1(~vec3<u32>(u_input.a.x, var_2.a.x, 55303u), _wgslsmith_add_i32(arg_0.a.b, arg_0.a.b), var_1.a.x << (43434u % 32u), !arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1594f)), var_2.b), min(_wgslsmith_sub_u32(57750u, _wgslsmith_mult_u32(var_1.a.x | arg_0.d.x, firstLeadingBit(u_input.b))), arg_0.c), true);
    let var_4 = select(select(!arg_0.b.ywx, !select(select(arg_0.b.xzy, arg_0.b.yyw, vec3<bool>(false, var_2.d, false)), arg_0.b.wzy, arg_0.b.x | arg_0.b.x), !(arg_0.e || (var_0 != -1i))), vec3<bool>(true, true, true), vec3<bool>(var_1.d, false, !var_2.d));
    return (-1315i | func_3(~(vec4<i32>(var_2.b, arg_0.a.b, -38333i, 2147483647i) & vec4<i32>(0i, 2147483647i, var_1.b, -2147483647i)), reverseBits(reverseBits(vec4<i32>(arg_0.a.b, var_3.b, var_2.b, -2147483647i))), Struct_2(var_2, _wgslsmith_f_op_f32(sign(443f))), -(2147483647i >> (0u % 32u)))) <= -var_3.b;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: f32, arg_3: vec4<f32>) -> bool {
    var var_0 = arg_1;
    var var_1 = !vec4<bool>(!all(vec4<bool>(false, false, true, false)), func_2(Struct_3(Struct_1(u_input.a.xzy, -10671i, 19415u, true), vec4<bool>(true, true, true, true), 20393u, ~arg_0, true)), false, !(true || any(vec4<bool>(false, true, false, true))));
    let var_2 = ~arg_0.wz;
    var var_3 = arg_1;
    let var_4 = 285f;
    return all(select(var_1.wwy, var_1.yyy, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec4<bool>(true, true, false, !func_1(u_input.a, Struct_5(u_input.a.x, 2131f), -779f, vec4<f32>(-377f, 1038f, 1000f, -826f))));
    var_0 = func_2(Struct_3(Struct_1(vec3<u32>(u_input.a.x, 1u, ~4294967295u), 1i, 1u | _wgslsmith_clamp_u32(u_input.a.x, 100941u, u_input.b), func_2(Struct_3(Struct_1(u_input.a.ywy, 26768i, u_input.a.x, true), vec4<bool>(true, true, true, true), u_input.a.x, vec4<u32>(u_input.a.x, u_input.b, u_input.b, 0u), true))), !vec4<bool>(true, all(vec3<bool>(false, false, false)), all(vec2<bool>(false, true)), true), ~4294967295u, vec4<u32>(~1u, 659u, ~u_input.b, 1u), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))));
    var_0 = !all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)));
    var var_1 = Struct_5(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1644f))) - -1000f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(894f))))));
    var_1 = Struct_5(select(~(41758u | ~var_1.a), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, select(0u, var_1.a, true)), _wgslsmith_dot_vec3_u32(abs(u_input.a.xwz), u_input.a.wzy)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(u_input.a.wyy, u_input.a.yzy), _wgslsmith_div_u32(_wgslsmith_div_u32(13663u, _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a)), _wgslsmith_sub_u32(~var_1.a, max(78022u, u_input.a.x) | _wgslsmith_sub_u32(33441u, var_1.a))), 31860u);
}

