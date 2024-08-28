struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<u32>(0u, 47824u), 44009u), Struct_2(vec2<u32>(0u, 14151u), 1u), Struct_2(vec2<u32>(3918u, 19371u), 30051u), Struct_2(vec2<u32>(16886u, 4294967295u), 1u), Struct_2(vec2<u32>(77923u, 77704u), 0u), Struct_2(vec2<u32>(4294967295u, 4294967295u), 44761u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(u_input.d ^ -min(u_input.d, u_input.d), _wgslsmith_div_vec4_i32(-select(u_input.d, u_input.d, false), -u_input.d), ~u_input.d);
    global1 = array<Struct_1, 19>();
    var_0 = u_input.d;
    var var_1 = 1u;
    var var_2 = _wgslsmith_mult_u32(arg_1.a.x, max(~_wgslsmith_dot_vec2_u32(arg_1.a & u_input.e, vec2<u32>(arg_1.a.x, u_input.e.x)), select(~_wgslsmith_mod_u32(u_input.e.x, u_input.e.x), firstLeadingBit(u_input.e.x), arg_1.d)));
    return _wgslsmith_f_op_f32(-594f * -1640f);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(vec2<u32>(u_input.e.x, 48294u), u_input.e.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(469f)))), _wgslsmith_f_op_f32(func_3(u_input.b & abs(vec3<i32>(53636i, u_input.c, 1i)), Struct_1(vec2<u32>(69770u, 38686u), u_input.a.x, 44123u, false))))));
    let var_2 = global2[_wgslsmith_index_u32(max(u_input.e.x, var_0.b), 6u)];
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), -2376f)), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2950f * var_1), _wgslsmith_f_op_f32(f32(-1f) * -2072f)))));
    global0 = var_0.b;
    return Struct_1(~vec2<u32>(select(firstLeadingBit(8932u), ~var_2.b, true), ~1u), 27133i, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 49286u, var_0.a.x) >> (vec3<u32>(101737u, u_input.e.x, 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(85654u, 65526u, var_0.a.x), ~vec3<u32>(var_0.b, var_2.a.x, 24850u))) & (countOneBits(~9834u) << (~min(41928u, var_0.b) % 32u)), true);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = func_2();
    global2 = array<Struct_2, 6>();
    let var_1 = min(arg_3.a.x, ~firstTrailingBit(~arg_2.x));
    global0 = countOneBits(arg_1.x) ^ var_0.a.x;
    let var_2 = vec2<bool>((var_1 >= ~(~92843u)) | (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.x, 1u, 4294967295u), ~vec3<u32>(1u, arg_3.a.x, 1u)) == ~min(1u, 0u)), (_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 0i, -31409i), vec3<i32>(u_input.b.x, 0i, -40334i)), _wgslsmith_mult_vec3_i32(vec3<i32>(37101i, 0i, -3061i), vec3<i32>(1i, arg_3.b, -1i))) ^ _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.b, -27243i), _wgslsmith_mod_i32(u_input.c, 6726i))) == -var_0.b);
    return reverseBits(arg_2.x);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    global0 = func_4(-470f, max(_wgslsmith_mod_vec3_u32(vec3<u32>(117012u, arg_1.b, arg_1.a.x), vec3<u32>(arg_1.a.x, 1u, arg_1.b)) | vec3<u32>(u_input.e.x, 0u, arg_1.b), max(vec3<u32>(59357u, u_input.e.x, u_input.e.x), vec3<u32>(0u, 82513u, 22641u)) | abs(vec3<u32>(u_input.e.x, 4294967295u, arg_1.a.x))) << (~vec3<u32>(~arg_1.a.x, ~u_input.e.x, _wgslsmith_mult_u32(arg_1.a.x, u_input.e.x)) % vec3<u32>(32u)), ~(~(~(~vec4<u32>(0u, 4294967295u, 0u, 59621u)))), func_2());
    return _wgslsmith_mult_vec2_u32(abs(~_wgslsmith_mod_vec2_u32(arg_1.a, vec2<u32>(u_input.e.x, 45218u))), vec2<u32>(reverseBits(~arg_1.a.x), abs(firstLeadingBit(u_input.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>((u_input.e.x != firstTrailingBit(_wgslsmith_add_u32(u_input.e.x, u_input.e.x))) == true, false);
    var var_1 = Struct_1(~func_1(true, Struct_2(min(vec2<u32>(6765u, u_input.e.x), vec2<u32>(u_input.e.x, u_input.e.x)), ~u_input.e.x)), -(~(-u_input.a.x)), u_input.e.x, var_0.x);
    global1 = array<Struct_1, 19>();
    global2 = array<Struct_2, 6>();
    var_0 = vec2<bool>(var_0.x, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(0u & u_input.e.x) & 16361u, ~(~1u)));
}

