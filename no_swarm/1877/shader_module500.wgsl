struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: i32 = -37797i;

var<private> global2: vec2<i32> = vec2<i32>(-6102i, 2147483647i);

var<private> global3: array<vec4<i32>, 1>;

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    global4 = array<Struct_1, 11>();
    global0 = array<vec2<bool>, 3>();
    var var_0 = min(abs(vec3<u32>(arg_0.a.x, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, u_input.b, 4748u, 0u), vec4<u32>(u_input.a, 31811u, arg_2.b, arg_1.a))), arg_2.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(arg_1.a, arg_1.a), arg_2.b, arg_0.a.x), vec3<u32>(~u_input.b, arg_0.a.x, u_input.a >> (~arg_1.a % 32u)), min(reverseBits(arg_2.c) << (_wgslsmith_div_vec3_u32(arg_2.c, arg_2.c) % vec3<u32>(32u)), arg_2.c | _wgslsmith_mod_vec3_u32(vec3<u32>(33639u, 4294967295u, arg_2.b), vec3<u32>(4294967295u, arg_0.a.x, 39691u)))));
    global3 = array<vec4<i32>, 1>();
    global3 = array<vec4<i32>, 1>();
    return _wgslsmith_f_op_f32(178f * _wgslsmith_f_op_f32(-106f - 335f));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_2(1122f <= _wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_0.x, ~1u), 11u)], Struct_3(~u_input.b), Struct_2(any(vec3<bool>(true, false, true)), 2034u, abs(arg_0.xxx)))), abs(~50588u) | _wgslsmith_add_u32(~u_input.a, 1u), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b >> (u_input.b % 32u), arg_0.x, ~1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 1u, 36944u) | arg_0.wzx, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 1u, 13413u), vec3<u32>(62263u, arg_0.x, arg_0.x)))), arg_0.wxw, vec3<u32>(arg_0.x, _wgslsmith_sub_u32(0u, abs(arg_0.x)), u_input.b)));
    var_0 = Struct_2(!(true && !var_0.a), _wgslsmith_div_u32(arg_0.x, u_input.b), ~arg_0.xxx);
    let var_1 = true;
    var var_2 = Struct_1(var_0.c.yx, !vec3<bool>(all(vec4<bool>(var_0.a, true, false, false)), var_1, !(!var_1)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-32472i, global2.x ^ global2.x, global2.x), vec3<i32>(global2.x, 2147483647i, ~(-global2.x))));
    var var_3 = reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(max(vec3<u32>(arg_0.x, var_2.a.x, 13636u), _wgslsmith_mult_vec3_u32(vec3<u32>(74724u, 1u, var_0.b), arg_0.yyx)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 28786u, arg_0.x), ~vec3<u32>(arg_0.x, 18178u, 10495u))), ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 1u, arg_0.x), vec3<u32>(var_2.a.x, 7621u, arg_0.x)), arg_0.zxz, select(vec3<bool>(false, var_1, var_0.a), vec3<bool>(true, false, var_2.b.x), vec3<bool>(var_1, false, false)))));
    return 271f;
}

fn func_1(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = !(!vec3<bool>(~59164u <= arg_0.a, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -992f) * -1000f);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(69194u, ~u_input.b, _wgslsmith_div_u32(arg_0.a, 29849u), ~u_input.a))) * -150f) - -1041f);
    var var_3 = Struct_3(~(1u | u_input.b));
    global2 = min(~(vec2<i32>(global2.x, global2.x) ^ (vec2<i32>(global2.x, global2.x) | _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, 1i), vec2<i32>(-2147483647i, -53042i), vec2<i32>(-2147483647i, global2.x)))), ~(min(-vec2<i32>(global2.x, -1i), abs(vec2<i32>(global2.x, global2.x))) & (~vec2<i32>(-11278i, global2.x) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_3.a, 71123u)) % vec2<u32>(32u)))));
    return countOneBits(abs(select(-vec2<i32>(61620i, 0i), vec2<i32>(global2.x, global2.x), select(var_0.xx, vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x))))) ^ abs(vec2<i32>(-firstLeadingBit(global2.x), abs(-25129i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(any(vec4<bool>(true, true, true, true)), u_input.a, max(~(~vec3<u32>(4294967295u, u_input.b, 0u) << (vec3<u32>(u_input.b, 29017u, u_input.b) % vec3<u32>(32u))), vec3<u32>(arg_1.x, ~49622u, ~u_input.a)));
    let var_1 = select(0u <= u_input.b, ~(~(11987u ^ arg_1.x)) < 10454u, any(vec4<bool>(true, true, false && !var_0.a, !(!var_0.a))));
    var var_2 = Struct_2(false, 0u, vec3<u32>(u_input.b, 11922u, 1u));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec4<u32>(58735u, 0u, var_0.c.x, var_0.b), vec4<u32>(var_2.b, var_2.c.x, 0u, var_2.b), true)))) < _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-186f, _wgslsmith_f_op_f32(f32(-1f) * -114f)))), abs(var_0.c.x), vec3<u32>(var_2.c.x, arg_1.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a, arg_1.x, var_2.c.x, var_0.b) << (vec4<u32>(71160u, arg_1.x, 18770u, var_2.b) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(48912u, arg_1.x, var_2.b, 0u), vec4<u32>(u_input.b, var_2.b, 0u, 69784u) & vec4<u32>(arg_1.x, 6551u, arg_1.x, var_2.c.x)))));
    var var_4 = 1i;
    return global4[_wgslsmith_index_u32(1u, 11u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(true, abs(u_input.a), ~vec3<u32>(~43152u << ((arg_1.a ^ arg_0.a.x) % 32u), _wgslsmith_mod_u32(arg_2.x, arg_1.a) | 4294967295u, 4294967295u));
    let var_1 = !vec3<bool>(false, true, any(!vec3<bool>(arg_0.b.x, var_0.a, false)));
    global4 = array<Struct_1, 11>();
    let var_2 = vec2<bool>(arg_3.b.x, true);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<u32>(0u, select(arg_3.a.x, 3923u, var_0.a), ~4294967295u, ~4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1034f, -112f))) * 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(752f - 2282f), 1590f))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 11>();
    var var_0 = func_5(func_4(vec2<i32>(abs(reverseBits(global2.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global2.x, 1i), vec2<i32>(2147483647i, global2.x)), func_1(Struct_3(175u)))), vec2<u32>(~(~u_input.b), ~19501u)), Struct_3(countOneBits(_wgslsmith_div_u32(~81887u, u_input.b))), vec3<u32>(abs(u_input.b), ~(~(~u_input.a)), _wgslsmith_add_u32(~96188u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4004u, u_input.b), vec2<u32>(u_input.b, u_input.a)), 1u))), global4[_wgslsmith_index_u32(~(~abs(23948u)), 11u)]);
    global3 = array<vec4<i32>, 1>();
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a, u_input.a, u_input.b, _wgslsmith_mult_u32(var_0.a.x, _wgslsmith_sub_u32(82413u ^ u_input.b, u_input.b >> (u_input.a % 32u)))), ~vec4<u32>(abs(8052u ^ var_0.a.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.a.x, u_input.a), 113681u), ~0u, ~(~4294967295u)));
    let var_2 = true;
    global3 = array<vec4<i32>, 1>();
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(58262i, global2.x | ~global2.x), reverseBits(vec2<i32>(_wgslsmith_mult_i32(var_0.c.x | 2147483647i, firstTrailingBit(var_0.c.x)), (0i >> (u_input.b % 32u)) ^ (-11243i & global2.x))));
    var var_4 = var_0.b;
    global4 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-180f + 884f), 173f))), _wgslsmith_div_f32(287f, -616f)), vec2<f32>(-596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(671f))))));
}

