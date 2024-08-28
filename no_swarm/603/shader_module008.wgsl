struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> vec4<i32> {
    var var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.x, u_input.c, ~u_input.a), vec3<u32>(~1051u, ~arg_0.c.x, 0u)), select(~vec3<u32>(52308u, arg_0.c.x, 60055u), vec3<u32>(~1u, 0u, 563u), !(!vec3<bool>(arg_3, false, false))));
    var_0 = ~arg_0.c.x;
    var_0 = ~51658u;
    let var_1 = arg_1;
    var_0 = firstTrailingBit(29880u);
    return countOneBits(firstLeadingBit(-abs(vec4<i32>(global0.a, arg_0.a, -37107i, 56775i))) << ((abs(abs(vec4<u32>(33798u, u_input.b, 18205u, var_1.c.x))) << ((select(global0.c, vec4<u32>(u_input.b, 1u, 1224u, arg_1.c.x), vec4<bool>(arg_3, true, arg_3, arg_3)) << (global0.c % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    global0 = arg_2;
    var var_0 = arg_0;
    let var_1 = firstLeadingBit(vec3<i32>(-1i, -4862i, _wgslsmith_dot_vec4_i32(min(select(vec4<i32>(arg_1, arg_1, var_0.a, 8188i), vec4<i32>(global0.a, arg_2.a, 15910i, -31113i), vec4<bool>(true, true, false, false)), func_3(arg_2, arg_0, vec4<i32>(-3536i, -13954i, -2147483647i, global0.a), false)), ~(vec4<i32>(arg_1, arg_1, arg_2.a, 18993i) ^ vec4<i32>(1i, -5750i, global0.a, arg_2.a)))));
    var_0 = arg_0;
    var var_2 = arg_2.c.zy;
    return var_0.a;
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global0 = Struct_1(~(~1i), -1176f, arg_0.c);
    var var_0 = _wgslsmith_sub_u32(arg_0.c.x, abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.c.xxw, arg_0.c.ywx), min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, global0.c.x, global0.c.x), global0.c.xyw), vec3<u32>(global0.c.x, 40634u, 0u)))));
    let var_1 = arg_0.a;
    var var_2 = arg_0;
    var var_3 = Struct_1(~func_2(arg_0, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_1, -30089i, 0i)), -vec3<i32>(arg_0.a, global0.a, 6404i)), arg_0, reverseBits(~var_2.c.zzx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1829f - 918f) - _wgslsmith_f_op_f32(round(global0.b))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2491f))), vec4<u32>(reverseBits(~(~16971u)), 1u, (abs(global0.c.x) | reverseBits(var_2.c.x)) >> (_wgslsmith_dot_vec2_u32(abs(global0.c.ww), ~arg_0.c.zz) % 32u), ~(~4294967295u)));
    return ~global0.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_1(-98835i, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.b)), -1000f), global0.b), _wgslsmith_f_op_f32(f32(-1f) * -756f), false)), vec4<u32>(abs(arg_3.c.x), _wgslsmith_clamp_u32(~4294967295u, u_input.b, min(3259u, arg_0.x)) << (66010u % 32u), arg_3.c.x, ~u_input.c));
    global0 = arg_3;
    let var_0 = Struct_1(countOneBits(-1i), global0.b, func_4(Struct_1(func_2(arg_3, -24199i, Struct_1(global0.a, arg_3.b, vec4<u32>(9973u, 47490u, arg_0.x, 1u)), arg_0), 250f, vec4<u32>(1u, 1u, 1u, 1u))) >> (vec4<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), arg_3.c.xw), ~arg_3.c.x), global0.c.x, max(87935u, reverseBits(arg_1.x)), countOneBits(~30951u)) % vec4<u32>(32u)));
    global0 = var_0;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(535f)), _wgslsmith_f_op_f32(ceil(1375f)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(global0.c.zzy, global0.c.wzz, !select(true, true, true)), ~global0.c.wz, ~(~18436u), Struct_1(1i | global0.a, global0.b, _wgslsmith_sub_vec4_u32(~global0.c, vec4<u32>(~global0.c.x, 1u, u_input.b, global0.c.x))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 29008i, var_0.a, var_0.a), select(vec4<i32>(35146i, global0.a, var_0.a, -1i), vec4<i32>(global0.a, -4293i, -2147483647i, var_0.a), false) ^ ~vec4<i32>(global0.a, var_0.a, -6133i, var_0.a)) >> (abs(151276u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), global0.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b))))), reverseBits(~vec4<u32>(~global0.c.x, 1u, u_input.b, 0u)));
    var var_1 = !(~var_0.c.x < ~var_0.c.x);
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(f32(-1f) * -308f)))), ~(func_4(Struct_1(61620i, global0.b, vec4<u32>(u_input.c, u_input.c, var_0.c.x, global0.c.x))) ^ max(var_0.c, global0.c)));
    let var_3 = func_1(countOneBits(vec3<u32>(var_0.c.x, var_2.c.x, 28340u)), vec2<u32>(var_0.c.x | (22765u | _wgslsmith_clamp_u32(4294967295u, u_input.b, 47394u)), ~func_1(select(vec3<u32>(u_input.b, 0u, 1u), var_2.c.yyy, true), global0.c.yw, _wgslsmith_add_u32(var_0.c.x, u_input.b), var_2).c.x), _wgslsmith_mod_u32(reverseBits(~_wgslsmith_mult_u32(50510u, u_input.b)), ~select(87550u, var_2.c.x, var_2.a > 13885i)), Struct_1(_wgslsmith_add_i32(-global0.a, -(~var_2.a)), var_0.b, var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-var_3.b)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(var_0.b + global0.b), var_0.b)))));
}

