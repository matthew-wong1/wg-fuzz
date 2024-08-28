struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 8> = array<i32, 8>(1i, 5445i, 0i, 1i, -1i, 1i, 29068i, 38066i);

var<private> global2: vec4<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 8>();
    return global0.d;
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = !(!(!vec2<bool>(!global2.x, global0.a.a)));
    let var_1 = !any(global2.www);
    var var_2 = _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.c, global0.d.c, global0.b.c))), vec3<f32>(-802f, -738f, -175f)), arg_0, !(!global0.d.a))));
    global2 = !(!vec4<bool>(true, !global2.x, select(global1[_wgslsmith_index_u32(1u, 8u)] == global0.c.b, true || global0.c.a, func_1().a), true));
    global0 = Struct_2(global0.c, global0.b, global0.b, global0.b, func_1());
    return ((0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) % 32u)) << (~4294967295u % 32u)) ^ ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 4294967295u), 4294967295u, _wgslsmith_mult_u32(40523u, 60313u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(40886u, 45030u), ~vec2<u32>(4294967295u, 1u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(arg_1.c, _wgslsmith_div_f32(global0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(132f)) * arg_0))));
    global1 = array<i32, 8>();
    var var_1 = min(~(~vec4<u32>(29459u, 63217u, 64574u, 0u)), select(vec4<u32>(~86708u, func_3(vec3<f32>(666f, -769f, arg_1.c)), ~44441u, 4294967295u), reverseBits(vec4<u32>(75525u, 12544u, 4294967295u, 1358u)), true)) >> (_wgslsmith_clamp_vec4_u32(~(firstTrailingBit(vec4<u32>(4294967295u, 0u, 23320u, 31604u)) ^ vec4<u32>(0u, 0u, 21723u, 48150u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 58396u), vec4<u32>(1u, 1u, 1u, 1u)), 0u, ~42449u, _wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_clamp_u32(4294967295u, 1u, 98687u))), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1u, 4294967295u, 35025u)), vec4<u32>(35496u << (0u % 32u), ~1u, 1u, select(1u, 1u, false)))) % vec4<u32>(32u));
    global2 = vec4<bool>(!arg_2, !arg_2, arg_1.a, arg_1.b <= 1i);
    let var_2 = global0.c.a;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1().c - func_1().c))), func_1().c), _wgslsmith_f_op_f32(-arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec3_i32(u_input.a, -vec3<i32>(-1i, countOneBits(global1[_wgslsmith_index_u32(42644u, 8u)]), 1i));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1678f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(206f, global0.c.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(1697f, global0.c, global0.c.a))))))));
    global2 = vec4<bool>(true, select(var_1.a, false, true), true, any(select(!vec4<bool>(global0.d.a, true, global2.x, global0.c.a), vec4<bool>(true, false, true, var_1.a), vec4<bool>(false, global2.x, global0.b.a, false))) || true);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2, var_2)) - _wgslsmith_f_op_vec2_f32(round(var_2)));
    global0 = Struct_2(Struct_1(true, ~(~(-var_0.x)), var_2.x), Struct_1(global0.c.a, 8215i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(floor(global0.d.c)), var_1.a)))), Struct_1(true, 1i, -2268f), Struct_1(global0.b.a | !any(global2.ywy), -2147483647i & u_input.a.x, 732f), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global0.d.b, var_1.b)), _wgslsmith_mod_vec2_i32(u_input.a.zx, vec2<i32>(var_1.b, var_0.x))), var_0.x, select(-global1[_wgslsmith_index_u32(8159u, 8u)], -2147483647i, any(global2.yz)), global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(89337u, 0u, 0u)), 8u)])));
}

