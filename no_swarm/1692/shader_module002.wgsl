struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2 = Struct_2(true, vec4<u32>(86998u, 4294967295u, 31201u, 1u));

var<private> global2: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(1f, !vec4<bool>(-63406i < _wgslsmith_div_i32(global2.x, global2.x), _wgslsmith_mod_i32(global2.x, global2.x) > -global2.x, global1.a, true), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, _wgslsmith_div_i32(-17427i & global2.x, firstLeadingBit(-27032i)), ~(-global2.x), ~global2.x | -7135i), vec4<i32>(-global2.x, _wgslsmith_div_i32(-41716i, global2.x), ~global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -53291i, 37684i), vec4<i32>(-1i, -2147483647i, 798i, global2.x))) ^ firstTrailingBit(vec4<i32>(global2.x, global2.x, global2.x, global2.x))), ~(~u_input.a.zx), ~vec3<u32>(~(~u_input.c), 1u, ~35779u));
    return global1.a && !global1.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    global2 = arg_2.wz;
    var var_0 = ~arg_2.xyx;
    let var_1 = firstLeadingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(arg_2.x, -1i, arg_2.x) & vec3<i32>(-57128i, -30664i, -7501i), arg_2.zyz)) << (select(abs(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, global1.b.x, 35664u) ^ global1.b.yxx, select(u_input.a, u_input.a, vec3<bool>(global1.a, global1.a, false)))), u_input.a, !func_3() && false) % vec3<u32>(32u));
    var_0 = _wgslsmith_add_vec3_i32(select(max(abs(_wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_2.x, -40261i), vec3<i32>(var_1.x, 45896i, var_0.x))), ~max(arg_2.wzy, vec3<i32>(global2.x, -22284i, -26988i))), ~reverseBits(arg_2.ywz), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1004f, arg_0.x) * _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -1000f))), select(reverseBits(firstLeadingBit(~vec3<i32>(arg_2.x, var_1.x, 41938i))), vec3<i32>(_wgslsmith_add_i32(var_0.x, abs(global2.x)), reverseBits(1i), var_0.x), global1.a));
    let var_2 = Struct_1(arg_0.x, vec4<bool>(!(~arg_1 == arg_3), true, any(!vec3<bool>(global1.a, true, global1.a)), true), max(2147483647i, (reverseBits(var_0.x) >> (1u % 32u)) ^ var_1.x), ~(vec2<u32>(82680u, arg_1) | ~(u_input.a.yy ^ u_input.a.yz)), (global1.b.wzz ^ min(select(global1.b.xwx, vec3<u32>(arg_3, 0u, 4294967295u), vec3<bool>(global1.a, false, true)), ~vec3<u32>(0u, arg_1, u_input.b))) & vec3<u32>(~arg_1 & arg_3, 1u, arg_3));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(943f - _wgslsmith_f_op_f32(-652f * _wgslsmith_f_op_f32(-arg_0.x))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_mult_i32(global2.x, _wgslsmith_sub_i32(max(global2.x ^ global2.x, 2147483647i), ~_wgslsmith_sub_i32(global2.x, -2147483647i))) | (i32(-1i) * -20181i);
    var_0 = ~(-((i32(-1i) * -2147483647i) | (-global2.x << (5394u % 32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(240f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -262f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-187f)), _wgslsmith_f_op_f32(func_2(vec3<f32>(1416f, -1175f, 902f), 850u, vec4<i32>(2147483647i, global2.x, global2.x, global2.x), 23742u))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1706f, -1000f, 1000f) * vec3<f32>(-253f, 1056f, 1264f))))) - vec3<f32>(-161f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1359f, 1431f)), 1420f)), _wgslsmith_div_f32(1319f, _wgslsmith_f_op_f32(step(-1000f, -631f))))));
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(global1.b.x, 1u), global1.b.x, 0u, 0u >> (0u % 32u));
    global0 = all(select(!(!select(vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(false, global1.a, false, global1.a), global1.a)), vec4<bool>(global1.a, global1.a, 288f >= _wgslsmith_f_op_f32(-1564f + var_1.x), !any(vec4<bool>(false, global1.a, true, false))), false));
    return Struct_3(select(select(select(select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, global1.a), vec2<bool>(true, global1.a)), select(vec2<bool>(true, global1.a), vec2<bool>(global1.a, global1.a), vec2<bool>(false, false)), vec2<bool>(false, global1.a)), !vec2<bool>(global1.a, false), select(vec2<bool>(global1.a, true), select(vec2<bool>(global1.a, false), vec2<bool>(true, true), global1.a), !global1.a)), !select(select(vec2<bool>(true, global1.a), vec2<bool>(global1.a, true), vec2<bool>(global1.a, global1.a)), select(vec2<bool>(false, false), vec2<bool>(global1.a, false), vec2<bool>(global1.a, true)), !vec2<bool>(global1.a, global1.a)), vec2<bool>(~1u != var_2.x, select(global1.a, global2.x <= global2.x, true))), _wgslsmith_dot_vec4_i32(-vec4<i32>(global2.x, global2.x, -38246i, 33022i) & min(vec4<i32>(-2147483647i, global2.x, global2.x, global2.x), vec4<i32>(global2.x, global2.x, 13166i, global2.x)), vec4<i32>(_wgslsmith_div_i32(2147483647i, 53406i), abs(global2.x), abs(global2.x), abs(23563i))) & -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_2(var_0.a.x, vec4<u32>(u_input.a.x, u_input.b, firstTrailingBit(global1.b.x), abs(~(~u_input.a.x))));
    var var_2 = 0u;
    global0 = var_1.a;
    global0 = func_1().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-258f)) + _wgslsmith_div_f32(181f, -710f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2091f))) + 878f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1508f)) - _wgslsmith_f_op_f32(f32(-1f) * -1586f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-388f, 696f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, 673f, -485f)), u_input.c ^ var_1.b.x, -vec4<i32>(0i, 26591i, 0i, global2.x), ~17942u)))));
}

