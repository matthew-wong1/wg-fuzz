struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    let var_0 = -select(u_input.a.x, 0i, false);
    var var_1 = Struct_1(abs(vec4<i32>(-abs(u_input.c), var_0 << (1u % 32u), ~(u_input.c | 6156i), var_0)));
    var var_2 = -575f;
    return var_1.a << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, u_input.b, 1u, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, ~0u, 1u), max(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_1(~func_3());
    let var_1 = _wgslsmith_sub_u32(4294967295u, 4294967295u);
    let var_2 = abs(~firstLeadingBit(~_wgslsmith_add_i32(u_input.c, 1i)));
    let var_3 = var_2;
    var var_4 = 1u;
    return vec4<i32>(-1i) * -vec4<i32>(-var_2, abs(-44334i) << (select(var_1, 0u, true) % 32u), _wgslsmith_mult_i32(firstLeadingBit(arg_0.x), 1i), arg_0.x);
}

fn func_1() -> bool {
    let var_0 = 26592u;
    var var_1 = Struct_1(~func_2(-vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)));
    var_1 = Struct_1(firstTrailingBit(firstLeadingBit(func_3())) >> (~(~(~vec4<u32>(var_0, u_input.b, 48363u, 52262u))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-847f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-326f, -644f)))))), _wgslsmith_f_op_f32(ceil(438f))));
    let var_3 = Struct_1(_wgslsmith_mult_vec4_i32(~var_1.a, var_1.a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = select(all(vec2<bool>(false, true)), true, all(vec3<bool>(any(vec4<bool>(true, true, true, true)), select(4294967295u < u_input.b, true, func_1()), all(vec4<bool>(true, true, true, true)))));
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.a, vec2<i32>(reverseBits(-1i) ^ min(-2147483647i, u_input.a.x), u_input.a.x)), vec2<i32>(-1i, u_input.a.x));
    var_2 = 1i;
    var_2 = max(abs(2147483647i), reverseBits(abs(-(u_input.c << (0u % 32u)))));
    var_2 = _wgslsmith_sub_i32(-(~_wgslsmith_sub_i32(~u_input.c, u_input.a.x)), 50848i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-686f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, 803f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f))))), ~(~abs(~1u)), u_input.b, func_3().xz, _wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(1i, u_input.a.x), ~max(u_input.a.x, 68437i), func_3().x), (max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.c, 0i)) | ~vec3<i32>(1i, 9126i, u_input.a.x)) & -abs(vec3<i32>(u_input.a.x, u_input.a.x, -34543i))));
}

