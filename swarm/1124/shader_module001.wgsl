struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(-897f, Struct_1(2147483647i), -29647i, Struct_1(2147483647i), vec2<u32>(72850u, 43685u)), Struct_3(-1000f, Struct_1(1i), 56416i, Struct_1(32685i), vec2<u32>(0u, 21817u)), Struct_3(1000f, Struct_1(1i), i32(-2147483648), Struct_1(i32(-2147483648)), vec2<u32>(19441u, 1u)), Struct_3(1372f, Struct_1(-25732i), i32(-2147483648), Struct_1(28234i), vec2<u32>(4294967295u, 1u)), Struct_3(484f, Struct_1(5472i), -69492i, Struct_1(-1526i), vec2<u32>(60042u, 1u)), Struct_3(-685f, Struct_1(-1i), -17820i, Struct_1(0i), vec2<u32>(21298u, 1u)));

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<vec4<bool>, 15>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = firstLeadingBit(vec4<i32>(u_input.d, countOneBits(-2147483647i), _wgslsmith_sub_i32(-1i, ~u_input.b.x), _wgslsmith_mult_i32(u_input.d, _wgslsmith_mod_i32(max(u_input.d, u_input.b.x), -1i))));
    let var_1 = abs(abs(u_input.c.zww)) ^ vec3<u32>(abs(countOneBits(abs(u_input.c.x))), max(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), u_input.c.x), abs(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(41123u, 0u, 1u, u_input.a)))), 1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -633f), 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(421f - -505f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1424f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2106f - 655f))))));
    global1 = array<Struct_1, 13>();
    global0 = array<Struct_3, 6>();
    return ~u_input.c.x ^ reverseBits(firstLeadingBit(_wgslsmith_clamp_u32(7943u, var_1.x, countOneBits(23961u))));
}

fn func_2(arg_0: Struct_4) -> bool {
    let var_0 = u_input.b.x;
    let var_1 = Struct_4(func_3(), ~(~arg_0.b), !select(vec2<bool>(true, true), select(vec2<bool>(arg_0.c.x, true), arg_0.c, true), arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -513f));
    global2 = array<vec4<bool>, 15>();
    let var_2 = vec2<bool>(!(!all(vec4<bool>(true, true, true, false))), false);
    global2 = array<vec4<bool>, 15>();
    return arg_0.c.x;
}

fn func_1() -> i32 {
    global0 = array<Struct_3, 6>();
    let var_0 = any(vec3<bool>(any(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, true)), func_2(Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 0u, 33915u)), vec3<u32>(14765u, u_input.c.x, 84543u), vec2<bool>(false, true), -375f))));
    var var_1 = any(vec3<bool>(func_2(Struct_4(u_input.a, u_input.c.wzy, vec2<bool>(var_0, true), 1000f)), any(!select(vec4<bool>(var_0, false, var_0, false), global2[_wgslsmith_index_u32(4294967295u, 15u)], var_0)), false));
    global0 = array<Struct_3, 6>();
    let var_2 = Struct_5(Struct_2(-63609i, Struct_1(~1i), !(!(!vec3<bool>(var_0, false, false))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(select(u_input.b, vec3<i32>(u_input.d, -60149i, -25150i), true), min(vec3<i32>(u_input.b.x, 2147483647i, u_input.d), vec3<i32>(u_input.b.x, 0i, -2147483647i))), -u_input.b | u_input.b), global1[_wgslsmith_index_u32(34859u, 13u)]));
    return var_2.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_clamp_i32(min(2147483647i, countOneBits(_wgslsmith_dot_vec2_i32(u_input.b.xx | u_input.b.zz, min(u_input.b.zx, u_input.b.xz)))), _wgslsmith_sub_i32(u_input.b.x, ~_wgslsmith_mult_i32(u_input.d, -3934i)), _wgslsmith_dot_vec4_i32(max(firstTrailingBit(vec4<i32>(u_input.d, -36937i, -32744i, u_input.b.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -40930i, 0i, u_input.b.x), vec4<i32>(u_input.b.x, 32996i, -10305i, 2147483647i))), vec4<i32>(firstLeadingBit(select(u_input.d, u_input.b.x, var_0)), func_1() >> (u_input.c.x % 32u), -2147483647i, reverseBits(_wgslsmith_sub_i32(u_input.b.x, -4588i)))));
    global0 = array<Struct_3, 6>();
    var var_2 = _wgslsmith_div_vec3_u32(u_input.c.wwx, vec3<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.c.zz), firstLeadingBit(~vec2<u32>(1u, u_input.a))), u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(u_input.c.yz), _wgslsmith_div_vec2_u32(u_input.c.yw, u_input.c.xz), _wgslsmith_clamp_vec2_u32(u_input.c.zw, vec2<u32>(40165u, 0u), vec2<u32>(u_input.a, 138556u))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.c.zx))));
    let var_3 = Struct_4(var_2.x & var_2.x, u_input.c.zxx, select(!vec2<bool>(func_2(Struct_4(4294967295u, u_input.c.zxw, vec2<bool>(true, var_0), 353f)), var_0), !select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), true), vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), true)), vec2<bool>(false, var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-712f, _wgslsmith_div_f32(-1168f, 820f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f - _wgslsmith_f_op_f32(f32(-1f) * -591f)))));
    global0 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)), _wgslsmith_f_op_f32(-var_3.d), -1434f, _wgslsmith_f_op_f32(sign(var_3.d)))), u_input.c, 48504i, var_2.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(348f, var_3.d, var_3.d, 527f) * vec4<f32>(var_3.d, -506f, var_3.d, 252f)))))));
}

