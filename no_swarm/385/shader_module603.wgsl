struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 3>;

var<private> global2: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32) -> u32 {
    return u_input.a;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(abs(max(~u_input.a, _wgslsmith_dot_vec3_u32(u_input.c.zxz, vec3<u32>(arg_0.b.x, arg_0.b.x, u_input.c.x)))), Struct_1(vec3<i32>(4582i, u_input.b, -arg_0.a.x) << (u_input.c.xxz % vec3<u32>(32u)), arg_0.b));
    let var_1 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~arg_0.b), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_0.b.b.x), u_input.c.xw, u_input.c.yy), vec2<u32>(16428u, ~var_0.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(func_3(-1137f), arg_0.b.x >> (var_0.a % 32u)), u_input.c.yy), countOneBits(vec2<u32>(reverseBits(u_input.c.x), 4294967295u)));
    var var_2 = Struct_2(2023u, arg_0);
    var var_3 = vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(177f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -299f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1174f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1382f, 128f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1604f)))));
    let var_4 = var_0;
    return ~(~(var_1 & max(var_2.b.b, arg_0.b))) ^ var_4.b.b;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(67110u, arg_0.b);
    let var_1 = 21264u;
    var var_2 = vec4<bool>(true, !(any(vec4<bool>(false, true, true, true)) || any(vec3<bool>(false, false, false))), global1[_wgslsmith_index_u32(u_input.a, 3u)] >= global0.x, true);
    global2 = array<vec4<bool>, 9>();
    let var_3 = Struct_1(~(max(vec3<i32>(-6624i, var_0.b.a.x, global1[_wgslsmith_index_u32(4294967295u, 3u)]), var_0.b.a) ^ -var_0.b.a) | ~vec3<i32>(-20867i, ~(-1i), -global0.x), ~var_0.b.b);
    return Struct_1(var_3.a, ~(~u_input.c.yx | (var_3.b | vec2<u32>(arg_1, 53939u))) ^ _wgslsmith_mod_vec2_u32(~var_0.b.b, ~vec2<u32>(32u, 4294967295u)));
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_2(~4294967295u, Struct_1(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-18230i, global0.x, -2147483647i), vec3<i32>(-1i, -2147483647i, u_input.b), vec3<bool>(false, true, false)), _wgslsmith_mult_vec3_i32(vec3<i32>(15619i, 19730i, global1[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<i32>(u_input.b, u_input.b, -46385i))), ~func_2(Struct_1(vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global0.x), u_input.c.zz)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(~2118u, _wgslsmith_mod_u32(u_input.c.x, 69585u)), vec2<u32>(48885u, 62053u)));
    var var_1 = var_0;
    global2 = array<vec4<bool>, 9>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f))) + -2304f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1736f, 481f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(f32(-1f) * -109f)))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -132f))));
    let var_3 = vec4<u32>(reverseBits(var_1.b.x), var_1.b.x, _wgslsmith_sub_u32(~abs(countOneBits(var_1.b.x)), func_2(func_4(Struct_2(u_input.c.x, Struct_1(var_0.a, var_0.b)), _wgslsmith_clamp_u32(var_1.b.x, 4294967295u, 1u))).x), reverseBits(var_1.b.x));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_div_u32(58753u, u_input.a));
    global1 = array<i32, 3>();
    let var_1 = Struct_2(_wgslsmith_mult_u32(func_1(), ~var_0), Struct_1(-(max(vec3<i32>(global0.x, -1i, u_input.b), vec3<i32>(global1[_wgslsmith_index_u32(1u, 3u)], global0.x, -2147483647i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4194u, var_0, 4294967295u), vec3<u32>(u_input.c.x, 4294967295u, var_0)) % vec3<u32>(32u))), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), select(u_input.c.yw, u_input.c.yy, vec2<bool>(false, true))), u_input.c.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(-1082f, u_input.c.x, ~vec4<u32>(max(26108u, var_1.b.b.x ^ 6791u), var_1.a << (u_input.c.x % 32u), 4294967295u, var_1.a), firstTrailingBit(func_4(Struct_2(23029u, var_1.b), ~87871u).b & ~vec2<u32>(u_input.c.x, 19068u)), ~(~_wgslsmith_mod_u32(~4294967295u, ~41358u)));
}

