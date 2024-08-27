struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -85680i);

var<private> global1: bool;

var<private> global2: i32 = -6469i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = vec2<u32>(select(firstTrailingBit(_wgslsmith_clamp_u32(0u, ~1997u, ~38149u)), abs(abs(u_input.a | u_input.a)), false), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, false, true)), vec3<u32>(u_input.a, 1u, 25301u)), reverseBits(vec3<u32>(~u_input.a, u_input.a, ~0u))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, -1672i), max(vec3<i32>(abs(global0.x) ^ (u_input.b << (4294967295u % 32u)), -global0.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.b, 0i, -2147483647i), ~vec4<i32>(1i, u_input.b, global0.x, -391i))), max(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, global0.x, global0.x), vec3<i32>(-26618i, 48981i, global0.x) ^ vec3<i32>(19860i, u_input.b, global0.x)), vec3<i32>(abs(u_input.b), u_input.b, select(u_input.b, global0.x, false)))));
    global2 = 1i;
    let var_2 = 0u;
    global0 = vec2<i32>(i32(-1i) * -global0.x, select(_wgslsmith_add_i32(~(-11440i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.b, u_input.b, -29613i), vec4<i32>(30231i, u_input.b, u_input.b, -19589i)), abs(global0.x))), var_1, false));
    return vec2<f32>(835f, 1000f);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = ~select(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, 1i, -11195i), vec3<i32>(-2147483647i, global0.x, arg_0)), ~vec3<i32>(u_input.b, u_input.b, -45722i), _wgslsmith_clamp_vec3_i32(vec3<i32>(83593i, 2147483647i, arg_0), vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(u_input.b, 1i, arg_0))), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(-1i, -13602i, u_input.b))), select(vec3<bool>(arg_2.x != arg_2.x, all(vec4<bool>(true, true, false, true)), false), vec3<bool>(true, true, true), true));
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(min(1i, 0i), global0.x, 4679i), vec3<i32>(arg_0, -(~arg_0), firstLeadingBit(select(var_0.x, -34260i, false)))) < min(arg_0, global0.x);
    global2 = 26134i;
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-218f)))) + arg_1)));
    var var_2 = Struct_2(firstLeadingBit(var_0.xx), reverseBits(reverseBits(abs(vec3<u32>(u_input.a, 90643u, 0u))) ^ countOneBits(~vec3<u32>(1u, 0u, 15647u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_vec2_f32(func_3()).x), arg_0), any(vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, true, true)) | true, false, any(vec2<bool>(true, true)))));
    return !vec2<bool>(true & (var_2.c.a < _wgslsmith_f_op_f32(trunc(-431f))), var_2.d);
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_3(Struct_2(vec2<i32>(min(global0.x, global0.x), ~17976i) >> (_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(64990u, 27668u))) % vec2<u32>(32u)), vec3<u32>(505u, u_input.a, (u_input.a >> (u_input.a % 32u)) ^ 0u), Struct_1(684f, ~(-u_input.b)), true), countOneBits(6098u), reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(13450i, u_input.b, global0.x, -31196i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 37472i, u_input.b, global0.x), vec4<i32>(-17952i, -6334i, global0.x, global0.x))) | ~_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, 2147483647i, -15378i), vec4<i32>(global0.x, global0.x, 0i, 9903i))), !func_4(_wgslsmith_div_i32(0i, i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3()))), countOneBits(~vec2<u32>(1u, 0u))), -_wgslsmith_mod_i32(_wgslsmith_div_i32(firstLeadingBit(-1i), -2147483647i), global0.x));
    var_0 = Struct_3(Struct_2(~countOneBits(vec2<i32>(var_0.c.x, 1i)), countOneBits(~(var_0.a.b & vec3<u32>(1u, 5060u, 89695u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.c.a, var_0.a.c.a))), global0.x), select(min(44418u, var_0.a.b.x), _wgslsmith_clamp_u32(1u, 13939u, var_0.a.b.x), all(vec3<bool>(true, false, false))) != ~1u), var_0.a.b.x, _wgslsmith_add_vec4_i32(~(-select(var_0.c, vec4<i32>(23100i, u_input.b, var_0.a.a.x, 1i), var_0.a.d)), var_0.c ^ var_0.c), vec2<bool>(!var_0.a.d, true), -13666i);
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(abs(8530i), var_0.e), vec2<i32>(firstLeadingBit(u_input.b), 2147483647i)), ~vec3<u32>(_wgslsmith_sub_u32(1u, var_0.a.b.x), u_input.a ^ var_0.b, var_0.a.b.x << (u_input.a % 32u)), Struct_1(_wgslsmith_f_op_f32(floor(var_0.a.c.a)), ~(-1i << (0u % 32u))), var_0.a.d), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.b, 0u, 1u, u_input.a) ^ vec4<u32>(4294967295u, 70138u, var_0.a.b.x, u_input.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.b.x, var_0.a.b.x, 11040u, 4294967295u), vec4<u32>(0u, u_input.a, u_input.a, 65686u))), 25819u), var_0.c, vec2<bool>(var_0.a.d, false), min((_wgslsmith_mult_i32(var_0.a.c.b, u_input.b) & 2250i) & _wgslsmith_div_i32(~(-36090i), firstLeadingBit(u_input.b)), ~40354i));
    global1 = var_0.a.d;
    let var_2 = var_1.a.c.b ^ (_wgslsmith_mult_i32(-36388i, reverseBits(-u_input.b)) | var_0.c.x);
    return abs(var_1.c.ww);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = global0.x;
    global0 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(func_2(), ~min(vec2<i32>(u_input.b, 547i) ^ vec2<i32>(-2147483647i, -255i), vec2<i32>(global0.x, 31758i))), -func_2());
    let var_0 = -vec2<i32>(global0.x >> (14524u % 32u), -2148i << (~_wgslsmith_div_u32(u_input.a, 4294967295u) % 32u));
    var var_1 = global0.x;
    global2 = _wgslsmith_mult_i32(-firstTrailingBit((var_0.x << (u_input.a % 32u)) >> (abs(0u) % 32u)), var_0.x);
    return Struct_1(arg_0, min(-2147483647i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_sub_i32(~min(1i ^ (global0.x ^ 0i), -20130i), -1i);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-2044f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -738f))), u_input.b);
    global2 = var_0.b;
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_0.a) * var_0.a));
    let var_2 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(223f, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~func_1(_wgslsmith_f_op_f32(-var_0.a)).b), abs(u_input.a), abs(vec4<u32>(30092u, firstTrailingBit(4294967295u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 1u), ~u_input.a), _wgslsmith_sub_u32(~0u, abs(32346u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(996f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f), var_0.a)), var_2.a), ~_wgslsmith_mod_u32(~firstTrailingBit(u_input.a), reverseBits(u_input.a)));
}

