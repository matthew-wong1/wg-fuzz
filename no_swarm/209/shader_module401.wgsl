struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(23261u), Struct_1(4294967295u), Struct_1(10780u), Struct_1(46461u), Struct_1(4294967295u), Struct_1(8238u), Struct_1(0u), Struct_1(11212u), Struct_1(0u));

var<private> global2: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = array<Struct_1, 9>();
    let var_0 = global1[_wgslsmith_index_u32(~abs(1u), 9u)];
    let var_1 = vec2<i32>(-u_input.b, u_input.d) >> ((u_input.c.yx | (abs(~u_input.c.zx) & ~u_input.c.yz)) % vec2<u32>(32u));
    let var_2 = Struct_1(~(~26289u));
    let var_3 = arg_2;
    return abs((40638u ^ _wgslsmith_add_u32(12342u ^ var_0.a, ~arg_1.a)) | _wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_0.a, 51924u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.a, u_input.c.x, var_3.a, 39261u), vec4<u32>(var_0.a, arg_2.a, var_3.a, 0u), true), reverseBits(vec4<u32>(var_3.a, var_2.a, var_0.a, arg_2.a)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.c.x);
    global1 = array<Struct_1, 9>();
    let var_1 = Struct_1(~(~(6333u | func_3(vec3<i32>(-1i, u_input.b, 0i), Struct_1(u_input.c.x), Struct_1(var_0.a)))));
    var var_2 = firstTrailingBit(_wgslsmith_sub_u32(var_1.a, var_0.a)) & 0u;
    let var_3 = true;
    return Struct_1(1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(global2.x * global2.x);
    let var_1 = reverseBits(u_input.c.zx);
    let var_2 = Struct_1(25627u);
    let var_3 = u_input.a;
    let var_4 = -u_input.d;
    return Struct_1(_wgslsmith_div_u32(var_2.a, _wgslsmith_sub_u32(u_input.c.x, var_2.a)) | 33801u);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(1u >> (u_input.c.x % 32u)), _wgslsmith_clamp_u32(countOneBits(u_input.c.x), u_input.c.x, 13050u), _wgslsmith_sub_u32(~18159u, max(1u, u_input.c.x)), u_input.c.x), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, 77137u, 0u) % vec4<u32>(32u))), vec4<u32>(128722u, ~49858u, u_input.c.x, ~u_input.c.x), ~firstTrailingBit(vec4<u32>(55262u, 4294967295u, u_input.c.x, 4294967295u))), vec4<u32>(u_input.c.x, 49420u, ~0u, 1u << ((1u | u_input.c.x) % 32u))), func_2());
    var var_1 = func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(26824u, u_input.c.x, u_input.c.x, ~var_0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(34745u, 1u, ~u_input.c.x, _wgslsmith_add_u32(1u, 67554u)), ~firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, 25930u, u_input.c.x)), vec4<u32>(var_0.a, ~4294967295u, var_0.a, var_0.a))), Struct_1(reverseBits(1u)));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, -129f, 359f, global2.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, 136f, -300f, 109f))))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x * global2.x)))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(-global2.x)) - global2.x), 1108f));
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 9>();
    var var_0 = func_1(vec4<bool>(true, true, false, false));
    var var_1 = _wgslsmith_add_i32(u_input.d, -1i);
    let var_2 = countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, u_input.b), -vec2<i32>(u_input.d, u_input.d)), max(vec2<i32>(u_input.b, u_input.d), vec2<i32>(0i, u_input.a))) ^ -select(firstLeadingBit(vec2<i32>(-24979i, 2147483647i)), vec2<i32>(1i, 0i), true));
    let var_3 = vec2<bool>((19123u > var_0.a) != any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), true);
    let var_4 = Struct_1(u_input.c.x);
    var_1 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(i32(-1i) * -2147483647i, ~(~(-32467i)))), _wgslsmith_sub_vec2_i32(~var_2, vec2<i32>(var_2.x, ~0i)));
    let var_5 = Struct_1(0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(4294967295u, u_input.c.x), reverseBits(~var_0.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.a, u_input.c.x ^ 1u), firstTrailingBit(vec2<u32>(34118u, var_0.a)))), vec3<i32>(~_wgslsmith_mult_i32(abs(var_2.x), 1i), abs(var_2.x), -u_input.d));
}

