struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 22>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x);
    var var_0 = Struct_1(114591u, ~arg_0.b.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.x | reverseBits(12090u), select(arg_0.b.x | arg_0.b.x, 39102u, true), firstTrailingBit(~0u), ~arg_0.b.x), vec4<u32>(_wgslsmith_div_u32(reverseBits(1u), abs(4294967295u)), _wgslsmith_clamp_u32(arg_0.b.x, 1u, arg_0.b.x) ^ 1u, arg_0.b.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(36545u, 0u, 4294967295u), vec3<u32>(74408u, arg_0.b.x, arg_0.b.x), vec3<bool>(true, true, true)), vec3<u32>(1u, arg_0.b.x, arg_0.b.x) >> (vec3<u32>(arg_0.b.x, arg_0.b.x, 88412u) % vec3<u32>(32u)))), ~(~(vec4<u32>(75466u, arg_0.b.x, arg_0.b.x, arg_0.b.x) | vec4<u32>(arg_0.b.x, arg_0.b.x, 12456u, arg_0.b.x)))), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x >> (1u % 32u), arg_0.b.x, 1u, 1u), vec4<u32>(1u, 45143u, 46251u, ~0u))), _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 1i, 1i), 58230i, min(arg_0.a.x, u_input.a.x))) >> (vec4<u32>(arg_0.b.x, ~0u, _wgslsmith_add_u32(~arg_0.b.x, min(65715u, 13557u)), countOneBits(arg_0.b.x | arg_0.b.x)) % vec4<u32>(32u)));
    global0 = 4294967295u;
    let var_1 = -(-_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(23064i, arg_0.a.x, 11119i), vec3<i32>(u_input.a.x, 75312i, -9386i)), min(vec3<i32>(0i, 1i, global1[_wgslsmith_index_u32(var_0.d.x, 22u)]), u_input.a.xzx)) & (_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_0.e.x, 28870i), vec3<i32>(-1i, arg_0.a.x, -1i), u_input.a.yxy) & vec3<i32>(_wgslsmith_mult_i32(arg_0.a.x, global1[_wgslsmith_index_u32(61628u, 22u)]), 2147483647i, 0i)));
    let var_2 = var_0.d.x;
    return u_input.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_2(vec2<i32>(~(-22624i), global1[_wgslsmith_index_u32(36689u, 22u)]), ~firstLeadingBit(countOneBits(vec2<u32>(4294967295u, 1u))) & arg_0.b);
    var_0 = Struct_2(~countOneBits(var_0.a), vec2<u32>(var_0.b.x, 0u));
    var_0 = Struct_2(_wgslsmith_mult_vec2_i32(~abs(vec2<i32>(-45607i, 2147483647i)), vec2<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, var_0.b.x), vec4<u32>(var_0.b.x, 23792u, 35004u, var_0.b.x)), 22u)], -var_0.a.x), _wgslsmith_mod_i32(var_0.a.x, func_3(arg_0)))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b.x << (30565u % 32u), firstTrailingBit(1u)), ~max(abs(vec2<u32>(1u, arg_0.b.x)), ~var_0.b)));
    let var_1 = u_input.a;
    return vec4<u32>(~var_0.b.x, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, arg_0.b.x), vec2<u32>(arg_0.b.x, 0u), true), vec2<u32>(arg_0.b.x, var_0.b.x)), ~(~var_0.b.x) << (abs(1u) % 32u), arg_0.b.x), arg_0.b.x, ~arg_0.b.x & 1u);
}

fn func_2(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1075f)) - arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -731f));
    let var_1 = false;
    let var_2 = Struct_1(1u, 1u, ~(~countOneBits(vec4<u32>(arg_0, 12857u, 1u, 4294967295u))) >> (func_4(Struct_2(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a.x), vec2<u32>(1u, arg_0)), ~(u_input.a.zy << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(222f, arg_1, arg_1))))), vec3<i32>(func_3(Struct_2(vec2<i32>(u_input.a.x, -17670i), vec2<u32>(34587u, arg_0))), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(arg_0, 22u)], 17327i), u_input.a.wx), 1i)) % vec4<u32>(32u)), vec4<u32>(arg_0, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(44032u, arg_0, 0u), ~vec3<u32>(24807u, 4294967295u, arg_0), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(8275u, arg_0, arg_0))), _wgslsmith_div_vec3_u32(max(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(1u, 20704u, 11721u)), ~vec3<u32>(0u, 27541u, 4294967295u))), (4294967295u >> (arg_0 % 32u)) >> (~arg_0 % 32u), arg_0), u_input.a);
    var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 21118u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, arg_0, var_2.c.x), countOneBits(vec3<u32>(0u, 34458u, arg_0))), (3053u >> (var_2.c.x % 32u)) | var_2.a), ~select(4294967295u, ~39969u, var_1)), var_2.d);
    return all(select(!select(vec2<bool>(true, true), select(vec2<bool>(false, var_1), vec2<bool>(true, false), true), !vec2<bool>(var_1, var_1)), select(!select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, true)), select(!vec2<bool>(true, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, var_1)), vec2<bool>(true, false)), false), vec2<bool>(!var_1, !var_1)));
}

fn func_1() -> vec4<bool> {
    global1 = array<i32, 22>();
    let var_0 = vec4<bool>(any(vec4<bool>(func_2(abs(0u), _wgslsmith_f_op_f32(-462f + -1630f)), all(vec2<bool>(true, true)), true, false)), true, true, true);
    var var_1 = 41249i;
    var var_2 = 41730u;
    var_2 = ~select(~_wgslsmith_mod_u32(21649u, 1u), 21788u, any(select(var_0.zxw, var_0.xwy, var_0.zyx))) >> (~firstTrailingBit(func_4(Struct_2(u_input.a.zw, vec2<u32>(1u, 48503u)), abs(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-420f, -1225f, -290f))), -vec3<i32>(global1[_wgslsmith_index_u32(32973u, 22u)], -7613i, -26399i)).x) % 32u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.a);
    var var_1 = any(vec2<bool>(!all(func_1()), any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -433f), 1649f), 0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1120f + 475f), _wgslsmith_f_op_f32(step(-2278f, -837f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1523f))), _wgslsmith_f_op_f32(f32(-1f) * -204f))));
}

