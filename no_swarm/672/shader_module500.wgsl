struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: vec3<f32> = vec3<f32>(894f, -966f, -2170f);

var<private> global2: array<Struct_2, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_1(global1.x, !global0[_wgslsmith_index_u32(~u_input.a.x, 22u)], vec2<i32>(arg_0, min(i32(-1i) * -2147483647i, -firstTrailingBit(u_input.b))));
    return _wgslsmith_div_u32(~firstLeadingBit(~firstTrailingBit(u_input.a.x)), u_input.a.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<i32>) -> u32 {
    global0 = array<bool, 22>();
    let var_0 = -65494i;
    global2 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(26904i, -2147483647i, abs(-42184i), arg_2.x) | vec4<i32>(~arg_2.x, min(arg_2.x, var_0), arg_0.a.c.x, ~0i), vec4<i32>(u_input.b, firstLeadingBit(var_0), _wgslsmith_sub_i32(u_input.b ^ arg_0.a.c.x, -2147483647i) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, arg_1.x), func_2(1i)) % 32u), reverseBits(_wgslsmith_sub_i32(-44786i, arg_0.a.c.x))));
    global2 = array<Struct_2, 23>();
    return abs(u_input.a.x);
}

fn func_1() -> f32 {
    var var_0 = (~vec3<u32>(u_input.a.x, u_input.a.x, 1u >> (u_input.a.x % 32u)) | vec3<u32>(79377u >> (1u % 32u), func_2(countOneBits(32916i)), ~(~u_input.a.x))) << (~(~u_input.a) % vec3<u32>(32u));
    let var_1 = Struct_2(Struct_1(-514f, 23722u <= func_3(Struct_2(Struct_1(global1.x, global0[_wgslsmith_index_u32(47352u, 22u)], vec2<i32>(1i, u_input.b))), _wgslsmith_sub_vec4_u32(vec4<u32>(45259u, 5834u, u_input.a.x, var_0.x), vec4<u32>(u_input.a.x, 262u, u_input.a.x, 0u)), firstTrailingBit(vec3<i32>(-18986i, 0i, 1i))), select(vec2<i32>(u_input.b, 2147483647i), ~vec2<i32>(u_input.b, -2147483647i), any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(var_0.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)]))) | firstTrailingBit(~vec2<i32>(u_input.b, -8578i))));
    var var_2 = min(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, var_0.x, u_input.a.x), vec3<u32>(u_input.a.x, max(var_0.x, 0u), 1u)), 1u, 0u), ~(u_input.a & (u_input.a << (~u_input.a % vec3<u32>(32u)))));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-var_1.a.c.x, ~(-12163i), select(-2147483647i, var_1.a.c.x, true), -1i), vec4<i32>(_wgslsmith_clamp_i32(-861i, var_1.a.c.x, -19728i), _wgslsmith_clamp_i32(-14479i, u_input.b, 25523i), countOneBits(-3293i), var_1.a.c.x) ^ reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 50577i, 39082i, 0i), vec4<i32>(u_input.b, var_1.a.c.x, 2147483647i, 12919i)))), u_input.b, var_1.a.c.x, var_1.a.c.x);
    let var_4 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(293f + _wgslsmith_f_op_f32(-global1.x)), true, var_3.wx)), ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 31821u, u_input.a.x), vec3<u32>(0u, var_2.x, 39816u)), abs(var_2.x), ~var_2.x, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-750f * var_1.a.a) * -213f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) - _wgslsmith_f_op_f32(select(var_1.a.a, 770f, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_1.a.a)))), true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(u_input.a, vec3<u32>(1u, var_2.x, 1u), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], var_1.a.b, true)), abs(u_input.a)), 22u)] & !any(vec4<bool>(false, false, true, var_1.a.b)))), var_1.a, Struct_2(var_1.a));
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x)))))));
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.a.x), u_input.a.x) << (28578u % 32u), 23u)], ~(~(~vec4<u32>(u_input.a.x, 62684u, u_input.a.x, 9516u))), 2378f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-598f, -1394f) * global1.x) - 478f), global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a) ^ (37343u >> (u_input.a.x % 32u))), 22u)], -vec2<i32>(u_input.b, 2147483647i)), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-513f)), select(global0[_wgslsmith_index_u32(0u & u_input.a.x, 22u)], all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(63234u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)])), u_input.b > 1i), vec2<i32>(countOneBits(u_input.b), countOneBits(u_input.b)))));
    global2 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + var_0.a.a.a) * global1.x) + _wgslsmith_div_f32(_wgslsmith_div_f32(809f, global1.x), _wgslsmith_f_op_f32(sign(-1642f)))) * var_0.c));
    var var_2 = u_input.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.c.x, countOneBits(vec4<i32>(u_input.b, _wgslsmith_add_i32(u_input.b, 52201i), i32(-1i) * -1i, _wgslsmith_clamp_i32(-1i, var_0.e.a.c.x, u_input.b))) ^ _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, -31281i, u_input.b)), firstLeadingBit(vec4<i32>(-21371i, var_0.a.a.c.x, u_input.b, u_input.b)), vec4<i32>(i32(-1i) * -1i, ~(-25211i), firstLeadingBit(1i), ~u_input.b)));
}

