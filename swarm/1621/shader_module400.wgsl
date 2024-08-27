struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(24265u, 1u, 28594u, 46447u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(!select(vec3<bool>(true, any(vec2<bool>(arg_1.a.x, false)), true), arg_1.a, select(!vec3<bool>(false, arg_1.b.b, arg_1.b.b), vec3<bool>(arg_1.b.b, arg_1.b.b, arg_1.b.b), true)), Struct_1(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, arg_1.b.d), arg_1.b.d, _wgslsmith_dot_vec3_i32(vec3<i32>(26548i, u_input.c, -31999i), u_input.b), 2147483647i) ^ ((arg_1.b.a >> (vec4<u32>(30336u, 15671u, u_input.e.x, 1374u) % vec4<u32>(32u))) & (arg_1.b.a | arg_1.b.a)), (any(arg_1.a) && true) & true, (_wgslsmith_clamp_u32(1u, arg_0.x, u_input.d) ^ _wgslsmith_div_u32(65786u, arg_1.b.c)) << (min(~41889u, 1u) % 32u), 1i));
    let var_1 = var_0.b.b;
    var var_2 = any(!var_0.a.zy);
    global0 = Struct_4(global0.a);
    var var_3 = u_input.c;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(1411f, 518f), var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-319f))))), _wgslsmith_f_op_f32(floor(-389f))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>) -> vec3<i32> {
    let var_0 = ~global0.a.www;
    global0 = Struct_4(vec4<u32>(u_input.d, firstTrailingBit(1u) >> (~_wgslsmith_mult_u32(4294967295u, global0.a.x) % 32u), var_0.x, var_0.x));
    global0 = Struct_4(vec4<u32>(26481u, firstTrailingBit(_wgslsmith_sub_u32(u_input.d, 70043u)) | firstTrailingBit(u_input.e.x), var_0.x, reverseBits(countOneBits(var_0.x))));
    let var_1 = Struct_2(select(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(false, any(vec3<bool>(false, false, true)), false), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), Struct_1(countOneBits(~(-vec4<i32>(2147483647i, 13495i, 0i, -34303i))), all(vec2<bool>(true, true)), _wgslsmith_sub_u32(select(0u & global0.a.x, ~11025u, u_input.b.x >= 31610i), firstLeadingBit(global0.a.x | var_0.x)), u_input.b.x));
    let var_2 = select(select(select(select(var_1.a.xz, vec2<bool>(true, false), !var_1.a.zy), var_1.a.zx, var_1.a.xx), vec2<bool>(any(var_1.a.yx), global0.a.x == var_0.x), select(select(!vec2<bool>(var_1.a.x, var_1.b.b), select(var_1.a.yx, var_1.a.zx, true), select(vec2<bool>(false, var_1.b.b), var_1.a.xz, var_1.a.xx)), select(vec2<bool>(var_1.a.x, false), select(var_1.a.xx, var_1.a.xz, vec2<bool>(false, true)), var_1.a.x), !(!var_1.a.zz))), var_1.a.yz, !vec2<bool>(var_1.a.x, false));
    return var_1.b.a.xwx;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec2<u32>(arg_2.x, 4294967295u), Struct_2(vec3<bool>(false, arg_0, true), Struct_1(vec4<i32>(1i, u_input.b.x, u_input.c, u_input.a.x), arg_0, 117387u, u_input.c)))))))) - _wgslsmith_f_op_f32(911f - _wgslsmith_f_op_f32(ceil(-214f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-744f, -1000f))))));
    var var_1 = Struct_2(select(!(!(!vec3<bool>(arg_0, true, arg_0))), !vec3<bool>(arg_0 || arg_0, true, true), vec3<bool>(select(!arg_0, true, true), false, true && (false & arg_0))), Struct_1(-(firstTrailingBit(vec4<i32>(-2147483647i, var_0.x, var_0.x, 54909i)) | -vec4<i32>(1i, u_input.a.x, -26907i, 3397i)), arg_0, _wgslsmith_dot_vec4_u32(~global0.a, _wgslsmith_add_vec4_u32(max(u_input.e, vec4<u32>(arg_3.a, arg_2.x, 0u, 4294967295u)), u_input.e)), -2147483647i));
    var_1 = Struct_2(select(var_1.a, vec3<bool>(any(vec2<bool>(var_1.a.x, true)), all(var_1.a.zy) & any(var_1.a.yz), !(true && var_1.b.b)), all(vec3<bool>(true, all(vec4<bool>(var_1.a.x, true, var_1.b.b, false)), !var_1.b.b))), var_1.b);
    var var_2 = arg_3;
    global0 = Struct_4(vec4<u32>(60206u, ~1u, arg_1, 2286u));
    return select(select(~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.e.x, u_input.e.x, 0u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_2.x, 54023u, 4294967295u), global0.a)), ~(~_wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(arg_1, 86824u, var_2.a, 22983u))), select(!select(vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, var_1.b.b, arg_0)), !select(vec4<bool>(true, arg_0, true, false), vec4<bool>(var_1.b.b, var_1.b.b, arg_0, false), var_1.b.b), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(var_1.a.x, false, true, false), vec4<bool>(arg_0, true, true, true)), select(true, false, var_1.a.x)))), _wgslsmith_sub_vec4_u32(~(~global0.a), ~global0.a) ^ _wgslsmith_clamp_vec4_u32(~u_input.e, vec4<u32>(43338u, abs(arg_2.x), _wgslsmith_dot_vec3_u32(u_input.e.xyw, vec3<u32>(48069u, 29009u, u_input.e.x)), arg_3.a), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a, var_2.a, 5594u, arg_1), u_input.e))), false && !(!any(var_1.a.yz)));
}

fn func_1() -> i32 {
    var var_0 = Struct_4(func_2(true, _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(40222u, u_input.d, 1u)), u_input.e.zy, Struct_3(min(4294967295u, 1u))) << (select(~abs(global0.a), _wgslsmith_sub_vec4_u32(~u_input.e, ~u_input.e), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 10439u), vec2<u32>(0u, global0.a.x)) > u_input.e.x) % vec4<u32>(32u)));
    let var_1 = -1005f;
    global0 = Struct_4(var_0.a);
    var var_2 = _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), abs(_wgslsmith_clamp_vec2_i32(u_input.b.xz, u_input.a, u_input.a))), firstLeadingBit(u_input.b.xx));
    var_0 = Struct_4(vec4<u32>(94843u, var_0.a.x, global0.a.x, u_input.d));
    return abs(~var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(3332i, 5621i), u_input.c, func_1());
    var var_1 = _wgslsmith_mod_u32(firstTrailingBit(global0.a.x) | 0u, 0u) | (38893u >> (0u % 32u));
    var var_2 = reverseBits(vec2<u32>(~global0.a.x, ~firstLeadingBit(22178u)));
    global0 = Struct_4(vec4<u32>(firstTrailingBit(u_input.d), var_2.x, _wgslsmith_sub_u32(func_2(false, ~u_input.e.x, vec2<u32>(global0.a.x, 1u), Struct_3(0u)).x, 24791u), var_2.x));
    var_0 = _wgslsmith_mult_vec3_i32(-u_input.b, -vec3<i32>(-var_0.x, var_0.x, _wgslsmith_mod_i32(var_0.x, u_input.a.x))) & (firstTrailingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(2577i, 2147483647i, 0i)), select(u_input.b, vec3<i32>(1i, u_input.c, var_0.x), true), u_input.b)) & u_input.b);
    var var_3 = -select(-var_0.x, var_0.x, !(1i == u_input.c)) >> ((select(firstTrailingBit(_wgslsmith_sub_u32(0u, global0.a.x)), ~min(33495u, 4294967295u), !any(vec3<bool>(false, true, true))) ^ ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, var_2.x), u_input.e.x & var_2.x, ~0u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(149f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-543f - 1556f), _wgslsmith_f_op_f32(f32(-1f) * -562f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2446f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-367f)))))), ~vec2<u32>(firstTrailingBit(global0.a.x >> (5029u % 32u)), u_input.e.x), _wgslsmith_sub_vec3_i32(vec3<i32>(min(var_0.x, var_0.x), ~(-20855i), -var_0.x), func_4(_wgslsmith_f_op_f32(floor(-705f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(207f, -589f)))) | vec3<i32>(u_input.a.x & -3280i, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 17862i, -8126i, 2147483647i), vec4<i32>(5638i, var_0.x, u_input.b.x, u_input.c)), abs(-2147483647i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1391f - -1056f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1212f * -1252f)))))));
}

