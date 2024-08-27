struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(false, Struct_1(vec3<u32>(121899u, 48456u, 4294967295u)), 475f), Struct_2(false, Struct_1(vec3<u32>(17550u, 1u, 4294967295u)), -1040f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<Struct_2, 2>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(~max(u_input.a.x, u_input.c), u_input.a.x), u_input.b.zz)), 2u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 32517u), 2u)];
    var var_2 = Struct_1(~(vec3<u32>(u_input.c, _wgslsmith_add_u32(var_1.b.a.x, var_1.b.a.x), ~0u) | abs(vec3<u32>(u_input.c, 0u, var_0.b.a.x) ^ var_1.b.a)));
    var var_3 = firstLeadingBit(_wgslsmith_clamp_u32(var_1.b.a.x, ~4294967295u, ~abs(var_2.a.x))) >> (var_0.b.a.x % 32u);
    return var_0.b.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = vec2<bool>(!(all(vec3<bool>(false, true, false)) || true), ~arg_2.x > 108939u);
    global0 = array<Struct_2, 2>();
    let var_1 = Struct_2(true, Struct_1(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(func_3(arg_3.x), countOneBits(u_input.c), _wgslsmith_mult_u32(u_input.a.x, 0u)))), 2019f);
    var var_2 = Struct_2(var_1.a, Struct_1(_wgslsmith_mod_vec3_u32(var_1.b.a << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(arg_0.x, arg_0.x, 39039u)) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_2.x, 1u), vec3<u32>(14931u, 18181u, 29614u)))), 492f);
    let var_3 = false | (max(~u_input.d.x, 2147483647i) > _wgslsmith_mult_i32(arg_1, arg_1));
    return ~_wgslsmith_clamp_i32(arg_3.x, 2147483647i >> (_wgslsmith_clamp_u32(1u, u_input.b.x, 0u) % 32u), 2147483647i) << (arg_0.x % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = ~(~arg_0.b.a.xz);
    var var_1 = ~arg_0.b.a.x;
    var var_2 = Struct_1(~(abs(vec3<u32>(25632u, 54860u, 4294967295u)) << (firstTrailingBit(~vec3<u32>(arg_0.b.a.x, arg_0.b.a.x, 14674u)) % vec3<u32>(32u))));
    let var_3 = Struct_2(1034f > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + arg_0.c) + _wgslsmith_f_op_f32(1000f + 1000f)))), arg_0.b, 532f);
    let var_4 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: i32) -> Struct_2 {
    global0 = array<Struct_2, 2>();
    let var_0 = arg_0;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -837f) - _wgslsmith_f_op_f32(-1826f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-126f)))))) + _wgslsmith_f_op_f32(func_4(Struct_2(false, Struct_1(~u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2221f) * -1168f)), -func_2(vec2<u32>(43754u, 39583u), var_0 << (4294967295u % 32u), u_input.a.wz, _wgslsmith_add_vec2_i32(u_input.d.zx, u_input.e)))));
    let var_3 = 7460u;
    return Struct_2(any(!select(vec4<bool>(true, false, true, var_1), !vec4<bool>(var_1, true, true, var_1), arg_2)), Struct_1(~min(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)), u_input.b)), 581f);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(any(!vec2<bool>(arg_1.a, any(vec3<bool>(arg_2.a, false, false)))), arg_2.a, false);
    var_0 = vec3<bool>(!arg_2.a, arg_1.a, var_0.x & arg_2.a);
    var var_1 = vec2<bool>(false && any(vec4<bool>(true, 0u == arg_3.a.x, !var_0.x, !arg_2.a)), !(0u < arg_2.b.a.x));
    var_0 = !select(!(!(!vec3<bool>(false, arg_1.a, true))), select(vec3<bool>(true, !var_1.x, var_1.x), vec3<bool>(false, arg_2.a, func_1(79279i, vec4<i32>(u_input.d.x, u_input.d.x, u_input.e.x, u_input.e.x), false, u_input.e.x).a), vec3<bool>(false, true, true)), vec3<bool>(arg_1.c == _wgslsmith_f_op_f32(arg_2.c + -213f), var_0.x, arg_2.a));
    let var_2 = _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(u_input.d.yyx, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, -504i, 1i), vec3<i32>(u_input.e.x, u_input.d.x, u_input.e.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, 2147483647i), vec3<i32>(-24218i, -38715i, u_input.d.x)), vec3<i32>(u_input.e.x, -71757i, u_input.e.x))), -24831i);
    return func_1(_wgslsmith_sub_i32(28269i, u_input.e.x), ~(-u_input.d) << (vec4<u32>(_wgslsmith_add_u32(1u, ~36902u), arg_2.b.a.x, ~7810u, arg_2.b.a.x) % vec4<u32>(32u)), false, -51060i).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(857f, _wgslsmith_f_op_f32(660f - -763f)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(981f, 104f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, -1745f)))))), func_1(1i, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(13756i, u_input.e.x, -16767i, 48221i), vec4<i32>(u_input.d.x, u_input.d.x, -4706i, 0i) | vec4<i32>(-24201i, u_input.e.x, u_input.d.x, u_input.d.x)), _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.e.x, 2147483647i, u_input.e.x, u_input.e.x), u_input.d, true), _wgslsmith_div_vec4_i32(u_input.d, u_input.d))), true, -12391i), func_1(1i, ~(~(~vec4<i32>(17221i, -45452i, u_input.d.x, -1i))), true, 0i), Struct_1(~vec3<u32>(0u, _wgslsmith_sub_u32(u_input.b.x, 8690u), ~u_input.b.x)));
    var var_1 = Struct_1(max(u_input.a.wyy, countOneBits(var_0.a)));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(~min(u_input.d.x, u_input.e.x), u_input.e.x) >> (~func_1(abs(1i), vec4<i32>(u_input.e.x, 57071i, u_input.d.x, -2147483647i), any(vec2<bool>(false, false)), firstLeadingBit(u_input.e.x)).b.a.x % 32u), ~1i, -44017i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-2961f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-438f, 126f, true))), -1461f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-1358f, 507f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-336f, 1155f, 670f, 149f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1243f, -2176f, 151f, -1359f)))))), max(_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(u_input.c, 0u)), u_input.b.zy), select(select(var_0.a.xy, var_1.a.yz, vec2<bool>(true, true)), _wgslsmith_add_vec2_u32(~var_1.a.xz, _wgslsmith_div_vec2_u32(u_input.b.xy, vec2<u32>(var_1.a.x, 4294967295u))), vec2<bool>(true, true))), var_1.a, select(countOneBits(u_input.e << (vec2<u32>(var_1.a.x, var_1.a.x) % vec2<u32>(32u))), vec2<i32>(-6212i, ~(-38642i)), vec2<bool>(_wgslsmith_mod_u32(var_0.a.x, var_0.a.x) != 4294967295u, _wgslsmith_f_op_f32(select(1184f, 412f, true)) <= -504f)));
}

