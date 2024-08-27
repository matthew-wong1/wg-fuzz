struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: array<vec3<f32>, 21>;

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = global1.x;
    var var_1 = _wgslsmith_clamp_u32(global0.a.a, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.a.a, global0.a.a, global0.a.a), (global0.a.a >> (global0.a.a % 32u)) >> (13927u % 32u)), _wgslsmith_mod_u32(12842u, _wgslsmith_dot_vec2_u32(vec2<u32>(~global0.a.a, 44769u), vec2<u32>(~global0.a.a, global0.a.a))));
    var var_2 = !global1.x;
    var var_3 = true;
    global0 = Struct_4(Struct_1(0u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(4706u, global0.a.a), vec2<u32>(global0.a.a, 36439u))), Struct_3(global3.a, global3.b), -856f);
    return vec4<bool>(!(!(!global1.x)), true, true, 0u > _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(global0.a.a, global0.a.a), vec2<u32>(12876u, global0.a.a))), 1u));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> u32 {
    global1 = !func_3(~_wgslsmith_div_vec3_i32(vec3<i32>(-56911i, u_input.a, 2147483647i), vec3<i32>(u_input.a, u_input.a, arg_1)));
    global2 = array<vec3<f32>, 21>();
    let var_0 = max(vec2<i32>(abs(_wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a))), abs(2147483647i)), vec2<i32>(~min(select(2731i, -22372i, false), u_input.a), -_wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -2147483647i, u_input.a, u_input.a), vec4<i32>(-29110i, u_input.a, arg_1, u_input.a)))));
    global0 = Struct_4(Struct_1(_wgslsmith_sub_u32(countOneBits(43377u), global0.a.a)), global0.b, _wgslsmith_f_op_f32(-global3.a.a));
    let var_1 = select(abs(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, global0.a.a), vec3<u32>(global0.a.a, 0u, global0.a.a))), vec3<u32>(_wgslsmith_add_u32(global0.a.a, _wgslsmith_sub_u32(global0.a.a, 11685u)), firstLeadingBit(4294967295u), global0.a.a), !(arg_2 == select(false, !global1.x, true)));
    return max(global0.a.a, ~_wgslsmith_dot_vec3_u32(abs(var_1), ~_wgslsmith_clamp_vec3_u32(var_1, var_1, var_1)));
}

fn func_4(arg_0: u32) -> Struct_4 {
    let var_0 = global0.b;
    global0 = Struct_4(global0.a, Struct_3(global3.b, Struct_2(global3.b.a)), global3.a.a);
    global2 = array<vec3<f32>, 21>();
    global2 = array<vec3<f32>, 21>();
    var var_1 = (_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -42620i, 46283i, 2147483647i), vec4<i32>(u_input.a, -2147483647i, u_input.a, -2147483647i)), -vec4<i32>(1i, u_input.a, u_input.a, u_input.a)) & (1i << (1u % 32u))) > 1i;
    return Struct_4(global0.a, global0.b, global0.c);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    var var_0 = global0.b;
    var var_1 = arg_1.b.a;
    var var_2 = global1.ywz;
    return func_4(0u << (~_wgslsmith_add_u32(1u, func_2(631f, -19773i, global1.x, vec3<f32>(global0.b.b.a, arg_1.a.a, var_0.a.a))) % 32u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4) -> vec2<f32> {
    global3 = func_1(true, arg_1, min(u_input.a, _wgslsmith_div_i32(-1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 39784i), vec4<i32>(u_input.a, -56285i, u_input.a, u_input.a)))))).b;
    var var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_0.a.a, 44629u), global1.x), select(vec2<u32>(global0.a.a, arg_0.a.a), vec2<u32>(global0.a.a, 4294967295u), true)), arg_2.a.a), _wgslsmith_sub_u32(56655u, 27423u)) == 50486u;
    let var_1 = !(false && !all(select(global1.ww, vec2<bool>(true, global1.x), false)));
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(arg_0.a.a, ~0u), _wgslsmith_div_u32(~func_1(false, arg_2.b, u_input.a).a.a, firstLeadingBit(arg_0.a.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a.a), vec2<u32>(0u, 26051u)) % 32u)), ~(~global0.a.a) >> (8154u % 32u)) ^ ~((vec3<u32>(arg_0.a.a, global0.a.a, arg_0.a.a) ^ (vec3<u32>(1u, global0.a.a, arg_2.a.a) | vec3<u32>(arg_2.a.a, arg_0.a.a, arg_0.a.a))) | (_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.a, global0.a.a, arg_2.a.a), vec3<u32>(50985u, arg_0.a.a, arg_2.a.a), vec3<u32>(0u, arg_0.a.a, arg_2.a.a)) >> (~vec3<u32>(arg_2.a.a, 4294967295u, arg_2.a.a) % vec3<u32>(32u))));
    let var_3 = -22037i;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.b.a, _wgslsmith_div_f32(-235f, arg_0.b.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(11517u, 21u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(func_1(global1.x, global0.b, _wgslsmith_div_i32(u_input.a ^ u_input.a, _wgslsmith_add_i32(u_input.a, -2147483647i) | u_input.a)), func_1(global1.x, func_4(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.a.a, 4294967295u), ~global0.a.a, 0u)).b, _wgslsmith_dot_vec2_i32(firstTrailingBit(countOneBits(vec2<i32>(1i, u_input.a))), vec2<i32>(-8313i, u_input.a) << (vec2<u32>(global0.a.a, global0.a.a) % vec2<u32>(32u)))).b, Struct_4(func_1(all(select(vec4<bool>(false, true, true, global1.x), vec4<bool>(true, global1.x, false, true), false)), global0.b, _wgslsmith_add_i32(1i, u_input.a ^ 20129i)).a, global0.b, -243f)));
    global2 = array<vec3<f32>, 21>();
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.a.a), global3.a.a, -706f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(global0.a.a, 21u)] - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.c, -414f)))), global1.xwx));
    global0 = func_1(global1.x, global0.b, countOneBits(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.b.a), _wgslsmith_f_op_f32(min(-166f, global3.a.a))), -1056f)), -517f, -967f), u_input.a, ~_wgslsmith_div_i32(max(-2147483647i << (global0.a.a % 32u), u_input.a), _wgslsmith_mod_i32(-52968i, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1451f, 461f, -1722f, -872f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.b.a, -1935f, global3.a.a, global0.b.a.a)))), all(!global1.yz))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1236f, var_1.x, -1000f, global3.b.a) - vec4<f32>(var_1.x, -755f, global0.c, global3.a.a)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1197f, global0.b.b.a, global0.b.b.a, -735f)))))));
}

