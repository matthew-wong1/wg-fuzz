struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-21651i, -68890i, 26990i), 0u, vec4<bool>(false, false, false, false));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = u_input.c.x;
    var_0 = global0.b;
    return Struct_1(u_input.e.xxw, 98597u, select(global0.c, select(select(global0.c, global0.c, global0.c), select(global0.c, vec4<bool>(true, true, true, true), global0.c.x || global0.c.x), all(global0.c)), select(vec4<bool>(global0.c.x, true, true, global0.c.x), vec4<bool>(any(vec2<bool>(global0.c.x, true)), all(global0.c.yz), 0u != global0.b, !global0.c.x), vec4<bool>(global0.c.x, true, true, true))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> bool {
    let var_0 = max(~(countOneBits(reverseBits(vec4<u32>(53989u, 27039u, global0.b, global0.b))) ^ _wgslsmith_mult_vec4_u32(select(vec4<u32>(global0.b, u_input.b.x, u_input.c.x, 60425u), vec4<u32>(2064u, global0.b, 44413u, u_input.b.x), true), vec4<u32>(global0.b, 5009u, 0u, 1u))), select(select(_wgslsmith_add_vec4_u32(vec4<u32>(global0.b, 74519u, u_input.a.x, u_input.c.x), vec4<u32>(u_input.a.x, global0.b, 1u, 4294967295u)), ~vec4<u32>(38547u, 4294967295u, u_input.a.x, 53090u), vec4<bool>(true, global0.c.x, global0.c.x, false)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b.x, 42083u, u_input.a.x), vec4<u32>(73460u, 1u, 24219u, 0u)), vec4<bool>(true, false, true, true)) & ~min(vec4<u32>(0u, u_input.a.x, 4294967295u, 54051u), vec4<u32>(u_input.a.x, global0.b, 1u, 0u)));
    var var_1 = func_2(_wgslsmith_div_i32(reverseBits(-1i), countOneBits(arg_1) << (global0.b % 32u)) ^ countOneBits(9505i));
    var var_2 = _wgslsmith_mult_u32(func_2(global0.a.x << (0u % 32u)).b, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(18069u, 4294967295u, 4294967295u) & vec3<u32>(64818u, 15914u, u_input.a.x), vec3<u32>(var_1.b, 4294967295u, 120977u)), var_1.b)) & ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(global0.b, 30742u))), vec2<u32>(global0.b, ~var_1.b));
    var var_3 = _wgslsmith_mod_u32(countOneBits(_wgslsmith_div_u32(~4294967295u, ~0u)), max(abs(var_1.b | global0.b), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.b, global0.b), firstLeadingBit(global0.b)))) ^ var_0.x;
    let var_4 = 0i;
    return all(var_1.c.xzy);
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(global0.b);
    global0 = func_2(u_input.e.x);
    var var_1 = Struct_1(-vec3<i32>(~u_input.d, ~(u_input.e.x | -26921i), -1i ^ _wgslsmith_dot_vec4_i32(u_input.e, u_input.e)), 31162u, !vec4<bool>(!(!global0.c.x), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(436f, 2307f, -1171f, -152f), vec4<f32>(621f, 585f, -1000f, 371f), false)), select(global0.a.x, u_input.e.x, global0.c.x)), true, false));
    return func_2(countOneBits(reverseBits(~(~40397i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_1();
    global0 = Struct_1(_wgslsmith_mult_vec3_i32(~global0.a, _wgslsmith_mod_vec3_i32(min(-vec3<i32>(53316i, global0.a.x, global0.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, global0.a.x, u_input.d), u_input.e.zyy)), -(vec3<i32>(global0.a.x, 0i, global0.a.x) << (vec3<u32>(29276u, 30820u, 74075u) % vec3<u32>(32u))))), ~abs(0u), func_1().c);
    global0 = func_2(_wgslsmith_mod_i32(func_2(1i).a.x, -(i32(-1i) * -56098i)));
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-507f - -542f) * _wgslsmith_f_op_f32(f32(-1f) * -1168f)) + -1210f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1942f))) + -523f)));
    let var_2 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(vec4<u32>(global0.b, 4294967295u, u_input.c.x, 4294967295u))), vec3<i32>(reverseBits(abs(abs(global0.a.x))), -_wgslsmith_mod_i32(_wgslsmith_div_i32(var_2.x, -26689i), _wgslsmith_dot_vec2_i32(global0.a.xz, global0.a.zx)), -36261i));
}

