struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(true, 0i, -156f, -937i), Struct_4(false, -48966i, 336f, 18625i), Struct_4(false, 0i, 523f, -38001i), Struct_4(false, 0i, -1043f, 0i), Struct_4(true, 28117i, 454f, 2147483647i), Struct_4(true, -1i, -230f, 1i), Struct_4(false, 1i, -225f, -1i), Struct_4(true, -31638i, 603f, 2147483647i), Struct_4(false, i32(-2147483648), -917f, 1566i), Struct_4(true, -562i, 165f, 22784i), Struct_4(false, -30403i, -668f, 0i), Struct_4(true, 1i, -514f, i32(-2147483648)), Struct_4(false, 12826i, -2756f, -3362i), Struct_4(true, -42944i, -446f, -5165i), Struct_4(true, -1i, 447f, 3254i), Struct_4(true, 0i, 359f, 0i), Struct_4(false, 15667i, -601f, 48643i), Struct_4(true, 1i, 412f, -14227i), Struct_4(false, 0i, -511f, 2147483647i), Struct_4(true, 39675i, -315f, 18531i), Struct_4(false, -66097i, -1000f, 7378i), Struct_4(true, -54940i, 1912f, 1i), Struct_4(true, 6828i, 896f, 21795i), Struct_4(false, 1i, 1947f, 23320i), Struct_4(true, -1i, 476f, -16552i), Struct_4(true, 18356i, 195f, i32(-2147483648)), Struct_4(false, i32(-2147483648), 222f, 30238i), Struct_4(true, 54642i, 467f, 1i), Struct_4(true, 0i, -1106f, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(-2116f, 1f)), 386f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-495f * 1000f) + _wgslsmith_f_op_f32(1555f - -318f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1641f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1016f, 2502f))), _wgslsmith_f_op_f32(step(646f, _wgslsmith_f_op_f32(round(-338f)))))));
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_i32(35025i, 1i), false), Struct_2(min(firstLeadingBit(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.e.x, 2u)], -1i)), -70327i), any(vec3<bool>(true, true, any(vec2<bool>(true, false))))), u_input.b.ywy, -u_input.d.zz);
    let var_2 = vec2<i32>(1i, ~firstLeadingBit(2147483647i)) & ~vec2<i32>(firstLeadingBit(max(var_1.b.a, global0[_wgslsmith_index_u32(u_input.e.x, 2u)])), 1i);
    return var_0.x != var_0.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    global1 = array<Struct_4, 29>();
    global0 = array<i32, 2>();
    var var_0 = abs(reverseBits(u_input.d));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(415f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-683f, -696f)) - 2055f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-297f)) + _wgslsmith_div_f32(-392f, 1349f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1372f)), -713f))))), u_input.d);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = func_3(vec2<i32>(arg_1.a, arg_1.a), func_2());
    var var_1 = Struct_2(var_0.b.x, all(vec3<bool>(arg_0.a, arg_1.b, false)));
    var var_2 = arg_2.b.zz | u_input.d.xw;
    let var_3 = ~select(select(abs(u_input.b), u_input.b, !vec4<bool>(arg_0.a, arg_0.a, false, true)), (_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.e.x, 2104u, u_input.b.x, u_input.e.x)) | ~vec4<u32>(15209u, u_input.e.x, 71405u, u_input.b.x)) | abs(vec4<u32>(40833u, 26974u, 4294967295u, u_input.b.x) >> (vec4<u32>(4294967295u, u_input.e.x, u_input.b.x, 35583u) % vec4<u32>(32u))), !select(!vec4<bool>(arg_0.a, var_1.b, true, arg_1.b), vec4<bool>(false, true, arg_1.b, false), any(vec3<bool>(false, true, var_1.b))));
    let var_4 = u_input.d.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.e.x, 29u)];
    global0 = array<i32, 2>();
    var var_1 = Struct_4(firstTrailingBit(_wgslsmith_div_i32(select(global0[_wgslsmith_index_u32(13288u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], false), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d))) < 0i, 0i, _wgslsmith_f_op_f32(var_0.c + -1260f), var_0.d);
    global1 = array<Struct_4, 29>();
    let var_2 = all(vec3<bool>(true, all(select(vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(var_1.a, var_1.a, var_0.a, true))), var_1.a)) == !func_1(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], Struct_2(u_input.a ^ var_1.d, var_0.a), Struct_1(var_1.c, abs(u_input.d)));
    global0 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xzz, _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_div_u32(64779u, u_input.b.x), _wgslsmith_add_u32(u_input.e.x, ~4294967295u), min(1u, ~4294967295u), 4294967295u)), vec4<u32>(u_input.b.x & 12363u, ~u_input.b.x, u_input.b.x, u_input.e.x), ~u_input.e.x ^ 43189u, vec3<u32>(~(~u_input.b.x), 4294967295u, u_input.e.x));
}

