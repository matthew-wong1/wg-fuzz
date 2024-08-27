struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: array<f32, 4> = array<f32, 4>(-453f, 985f, 171f, -350f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    let var_0 = 1i;
    global1 = array<f32, 4>();
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    var var_1 = Struct_1(0u);
    return _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, 0u, arg_0.a, 47357u), vec4<u32>(12390u, 27267u, 21176u, 50307u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1, var_1.a, 0u) >> (vec4<u32>(arg_1, arg_0.a, 4294967295u, arg_1) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(22265u, var_1.a, u_input.a.x, 42115u), vec4<u32>(u_input.b.x, arg_1, arg_1, 0u), vec4<u32>(66114u, u_input.c, arg_0.a, arg_1)))), vec4<u32>(var_1.a, ~4294967295u, ~83384u, ~(~arg_1)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec4<f32>) -> vec2<bool> {
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    var var_0 = max(max(countOneBits(func_3(Struct_1(arg_0.a), 40574u)) >> (~(vec4<u32>(81352u, 75742u, arg_0.a, 0u) & vec4<u32>(899u, arg_0.a, arg_0.a, 1u)) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, func_3(Struct_1(4294967295u), 1u).x, _wgslsmith_sub_u32(36689u, arg_0.a), ~arg_0.a)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(106333u, u_input.b.x), u_input.a.xx), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 21739u, u_input.b.x), u_input.b), arg_0.a, u_input.c) ^ select(_wgslsmith_mult_vec4_u32(vec4<u32>(51214u, 100891u, 17764u, 12234u) ^ vec4<u32>(u_input.c, 1u, 34418u, 4294967295u), func_3(Struct_1(u_input.a.x), 21046u)), select(~vec4<u32>(1u, 11262u, 4294967295u, 0u), vec4<u32>(69880u, arg_0.a, 54486u, 4294967295u), 0u < arg_0.a), vec4<bool>(true, true, true, true)));
    var var_1 = arg_2.x;
    let var_2 = select(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(arg_1.zw, vec2<i32>(2147483647i, 16298i))), vec2<i32>(-15217i, 0i)), vec2<i32>(~0i, -_wgslsmith_mod_i32(-1i, arg_1.x)), global0[_wgslsmith_index_u32(~var_0.x, 4u)]) ^ vec2<i32>(-1i, ~(-20100i));
    return vec2<bool>(all(global0[_wgslsmith_index_u32(abs(arg_0.a), 4u)]), (-2147483647i >= (_wgslsmith_mod_i32(-41060i, 27285i) >> (u_input.c % 32u))) & (_wgslsmith_mod_i32(1i >> (0u % 32u), abs(arg_1.x)) <= (52319i << (~arg_0.a % 32u))));
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 4>();
    let var_0 = vec3<bool>(true, true, all(!func_2(Struct_4(44253u, -29526i), abs(vec4<i32>(2147483647i, 15997i, -2147483647i, 0i)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-484f, -142f, -1000f, global1[_wgslsmith_index_u32(62103u, 4u)]))))));
    global0 = array<vec2<bool>, 4>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -786f);
    let var_2 = reverseBits(~(-(~(-vec2<i32>(-1i, 2147483647i)))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1)))), Struct_1(u_input.b.x), ~(_wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(u_input.c, 54812u) | u_input.b.zx) >> (~vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.zx), ~u_input.b.xy))) != ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(abs(u_input.a.x), ~u_input.c));
    global0 = array<vec2<bool>, 4>();
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(step(var_1.a, var_1.a));
    var_2 = func_1().a;
    global1 = array<f32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, -1i, -1i, -1i)), max(vec4<i32>(-32123i, 56997i, 2147483647i, -1i), vec4<i32>(0i, -38377i, 44902i, 0i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-10801i, 33793i), ~2147483647i), vec2<i32>(28283i, 18645i)), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(60212i, 0i)), _wgslsmith_add_i32(-1i, 2147483647i))));
}

