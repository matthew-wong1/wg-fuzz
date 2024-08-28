struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>) -> i32 {
    var var_0 = Struct_3(arg_1.a);
    let var_1 = var_0.a.d;
    var var_2 = _wgslsmith_f_op_f32(var_1.a.x - -1073f);
    let var_3 = vec4<u32>(global0.a.b.x >> (_wgslsmith_sub_u32(4294967295u, 24281u) % 32u), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u >> (arg_1.a.b.x % 32u), reverseBits(1u)), ~global0.a.b.x), global0.a.b.x, var_0.a.b.x << (countOneBits(min(_wgslsmith_add_u32(0u, 4294967295u), 1u)) % 32u));
    global0 = arg_1;
    return ~7483i;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = vec3<i32>(~u_input.c, _wgslsmith_dot_vec2_i32(global0.a.c, global0.a.c << (firstLeadingBit(global0.a.b.xx) % vec2<u32>(32u))), i32(-1i) * -(~_wgslsmith_sub_i32(global0.a.c.x, u_input.b)));
    global0 = Struct_3(Struct_2(select(!global0.a.a, vec2<bool>(global0.a.a.x, !global0.a.a.x), all(vec3<bool>(global0.a.a.x, false, global0.a.a.x))), vec3<u32>(~8073u << (min(global0.a.b.x, 0u) % 32u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.b.x, u_input.d, 38376u), global0.a.b) >> (_wgslsmith_add_u32(u_input.a, 34053u) % 32u)), var_0.xx, global0.a.d));
    var var_1 = vec2<i32>(select(u_input.b, select(func_3(~u_input.c, Struct_3(Struct_2(vec2<bool>(false, true), vec3<u32>(4294967295u, global0.a.b.x, u_input.d), global0.a.c, global0.a.d)), _wgslsmith_f_op_vec2_f32(abs(global0.a.d.a.zz))), global0.a.c.x | 1i, false), global0.a.a.x && true), -29570i);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.a.d.a.x, global0.a.d.a.x)))) + -1004f))));
    var_1 = var_0.zx;
    return _wgslsmith_mult_u32(u_input.d, 79934u);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    let var_0 = reverseBits(firstLeadingBit(select(select(_wgslsmith_clamp_u32(4542u, arg_2, global0.a.b.x), u_input.d, arg_0.x || true), reverseBits(_wgslsmith_sub_u32(63022u, u_input.d)), !arg_0.x)));
    var var_1 = Struct_4(-(~vec3<i32>(2147483647i, min(0i, u_input.b), -42553i)), Struct_2(select(vec2<bool>(!global0.a.a.x, all(vec3<bool>(arg_0.x, true, global0.a.a.x))), !arg_0.yz, select(!vec2<bool>(global0.a.a.x, arg_0.x), arg_0.xz, vec2<bool>(false, arg_0.x))), ~abs(~global0.a.b), -reverseBits(select(global0.a.c, vec2<i32>(-1i, u_input.c), arg_0.xz)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)))));
    var var_2 = Struct_4(_wgslsmith_div_vec3_i32(max(-var_1.a, var_1.a), vec3<i32>(global0.a.c.x, i32(-1i) * -45513i, -2147483647i)) | var_1.a, Struct_2(global0.a.a, min(~var_1.b.b, ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 26112u, 45587u), global0.a.b)), -var_1.b.c, var_1.b.d));
    var var_3 = 165f;
    var var_4 = global0.a.d;
    return Struct_3(Struct_2(!select(arg_0.xx, arg_0.zx, select(arg_0.x, false, true)), var_1.b.b & vec3<u32>(abs(global0.a.b.x), 18165u, 4294967295u), abs(vec2<i32>(u_input.c, var_2.b.c.x)), arg_1));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = global0.a.a;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a.d.a));
    global0 = func_4(vec3<bool>(_wgslsmith_dot_vec3_u32(global0.a.b, select(vec3<u32>(4294967295u, 4294967295u, global0.a.b.x), vec3<u32>(u_input.a, u_input.d, u_input.d), vec3<bool>(global0.a.a.x, false, global0.a.a.x))) > ~func_2(0i), !global0.a.a.x, !(var_0.x || select(true, false, global0.a.a.x))), global0.a.d, _wgslsmith_mod_u32(min(~0u, global0.a.b.x), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global0.a.b.x), vec2<u32>(13295u, global0.a.b.x)), ~1u)));
    var_0 = func_4(select(select(vec3<bool>(!global0.a.a.x, func_4(vec3<bool>(var_0.x, true, true), Struct_1(var_1.a), 14069u).a.a.x, true), select(select(vec3<bool>(true, global0.a.a.x, true), vec3<bool>(global0.a.a.x, var_0.x, global0.a.a.x), vec3<bool>(true, var_0.x, true)), !vec3<bool>(false, false, var_0.x), !vec3<bool>(arg_0, var_0.x, false)), func_4(vec3<bool>(arg_0, arg_0, false), Struct_1(arg_3.a), u_input.a).a.a.x == global0.a.a.x), vec3<bool>(var_0.x, arg_0, arg_0), any(!(!global0.a.a))), func_4(!select(!vec3<bool>(arg_0, arg_0, true), !vec3<bool>(arg_0, var_0.x, true), select(vec3<bool>(true, false, false), vec3<bool>(arg_0, global0.a.a.x, false), true)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.a * var_1.a) * var_1.a)), u_input.d).a.d, u_input.a).a.a;
    global0 = Struct_3(Struct_2(vec2<bool>(true, true), ~global0.a.b, arg_2, Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a.d.a))));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !global0.a.a.x;
    global0 = Struct_3(Struct_2(!select(vec2<bool>(true, false), select(global0.a.a, global0.a.a, global0.a.a), global0.a.a), vec3<u32>(_wgslsmith_sub_u32(0u << (u_input.d % 32u), _wgslsmith_mult_u32(u_input.a, u_input.d)), 47093u, ~func_1(global0.a.a.x, u_input.c, vec2<i32>(u_input.b, -25568i), Struct_1(global0.a.d.a))), global0.a.c, func_4(select(vec3<bool>(global0.a.a.x, global0.a.a.x, global0.a.a.x), !vec3<bool>(global0.a.a.x, global0.a.a.x, true), false), func_4(vec3<bool>(false, false, true), global0.a.d, 1u).a.d, global0.a.b.x).a.d));
    let var_0 = abs(0i);
    global0 = Struct_3(Struct_2(!select(!global0.a.a, func_4(vec3<bool>(global0.a.a.x, global0.a.a.x, global0.a.a.x), Struct_1(vec3<f32>(198f, global0.a.d.a.x, global0.a.d.a.x)), 4294967295u).a.a, global0.a.a), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.b.x, 65829u, 70751u), ~global0.a.b), select(_wgslsmith_clamp_vec3_u32(global0.a.b, global0.a.b, vec3<u32>(u_input.d, u_input.a, 1u)), vec3<u32>(u_input.a, 42972u, 11465u), true)), -(vec2<i32>(var_0, global0.a.c.x) & global0.a.c), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.a.d.a.x)), _wgslsmith_f_op_f32(-1621f - global0.a.d.a.x), _wgslsmith_f_op_f32(global0.a.d.a.x - global0.a.d.a.x)))));
    global0 = Struct_3(Struct_2(global0.a.a, ~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, global0.a.b.x, 8412u), vec3<u32>(6071u, 0u, 6429u) & global0.a.b), firstLeadingBit(~global0.a.c), func_4(vec3<bool>(true, all(vec3<bool>(global0.a.a.x, false, global0.a.a.x)), false), global0.a.d, u_input.d).a.d));
    let x = u_input.a;
    s_output = StorageBuffer(13614i, _wgslsmith_add_vec4_u32(~(~(vec4<u32>(global0.a.b.x, 1u, global0.a.b.x, 0u) & vec4<u32>(4294967295u, global0.a.b.x, 26563u, global0.a.b.x))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, u_input.a, u_input.a, global0.a.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(40507u, 4294967295u, u_input.a, global0.a.b.x) & vec4<u32>(4294967295u, 45390u, 8512u, global0.a.b.x), vec4<u32>(32397u, u_input.d, 4294967295u, 25384u)), vec4<u32>(31223u, 57331u << (global0.a.b.x % 32u), ~u_input.a, global0.a.b.x << (u_input.d % 32u)))));
}

