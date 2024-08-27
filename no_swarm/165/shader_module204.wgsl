struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(0u, 54656u, 57730u, 4294967295u, 4294967295u, 879u, 0u, 20999u, 36909u, 4294967295u, 0u, 45124u, 35335u, 0u, 0u, 29172u);

var<private> global1: i32 = -1i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-127f))), _wgslsmith_f_op_f32(select(arg_1.a.b, _wgslsmith_f_op_f32(-2213f + _wgslsmith_f_op_f32(-arg_1.a.b)), all(vec4<bool>(arg_2, false, false, true)))), -1846f));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let var_1 = -_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, arg_1.a.c), vec2<i32>(1i, 1i)), abs(vec2<i32>(arg_1.a.c, arg_1.a.c))), ~(~u_input.c));
    let var_2 = Struct_1(firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(-arg_1.a.b), -41860i, false, 79844u << (arg_1.a.e % 32u));
    return var_0.x;
}

fn func_2() -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(u_input.b, 1f, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c, u_input.c, -1i), -vec4<i32>(1i, -1i, u_input.c, u_input.d)), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(27769u, 16u)], 16u)] == u_input.b.x, max(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 16u)], 0u), 59202u))), Struct_1(vec4<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 16u)], ~(global0[_wgslsmith_index_u32(21513u, 16u)] >> (u_input.a.x % 32u)), (93342u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)] % 32u)) >> (abs(u_input.a.x) % 32u), u_input.b.x), -1466f, ~(i32(-1i) * -u_input.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<u32>(39856u, 18567u), Struct_2(Struct_1(u_input.b, -1252f, -1i, true, 74684u)), true)))) <= 656f, _wgslsmith_add_u32(52689u, _wgslsmith_mod_u32(4294967295u, u_input.a.x << (4294967295u % 32u)))), select(false, false || (abs(global0[_wgslsmith_index_u32(746u, 16u)]) == global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), true), Struct_1(_wgslsmith_mod_vec4_u32(reverseBits(~u_input.b), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -1381f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -(vec2<i32>(1493i, -1i) >> (u_input.b.wz % vec2<u32>(32u)))), false, _wgslsmith_clamp_u32(_wgslsmith_div_u32(45656u, 1u), u_input.a.x, 4294967295u) | ~u_input.a.x));
}

fn func_1() -> i32 {
    let var_0 = func_2();
    let var_1 = vec4<bool>(!(-u_input.c < -(var_0.a.a.c << (1u % 32u))), true, false, false);
    var var_2 = abs(vec4<u32>(_wgslsmith_div_u32(15442u, 28323u), 46402u, 1u, 1u));
    let var_3 = func_2().a.a;
    let var_4 = vec2<u32>(var_2.x, _wgslsmith_sub_u32(func_2().a.a.e, select(0u, ~(~var_3.a.x), any(select(var_1, vec4<bool>(var_1.x, true, false, var_3.d), false)))));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(_wgslsmith_sub_i32(func_1(), ~(-17261i)));
    global0 = array<u32, 16>();
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(~global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(~4294967295u, 16u)], 13182u)), ~(~select(u_input.b.wwx, vec3<u32>(4294967295u, 0u, u_input.a.x), vec3<bool>(false, true, false)))));
    var var_1 = select(vec4<bool>(!(_wgslsmith_mult_i32(u_input.d, u_input.d) == _wgslsmith_mult_i32(40111i, 1i)), true, true, true), vec4<bool>(true, false, !(any(vec2<bool>(true, false)) && false), false), !vec4<bool>(true, true, true, any(vec2<bool>(false, true))));
    let var_2 = Struct_1(~(~vec4<u32>(u_input.b.x, 0u, _wgslsmith_add_u32(var_0.x, u_input.b.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 16u)], u_input.b.x), 16u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -u_input.d, !select(true || var_1.x, select(true, true, true), all(vec2<bool>(false, var_1.x))), 28463u);
    var var_3 = Struct_2(Struct_1(vec4<u32>(max(~0u, 0u), var_2.a.x, func_2().a.a.e, 1u), _wgslsmith_f_op_f32(-var_2.b), firstLeadingBit(var_2.c), var_2.d && true, ~u_input.a.x));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-349f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-894f, 551f, func_2().d.d)), _wgslsmith_f_op_f32(-var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~_wgslsmith_mult_i32(var_2.c, 58045i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -323f))), var_3.a.b, -532f)), vec3<i32>(var_2.c, -1i, _wgslsmith_mod_i32(-(~var_2.c), _wgslsmith_dot_vec3_i32(vec3<i32>(5177i, -75752i, 1i) >> (var_2.a.zwx % vec3<u32>(32u)), vec3<i32>(-36514i, u_input.c, -2147483647i) ^ vec3<i32>(var_2.c, 1i, 2147483647i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2799f, var_3.a.b) - vec2<f32>(var_2.b, var_2.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-471f, var_2.b) - vec2<f32>(var_2.b, -473f)))))));
}

