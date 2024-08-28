struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 15>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    var var_0 = vec2<u32>(4294967295u, ~54961u);
    let var_1 = arg_1.zy;
    var var_2 = ~vec2<u32>(select(32583u, ~87000u << (var_0.x % 32u), !any(arg_1.zz)), 4294967295u);
    global0 = all(arg_1);
    var_0 = vec2<u32>(31585u, ~(~(~arg_3.a.x)));
    return arg_3.d.c.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_4(vec3<i32>(-23054i, _wgslsmith_mod_i32(arg_0.a.x, func_3(false, vec3<bool>(true, true, true), Struct_1(vec2<i32>(0i, 1i), vec3<u32>(u_input.a, 6654u, 0u), arg_0.b.zx), Struct_3(arg_0.b, arg_0.b.x, vec3<f32>(1058f, arg_1, arg_1), Struct_2(-1i, arg_0, arg_0), 4294967295u))), -min(~2147483647i, select(0i, 10441i, false))), Struct_2(10967i, Struct_1(firstLeadingBit(arg_0.a << (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10680u, 15u)], 15u)], arg_0.c.x) % vec2<u32>(32u))), ~(~vec3<u32>(global1[_wgslsmith_index_u32(arg_0.c.x, 15u)], arg_0.b.x, arg_0.b.x)), vec2<u32>(22714u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18334u, 15u)], 15u)]) >> (~arg_0.b.yx % vec2<u32>(32u))), arg_0), Struct_2(arg_0.a.x, arg_0, arg_0), arg_0.c.x);
    let var_1 = select(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), !vec3<bool>(true, select(true, true, any(vec3<bool>(true, false, false))), all(vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec2<bool>(true, true)), true && all(vec4<bool>(true, false, true, false))), all(vec3<bool>(true, true, true))));
    let var_2 = arg_0.a;
    let var_3 = Struct_3(countOneBits(arg_0.b), ~firstLeadingBit(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, arg_0.b.x), 15u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, -607f)))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1908f, arg_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 1000f) * vec3<f32>(1219f, 1000f, arg_1)))))), var_0.c, reverseBits(_wgslsmith_add_u32(11962u, 0u)));
    var var_4 = _wgslsmith_div_f32(var_3.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * var_3.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1158f))))));
    return var_1.yx;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec2<f32> {
    global1 = array<u32, 15>();
    var var_0 = arg_0.a.x;
    var var_1 = select(vec2<bool>(arg_2, true), !func_2(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-535f + 386f) + _wgslsmith_f_op_f32(-1495f + -1000f))), !func_2(arg_0, -2407f));
    global0 = all(select(vec4<bool>(!all(vec3<bool>(var_1.x, arg_2, var_1.x)), var_1.x, ~0i < ~arg_0.a.x, true), select(!select(vec4<bool>(false, arg_2, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, true), true), !select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(false, var_1.x, arg_2, false), arg_2), false), !any(vec4<bool>(false, arg_2, arg_2, var_1.x))));
    let var_2 = select(36417u & ~global1[_wgslsmith_index_u32(~abs(1u), 15u)], reverseBits(30564u) << (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1, arg_1 | ~1u), 15u)] % 32u), ~1u != ~arg_0.b.x);
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-435f)), -1397f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2066f, -648f), vec2<f32>(257f, 274f), vec2<bool>(true, var_1.x)))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = true;
    var var_1 = arg_2;
    var var_2 = vec3<u32>(49161u, 1u, ~abs(1u) >> (var_1.c.b.x % 32u));
    return Struct_3(~_wgslsmith_add_vec3_u32(~vec3<u32>(448u, 0u, 4294967295u), vec3<u32>(countOneBits(var_1.b.c.x), 1u, _wgslsmith_dot_vec2_u32(var_1.b.b.yx, var_1.b.c))), 44612u ^ (~0u ^ (max(var_1.b.b.x, 1u) >> (1u % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-586f, 1000f, 571f), vec3<f32>(arg_0.x, 1197f, 1458f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-326f, -1136f, 3205f), vec3<f32>(701f, arg_0.x, arg_0.x), true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1890f, 1179f, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) + vec3<f32>(-485f, -964f, 193f)))), Struct_2(~_wgslsmith_mult_i32(var_1.a & var_1.b.a.x, 51804i), arg_2.c, Struct_1(vec2<i32>(2147483647i, arg_2.a), vec3<u32>(51246u, ~0u, 0u), vec2<u32>(arg_2.b.c.x, var_1.b.c.x))), var_2.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = false;
    let var_1 = 12472i;
    let var_2 = false;
    var var_3 = Struct_4(arg_0.xzy, Struct_2(arg_0.x, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 2934f)), select(vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(var_2, false, true, true), vec4<bool>(true, var_2, false, true)), Struct_2(-arg_0.x, Struct_1(arg_3.d.c.a, arg_3.a, arg_3.a.zx), arg_3.d.b)).d.b, Struct_1(vec2<i32>(arg_0.x, arg_3.d.b.a.x) | vec2<i32>(-20944i, arg_0.x), countOneBits(vec3<u32>(415u, 11988u, arg_3.a.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(5102u, 35413u, u_input.a, global1[_wgslsmith_index_u32(1u, 15u)]), vec4<u32>(u_input.a, arg_3.a.x, 4294967295u, arg_3.e)), global1[_wgslsmith_index_u32(0u, 15u)]))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.c.yy))), vec4<bool>(false, any(vec4<bool>(false, var_2, false, var_2)) != true, all(select(vec4<bool>(var_2, true, true, true), vec4<bool>(var_2, false, true, true), var_2)), var_2), func_4(vec2<f32>(-140f, -782f), vec4<bool>(true == var_2, !var_2, arg_1 <= arg_2, var_2), Struct_2(~58310i, Struct_1(vec2<i32>(arg_3.d.c.a.x, var_1), arg_3.d.c.b, arg_3.a.zz), Struct_1(arg_3.d.b.a, arg_3.d.b.b, arg_3.d.c.b.zx))).d).d, ~(~(arg_3.a.x | _wgslsmith_clamp_u32(0u, 0u, 43075u))));
    var var_4 = _wgslsmith_f_op_f32(-arg_1);
    return (vec3<u32>(firstTrailingBit(35141u) & global1[_wgslsmith_index_u32(firstTrailingBit(0u), 15u)], _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(8183u, 36015u, 1u, var_3.c.c.b.x), vec4<u32>(13536u, arg_3.d.c.b.x, arg_3.d.c.c.x, 1u), vec4<u32>(u_input.a, 32971u, 34863u, u_input.a)), vec4<u32>(0u, 30701u, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 15u)])), ~37757u) | firstLeadingBit(var_3.c.c.b)) << (~((var_3.c.b.b << ((var_3.b.c.b & arg_3.a) % vec3<u32>(32u))) ^ (vec3<u32>(64727u, 0u, 36598u) | arg_3.a)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~max(-vec3<i32>(-1i, -46786i, 20622i), _wgslsmith_mod_vec3_i32(vec3<i32>(3541i, -26992i, -14204i), vec3<i32>(1i, -10237i, -1i)) >> (~vec3<u32>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 15u)]) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(251f, 718f))), _wgslsmith_f_op_f32(-265f - -179f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1027f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-389f, -1143f))) + -1409f)));
    var var_2 = func_5(~_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-2147483647i, var_0.x, 11061i, var_0.x) & vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), ~(vec4<i32>(var_0.x, var_0.x, 54013i, -51133i) >> (vec4<u32>(12905u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38640u, 15u)], 15u)], 15u)], u_input.a) % vec4<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-382f - _wgslsmith_f_op_f32(-var_1.x)), var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), func_4(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<i32>(var_0.x, var_0.x), ~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 15u)], 22353u), _wgslsmith_mult_vec2_u32(vec2<u32>(38814u, 0u), vec2<u32>(u_input.a, u_input.a))), (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2027u, 15u)], 15u)], 15u)] | global1[_wgslsmith_index_u32(0u, 15u)]) & u_input.a, false)), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), false), Struct_2(~0i ^ var_0.x, Struct_1(firstLeadingBit(var_0.zy), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 31860u, 35535u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], u_input.a, 87942u)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 24051u)), Struct_1(var_0.zz, ~vec3<u32>(u_input.a, 0u, u_input.a), vec2<u32>(17352u, 75930u)))));
    var var_3 = Struct_1(vec2<i32>(-1i) * -abs(vec2<i32>(var_0.x, var_0.x) & var_0.zz), firstLeadingBit(~(abs(vec3<u32>(global1[_wgslsmith_index_u32(39921u, 15u)], u_input.a, var_2.x)) | _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 15u)], var_2.x), vec3<u32>(var_2.x, var_2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 15u)])))), max(~var_2.yx, vec2<u32>(~var_2.x << (abs(52114u) % 32u), u_input.a)));
    var_3 = Struct_1(vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(-var_3.a, _wgslsmith_mod_vec2_i32(vec2<i32>(-8586i, var_3.a.x), vec2<i32>(var_3.a.x, var_0.x)))), 2147483647i), var_3.b, var_3.c);
    var_2 = vec3<u32>(31363u, 107396u, ~var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(66355u);
}

