struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_vec4_i32(~(~reverseBits(~vec4<i32>(u_input.c.x, u_input.c.x, -1i, -51578i))), vec4<i32>(arg_0.d.c.x, 2147483647i, ~arg_0.d.c.x, i32(-1i) * -firstLeadingBit(15802i)));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(min(arg_0.d.d.x, arg_0.d.c.x), abs(var_0.x)), -arg_0.d.c.x);
    global0 = array<bool, 3>();
    let var_2 = var_1;
    var_0 = vec4<i32>(abs(-firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_1, arg_0.d.c.x), var_0.ywy))), -abs(~_wgslsmith_mult_i32(-14948i, var_1)), var_0.x, min(i32(-1i) * -76465i, _wgslsmith_mult_i32(var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_1, var_2), vec3<i32>(-1877i, 7929i, var_0.x)) >> ((4294967295u | u_input.b.x) % 32u))));
    return vec2<bool>(true, global0[_wgslsmith_index_u32(~(~14144u), 3u)]);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32) -> Struct_2 {
    global0 = array<bool, 3>();
    let var_0 = !vec2<bool>(any(select(func_3(Struct_2(16020u, u_input.b.x, arg_0, Struct_1(arg_1, vec3<f32>(711f, 1414f, -167f), vec2<i32>(u_input.c.x, arg_2), vec2<i32>(u_input.c.x, u_input.c.x)))), vec2<bool>(true, false), true)), global0[_wgslsmith_index_u32(15970u, 3u)]);
    let var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1452f + -262f) + _wgslsmith_f_op_f32(497f + -477f)))), Struct_4(Struct_3(u_input.a, Struct_2(arg_1, _wgslsmith_add_u32(arg_1, 0u), min(15350u, 4294967295u), Struct_1(u_input.a.x, vec3<f32>(1700f, -1516f, -323f), u_input.c, u_input.c)), Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-153f, 1261f, 1253f) * vec3<f32>(-293f, -164f, 1696f)), u_input.c, ~u_input.c)), _wgslsmith_div_u32(max(u_input.b.x, ~arg_1), max(4294967295u, abs(u_input.b.x))), max(_wgslsmith_clamp_vec3_u32(u_input.a.xyx, vec3<u32>(0u, arg_0, 4294967295u), max(u_input.a.yxw, vec3<u32>(1u, 0u, arg_1))), ~u_input.a.xww), u_input.c.x));
    var var_2 = select(!vec3<bool>(!(var_1.b.a.b.d.b.x >= -206f), true, true), !(!select(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], var_0.x, false), vec3<bool>(false, true, false), any(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(31064u, 3u)], var_0.x, true)))), !(!(!(!vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(6u, 3u)])))));
    global0 = array<bool, 3>();
    return var_1.b.a.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_3 {
    global0 = array<bool, 3>();
    let var_0 = Struct_5(arg_0.d.b.zy, Struct_4(Struct_3(vec4<u32>(_wgslsmith_mod_u32(arg_0.c, u_input.b.x), 1u, ~u_input.b.x, 1u), func_2(u_input.b.x, u_input.a.x, max(-1i, 1i)), arg_0.d), 0u, ~firstLeadingBit(~u_input.a.xyy), firstTrailingBit(_wgslsmith_add_i32(abs(u_input.c.x), 2147483647i))));
    var var_1 = Struct_2(68211u, 0u, ~max(_wgslsmith_add_u32(0u, arg_0.c & var_0.b.a.a.x), min(arg_0.a, _wgslsmith_div_u32(6097u, 27245u))), var_0.b.a.c);
    let var_2 = ~(-firstLeadingBit(abs(min(vec4<i32>(-42683i, 5459i, u_input.c.x, arg_0.d.d.x), vec4<i32>(arg_0.d.d.x, -1547i, u_input.c.x, 36369i)))));
    return Struct_3(~vec4<u32>(arg_1.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(83799u, 33094u), abs(arg_0.a)), ~arg_0.b, 1u >> ((u_input.a.x | u_input.a.x) % 32u)), Struct_2(~firstTrailingBit(~55271u), arg_1.x, var_1.c, Struct_1(arg_1.x, var_0.b.a.c.b, u_input.c, vec2<i32>(abs(-1i), -var_2.x))), func_2(_wgslsmith_mult_u32(1u, var_1.a), select(countOneBits(var_1.b), abs(4294967295u), true), var_2.x).d);
}

fn func_1() -> Struct_4 {
    global0 = array<bool, 3>();
    let var_0 = Struct_4(func_4(func_2(~1u, min(~74741u, u_input.b.x >> (46106u % 32u)), u_input.c.x), abs(abs(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)))), 1u, ~vec3<u32>(0u, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 15570u, 41006u, u_input.a.x)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.b)), ~(-2147483647i) >> (1u % 32u));
    let var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.b.x) - var_0.a.c.b.x);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1588f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.c.b.x)))) * -1000f)));
    return Struct_4(func_4(var_0.a.b, _wgslsmith_sub_vec4_u32(vec4<u32>(59229u, min(var_0.a.a.x, 1u), var_0.a.c.a, 42507u), ~(u_input.a >> (u_input.a % vec4<u32>(32u))))), 0u, vec3<u32>(10841u, var_0.a.c.a, _wgslsmith_dot_vec4_u32(var_0.a.a << ((vec4<u32>(16628u, var_0.b, 47239u, 21276u) ^ var_0.a.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a.x, 47158u, var_0.a.b.a, var_0.c.x)), ~var_0.a.a))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    let var_0 = func_1();
    let var_1 = ~_wgslsmith_mult_vec3_u32(max(vec3<u32>(92226u, var_0.a.b.b, u_input.b.x) << (u_input.a.wxw % vec3<u32>(32u)), vec3<u32>(~1u, _wgslsmith_mult_u32(var_0.b, u_input.a.x), ~var_0.a.c.a)), reverseBits(_wgslsmith_add_vec3_u32(func_4(var_0.a.b, vec4<u32>(39559u, 4294967295u, var_0.a.b.a, u_input.a.x)).a.wzx, vec3<u32>(58880u, var_0.b, 4294967295u))));
    global0 = array<bool, 3>();
    var var_2 = var_0;
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f) - _wgslsmith_f_op_f32(133f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.c.b.x))))), -1000f);
}

