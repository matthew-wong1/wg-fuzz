struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 19>;

var<private> global2: Struct_4;

var<private> global3: f32 = 260f;

var<private> global4: array<bool, 24> = array<bool, 24>(false, false, false, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_3) -> f32 {
    let var_0 = select(global2.a.c.zww, vec3<bool>(false, true & all(!vec4<bool>(arg_0.c.x, false, false, true)), false), select(arg_2.c.c.zxy, !arg_0.c.wzy, false));
    let var_1 = !select(select(select(!var_0, var_0, arg_0.c.x), vec3<bool>(arg_2.c.e.b < global2.a.e.c, !global2.a.c.x, !arg_2.c.c.x), select(true, global2.a.d.a <= 1000f, true)), !select(global2.a.c.xxy, select(vec3<bool>(global4[_wgslsmith_index_u32(global2.a.b, 24u)], arg_1.d, true), vec3<bool>(var_0.x, global2.a.c.x, arg_0.c.x), vec3<bool>(true, false, true)), arg_2.c.c.wyy), true);
    var var_2 = firstLeadingBit(-reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.c.a.c, arg_0.e.b, arg_1.b), vec3<i32>(-2147483647i, 0i, -2147483647i))));
    var var_3 = -52158i;
    let var_4 = ~(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.d.b, arg_0.a.c), vec2<i32>(arg_2.c.a.b, -43662i)), var_2.xy), arg_1.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(-45273i, 2147483647i), ~var_2.zx), _wgslsmith_dot_vec2_i32(~vec2<i32>(-22647i, 0i), reverseBits(vec2<i32>(var_2.x, 1523i)))) << (arg_1.c % vec4<u32>(32u)));
    return -169f;
}

fn func_2() -> vec4<i32> {
    global4 = array<bool, 24>();
    global2 = Struct_4(global2.a);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(global2.a, Struct_5(global4[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_mult_i32(~global2.a.e.c, 24591i), ~(~u_input.a), global2.a.c.x), Struct_3(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, global2.a.b), u_input.a.yxy), min(u_input.a, reverseBits(vec4<u32>(1u, 56776u, 4294967295u, 20127u))), global2.a))), -_wgslsmith_sub_i32(abs(global2.a.e.b), global2.a.e.c), -global2.a.a.c);
    return vec4<i32>((global2.a.d.b << (0u % 32u)) >> ((global2.a.b << (u_input.a.x % 32u)) % 32u), -firstTrailingBit(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, var_0.b, 0i)), vec3<i32>(var_0.c, 26598i, var_0.c))), -2147483647i, -2147483647i);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = !all(vec3<bool>(true, all(select(vec4<bool>(arg_2.x, global4[_wgslsmith_index_u32(9547u, 24u)], arg_2.x, arg_2.x), global2.a.c, arg_2.x)), _wgslsmith_f_op_f32(trunc(362f)) != _wgslsmith_f_op_f32(arg_0.x - -1000f)));
    global4 = array<bool, 24>();
    let var_1 = firstLeadingBit(func_2()) | func_2();
    global4 = array<bool, 24>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1992f);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(~var_1.wy, var_1.zy << (u_input.a.xw % vec2<u32>(32u)))) >> (~0u % 32u), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(func_1(vec4<f32>(-1243f, -1047f, global1[_wgslsmith_index_u32(global2.a.b, 19u)], global2.a.a.a), ~1u, vec3<bool>(true, false, global4[_wgslsmith_index_u32(global2.a.b, 24u)])), 4294967295u ^ _wgslsmith_clamp_u32(30513u & global2.a.b, global2.a.b, u_input.a.x), select(vec4<bool>(!global2.a.c.x, 4294967295u < global2.a.b, all(global2.a.c.xxx), global2.a.c.x), vec4<bool>(all(global2.a.c.xzz), true, !global4[_wgslsmith_index_u32(57700u, 24u)], true), !select(global2.a.c, vec4<bool>(true, global2.a.c.x, false, false), global4[_wgslsmith_index_u32(global2.a.b, 24u)])), global2.a.d, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 19u)]))), -global2.a.e.c, -1i)));
    let var_1 = Struct_4(var_0.a);
    let var_2 = var_1.a.c.ww;
    global1 = array<f32, 19>();
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-444f + global1[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_f32(sign(global2.a.e.a))))), vec2<f32>(516f, -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.a.d.b, 1i, 1i), vec3<i32>(var_0.a.e.c, var_0.a.e.c, -17442i)), -vec3<i32>(-9705i, var_1.a.d.c, var_1.a.d.b)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-495f, var_3.x, -723f), vec3<f32>(var_3.x, 1000f, -357f))), vec3<f32>(-2328f, global2.a.a.a, -1430f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1377f, var_1.a.a.a, 1000f), vec3<f32>(global2.a.a.a, -866f, -1050f))))))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.a.b, 19u)] - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-var_1.a.a.a), true))), u_input.a.x << (~(~var_1.a.b >> (reverseBits(36364u) % 32u)) % 32u), countOneBits(vec2<i32>(1i, 1i)) << (u_input.a.xy % vec2<u32>(32u)));
}

