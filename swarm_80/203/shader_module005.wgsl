struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(-31340i);

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> i32 {
    global2 = Struct_2(global2.a);
    let var_0 = 2706u;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, ~(~global1.a.x << (~1u % 32u))), global1.b.yxx), 22u)];
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, arg_1)), _wgslsmith_f_op_f32(exp2(arg_1))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 547f) + vec2<f32>(1000f, arg_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, arg_1)), var_1.xz))));
    var var_2 = Struct_1(global1.a, firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(31534u, _wgslsmith_clamp_u32(57783u, var_0, 1u)), select(1u, 50309u << (var_0 % 32u), true), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global1.b, vec4<u32>(global1.a.x, var_0, global1.b.x, global1.a.x)), ~global1.b), ~4294967295u)), all(vec4<bool>(any(!vec3<bool>(global1.c, var_1.x, global1.c)), true, any(select(vec4<bool>(false, global1.c, false, false), vec4<bool>(true, false, var_1.x, true), true)), true)), _wgslsmith_clamp_i32(max(~(-7562i), _wgslsmith_mod_i32(global1.d, -global1.d)), countOneBits(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-6942i, -5076i), vec2<i32>(-71564i, arg_0.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a, 30327i), vec2<i32>(arg_0.a, global1.d)))), 2147483647i));
    return ~(~(~arg_2.a));
}

fn func_4(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = global1.b.zx;
    var var_1 = ~u_input.a;
    global1 = Struct_1(global1.b.zxw, ~global1.b, all(!select(global0[_wgslsmith_index_u32(global1.b.x, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], false)) != (-1266f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(226f)) * _wgslsmith_f_op_f32(global3.x * -943f))), -_wgslsmith_div_i32(28392i, -2147483647i));
    return global1.b & vec4<u32>(max(0u, 4294967295u), _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(global1.b.wy, global1.a.xx), var_0.x), 62458u, global1.a.x);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = -18270i;
    let var_1 = !(!(!global1.c));
    let var_2 = 0u;
    global0 = array<vec3<bool>, 22>();
    let var_3 = Struct_3(Struct_1(global1.a, func_4(vec4<i32>(global1.d, abs(arg_0.a), func_3(Struct_2(5102i), global3.x, Struct_2(-2147483647i)), _wgslsmith_mod_i32(39234i, arg_0.a))), false, ~_wgslsmith_clamp_i32(-32128i, 1i, 1i)), Struct_2(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, global2.a, arg_0.a, 26073i), vec4<i32>(-2147483647i, arg_0.a, var_0, -1i), vec4<bool>(global1.c, true, true, true)), _wgslsmith_div_vec4_i32(vec4<i32>(global2.a, 2147483647i, 0i, -2147483647i), vec4<i32>(var_0, 1i, arg_0.a, global2.a))))));
    return Struct_3(Struct_1(vec3<u32>(~global1.b.x, ~var_2, _wgslsmith_mod_u32(u_input.a, 48460u)) & firstLeadingBit(~vec3<u32>(var_2, 34320u, 4294967295u)), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(13101u, 0u, var_2, var_3.a.b.x), vec4<u32>(114229u, 52962u, 4294967295u, 53767u))), var_3.a.c, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, 0i, -19742i, 35127i)) ^ (vec4<i32>(var_3.b.a, var_0, 2147483647i, -1i) | vec4<i32>(var_0, global2.a, 21812i, -9914i)), -vec4<i32>(27799i, 1i, 31923i, 20862i) | _wgslsmith_mod_vec4_i32(vec4<i32>(global1.d, var_3.b.a, var_3.a.d, arg_0.a), vec4<i32>(-11687i, global1.d, 0i, var_3.b.a)))), var_3.b);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(Struct_2(-2147483647i));
    var var_1 = Struct_2(1i);
    global3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -871f), -1732f);
    var var_2 = select(select(!select(vec2<bool>(var_0.a.c, var_0.a.c), select(vec2<bool>(true, var_0.a.c), vec2<bool>(false, true), vec2<bool>(true, global1.c)), select(vec2<bool>(true, false), vec2<bool>(false, true), var_0.a.c)), vec2<bool>(var_0.a.c, global1.c || true), select(!(!vec2<bool>(true, global1.c)), vec2<bool>(any(global0[_wgslsmith_index_u32(var_0.a.a.x, 22u)]), false), select(vec2<bool>(var_0.a.c, var_0.a.c), select(vec2<bool>(global1.c, false), vec2<bool>(false, var_0.a.c), true), select(vec2<bool>(var_0.a.c, true), vec2<bool>(var_0.a.c, var_0.a.c), true)))), !(!select(vec2<bool>(global1.c, var_0.a.c), vec2<bool>(false, true), vec2<bool>(global1.c, true))), false);
    return Struct_2(select(firstTrailingBit(global1.d), ~global1.d, global1.d == ~_wgslsmith_sub_i32(2147483647i, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global0 = array<vec3<bool>, 22>();
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 294f) * vec2<f32>(global3.x, global3.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) + vec2<f32>(global3.x, global3.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, -1091f))), vec2<bool>(true, any(select(global0[_wgslsmith_index_u32(global1.a.x, 22u)], vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(13952u, 22u)]))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -686f))))));
    let var_0 = func_2(func_1());
    var var_1 = firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-43740i, -2584i, global2.a) ^ vec3<i32>(global2.a, global2.a, global1.d), select(vec3<i32>(global2.a, -51155i, global1.d), vec3<i32>(1i, var_0.b.a, global1.d), vec3<bool>(var_0.a.c, global1.c, false))), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.a, -1i, global1.d), vec3<i32>(5357i, var_0.b.a, -14156i), vec3<i32>(var_0.b.a, -1i, -26569i)) >> (var_0.a.b.xzw % vec3<u32>(32u))) ^ reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-40490i, global1.d, var_0.a.d), vec3<i32>(-24664i, global2.a, var_0.b.a)), firstTrailingBit(vec3<i32>(2147483647i, global2.a, 1i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(269f - global3.x), _wgslsmith_f_op_f32(global3.x - -394f))), _wgslsmith_f_op_f32(-global3.x), global3.x))));
    let var_3 = select(vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global3.x)))) <= var_2.x, !(!var_0.a.c) || func_2(Struct_2(37454i)).a.c, true, global1.c), select(vec4<bool>(any(select(vec4<bool>(var_0.a.c, true, var_0.a.c, true), vec4<bool>(global1.c, false, false, true), global1.c)), global1.c, var_0.a.c, true), select(vec4<bool>(any(vec2<bool>(true, global1.c)), var_0.a.c || global1.c, !global1.c, !global1.c), !vec4<bool>(false, global1.c, var_0.a.c, true), vec4<bool>(global1.c, true, false, true)), vec4<bool>(!global1.c, false, -var_1.x >= _wgslsmith_mod_i32(16508i, global1.d), func_2(var_0.b).a.c)), vec4<bool>(global1.c, !var_0.a.c, !global1.c, !(!global1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i ^ var_1.x, -26020i), abs(var_1.yx | -vec2<i32>(var_1.x, global1.d))), 1u, _wgslsmith_f_op_f32(var_2.x - global3.x), var_0.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global3.x), vec2<f32>(global3.x, -700f)) * _wgslsmith_f_op_vec2_f32(floor(var_2.zy))), vec2<f32>(-1591f, _wgslsmith_f_op_f32(f32(-1f) * -2226f)))) + _wgslsmith_f_op_vec2_f32(var_2.xy * _wgslsmith_f_op_vec2_f32(-var_2.zy))));
}

