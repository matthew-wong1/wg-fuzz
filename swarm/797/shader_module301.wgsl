struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<bool, 1>;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    global0 = select(!vec3<bool>(arg_0, global1[_wgslsmith_index_u32(global2.b.x, 1u)], all(vec3<bool>(true, global1[_wgslsmith_index_u32(global2.b.x, 1u)], global1[_wgslsmith_index_u32(u_input.c.x, 1u)]))), !vec3<bool>(true, _wgslsmith_f_op_f32(-arg_1) < _wgslsmith_f_op_f32(-global2.a.b.x), !(-1i > global2.a.a)), !(24646u >= ~_wgslsmith_add_u32(u_input.b, global2.b.x)));
    var var_0 = Struct_3(u_input.b, Struct_2(Struct_1(-(-12751i >> (u_input.c.x % 32u)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a.b.x, arg_1, global2.a.b.x)))), vec2<u32>(~u_input.b, max(u_input.c.x | 4294967295u, select(0u, 0u, global0.x)))));
    let var_1 = 585f;
    var var_2 = global2.a.b.yx;
    return abs(u_input.a);
}

fn func_2(arg_0: i32) -> vec3<bool> {
    global1 = array<bool, 1>();
    global2 = Struct_2(global2.a, firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(~global2.b.x, ~4294967295u), 4294967295u)));
    var var_0 = abs(~u_input.c.x);
    var var_1 = vec3<i32>(u_input.a, _wgslsmith_sub_i32(func_3(all(!vec4<bool>(global0.x, true, false, false)), 894f), i32(-1i) * -42412i), 31585i);
    let var_2 = -vec4<i32>(arg_0, i32(-1i) * -1i, var_1.x ^ abs(-var_1.x), 1i);
    return select(select(vec3<bool>(~global2.b.x >= global2.b.x, true, ~u_input.c.x >= (global2.b.x | 40822u)), vec3<bool>(true && global1[_wgslsmith_index_u32(109547u, 1u)], !all(global0.yz), true & any(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 1u)]))), !all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 1u)], true)) || global0.x), select(select(vec3<bool>(true, !global1[_wgslsmith_index_u32(u_input.b, 1u)], global1[_wgslsmith_index_u32(global2.b.x, 1u)]), select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(global2.b.x, 1u)], true, global1[_wgslsmith_index_u32(62283u, 1u)]), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(84332u, 1u)])), any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 1u)]))), !vec3<bool>(false, global1[_wgslsmith_index_u32(global2.b.x, 1u)], false), !(!select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], true), global1[_wgslsmith_index_u32(global2.b.x, 1u)]))), true);
}

fn func_1() -> bool {
    var var_0 = vec4<bool>(any(!func_2(u_input.a | -1i)), any(vec4<bool>(false, true, false, all(vec3<bool>(true, true, true)))), global1[_wgslsmith_index_u32(~(~global2.b.x), 1u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.b.x, u_input.c.x), u_input.c.xyz) << (u_input.c.x % 32u)), 21283u), 1u)]);
    let var_1 = ~0u;
    var var_2 = global2.a;
    var var_3 = vec4<i32>(min(reverseBits(global2.a.a), 46870i), -44690i, global2.a.a, global2.a.a) & min(vec4<i32>(-global2.a.a << (~1u % 32u), _wgslsmith_mod_i32(var_2.a, 1i), -10801i, firstLeadingBit(~23677i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.a.a, var_2.a, -34473i, u_input.d), vec4<i32>(u_input.d, 1367i, 2147483647i, global2.a.a)), -vec4<i32>(37768i, global2.a.a, 2147483647i, 2147483647i), vec4<i32>(global2.a.a, 49597i, -3033i, u_input.d)) >> (firstTrailingBit(u_input.c) % vec4<u32>(32u)));
    let var_4 = u_input.b != 1u;
    return global2.b.x > ~(~u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(select(vec3<bool>(false, func_1(), func_1()), vec3<bool>(false, !global0.x, 2797f <= global2.a.b.x), true || (global1[_wgslsmith_index_u32(4294967295u, 1u)] && false)), !(!select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)], true), vec3<bool>(global0.x, false, false), true)), select(global0.x, !any(vec3<bool>(true, global1[_wgslsmith_index_u32(36821u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)])), !(global2.a.a <= -43380i)));
    global0 = select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 1u)], !(any(vec3<bool>(global0.x, false, false)) || global0.x), all(select(!vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, true, false), !vec4<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(global2.b.x, 1u)], true)))), vec3<bool>(global0.x, all(select(!vec4<bool>(global1[_wgslsmith_index_u32(10817u, 1u)], global1[_wgslsmith_index_u32(14185u, 1u)], global1[_wgslsmith_index_u32(68988u, 1u)], global0.x), vec4<bool>(true, true, true, global0.x), vec4<bool>(true, false, global0.x, global0.x))), true), !vec3<bool>((global2.a.a < global2.a.a) | !global0.x, true, true));
    global1 = array<bool, 1>();
    let var_0 = _wgslsmith_dot_vec2_u32(global2.b >> (_wgslsmith_div_vec2_u32(global2.b, vec2<u32>(global2.b.x, 1u)) % vec2<u32>(32u)), global2.b);
    let var_1 = abs(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.x)) - -219f), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, ~(1i >> (u_input.b % 32u))), vec2<i32>(abs(select(global2.a.a, 1i, global1[_wgslsmith_index_u32(4294967295u, 1u)])), 1342i), _wgslsmith_mult_vec2_i32(~(-vec2<i32>(global2.a.a, -2147483647i)), vec2<i32>(~u_input.d, -2147483647i))), global2.b.x, abs(vec3<i32>(58715i, -1i, 52280i)));
}

