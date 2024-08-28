struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(419f, -1000f, -686f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(634f, 340f, 1000f))), vec3<bool>(true, true, true))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-987f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1086f - -690f)), _wgslsmith_f_op_f32(max(-635f, _wgslsmith_f_op_f32(f32(-1f) * -253f)))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = min(_wgslsmith_sub_vec3_i32(arg_2.a, vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-7797i, arg_2.a.x, -39423i), arg_2.a), countOneBits(u_input.c))), -arg_2.a ^ vec3<i32>(_wgslsmith_mod_i32(-4912i, 1i), select(abs(-2147483647i), firstLeadingBit(2147483647i), !arg_2.b.a.x), -4031i));
    let var_1 = arg_2.d.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_2.c)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_2.c)) - _wgslsmith_div_vec3_f32(vec3<f32>(775f, 234f, arg_2.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-550f, arg_2.c.x, 1354f) + vec3<f32>(-1313f, arg_2.c.x, arg_2.c.x)))), arg_2.c)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_vec3_f32(func_1(u_input.a)).x);
    var var_4 = max(countOneBits(~(~vec4<i32>(22819i, arg_2.a.x, 2147483647i, -2147483647i))), vec4<i32>(u_input.c, u_input.c, arg_2.a.x, 1i)) & _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, reverseBits(max(38962i, var_0.x)), u_input.c, _wgslsmith_sub_i32(var_0.x, -23484i)), vec4<i32>(_wgslsmith_mod_i32(u_input.c & arg_2.a.x, 1752i), ~(-26099i), arg_2.a.x << (~15620u % 32u), u_input.c));
    return _wgslsmith_div_vec3_i32(var_4.xyx, var_0);
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_3(all(arg_1.d.e.a.yx), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_1.b, arg_1.d.b.a))), _wgslsmith_f_op_vec3_f32(select(arg_1.d.c, arg_1.d.c, arg_1.d.d.a))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37469u, 127432u, 30386u, 31688u), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)), firstLeadingBit(~arg_1.c)), Struct_2(func_3(arg_1.d.e, !(arg_1.b.x == 230f), arg_1.d), arg_1.d.d, _wgslsmith_f_op_vec3_f32(-arg_1.b), arg_1.d.b, Struct_1(arg_1.d.e.a)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-485f * 367f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1579f, 1100f, 649f) + vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1783f, -777f, -1068f)))))), _wgslsmith_f_op_vec3_f32(func_1(u_input.a)));
    var var_1 = Struct_3(true && (_wgslsmith_f_op_f32(var_0.x + -1000f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b.x, Struct_3(false, vec3<f32>(var_0.x, 886f, var_0.x), 6886u, Struct_2(vec3<i32>(u_input.c, u_input.c, -1i), Struct_1(vec3<bool>(true, false, false)), vec3<f32>(-1000f, -1000f, var_0.x), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)))))) + var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(-420f)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -128f)), _wgslsmith_dot_vec4_u32(abs(u_input.b), firstTrailingBit(vec4<u32>(4294967295u, 82236u, u_input.b.x, 4294967295u))) ^ (_wgslsmith_dot_vec3_u32(abs(u_input.b.ywy), u_input.b.xwy) | ~u_input.a), Struct_2(~reverseBits(countOneBits(vec3<i32>(u_input.c, -2147483647i, -1i))), Struct_1(vec3<bool>(all(vec2<bool>(true, true)), false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(-1698f, 169f, var_0.x)))), Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), Struct_1(vec3<bool>(false, false, true))));
    var var_2 = var_1.d.e;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f * var_0.x))), var_1.d.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.x))))));
    let var_3 = 58967u;
    var_2 = var_1.d.d;
    let var_4 = -vec4<i32>(firstTrailingBit(max(u_input.c, ~(-21733i))), max(select(_wgslsmith_add_i32(u_input.c, var_1.d.a.x), _wgslsmith_sub_i32(u_input.c, 1i), false), _wgslsmith_sub_i32(~u_input.c, var_1.d.a.x)), u_input.c, u_input.c);
    let var_5 = Struct_1(select(var_1.d.d.a, !var_2.a, select(select(select(vec3<bool>(false, var_2.a.x, false), vec3<bool>(false, false, false), var_2.a.x), !vec3<bool>(var_1.d.e.a.x, var_2.a.x, true), false), vec3<bool>(var_1.a, var_2.a.x, var_2.a.x), select(vec3<bool>(var_2.a.x, true, false), var_1.d.b.a, all(var_1.d.b.a)))));
    var var_6 = var_1.d.d;
    let x = u_input.a;
    s_output = StorageBuffer(-1064f, vec4<i32>(-(~24337i), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.d.a.x, var_4.x), max(6284i, u_input.c)), _wgslsmith_div_i32(firstTrailingBit(var_4.x), abs(~(-12780i))), _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, firstTrailingBit(-1i)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, var_1.d.a.x, 12139i, var_1.d.a.x), vec4<i32>(var_1.d.a.x, var_4.x, var_4.x, -62804i))))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(4294967295u, 0u)), u_input.b.zx, _wgslsmith_mod_vec2_u32(u_input.b.wx, u_input.b.xw)), countOneBits(u_input.b.wz) << (_wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_1.c, 49569u)), vec2<u32>(u_input.b.x, var_3) ^ u_input.b.yw) % vec2<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -1220f), 0u);
}

