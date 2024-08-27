struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, false), Struct_1(false, false), Struct_1(true, true), Struct_1(true, false), Struct_1(false, true), Struct_1(true, true), Struct_1(true, true), Struct_1(true, false), Struct_1(true, false), Struct_1(true, false), Struct_1(false, false), Struct_1(true, false), Struct_1(false, false));

var<private> global1: array<Struct_1, 25>;

var<private> global2: u32 = 1u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2.b;
    let var_1 = ~1u;
    global0 = array<Struct_1, 13>();
    global2 = u_input.b;
    global0 = array<Struct_1, 13>();
    return 2147483647i & (~(-u_input.a) >> (1u % 32u));
}

fn func_2() -> u32 {
    global0 = array<Struct_1, 13>();
    global2 = 1u;
    global1 = array<Struct_1, 25>();
    let var_0 = !select(vec3<bool>(false, true, true), vec3<bool>(true, select(all(vec3<bool>(true, false, false)), true, select(true, true, false)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)))), any(vec3<bool>(true, true, true)));
    var var_1 = Struct_1(var_0.x, ((~u_input.a >> (~0u % 32u)) | _wgslsmith_mod_i32(_wgslsmith_clamp_i32(482i, -1i, 620i), u_input.a ^ -65110i)) != 0i);
    return ~_wgslsmith_sub_u32(max(23060u, 15319u), u_input.b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<u32> {
    var var_0 = Struct_1(u_input.b > 17577u, any(select(vec4<bool>(any(vec4<bool>(arg_0.a, false, arg_0.b, true)), arg_0.a, true, true), select(select(vec4<bool>(false, false, arg_0.b, arg_0.b), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.a), false), all(vec4<bool>(false, false, arg_0.a, arg_0.b))), all(vec3<bool>(arg_0.a, true, true)))));
    var_0 = Struct_1(true, true);
    var var_1 = abs(select(~(~(vec2<u32>(u_input.b, 1u) >> (vec2<u32>(u_input.b, 28613u) % vec2<u32>(32u)))), vec2<u32>(14186u, u_input.b), (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 60370u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)) >= (1u | u_input.b)) & false));
    return vec3<u32>(var_1.x | ~u_input.b, var_1.x, _wgslsmith_mult_u32(38516u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(~u_input.a, ~(~u_input.a), func_1(1103f, vec3<f32>(374f, -530f, 692f), Struct_1(false, false)) & -4523i) >> (vec3<u32>(1u, ~u_input.b, u_input.b ^ ~select(u_input.b, u_input.b, true)) % vec3<u32>(32u));
    var var_1 = vec3<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(3013u, u_input.b)), abs(vec2<u32>(u_input.b, u_input.b))) | _wgslsmith_mult_u32(1983u, 1u), func_2()) ^ select(vec3<u32>(min(~2428u, ~u_input.b), select(_wgslsmith_div_u32(u_input.b, 0u), reverseBits(0u), true), func_2()), _wgslsmith_mod_vec3_u32(func_3(Struct_1(true, false), vec2<f32>(-516f, -304f)), ~(~vec3<u32>(u_input.b, u_input.b, 1u))), select(true, all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))));
    global0 = array<Struct_1, 13>();
    let var_2 = Struct_1(-reverseBits(~var_0.x) < (-6083i | func_1(1f, vec3<f32>(1000f, -679f, 366f), Struct_1(true, true))), false);
    let var_3 = Struct_1(true, var_1.x > ~u_input.b);
    var var_4 = firstTrailingBit(1i);
    var var_5 = vec2<u32>(65646u, select(1u, _wgslsmith_mult_u32(var_1.x, func_3(var_3, vec2<f32>(855f, 113f)).x << (reverseBits(u_input.b) % 32u)), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -select(~vec3<i32>(35027i, -1i, u_input.a), vec3<i32>(u_input.a, -2147483647i, -32178i), vec3<bool>(true, false, true)));
}

