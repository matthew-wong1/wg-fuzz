struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: array<Struct_3, 12>;

var<private> global2: array<f32, 29> = array<f32, 29>(421f, 799f, -2237f, 1172f, -1513f, 1729f, 2232f, 1000f, 1000f, -1431f, 1060f, 486f, 553f, 1737f, 325f, 1000f, -252f, -657f, 279f, -771f, 1108f, -255f, -447f, -512f, 1248f, 522f, -280f, 1177f, 1727f);

var<private> global3: array<Struct_1, 6>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    global1 = array<Struct_3, 12>();
    let var_0 = vec3<i32>(u_input.c, arg_0, _wgslsmith_mod_i32(-(~(u_input.c | arg_0)), 1i));
    global0 = array<Struct_4, 28>();
    global1 = array<Struct_3, 12>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(525f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-701f, _wgslsmith_f_op_f32(f32(-1f) * -1253f)))));
    return any(vec3<bool>(false, false, any(!vec2<bool>(false, arg_1.b.x))));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = 26042i;
    global2 = array<f32, 29>();
    var var_1 = Struct_2(all(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec3<i32>(0i, ~var_0, min(36848i, -32994i)));
    var var_2 = Struct_4(global1[_wgslsmith_index_u32(arg_0, 12u)], select(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, var_1.a))), var_1.a, func_3(~2147483647i, Struct_4(global1[_wgslsmith_index_u32(11986u, 12u)], vec4<bool>(false, false, var_1.a, true), u_input.a.ww), Struct_4(global1[_wgslsmith_index_u32(u_input.d, 12u)], vec4<bool>(var_1.a, true, var_1.a, var_1.a), vec2<u32>(arg_0, 0u))), all(vec2<bool>(false, var_1.a))), vec4<bool>(!(!var_1.a), true, !any(vec4<bool>(false, true, true, var_1.a)), var_1.a), 320f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(203f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 29u)]))), vec2<u32>(u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(~u_input.a.yz, min(u_input.a.wy, u_input.a.wy)))));
    var_1 = Struct_2(true, select(var_1.b, _wgslsmith_mult_vec3_i32(-var_1.b, var_1.b), !(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4874u, 29u)]) == global2[_wgslsmith_index_u32(0u, 29u)])));
    return 997f;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_2(~4294967295u));
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(u_input.d | u_input.d, ~u_input.d)) & ~min(39967u, 4294967295u), 12u)], select(select(vec4<bool>(true, true, any(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, false, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) > 1286f), u_input.a.zz);
    global3 = array<Struct_1, 6>();
    var var_2 = Struct_2(false, -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 1i, u_input.c), vec3<i32>(-2345i, -13453i, u_input.c)) | vec3<i32>(u_input.b, u_input.b, u_input.c), ~(~vec3<i32>(-55409i, u_input.c, u_input.b))));
    global2 = array<f32, 29>();
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(1u, ~_wgslsmith_mult_u32(553u, u_input.d) << (~(~u_input.a.x) % 32u), ~(func_1() ^ ~u_input.d), 1u);
    let var_1 = vec2<i32>(1i, _wgslsmith_mult_i32(48230i, countOneBits(~(~u_input.b))));
    var var_2 = reverseBits(_wgslsmith_add_i32(max(u_input.c, 1i), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, 11118i, -2147483647i, var_1.x), -vec4<i32>(-1i, -1i, 16820i, var_1.x)) & vec4<i32>(_wgslsmith_sub_i32(abs(var_1.x), 0i & u_input.b), ~u_input.c >> (u_input.d % 32u), ~(~920i), (var_1.x << (u_input.a.x % 32u)) | (var_1.x << (var_0.x % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b) << (firstTrailingBit(u_input.a.yxw) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 16572i, u_input.b), vec3<i32>(-9871i, var_1.x, u_input.c), vec3<i32>(u_input.c, 2147483647i, u_input.c)), -vec3<i32>(var_1.x, -1i, u_input.c))) >> (4294967295u % 32u), _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.d, 1u & u_input.a.x, ~u_input.a.x), max(~vec3<u32>(u_input.d, u_input.d, 1u), ~u_input.a.zzx)) & vec3<u32>(~(~var_0.x), min(_wgslsmith_clamp_u32(var_0.x, u_input.d, 4294967295u), 56022u), ~_wgslsmith_mod_u32(59565u, var_0.x)));
}

