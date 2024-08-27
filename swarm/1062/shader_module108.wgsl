struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = min(reverseBits(u_input.d), 1i) << (u_input.c % 32u);
    var var_1 = vec4<bool>(arg_0, !(!(true || !arg_0)), arg_0, false);
    let var_2 = false;
    var_1 = !select(!vec4<bool>(false, true, all(vec2<bool>(true, arg_0)), arg_0), select(!vec4<bool>(false, false, var_1.x, false), vec4<bool>(var_1.x, any(vec4<bool>(var_1.x, arg_0, false, var_2)), var_2, false), !(!vec4<bool>(var_2, false, var_1.x, arg_0))), true);
    var var_3 = Struct_3(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    return !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(2088f, 299f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = select(func_3(arg_0), firstTrailingBit(u_input.d) < abs(~_wgslsmith_add_i32(-7060i, u_input.d)), arg_0);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(119f, -384f, -869f, 1000f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -827f, -1128f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x), vec4<f32>(2100f, 723f, -913f, var_1.x), arg_0))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -193f, var_1.x) * vec4<f32>(1000f, -1363f, -1215f, -1590f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1645f, -2063f, 1412f, -901f)))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -737f)))), firstTrailingBit(vec3<i32>(4749i, u_input.d, u_input.d)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.b, u_input.a.x)) % vec3<u32>(32u)), 646f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(-var_1.x))), select(countOneBits(vec3<i32>(u_input.d, 3630i, u_input.d)), vec3<i32>(u_input.d, u_input.d, -1i) << (vec3<u32>(u_input.b, 4294967295u, 15150u) % vec3<u32>(32u)), !vec3<bool>(true, true, arg_0)) & (vec3<i32>(u_input.d, -1i, u_input.d) & min(vec3<i32>(u_input.d, u_input.d, 1i), vec3<i32>(21424i, -32783i, u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), 0u, select(!select(!vec4<bool>(arg_1, arg_1, arg_1, arg_0), vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, arg_1, true, false)), vec4<bool>(arg_0, !arg_0, true, false), arg_0), Struct_1(-289f, vec3<i32>(24856i, 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 9043i, -65020i, u_input.d), vec4<i32>(-31386i, 0i, 51286i, 0i)), u_input.d)), var_1.x));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.e.c, 1137f, var_2.b.c, var_2.a.c))) * vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), 1144f, -250f, _wgslsmith_f_op_f32(sign(var_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1424f, 1335f, 292f, var_2.b.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1129f, -252f, 1000f, var_1.x) + vec4<f32>(-799f, var_2.a.c, -1893f, var_2.b.a))))))));
    return Struct_1(var_2.a.c, abs(_wgslsmith_add_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(82197i, u_input.d, var_2.b.b.x), vec3<i32>(u_input.d, u_input.d, 16171i)), vec3<i32>(8920i, -1i, var_2.b.b.x), var_2.d.zzx), vec3<i32>(-1i, u_input.d, -1i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.b.x, -1i, u_input.d), var_2.b.b, var_2.e.b))), _wgslsmith_f_op_f32(round(var_1.x)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(u_input.c >= _wgslsmith_mod_u32(~69791u, ~u_input.b >> (min(u_input.b, u_input.c) % 32u)), u_input.d < 1i);
    var var_1 = select(u_input.c, _wgslsmith_sub_u32(~21627u, _wgslsmith_div_u32(~u_input.b, u_input.b)), !(!any(vec3<bool>(false, true, false))));
    var var_2 = vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(var_0.b.x), u_input.d, var_0.b.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(411f, _wgslsmith_f_op_f32(-var_0.c))), select(_wgslsmith_div_vec3_i32(-var_0.b, vec3<i32>(-u_input.d, reverseBits(-4879i), _wgslsmith_mod_i32(1257i, var_0.b.x))), var_0.b, true), -1397f);
    let var_4 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f - -940f)))), -vec3<i32>(_wgslsmith_mod_i32(var_2.x, u_input.d), var_2.x, var_2.x), _wgslsmith_div_f32(var_0.a, 828f)), ~u_input.a.x, select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec2<bool>(true, false)), all(vec2<bool>(true, true)), var_0.b.x >= var_0.b.x), !all(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), any(vec3<bool>(true, true, true)), var_0.b.x >= -2147483647i)), var_0);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_2(func_1().b, var_0.a, 1u, var_0.d, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f), 220f), -478f)), _wgslsmith_mult_vec3_i32(~var_0.b.b, var_0.b.b), 645f));
    let var_1 = false;
    let var_2 = vec2<i32>(1i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, var_0.c, 28390u, 4294967295u), ~(~vec4<u32>(var_0.c, 0u, 2536u, u_input.c))) % 32u), ~var_0.e.b.x);
    var_0 = func_1();
    var_0 = Struct_2(Struct_1(200f, -(~vec3<i32>(u_input.d, u_input.d, -649i)), _wgslsmith_f_op_f32(-var_0.b.a)), func_2(var_0.d.x, all(select(!vec3<bool>(true, var_1, false), select(var_0.d.xyw, var_0.d.wzw, var_1), vec3<bool>(true, true, true)))), ~(~5518u), !select(var_0.d, vec4<bool>(!var_0.d.x, false, var_1, true), vec4<bool>(select(false, false, var_0.d.x), var_0.d.x && false, var_0.d.x, all(var_0.d.zw))), func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-445f + 645f), 896f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.c) * _wgslsmith_div_f32(var_0.a.a, var_0.b.c)), 1287f) + vec4<f32>(var_0.b.a, var_0.b.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-230f - 1789f), var_0.b.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-759f)) + var_0.b.a))), ~(~(~max(vec4<u32>(var_0.c, 59261u, 100073u, 4294967295u), vec4<u32>(var_0.c, u_input.a.x, 4294967295u, var_0.c)))), ~(-825i), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(-17270i) >> ((u_input.c ^ 1u) % 32u), _wgslsmith_dot_vec3_i32(var_0.e.b, vec3<i32>(u_input.d, -2147483647i, 0i)), u_input.d), var_0.e.b), _wgslsmith_div_vec3_u32(countOneBits(abs(vec3<u32>(var_0.c, 15765u, 0u)) << ((vec3<u32>(3171u, 123282u, 54253u) >> (vec3<u32>(var_0.c, u_input.c, var_0.c) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<u32>(~u_input.c, firstLeadingBit(~var_0.c), u_input.a.x)));
}

