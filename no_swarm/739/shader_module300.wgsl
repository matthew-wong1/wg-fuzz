struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(i32(-2147483648), 16107i, 31665i), vec3<i32>(1i, -1i, 54203i), vec3<i32>(-14530i, 46485i, 0i), vec3<i32>(5447i, 1i, 1i), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -16276i), vec3<i32>(26312i, 26156i, 0i), vec3<i32>(0i, 53396i, 2147483647i), vec3<i32>(-16103i, 2147483647i, 47062i), vec3<i32>(-1i, -14340i, -20486i), vec3<i32>(30337i, -45345i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), -17823i, -1i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)));

var<private> global1: f32 = 768f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3) -> f32 {
    let var_0 = arg_0;
    global0 = array<vec3<i32>, 14>();
    global1 = arg_2.a.a;
    var var_1 = ~var_0;
    global0 = array<vec3<i32>, 14>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a.a)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = -_wgslsmith_div_i32(_wgslsmith_clamp_i32(countOneBits(1i), firstTrailingBit(countOneBits(1i)), -23764i), countOneBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(-7616i, 18074i), ~(-7587i))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_f32(536f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(163f))))), vec4<u32>(17607u, 23339u, 1u, _wgslsmith_mod_u32(0u, 4294967295u)) & ~vec4<u32>(60737u, u_input.c.x, 0u, u_input.a)), select(~vec3<u32>(_wgslsmith_sub_u32(8012u, u_input.c.x), u_input.b.x, 41823u), ~((vec3<u32>(u_input.c.x, 4294967295u, u_input.b.x) ^ u_input.c.zzy) ^ (u_input.c.zwz << (u_input.c.ywz % vec3<u32>(32u)))), select(arg_0.wyw, !(!arg_0.yxy), arg_0.ywy)), !arg_0.xzy, Struct_1(-569f, min(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.c.x, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, 4294967295u, u_input.c.x, 4294967295u), u_input.c)), u_input.c)));
    let var_2 = Struct_3(Struct_1(-1895f, var_1.d.b), abs(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(var_1.a.b.x, u_input.b.x, 2393u)), var_1.d.b.xzy)), !var_1.c, var_1.a);
    let var_3 = firstLeadingBit(firstTrailingBit(abs(1i)));
    let var_4 = var_1.a;
    return var_2.a.b.x;
}

fn func_4(arg_0: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_2(-1054f, u_input.c);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(17223u, 1u, arg_0.x, var_0.b.x), select(u_input.c, var_0.b, vec4<bool>(true, true, true, false))) ^ var_0.b), _wgslsmith_mod_vec3_u32(min(vec3<u32>(~u_input.a, 0u, _wgslsmith_add_u32(arg_0.x, 1u)), ~firstLeadingBit(vec3<u32>(u_input.c.x, 75538u, 0u))), _wgslsmith_clamp_vec3_u32(~var_0.b.xyy, _wgslsmith_sub_vec3_u32(~vec3<u32>(8955u, 4294967295u, arg_0.x), vec3<u32>(73163u, var_0.b.x, 0u) ^ vec3<u32>(12791u, 104634u, 43444u)), u_input.c.ywy)), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), Struct_1(389f, u_input.c | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 0u), var_0.b, vec4<u32>(0u, var_0.b.x, 0u, 4294967295u))));
    var var_2 = ~(-(~(-firstLeadingBit(-47557i))));
    let var_3 = vec2<i32>(_wgslsmith_clamp_i32(-1i, 2147483647i, -2147483647i), min(abs(countOneBits(2147483647i)), -1i)) << (firstLeadingBit(firstLeadingBit(u_input.c.zx)) % vec2<u32>(32u));
    let var_4 = var_0.b;
    return vec2<i32>(countOneBits(select(firstTrailingBit(14757i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_3.x, var_3.x), vec3<i32>(1i, var_3.x, -2929i))), true)), ~max(2147483647i, _wgslsmith_add_i32(var_3.x | 1i, _wgslsmith_add_i32(var_3.x, var_3.x))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-449f + arg_1.x), _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 25645u, arg_0.x, 4294967295u), ~arg_0), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 33000u, 1u), vec4<u32>(arg_0.x, 31335u, 0u, 4294967295u)), ~u_input.c) & ~(~u_input.c)));
    let var_2 = ~u_input.c.x;
    var var_3 = func_4(countOneBits(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.zx, var_1.b.xw), arg_0.yx)) | vec2<u32>(u_input.c.x, func_3(vec4<bool>(true, true, false, true))));
    let var_4 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(arg_1.x - 929f)), 386f), ~(~(vec4<u32>(arg_2, var_1.b.x, 55740u, u_input.c.x) << (vec4<u32>(u_input.a, 1u, 36618u, var_2) % vec4<u32>(32u))))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(firstTrailingBit(var_1.b.x), ~var_2), _wgslsmith_clamp_u32(~u_input.b.x, ~arg_2, var_1.b.x << (24613u % 32u))), ~_wgslsmith_div_u32(1u, 22339u), abs(u_input.c.x)), vec3<bool>(var_1.a != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1710f)))), !all(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false))))), Struct_1(447f, ~abs(var_1.b)));
    return !var_4.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-2515f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(584f * -103f))), _wgslsmith_div_f32(_wgslsmith_div_f32(556f, 717f), _wgslsmith_f_op_f32(func_1(8727i, vec3<bool>(true, true, false), Struct_3(Struct_1(887f, u_input.c), vec3<u32>(3745u, 0u, 0u), vec3<bool>(false, true, false), Struct_1(-2058f, u_input.c))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(0i, select(func_2(u_input.c, vec2<f32>(-300f, 873f), 24871u, vec3<i32>(0i, 1i, -236i)), func_2(u_input.c, vec2<f32>(-285f, 714f), 13027u, global0[_wgslsmith_index_u32(u_input.a, 14u)]), true), Struct_3(Struct_1(-1568f, vec4<u32>(0u, u_input.a, 1u, u_input.a)), ~vec3<u32>(u_input.c.x, 39370u, 1u), vec3<bool>(true, false, false), Struct_1(1747f, u_input.c)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-593f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -868f)))))), _wgslsmith_f_op_f32(271f - _wgslsmith_div_f32(-2628f, _wgslsmith_f_op_f32(-1006f + _wgslsmith_f_op_f32(f32(-1f) * -912f)))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1351f);
    var var_1 = vec3<i32>(0i, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(~(~1u), 14u)], firstTrailingBit(vec3<i32>(0i, 0i, -41626i)) & min(vec3<i32>(2147483647i, 40556i, 7708i), reverseBits(global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))), max(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(1i, -2147483647i), 0i, 1i), min(vec3<i32>(2147483647i, -66182i, 0i), vec3<i32>(-20813i, -1i, 27327i) >> (u_input.c.wyw % vec3<u32>(32u)))), 2147483647i << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x, 25122u), min(4294967295u, 0u), ~u_input.a) % 32u)));
    var_1 = -(~(-(vec3<i32>(0i, -1i, var_1.x) >> (u_input.c.wwx % vec3<u32>(32u))))) | vec3<i32>(-1i, i32(-1i) * -var_1.x, _wgslsmith_dot_vec2_i32(var_1.zx, func_4(u_input.c.xx)) ^ var_1.x);
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(u_input.b.x | u_input.b.x)), _wgslsmith_sub_u32(~select(0u, u_input.c.x, false), 1810u)), 14u)] >> (vec3<u32>(abs(u_input.b.x >> (~u_input.a % 32u)), 4294967295u, ~u_input.c.x) % vec3<u32>(32u));
    let var_2 = reverseBits(_wgslsmith_div_u32(38009u, _wgslsmith_clamp_u32(func_3(vec4<bool>(false, true, true, false)), abs(u_input.c.x), 4294967295u))) >> (_wgslsmith_div_u32(u_input.b.x, countOneBits(~max(u_input.a, 22637u))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(32374i, ~u_input.b, ~(~vec4<u32>(var_2, reverseBits(58540u), var_2, 56351u)), min(~(vec4<i32>(-2147483647i, 0i, -16390i, var_1.x) | firstTrailingBit(vec4<i32>(var_1.x, var_1.x, -2147483647i, 0i))), _wgslsmith_mult_vec4_i32(-select(vec4<i32>(var_1.x, var_1.x, var_1.x, 0i), vec4<i32>(var_1.x, var_1.x, -24039i, var_1.x), vec4<bool>(false, true, false, false)), vec4<i32>(-1i, var_1.x >> (var_2 % 32u), i32(-1i) * -29228i, var_1.x))), 1000f);
}

