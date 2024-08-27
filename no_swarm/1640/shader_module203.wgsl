struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 6> = array<bool, 6>(false, false, false, false, true, true);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec3<i32> {
    var var_0 = any(arg_0);
    var_0 = !arg_0.x;
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(u_input.b, u_input.b), vec4<i32>(31350i, firstTrailingBit(var_1) << (0u % 32u), _wgslsmith_sub_i32(0i, abs(var_1)), -u_input.b.x & var_1) & max((u_input.b | u_input.b) << (vec4<u32>(u_input.d.x, global2.d, global2.d, 19840u) % vec4<u32>(32u)), vec4<i32>(abs(var_1), u_input.b.x | 2147483647i, ~1i, _wgslsmith_sub_i32(u_input.b.x, var_1))));
    global1 = array<bool, 6>();
    return vec3<i32>(~((firstTrailingBit(u_input.b.x) << (7312u % 32u)) >> (47081u % 32u)), firstTrailingBit(~(-31305i)) >> (reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 47890u), ~u_input.d)) % 32u), global2.e.x);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global3 = array<Struct_1, 27>();
    var var_0 = select(~max(arg_0, global2.d | global2.c), arg_2.c, false);
    global2 = Struct_1(_wgslsmith_f_op_f32(-236f + 1710f), _wgslsmith_mult_i32(-9853i, arg_2.b), arg_2.d, arg_2.d, func_3(select(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(59954u, 6u)], false), true), !vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 6u)]), !select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(49654u, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(global2.c, 6u)], false))), ~arg_2.c));
    var var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(1u, u_input.a.x))), vec2<u32>(~global2.c, _wgslsmith_sub_u32(global2.c, u_input.a.x)) | (u_input.a >> (min(vec2<u32>(0u, 35897u), vec2<u32>(17697u, 6616u)) % vec2<u32>(32u))), ~_wgslsmith_mod_vec2_u32(u_input.c.xz, vec2<u32>(0u, global2.c))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~(u_input.d >> (u_input.a % vec2<u32>(32u))), ~(~u_input.c.zx), true), firstLeadingBit(u_input.c.xx)), 6u)], global3[_wgslsmith_index_u32(u_input.d.x, 27u)]);
    var_0 = 40388u;
    return _wgslsmith_f_op_f32(step(var_1.c.a, _wgslsmith_f_op_f32(trunc(1f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    global1 = array<bool, 6>();
    var var_0 = vec2<u32>(~1u, u_input.d.x);
    global3 = array<Struct_1, 27>();
    global3 = array<Struct_1, 27>();
    global1 = array<bool, 6>();
    return Struct_2(u_input.a, true, global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, var_0.x, global2.c, _wgslsmith_add_u32(u_input.a.x, arg_1.d)), abs(select(vec4<u32>(1u, var_0.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, u_input.d.x, u_input.c.x, var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(15284u, 6u)], true, true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)])))), var_0.x ^ abs(arg_1.d)), 27u)]);
}

fn func_1(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.a, 1381f, global2.a)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a, 423f, global2.a, global2.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(4294967295u, vec4<i32>(global2.e.x, global2.b, 1i, global2.b), Struct_1(-230f, global2.e.x, arg_1, 4294967295u, u_input.b.yzx))), global2.a, global2.a, _wgslsmith_f_op_f32(round(global2.a)))), !any(!vec2<bool>(arg_0, false)))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * global2.a)))), global2.b, arg_1, 4294967295u, vec3<i32>(global2.b ^ min(global2.e.x, u_input.b.x), 1i, -879i & firstTrailingBit(global2.e.x))), _wgslsmith_add_i32(i32(-1i) * -reverseBits(global2.b), -2147483647i));
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1823f + global2.a) + -1041f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -352f), -1000f), func_4(vec4<f32>(-222f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(493f)), _wgslsmith_f_op_f32(-var_0.c.a)), _wgslsmith_f_op_f32(-1089f * var_0.c.a), global2.a), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, var_0.c.a, global2.a, global2.a)) * vec4<f32>(-1000f, var_0.c.a, 319f, 2240f)), global3[_wgslsmith_index_u32(76559u, 27u)], -(~u_input.b.x)).c, global2.b).c, func_3(!vec3<bool>(true, true, any(vec2<bool>(false, var_0.b))), 0u).x).c;
    let var_2 = -1i;
    global1 = array<bool, 6>();
    let var_3 = firstLeadingBit(_wgslsmith_add_vec4_u32(~(~vec4<u32>(18877u, 4294967295u, 8522u, 25512u)), select(firstTrailingBit(vec4<u32>(u_input.c.x, global2.c, 4294967295u, u_input.c.x)), ~vec4<u32>(4294967295u, arg_1, u_input.c.x, arg_1), !var_0.b))) | select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, 0u ^ var_1.d, global2.c << (3813u % 32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, arg_1, 1u, 35869u), reverseBits(vec4<u32>(global2.c, var_1.d, 1u, 4294967295u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, ~4294967295u, arg_1, arg_1 << (4294967295u % 32u)), ~vec4<u32>(u_input.d.x, global2.d, var_0.c.d, 23633u), ~(vec4<u32>(16946u, 0u, 1u, u_input.d.x) << (vec4<u32>(12543u, 0u, var_1.d, arg_1) % vec4<u32>(32u)))), arg_0);
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -1298f), global2.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(!global1[_wgslsmith_index_u32(global2.c, 6u)], u_input.d.x)), _wgslsmith_f_op_f32(-global2.a), all(vec2<bool>(true, true)))))));
    global3 = array<Struct_1, 27>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(280f * var_0.x), ~(~2147483647i), global2.d ^ ~_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), u_input.a.x), ~49874u, ~u_input.b.xzx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, 81706u))), -2147483647i);
}

