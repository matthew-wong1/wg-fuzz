struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, i32(-2147483648), vec4<i32>(-3772i, -44340i, 9180i, 35470i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = Struct_2(~abs(max(34239u, 51606u)) < (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 38614u, 4294967295u)) | (1u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 47615u, 1u), vec3<u32>(1u, 18422u, 1u)))), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a) & vec2<i32>(-2147483647i, global0.b & u_input.a), global0.c.yx), firstTrailingBit(-global0.c));
    var var_0 = Struct_2(any(select(!vec4<bool>(false, global0.a, true, global0.a), select(vec4<bool>(global0.a, global0.a, arg_0, global0.a), select(vec4<bool>(global0.a, global0.a, global0.a, false), vec4<bool>(false, true, false, arg_0), false), all(vec4<bool>(false, global0.a, global0.a, global0.a))), true)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-select(global0.c.x, global0.b, global0.a), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global0.c, global0.c), -1i, abs(-2147483647i))), global0.b), global0.c >> ((vec4<u32>(_wgslsmith_mod_u32(0u, 1u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(56551u, 38830u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1179u, 32605u), vec4<u32>(29719u, 4294967295u, 4294967295u, 0u))) | vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    global0 = Struct_2(true, select(i32(-1i) * -40369i, ~abs(u_input.a), arg_0 != (~var_0.c.x <= -27923i)), var_0.c);
    let var_1 = vec4<u32>(~1u, ~abs(0u), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(38134u, 10221u), ~vec2<u32>(64927u, 2740u))), 21045u), 400u);
    let var_2 = !vec2<bool>(all(vec2<bool>(!var_0.a, -48196i < var_0.c.x)), false);
    return _wgslsmith_mod_i32(var_0.b, -41014i);
}

fn func_2() -> Struct_2 {
    let var_0 = reverseBits(global0.c.yz) >> (vec2<u32>(reverseBits(abs(_wgslsmith_clamp_u32(1u, 1u, 4294967295u))), ~4294967295u) % vec2<u32>(32u));
    let var_1 = !vec4<bool>(!any(!vec3<bool>(global0.a, true, global0.a)), all(vec2<bool>(true, global0.a)), true, select(!global0.a, global0.a, global0.a));
    let var_2 = Struct_1(any(var_1.xx));
    var var_3 = i32(-1i) * -38252i;
    var_3 = -1i;
    return Struct_2(firstTrailingBit(2147483647i) == (-u_input.a & 10914i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.x, max(0i, 1i)) ^ countOneBits(~0i), min(-(var_0.x & -1i), -(u_input.a >> (19100u % 32u))), _wgslsmith_clamp_i32(global0.b, 1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-19945i, var_0.x), vec2<i32>(1i, u_input.a))))), vec4<i32>(func_3(var_1.x), -(~(~u_input.a)), _wgslsmith_sub_i32(~14635i, -22888i), 1i));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: u32, arg_3: u32) -> Struct_2 {
    global0 = func_2();
    var var_0 = Struct_1(!(arg_1 == func_2().a) || any(!(!vec3<bool>(global0.a, arg_1, global0.a))));
    let var_1 = func_2();
    global0 = var_1;
    global0 = func_2();
    return Struct_2(func_2().a, -abs(firstTrailingBit(-27499i << (arg_3 % 32u))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec3<u32>(_wgslsmith_div_u32(74651u, ~min(1u, 1u)), ~abs(31902u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(35911u, 1u), vec2<u32>(10351u, 25239u)), ~vec2<u32>(44599u, 26412u)), 0u)), true, 46387u, ~(~1u));
    let var_0 = Struct_1(true);
    global0 = func_2();
    let var_1 = var_0;
    let var_2 = Struct_2(!global0.a, abs(-global0.b), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-2147483647i, global0.c.x, u_input.a, 0i), countOneBits(global0.c), select(vec4<bool>(true, global0.a, global0.a, var_0.a), vec4<bool>(false, global0.a, false, global0.a), false)) >> (max(~vec4<u32>(70198u, 12154u, 10726u, 0u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), (global0.c & (global0.c << (vec4<u32>(0u, 0u, 23178u, 39601u) % vec4<u32>(32u)))) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), global0.c));
    var var_3 = countOneBits(abs(func_1(vec3<u32>(~4294967295u, ~51302u, 84508u), all(!vec2<bool>(var_1.a, global0.a)), ~(~4294967295u), ~countOneBits(25476u)).c.ywy));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u << (firstLeadingBit(4294967295u) % 32u), _wgslsmith_div_u32(1u, 22580u)), _wgslsmith_f_op_f32(-272f + 110f));
}

