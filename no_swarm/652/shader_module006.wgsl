struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<i32>, 22>;

var<private> global2: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 0u, 4294967295u), u_input.b.xyx)) << (firstLeadingBit(abs((vec3<u32>(2529u, u_input.b.x, u_input.c) ^ vec3<u32>(u_input.a.x, 23077u, u_input.a.x)) & countOneBits(u_input.b.yzz))) % vec3<u32>(32u));
    let var_1 = countOneBits(u_input.a.x);
    var var_2 = vec4<f32>(870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -686f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1772f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(604f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_f_op_f32(f32(-1f) * -1543f), select(arg_0, false, arg_0))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f * _wgslsmith_f_op_f32(f32(-1f) * -357f)))));
    let var_3 = u_input.b.xzy;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -1417f) - var_2.x);
    return ~66932i;
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<i32>, 22>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2172f);
    let var_1 = ~vec3<i32>(-37454i, _wgslsmith_sub_i32(u_input.d.x >> (32877u % 32u), 1i), -global0.x) & vec3<i32>(_wgslsmith_mod_i32(-(-1i >> (0u % 32u)), -_wgslsmith_div_i32(global0.x, u_input.d.x)), (global0.x & global0.x) & ~(-28822i), select(func_3(false), abs(-5505i), true) ^ u_input.d.x);
    var var_2 = ~_wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.xz, u_input.d), ~vec2<i32>(-2147483647i, -2147483647i)), select(vec2<i32>(u_input.d.x, 24082i), _wgslsmith_add_vec2_i32(u_input.d, global0.zx), vec2<bool>(true, true)));
    var var_3 = 0i;
    return Struct_1(~(~u_input.b.xw), var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = Struct_2(func_2());
    global0 = ~firstTrailingBit(-(vec3<i32>(arg_1.a.b, u_input.d.x, 4583i) << (vec3<u32>(arg_0.a.x, 54011u, var_0.a.a.x) % vec3<u32>(32u))));
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-36450i, -max(_wgslsmith_mult_i32(var_0.a.b, -37502i), -global0.x), min(~select(u_input.d.x, -2147483647i, true), ~max(arg_0.b, -39754i))), vec3<i32>(-1i, -2147483647i, 48862i));
    var var_1 = global0.zz << (~vec2<u32>(~countOneBits(32867u), arg_1.a.a.x << (_wgslsmith_clamp_u32(u_input.c, 829u, 71127u) % 32u)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(abs(-131f));
    return global1[_wgslsmith_index_u32(var_0.a.a.x, 22u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0;
    global0 = ~firstLeadingBit(_wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(arg_1.xzz, vec3<i32>(u_input.d.x, -1i, arg_0.b)), _wgslsmith_clamp_vec3_i32(arg_1.xzx, ~vec3<i32>(arg_1.x, var_0.b, -14996i), select(arg_1.www, vec3<i32>(-81731i, global0.x, arg_1.x), false))));
    let var_1 = arg_0.a;
    let var_2 = firstTrailingBit(arg_1.zzw);
    global2 = array<vec3<bool>, 9>();
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<u32> {
    global2 = array<vec3<bool>, 9>();
    let var_0 = func_5(Struct_1(~arg_0.a & ~(~u_input.a), -72702i), func_4(func_2(), Struct_2(func_2())));
    global0 = -reverseBits(firstTrailingBit(vec3<i32>(u_input.d.x, -1i, 46506i) | vec3<i32>(60610i, u_input.d.x, 1i))) & firstLeadingBit(vec3<i32>(25776i, _wgslsmith_clamp_i32(87501i, -1i, -18353i), -22849i));
    global2 = array<vec3<bool>, 9>();
    let var_1 = select(select(!vec2<bool>(select(false, true, true), false), vec2<bool>(true, !select(false, true, false)), !vec2<bool>(any(vec3<bool>(true, true, false)), true)), !select(vec2<bool>(any(global2[_wgslsmith_index_u32(var_0.a.x, 9u)]), false), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)), true);
    return vec2<u32>(~(~0u), ~(~firstTrailingBit(arg_0.a.x & arg_0.a.x)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec3<u32> {
    global2 = array<vec3<bool>, 9>();
    let var_0 = Struct_2(func_5(Struct_1(~vec2<u32>(4294967295u, u_input.b.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, arg_0.b), u_input.d)), vec4<i32>(global0.x, global0.x, -63256i, func_2().b)));
    let var_1 = !arg_2.x;
    let var_2 = var_0;
    global2 = array<vec3<bool>, 9>();
    return u_input.b.zxx >> (_wgslsmith_sub_vec3_u32(u_input.b.wyw, vec3<u32>(u_input.b.x, arg_0.a.x, ~arg_0.a.x) >> (vec3<u32>(select(4294967295u, 4294967295u, arg_2.x), 82946u, var_0.a.a.x) % vec3<u32>(32u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<i32>(u_input.d.x, -40819i, _wgslsmith_sub_i32(global0.x, _wgslsmith_sub_i32(0i, u_input.d.x) ^ ~0i));
    var var_0 = 4294967295u;
    var var_1 = func_6(Struct_1(abs(func_1(Struct_1(vec2<u32>(0u, u_input.a.x), 2147483647i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(171f, 685f, 1000f, 839f), vec4<f32>(-238f, -841f, 420f, -696f))))), _wgslsmith_clamp_i32(global0.x, u_input.d.x, ~global0.x << (u_input.a.x % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1403f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -878f), 1154f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-692f, 649f) * vec2<f32>(-1100f, -312f))))), vec4<bool>(all(!select(vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(u_input.b.x, 9u)], true)), !(~4294967295u != (4294967295u ^ u_input.c)), ((-44970i << (u_input.c % 32u)) << (~u_input.a.x % 32u)) >= _wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(u_input.d.x, -1i)), any(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, 49758u, var_1.x, var_1.x)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(64632u, var_1.x, 0u, 34980u))), firstLeadingBit(u_input.b << (u_input.b % vec4<u32>(32u))))));
    var var_3 = u_input.d.x;
    var_2 = 3075u;
    var_1 = ~(~countOneBits(abs(~vec3<u32>(u_input.b.x, var_1.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<i32>(2147483647i, global0.x, u_input.d.x) >> (max(vec3<u32>(0u, u_input.b.x, 17145u), max(vec3<u32>(46105u, 41412u, 4294967295u), vec3<u32>(u_input.b.x, u_input.c, var_1.x))) % vec3<u32>(32u))), -36292i);
}

