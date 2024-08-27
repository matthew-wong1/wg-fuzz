struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<u32, 24> = array<u32, 24>(4294967295u, 0u, 1u, 17899u, 48042u, 40333u, 4294967295u, 1u, 1u, 41684u, 22257u, 80413u, 24192u, 8918u, 58476u, 1u, 11565u, 4294967295u, 4294967295u, 1u, 17656u, 12002u, 0u, 1u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = min(vec4<i32>(~(-(~u_input.d.x)), select(_wgslsmith_div_i32(abs(1i), 1i), _wgslsmith_mult_i32(u_input.d.x, u_input.d.x) << (~u_input.a % 32u), !any(vec2<bool>(var_0.a.x, true))), u_input.d.x, u_input.d.x), select(min(select(vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.d.x) << (u_input.c % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 85505i, u_input.d.x, 41276i), u_input.d), vec4<bool>(var_0.a.x, false, true, arg_0.a.x)), u_input.d), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -18499i, 31638i, 1i), vec4<i32>(-2147483647i, u_input.d.x, -25014i, u_input.d.x))), min(abs(vec4<i32>(1i, -2147483647i, u_input.d.x, 2147483647i)), u_input.d)), vec4<bool>(global2.a.x, true, arg_1.a.x, arg_0.a.x)));
    let var_2 = u_input.d;
    return arg_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = u_input.d.x >> (~min(17476u, 0u) % 32u);
    var var_1 = -2147483647i;
    global3 = array<u32, 24>();
    let var_2 = Struct_1(!func_3(arg_0, arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-576f, 645f, 846f) - arg_2.b.zwz))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-335f, _wgslsmith_f_op_f32(sign(arg_0.b.x)), global2.b.x, _wgslsmith_f_op_f32(arg_0.b.x * -717f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-158f, _wgslsmith_f_op_f32(1000f + 356f), arg_2.b.x, -782f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b + vec4<f32>(global2.b.x, global2.b.x, 873f, 1770f)) * _wgslsmith_f_op_vec4_f32(max(arg_2.b, global2.b))), arg_2.a.x))), ~0u, 42293u);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(396f * -411f), 771f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1475f + _wgslsmith_f_op_f32(trunc(979f))))));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = abs(u_input.d.x);
    global1 = _wgslsmith_dot_vec3_u32(~(_wgslsmith_mult_vec3_u32(~global0.xzz, arg_3.xyz) | ~select(vec3<u32>(4294967295u, global2.d, arg_3.x), u_input.c.yzx, arg_2)), vec3<u32>(_wgslsmith_div_u32(u_input.c.x, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(u_input.c.x), _wgslsmith_sub_u32(4294967295u, 1831u)), 24u)]), global3[_wgslsmith_index_u32(firstLeadingBit(~(~27488u)), 24u)], _wgslsmith_dot_vec4_u32(vec4<u32>(~106374u, _wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_mod_u32(59078u, 1u), ~global2.c), ~vec4<u32>(25956u, arg_0.c, 0u, 4294967295u) >> ((u_input.c << (vec4<u32>(12650u, 22091u, u_input.a, global3[_wgslsmith_index_u32(arg_1, 24u)]) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2252f);
    var var_2 = !(!(!(!vec3<bool>(arg_0.a.x, false, arg_0.a.x))));
    global1 = 40381u;
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)))), _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1448f, _wgslsmith_f_op_f32(round(457f)))), true)), -851f, 865f);
}

fn func_1(arg_0: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_1(!global2.a, _wgslsmith_f_op_vec4_f32(trunc(global2.b)), 4294967295u & global0.x, _wgslsmith_mod_u32(u_input.b, 42481u)), any(vec2<bool>(true, true)), Struct_1(vec3<bool>(true, arg_0.x, arg_0.x), global2.b, global0.x << (86219u % 32u), global0.x), select(vec4<bool>(global2.a.x, true, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0.x)), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(4294967295u, 24u)], ~global0.x), 24u)], 24u)], 33644u), any(select(global2.a, vec3<bool>(true, true, true), !arg_0.x)), vec4<u32>(_wgslsmith_mult_u32(~global0.x, firstLeadingBit(0u)), 4294967295u << (global0.x % 32u), global2.c, global2.d | 1u)))));
    let var_1 = func_2(Struct_1(!func_2(func_2(Struct_1(global2.a, var_0, 4294967295u, global2.d), false, Struct_1(global2.a, global2.b, 53372u, global3[_wgslsmith_index_u32(12816u, 24u)]), vec4<bool>(false, arg_0.x, global2.a.x, true)), true, func_2(Struct_1(global2.a, vec4<f32>(307f, global2.b.x, global2.b.x, global2.b.x), 36104u, global0.x), arg_0.x, Struct_1(global2.a, var_0, 52036u, 87349u), vec4<bool>(true, false, false, false)), !vec4<bool>(arg_0.x, global2.a.x, false, true)).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(func_2(Struct_1(vec3<bool>(global2.a.x, global2.a.x, false), vec4<f32>(-1000f, -732f, var_0.x, var_0.x), 88356u, global0.x), true, Struct_1(vec3<bool>(arg_0.x, true, global2.a.x), vec4<f32>(global2.b.x, -667f, -353f, var_0.x), 2601u, u_input.b), vec4<bool>(false, global2.a.x, false, global2.a.x)).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.b.x, global2.b.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 614f, 2150f, global2.b.x)))), 4294967295u ^ global2.d, ~_wgslsmith_sub_u32(u_input.b, global3[_wgslsmith_index_u32(abs(1u), 24u)])), !(!all(select(vec4<bool>(arg_0.x, global2.a.x, true, arg_0.x), vec4<bool>(true, global2.a.x, arg_0.x, global2.a.x), true))), func_2(Struct_1(!global2.a, vec4<f32>(979f, -917f, -281f, var_0.x), global3[_wgslsmith_index_u32(~13927u, 24u)] >> (global3[_wgslsmith_index_u32(~u_input.a, 24u)] % 32u), _wgslsmith_clamp_u32(9096u, ~global3[_wgslsmith_index_u32(1u, 24u)], select(4827u, u_input.a, true))), select(!all(arg_0), arg_0.x, arg_0.x), Struct_1(vec3<bool>(any(global2.a.zz), true, false), func_2(Struct_1(vec3<bool>(true, global2.a.x, false), vec4<f32>(-404f, -201f, 499f, 1216f), 4294967295u, global3[_wgslsmith_index_u32(global0.x, 24u)]), true, func_2(Struct_1(vec3<bool>(false, true, arg_0.x), var_0, 0u, global0.x), false, Struct_1(global2.a, global2.b, 1u, 4294967295u), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)).b, 46043u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, 61u, 1u), u_input.a)), !(!select(vec4<bool>(global2.a.x, true, false, arg_0.x), vec4<bool>(global2.a.x, global2.a.x, arg_0.x, true), false))), !select(vec4<bool>(arg_0.x, arg_0.x, true, global2.a.x), !vec4<bool>(false, true, global2.a.x, false), !vec4<bool>(arg_0.x, global2.a.x, global2.a.x, true)));
    var var_2 = Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)) - _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec3<bool>(true, true, true), var_1.b, 0u, 1u), ~global0.x, arg_0.x, min(vec4<u32>(9850u, u_input.c.x, global3[_wgslsmith_index_u32(4294967295u, 24u)], global0.x), vec4<u32>(global3[_wgslsmith_index_u32(7570u, 24u)], u_input.a, 4294967295u, 96084u))))) - vec4<f32>(885f, var_1.b.x, var_0.x, -639f)), _wgslsmith_div_u32(global2.d, ~(~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global2.d, 24u)], 24u)])), ~(~(~_wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(47186u, 13580u)))));
    global1 = _wgslsmith_clamp_u32(~(~u_input.a), _wgslsmith_div_u32(~firstTrailingBit(0u), global2.d) & firstTrailingBit(abs(u_input.c.x)), 0u);
    global2 = var_1;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - global2.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-690f + var_0.x), _wgslsmith_div_f32(972f, var_2.b.x), !any(vec4<bool>(false, arg_0.x, global2.a.x, global2.a.x)))), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-546f - -1057f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(u_input.d, -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, -1i) & (vec4<i32>(u_input.d.x, 25252i, u_input.d.x, 1i) >> (u_input.c % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(~u_input.d, u_input.d)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b + global2.b) - vec4<f32>(602f, global2.b.x, global2.b.x, 1608f)), _wgslsmith_f_op_vec4_f32(-global2.b)) - _wgslsmith_f_op_vec4_f32(func_1(!(!global2.a.yx)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global2.b))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(select(-1020f, 423f, global2.a.x)), _wgslsmith_f_op_vec4_f32(func_1(global2.a.yz)).x, _wgslsmith_f_op_f32(sign(global2.b.x)))))));
    global1 = global3[_wgslsmith_index_u32(24568u, 24u)];
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(0u, 24u)], firstTrailingBit(_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(global0.x, u_input.a, global0.x)))), ~_wgslsmith_sub_u32(30682u, ~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(44505u, 24u)], 53500u)), u_input.b);
    var var_3 = countOneBits(global0.zx);
    let x = u_input.a;
    s_output = StorageBuffer(-866f, select(76562u, var_3.x, true), _wgslsmith_mult_vec3_u32(u_input.c.wyx, global0.wzz), ~(~(abs(global3[_wgslsmith_index_u32(global0.x, 24u)]) ^ 1u)), _wgslsmith_div_u32(var_3.x, 17335u));
}

