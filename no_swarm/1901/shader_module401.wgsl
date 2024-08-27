struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<Struct_3, 13>;

var<private> global2: vec3<bool>;

var<private> global3: vec3<u32> = vec3<u32>(31217u, 56038u, 53050u);

var<private> global4: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1() -> u32 {
    return ~select(4294967295u, u_input.c, 1i <= -(~u_input.a));
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(~22659i, 59542i), -u_input.d.x, _wgslsmith_div_i32(u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.d.x) << (4294967295u % 32u)));
    global1 = array<Struct_3, 13>();
    let var_1 = Struct_3(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global3.x, 1u, 4294967295u, global3.x) << (~vec4<u32>(7828u, global3.x, global3.x, 1u) % vec4<u32>(32u))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(50785u, 0u, u_input.c, 24392u), vec4<u32>(global3.x, 4294967295u, 1u, 83099u)))));
    var_0 = -select(vec3<i32>(u_input.d.x, 1i, -107946i), -firstLeadingBit(vec3<i32>(var_0.x, -22444i, var_0.x)), !global2.x);
    global4 = global3.x;
    return u_input.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<f32, 29>();
    global2 = vec3<bool>(arg_1.x, global2.x, all(arg_1));
    global1 = array<Struct_3, 13>();
    var var_0 = _wgslsmith_div_u32(~func_3(), firstTrailingBit(0u)) ^ 934u;
    global4 = ~(~global3.x);
    return Struct_2(4294967295u, select(vec3<bool>(false, any(vec2<bool>(arg_1.x, false)), true), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global3.x, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)])) < -865f), true, _wgslsmith_sub_i32(select(-(arg_0.x >> (global3.x % 32u)), -arg_0.x, true), ~_wgslsmith_sub_i32(max(u_input.a, 19900i), _wgslsmith_dot_vec4_i32(arg_0, arg_0))), select(~abs(max(vec2<u32>(35734u, global3.x), global3.yy)), abs(firstTrailingBit(global3.zx)), !global2.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = abs(_wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mult_vec2_u32(select(vec2<u32>(global3.x, 1u), global3.xz, vec2<bool>(arg_1.c, arg_1.b.x)), ~vec2<u32>(global3.x, arg_1.a))), vec2<u32>(21693u, countOneBits(arg_1.e.x) ^ _wgslsmith_add_u32(u_input.c, 1u)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(global3.zy, arg_1.e), ~vec2<u32>(u_input.c, 0u))));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(arg_1.e.x) & firstTrailingBit(u_input.c), 30671u, 4294967295u << (~var_0.x % 32u)), firstTrailingBit(_wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, arg_1.e.x), vec3<u32>(u_input.c, 34662u, 34945u), vec3<u32>(var_0.x, u_input.c, 1u))), ~vec3<u32>(0u, 63772u, arg_1.a) ^ vec3<u32>(arg_1.e.x, var_0.x, 1u))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(func_1(), ~(~17064u)), min(~(select(vec2<u32>(u_input.c, 13957u), arg_1.e, global2.x) >> (vec2<u32>(u_input.c, var_1) % vec2<u32>(32u))), var_0)), 13u)];
    var var_3 = global3.x;
    let var_4 = select(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, u_input.c, 31021u, u_input.c), _wgslsmith_mod_vec4_u32(var_2.a, ~vec4<u32>(var_2.a.x, 4294967295u, arg_1.e.x, 1u))), vec4<u32>(1u, var_2.a.x, 0u, ~1u), !(!all(vec3<bool>(true, arg_1.b.x, arg_1.b.x))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(~(~29617u), 42321u, ~var_2.a.x, 59895u), ~abs(select(var_4, ~vec4<u32>(var_4.x, var_1, 0u, var_2.a.x), 36563u == u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global3.x, 29u)])), 1562f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 29u)], -759f, 1217f))))))));
    global4 = ~(~global3.x);
    global3 = vec3<u32>(~abs(~global3.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 0u), vec4<u32>(u_input.c, global3.x, 4294967295u, u_input.c)) % 32u)), global3.x, ~(func_1() | ~1u));
    global2 = vec3<bool>(!select(global2.x, false, true), global2.x, !(!any(vec2<bool>(global2.x, false))));
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(44758u, firstTrailingBit(~12381u)), firstLeadingBit(0u), u_input.c, 0u) >> (reverseBits(countOneBits(func_4(~u_input.d, func_2(vec4<i32>(-26482i, -1i, 51476i, u_input.d.x), vec3<bool>(true, true, false))))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.a, 2340i), 17006u);
}

