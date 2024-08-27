struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<f32, 16>();
    let var_0 = arg_1;
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    var var_1 = Struct_1(!all(!(!vec2<bool>(false, arg_1.a))), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.d) >> (var_0.b % vec2<u32>(32u)), vec2<u32>(0u, var_0.d)) >> (vec2<u32>(1u, ~u_input.a) % vec2<u32>(32u))), arg_1.c, ~var_0.d);
    return countOneBits(u_input.d.x);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<i32> {
    let var_0 = ~32504i;
    var var_1 = Struct_1(true, vec2<u32>(arg_3.x, 0u), firstLeadingBit(~_wgslsmith_div_u32(4294967295u, u_input.b.x >> (18257u % 32u))), arg_0);
    let var_2 = Struct_1(all(!vec4<bool>(!arg_2.a, 0u <= arg_3.x, true, false)), arg_2.b, select(1u, 1u, !all(vec3<bool>(arg_2.a, true, false))), arg_0);
    var_1 = var_2;
    var_1 = Struct_1(any(vec3<bool>(true, true, var_2.a)) && (arg_3.x > ~abs(var_1.d)), select(~(~vec2<u32>(var_2.c, var_2.b.x)), vec2<u32>(4294967295u, 4294967295u), !vec2<bool>(var_1.a == var_1.a, true)), ~(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.b.x, arg_3.x, 35152u, var_1.b.x), vec4<u32>(u_input.e, 1u, 2794u, var_2.b.x)), ~vec4<u32>(4294967295u, arg_0, arg_3.x, arg_0))), ~_wgslsmith_mult_u32(~arg_2.c, ~func_2(arg_1.x, arg_2)));
    return -(max(max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(1i, u_input.c.x, 51926i)), -vec3<i32>(7961i, 2593i, u_input.c.x)), abs(select(vec3<i32>(-22499i, u_input.c.x, -31612i), vec3<i32>(-91201i, var_0, -1i), false))) << (~(~(~vec3<u32>(arg_2.c, var_2.d, 1u))) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> bool {
    global0 = array<f32, 16>();
    var var_0 = arg_0;
    global0 = array<f32, 16>();
    let var_1 = vec2<i32>(1i, u_input.c.x >> (countOneBits(_wgslsmith_clamp_u32(arg_0.c, ~63676u, abs(u_input.b.x))) % 32u));
    var var_2 = ~(~(~(~vec3<u32>(34925u, u_input.b.x, arg_0.c)))) & _wgslsmith_add_vec3_u32(~(~select(vec3<u32>(106345u, 1u, 1u), vec3<u32>(33814u, 17763u, 4294967295u), true)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(37543u, 1u, var_0.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(45994u, u_input.a, 75945u), vec3<u32>(u_input.a, 14010u, arg_0.c))));
    return !all(select(!(!vec4<bool>(false, false, false, var_0.a)), vec4<bool>(true, any(vec3<bool>(var_0.a, true, var_0.a)), var_0.a & true, !var_0.a), true));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 16>();
    var var_0 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(21709u, 79270u, 4294967295u, u_input.d.x), vec4<u32>(u_input.e, 0u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, arg_0.b.x, arg_0.c)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4198u, arg_0.b.x ^ u_input.b.x, u_input.d.x, 1u), max(vec4<u32>(arg_0.c, arg_0.d, u_input.b.x, u_input.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.x, u_input.d.x, 34615u, 1u), vec4<u32>(arg_0.c, 18065u, arg_0.c, u_input.b.x), vec4<u32>(68863u, arg_0.c, 4294967295u, 0u))), vec4<u32>(~arg_0.b.x, min(u_input.b.x, u_input.a), 38211u, max(arg_0.d, u_input.e))), vec4<u32>(_wgslsmith_sub_u32(func_2(-1953f, arg_0), 8892u), 1u, 1u, ~u_input.e) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(19698u, select(arg_0.b.x, u_input.a, false), ~u_input.a, u_input.a), ~(~vec4<u32>(99035u, 4294967295u, 1u, u_input.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 14471u, u_input.a, arg_0.d), vec4<u32>(u_input.a, arg_0.d, 0u, 1u))) % vec4<u32>(32u)));
    let var_1 = arg_0;
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    return Struct_1(func_4(Struct_1(any(select(vec3<bool>(true, false, true), vec3<bool>(var_1.a, var_1.a, true), arg_0.a)), vec2<u32>(abs(arg_0.c), u_input.e), var_1.d, _wgslsmith_mod_u32(20367u, var_0.x) ^ ~u_input.a), ~(~func_3(var_0.x, vec3<f32>(global0[_wgslsmith_index_u32(var_1.c, 16u)], 355f, -539f), arg_0, vec3<u32>(var_0.x, 16283u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.c, 16u)] + -132f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_0.x, 16u)]))))), select(vec2<u32>(4294967295u, 30975u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(54044u, var_1.b.x), vec2<u32>(1u, 1u), vec2<u32>(u_input.d.x, var_1.b.x)), true && (6373i > u_input.c.x)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(~arg_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 1u), vec2<u32>(4294967295u, var_1.d))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.d, 24646u), vec2<u32>(1u, 35341u)) | (vec2<u32>(var_1.b.x, var_1.c) | var_1.b)) % vec2<u32>(32u)), 0u, _wgslsmith_dot_vec2_u32(abs(~(~arg_0.b)), _wgslsmith_add_vec2_u32(~var_0.zy, arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let var_0 = func_1(Struct_1(false, vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(19267u, 1u), vec2<u32>(0u, 2265u)), u_input.e ^ ~4294967295u), ~(~(~0u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, countOneBits(4294967295u)), reverseBits(u_input.a))));
    var var_1 = func_1(var_0);
    let var_2 = var_0;
    global0 = array<f32, 16>();
    let var_3 = !var_2.a;
    global0 = array<f32, 16>();
    var var_4 = vec4<bool>(true, true, _wgslsmith_clamp_u32(25851u, u_input.e, 34288u) == var_0.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(4294967295u, ~57752u, firstLeadingBit(var_2.c)) ^ abs(vec3<u32>(0u, 36737u, 136683u))));
}

