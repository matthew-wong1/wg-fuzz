struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<i32>, 25>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> Struct_2 {
    global1 = array<vec4<i32>, 25>();
    let var_0 = Struct_5(Struct_3(Struct_2(4294967295u, true), 637f, _wgslsmith_add_vec3_i32(-min(vec3<i32>(-1i, -1365i, 2147483647i), vec3<i32>(-2138i, -1i, 402i)), -vec3<i32>(27280i, -47763i, 1i)), 73291u));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(var_0.a.b * _wgslsmith_f_op_f32(ceil(-165f)))), _wgslsmith_f_op_f32(select(global0.x, var_0.a.b, !(!any(vec2<bool>(var_0.a.a.b, var_0.a.a.b))))), -188f, _wgslsmith_f_op_f32(-var_0.a.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.xxz, global0.xxx) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global0.yxy - global0.zzw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, var_0.a.b, 866f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, 1655f))))))));
    var var_2 = all(!vec2<bool>(!(false | var_0.a.a.b), var_0.a.a.b));
    return var_0.a.a;
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = Struct_1(global0.x, arg_2, vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 122f)) != _wgslsmith_f_op_f32(round(1587f)), true, all(!(!vec3<bool>(arg_1, false, arg_1))), arg_1), ~(~(~(~26211u))), countOneBits(abs(abs(~u_input.b))));
    var var_1 = true;
    var var_2 = Struct_2(_wgslsmith_add_u32(countOneBits(~arg_0.b.a), 11962u), select(all(vec2<bool>(any(var_0.c.yx), false)), !(!arg_0.b.b), arg_0.b.b));
    let var_3 = Struct_3(func_2(), 1346f, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b, -12437i, 36593i), vec3<i32>(-2147483647i, var_0.b, 93171i)), ~vec3<i32>(48155i, var_0.b, -2715i)), vec3<i32>(min(-7607i, -32125i), 1i & var_0.b, arg_2)), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b, 0i, 2147483647i), -vec3<i32>(-28836i, arg_2, arg_2)))), _wgslsmith_sub_u32(reverseBits(var_2.a), _wgslsmith_dot_vec3_u32(var_0.e, var_0.e)));
    global1 = array<vec4<i32>, 25>();
    return var_3.b;
}

fn func_1() -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1869f, -1239f, -1000f, global0.x))))) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(4294967295u, true), func_2()), true, -2147483647i)), 504f, global0.x));
    var var_0 = Struct_1(global0.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17117i, -4979i, -16285i, -2147483647i), vec4<i32>(1i, -1i, -2147483647i, -32414i)), _wgslsmith_div_i32(0i << (u_input.a.x % 32u), ~2147483647i)), _wgslsmith_dot_vec3_i32(abs(firstTrailingBit(vec3<i32>(-42540i, -23543i, -7688i))), select(-vec3<i32>(-26468i, -2147483647i, 71935i), -vec3<i32>(-1i, -10787i, -2147483647i), vec3<bool>(false, false, false))), ~0i), vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)) || false, _wgslsmith_f_op_f32(round(global0.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), ~countOneBits(-25737i) < (_wgslsmith_sub_i32(-13680i, -2147483647i) ^ select(1i, 21537i, false)), true), 4056u, u_input.b);
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(var_0.a)), -var_0.b, !var_0.c, _wgslsmith_mod_u32(~u_input.b.x, 1u), u_input.b);
    var var_1 = select(vec2<bool>(!all(!vec2<bool>(true, var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-859f - -1831f) + _wgslsmith_f_op_f32(-global0.x)) <= global0.x), var_0.c.yz, vec2<bool>(true, var_0.c.x));
    global1 = array<vec4<i32>, 25>();
    return _wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(0u, var_0.d, 60709u, u_input.b.x), vec4<u32>(0u, var_0.e.x, u_input.a.x, u_input.b.x), var_0.c), ~(~vec4<u32>(var_0.d, var_0.e.x, var_0.e.x, u_input.b.x))), _wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(1u, 40461u, u_input.a.x, 99758u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 11339u, u_input.b.x, u_input.a.x), vec4<u32>(4294967295u, u_input.b.x, var_0.e.x, u_input.a.x)), vec4<u32>(4715u, var_0.e.x, 4294967295u, 33110u), ~vec4<u32>(var_0.d, 8080u, u_input.a.x, 1u))), select(vec4<bool>(true, any(vec3<bool>(var_1.x, var_0.c.x, var_1.x)), var_1.x != true, true), var_0.c, select(var_0.c, var_0.c, any(var_0.c.zwz)))), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, var_0.e.x, u_input.b.x, u_input.a.x)), vec4<u32>(_wgslsmith_div_u32(25251u, 37105u), ~var_0.d, var_0.d, ~10852u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 25>();
    var var_0 = ~(~(select(2147483647i, _wgslsmith_sub_i32(-17948i, -2147483647i), true) << (u_input.b.x % 32u)));
    global1 = array<vec4<i32>, 25>();
    var var_1 = -_wgslsmith_mult_vec2_i32(-vec2<i32>(-16057i, 12744i) << (vec2<u32>(u_input.a.x, 20183u) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 52292i), vec2<i32>(-28053i, -6863i))) & _wgslsmith_div_vec2_i32(min(vec2<i32>(-1i) * -vec2<i32>(-1i, 22875i), vec2<i32>(~(-28712i), i32(-1i) * -1i)), -min(vec2<i32>(-72019i, 2147483647i), vec2<i32>(18013i, 16951i)));
    let var_2 = !(!vec2<bool>(all(vec2<bool>(false, false)), !all(vec3<bool>(true, true, true))));
    let var_3 = _wgslsmith_sub_vec4_u32(~(func_1() | min(_wgslsmith_div_vec4_u32(vec4<u32>(34426u, u_input.b.x, 41047u, 43154u), vec4<u32>(u_input.b.x, 4294967295u, 48154u, 1u)), vec4<u32>(0u, u_input.b.x, 80182u, u_input.a.x) & vec4<u32>(u_input.a.x, 53317u, 17835u, 0u))), firstLeadingBit(vec4<u32>(u_input.b.x, countOneBits(~u_input.a.x), ~u_input.b.x & firstTrailingBit(u_input.b.x), ~16592u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(u_input.b, func_1().zyw), vec2<i32>(_wgslsmith_dot_vec4_i32(~global1[_wgslsmith_index_u32(u_input.a.x, 25u)] | ~global1[_wgslsmith_index_u32(var_3.x, 25u)], firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-35715i, var_1.x, 0i, -2147483647i), vec4<i32>(var_1.x, -27207i, var_1.x, -2147483647i)))), 1i));
}

