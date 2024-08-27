struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -41890i;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mult_u32(33058u, u_input.b);
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, arg_1.a.b, arg_1.a.b, 105f), vec4<f32>(1389f, arg_1.a.b, 189f, arg_0.b)), vec4<f32>(arg_1.a.b, -466f, -379f, arg_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b)) - arg_1.a.b) + arg_1.a.b), _wgslsmith_f_op_f32(ceil(-626f)), -874f), select(arg_1.a.a.x, 93451u, _wgslsmith_div_u32(arg_1.a.a.x, arg_1.a.a.x) >= ~arg_1.a.a.x) & (arg_0.a.x | 0u));
    let var_2 = -u_input.c;
    let var_3 = Struct_2(arg_1.a, -23316i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, 1i), max(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, u_input.a, 1i, arg_0.c.x), -arg_1.a.c))));
    var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(max(arg_0.a.x, firstLeadingBit(u_input.d)), ~var_3.a.a.x << (_wgslsmith_sub_u32(var_3.a.a.x, 4294967295u) % 32u)), 39162u), var_1.c);
    return 4294967295u;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>) -> vec4<u32> {
    let var_0 = 54677i;
    global0 = i32(-1i) * -countOneBits(u_input.e);
    global0 = _wgslsmith_add_i32(u_input.a, 0i);
    global0 = -select(-u_input.a, select(-29789i, 2147483647i, !all(vec4<bool>(true, false, false, false))), select(true, true, _wgslsmith_f_op_f32(ceil(-106f)) > _wgslsmith_div_f32(308f, 643f)));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x + 775f)), _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), -364f)), arg_0.a.a.x)));
    return firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(~(~arg_0.c), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.d), func_3(Struct_1(vec4<u32>(37393u, 3445u, 1u, 12505u), arg_0.b.x, vec4<i32>(var_0, var_0, -2147483647i, u_input.c), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<u32>(arg_1.x, u_input.b, arg_1.x, arg_0.c), arg_0.b.x, vec4<i32>(1i, u_input.c, 0i, var_0), vec3<bool>(false, true, false)), -1i, u_input.e))), max(min(arg_0.c, 44166u), ~u_input.d), firstTrailingBit(abs(arg_1.x))), ~vec4<u32>(arg_0.c, reverseBits(4294967295u), ~10577u, arg_0.c)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec2<u32>(u_input.d, countOneBits(~max(u_input.d, func_2(Struct_4(Struct_3(vec4<f32>(arg_0.a.b, -2127f, -133f, arg_0.a.b)), vec3<f32>(arg_0.a.b, -491f, arg_0.a.b), arg_0.a.a.x), vec3<u32>(7790u, 0u, 65822u)).x)));
    var_0 = countOneBits(firstTrailingBit(arg_0.a.a.zy)) & (arg_0.a.a.wz >> (abs(vec2<u32>(arg_0.a.a.x, 1u)) % vec2<u32>(32u)));
    let var_1 = firstLeadingBit(4294967295u);
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1, 1u), vec3<u32>(u_input.d, u_input.d, var_0.x)), 1u) | max(arg_0.a.a.xz, vec2<u32>(4294967295u, var_0.x) >> (arg_0.a.a.zz % vec2<u32>(32u))), max(reverseBits(arg_0.a.a.wy >> (arg_0.a.a.yw % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 28630u), _wgslsmith_add_vec2_u32(arg_0.a.a.zy, min(vec2<u32>(50230u, 0u), vec2<u32>(var_0.x, var_0.x))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.b, arg_0.a.b, arg_0.a.b, 706f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.b, arg_0.a.b, arg_0.a.b, arg_0.a.b), vec4<f32>(-2437f, arg_0.a.b, arg_0.a.b, -118f), vec4<bool>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.a.b, -851f, -1127f) + vec4<f32>(arg_0.a.b, 238f, 1543f, arg_0.a.b)))))));
    return arg_0.a;
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_2(func_4(Struct_2(Struct_1(func_2(Struct_4(Struct_3(vec4<f32>(189f, -1467f, 339f, 1208f)), vec3<f32>(417f, 871f, -623f), 69641u), vec3<u32>(166u, 1u, 4294967295u)), 861f, ~vec4<i32>(u_input.a, u_input.a, u_input.c, -1i), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), -(i32(-1i) * -18632i), -4268i)), ~u_input.a, min(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, -2147483647i), func_4(Struct_2(Struct_1(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), -508f, vec4<i32>(u_input.c, u_input.a, u_input.e, u_input.e), vec3<bool>(true, true, false)), -1i, u_input.c)).c.xy), 27613i), u_input.e));
    global0 = 1i;
    global0 = ~(-50440i);
    var var_1 = func_4(var_0).c.yyx;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.b, var_0.a.b)) + 587f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(740f, 628f))), -520f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) - -907f)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1911f + var_0.a.b) * -1000f)), _wgslsmith_f_op_f32(min(1542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1168f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -977f), 1809f))));
    return vec2<bool>(any(vec4<bool>(false, !(var_0.a.d.x & true), !var_0.a.d.x, true)), true);
}

fn func_5(arg_0: vec2<bool>, arg_1: bool) -> bool {
    var var_0 = Struct_1(firstTrailingBit(vec4<u32>(firstTrailingBit(abs(34679u)), abs(u_input.d), func_3(Struct_1(vec4<u32>(u_input.b, u_input.b, 1u, u_input.d), -888f, vec4<i32>(1i, 22681i, 1i, 1i), vec3<bool>(arg_1, true, arg_1)), Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.d, u_input.d, u_input.b), 491f, vec4<i32>(70634i, 0i, -13524i, u_input.c), vec3<bool>(true, true, false)), u_input.c, -2147483647i)), firstLeadingBit(4294967295u >> (u_input.d % 32u)))), 193f, vec4<i32>(_wgslsmith_div_i32(1i >> (firstLeadingBit(u_input.d) % 32u), ~_wgslsmith_clamp_i32(u_input.c, u_input.e, u_input.a)), ~func_4(Struct_2(Struct_1(vec4<u32>(1u, u_input.d, 4294967295u, 15178u), -288f, vec4<i32>(28610i, -18406i, 13541i, -1i), vec3<bool>(arg_1, true, arg_0.x)), u_input.c, 2147483647i)).c.x, -u_input.e, u_input.e >> (~4294967295u % 32u)), select(!(!(!vec3<bool>(arg_1, arg_1, arg_1))), !(!func_4(Struct_2(Struct_1(vec4<u32>(u_input.d, u_input.d, u_input.b, 78502u), -791f, vec4<i32>(-28858i, u_input.e, 0i, u_input.a), vec3<bool>(arg_0.x, true, true)), 2147483647i, -17024i)).d), vec3<bool>(false || func_4(Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), -2117f, vec4<i32>(u_input.e, u_input.c, 16264i, -1i), vec3<bool>(arg_0.x, false, true)), 2147483647i, u_input.c)).d.x, true, any(select(vec4<bool>(arg_1, arg_1, true, arg_0.x), vec4<bool>(arg_1, arg_1, arg_0.x, arg_0.x), false)))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-758f - var_0.b), var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(func_4(Struct_2(Struct_1(vec4<u32>(1u, 61333u, 0u, u_input.d), -2414f, var_0.c, var_0.d), u_input.a, -6793i)).b))))), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(856f, _wgslsmith_f_op_f32(-1541f * _wgslsmith_f_op_f32(min(var_0.b, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + -1512f))));
    let var_2 = var_0.d.x;
    let var_3 = Struct_2(func_4(Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_f32(-822f + 312f), -vec4<i32>(var_0.c.x, 30400i, u_input.c, -2147483647i), var_0.d), 5251i, _wgslsmith_add_i32(~28316i, _wgslsmith_dot_vec2_i32(var_0.c.wx, var_0.c.zx)))), _wgslsmith_div_i32(u_input.a, _wgslsmith_div_i32(-_wgslsmith_mod_i32(u_input.e, u_input.c), ~func_4(Struct_2(Struct_1(vec4<u32>(0u, var_0.a.x, 73443u, 37591u), 415f, vec4<i32>(28048i, u_input.a, var_0.c.x, -2147483647i), vec3<bool>(arg_1, arg_1, false)), 26152i, 35134i)).c.x)), -1i);
    var var_4 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-389f, -247f)), _wgslsmith_f_op_f32(976f - var_0.b), _wgslsmith_f_op_f32(step(var_3.a.b, var_1.x)), 573f))), var_1.wwy, 0u);
    return !var_0.d.x;
}

fn func_6(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    global0 = _wgslsmith_dot_vec4_i32(max(((vec4<i32>(2147483647i, -29326i, 13037i, arg_1.x) | vec4<i32>(2819i, -5361i, u_input.c, -53618i)) ^ -vec4<i32>(arg_1.x, u_input.e, u_input.a, arg_1.x)) & ~(-vec4<i32>(1i, u_input.c, arg_1.x, u_input.c)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-20757i, -1i, -1i, arg_1.x) >> (vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b) % vec4<u32>(32u)), vec4<i32>(34993i, arg_1.x, -1i, 1i))), _wgslsmith_add_vec4_i32(abs(~vec4<i32>(2147483647i, u_input.e, arg_1.x, -17188i)) ^ vec4<i32>(-2147483647i, ~43890i, -1i, firstLeadingBit(u_input.a)), _wgslsmith_div_vec4_i32(-vec4<i32>(arg_1.x, 1i, arg_1.x, -2147483647i), vec4<i32>(~(-33398i), _wgslsmith_sub_i32(arg_1.x, u_input.a), _wgslsmith_mod_i32(arg_1.x, u_input.a), abs(u_input.a)))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1536f, -662f, 2628f, -650f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-1239f)), _wgslsmith_f_op_f32(f32(-1f) * -1329f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -644f)))));
    var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(359f)) - _wgslsmith_f_op_f32(sign(1599f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + -1308f), _wgslsmith_f_op_f32(f32(-1f) * -366f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2511f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), -990f));
    global0 = -2147483647i;
    return func_4(Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.b, 4294967295u, u_input.d), vec4<u32>(10426u, 1u, u_input.d, 4294967295u)) & ~vec4<u32>(u_input.d, 1u, u_input.b, 6090u), _wgslsmith_f_op_f32(f32(-1f) * -1506f), vec4<i32>(-1i) * -vec4<i32>(-1863i, -1i, arg_1.x, arg_1.x), vec3<bool>(true, true, any(vec3<bool>(arg_0, arg_0, true)))), -(~(i32(-1i) * -3381i)), -41978i << (_wgslsmith_mod_u32(u_input.d, u_input.b) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_6(func_5(select(vec2<bool>(false, true), func_1(), true), ~u_input.a != _wgslsmith_div_i32(48898i, u_input.a)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(u_input.a, u_input.c, u_input.e), max(vec3<i32>(-1924i, 1i, 0i), vec3<i32>(2147483647i, u_input.e, u_input.c))), select(~vec3<i32>(2147483647i, 1i, -11144i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(u_input.e, -2147483647i, -1i)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))))), i32(-1i) * -2147483647i, -1i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-395f * func_4(var_0).b), _wgslsmith_f_op_f32(floor(var_0.a.b)));
    let var_2 = Struct_2(Struct_1(vec4<u32>(max(~1u, 0u), _wgslsmith_add_u32(~u_input.d, ~var_0.a.a.x), ~func_2(Struct_4(Struct_3(vec4<f32>(var_1.x, -1164f, 362f, 543f)), vec3<f32>(var_0.a.b, var_1.x, var_1.x), 73016u), var_0.a.a.wzx).x, 1u), _wgslsmith_f_op_f32(ceil(830f)), abs(vec4<i32>(~(-1i), 8993i, var_0.a.c.x, ~(-5635i))), !func_6(false, firstLeadingBit(var_0.a.c.ywx)).d), ~abs(var_0.a.c.x), _wgslsmith_dot_vec4_i32(abs(var_0.a.c), var_0.a.c) >> ((4294967295u ^ var_0.a.a.x) % 32u));
    var var_3 = Struct_2(var_2.a, -2692i, _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mod_i32(var_0.c, 64569i >> (u_input.d % 32u))), firstTrailingBit(_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.b, -1i, -2147483647i, 30487i), var_2.a.c), vec4<i32>(28894i, 107i, var_2.b, 1i)))));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a.b * 1236f))) - _wgslsmith_f_op_f32(f32(-1f) * -575f))));
}

