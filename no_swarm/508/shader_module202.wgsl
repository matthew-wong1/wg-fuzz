struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4) -> u32 {
    var var_0 = u_input.a.x;
    return ~_wgslsmith_div_u32(4294967295u, u_input.b);
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_2(vec3<i32>(-_wgslsmith_mod_i32(arg_0 | -1i, -6554i), abs(u_input.c.x), arg_0), vec3<u32>(4294967295u, (u_input.d >> (func_3(vec3<f32>(1460f, -1372f, -210f), Struct_4(Struct_3(false), 28186i)) % 32u)) ^ _wgslsmith_mult_u32(u_input.b, ~u_input.d), ~4294967295u), -2147483647i, Struct_1(vec3<bool>(true, select(false, any(vec4<bool>(false, false, false, true)), all(vec4<bool>(true, true, true, false))), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), false), all(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    var_0 = Struct_2(firstLeadingBit(u_input.a), ~(vec3<u32>(var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.b.x, var_0.b.x, 12626u), vec4<u32>(4294967295u, 1u, var_0.b.x, 82950u)), 0u) << (select(var_0.b, var_0.b, !var_0.d.a) % vec3<u32>(32u))), -19338i << ((u_input.b & 4294967295u) % 32u), Struct_1(vec3<bool>(false, true, true)), vec4<bool>(true, var_0.e.x && false, var_0.d.a.x, all(select(var_0.d.a, var_0.e.yxw, var_0.e.xxw))));
    var_0 = Struct_2(var_0.a, (vec3<u32>(~u_input.b, var_0.b.x & 51375u, _wgslsmith_mod_u32(u_input.d, var_0.b.x)) | firstTrailingBit(vec3<u32>(73647u, u_input.d, 42334u))) ^ countOneBits(var_0.b), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.e.x), vec2<i32>(-1i, u_input.e.x) & u_input.a.zy), _wgslsmith_clamp_vec2_i32(var_0.a.zy, vec2<i32>(var_0.a.x, u_input.c.x), u_input.e) & ~vec2<i32>(u_input.a.x, 0i)), var_0.d, var_0.e);
    let var_1 = Struct_4(Struct_3(all(!var_0.d.a.xy)), ~arg_0);
    var var_2 = var_1.a;
    return all(select(select(select(vec2<bool>(false, var_2.a), select(vec2<bool>(true, var_0.e.x), vec2<bool>(true, var_2.a), var_0.e.xx), var_0.d.a.x), !select(vec2<bool>(true, false), vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(var_1.a.a, true)), true), !(!vec2<bool>(false, var_0.d.a.x)), true));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(func_2(arg_3.x), !func_2(1i), any(vec2<bool>(true, true))));
    var var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, 1u, u_input.d, 0u), ~vec4<u32>(6836u, 4294967295u, u_input.b, 0u)), vec4<u32>(u_input.b, 0u, u_input.d, 1u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1786u, u_input.d, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.d, u_input.d, 108486u)) % vec4<u32>(32u))) >> (vec4<u32>(1u, abs(37401u), u_input.d, (_wgslsmith_mod_u32(u_input.b, 76751u) << (~u_input.b % 32u)) << (~abs(u_input.b) % 32u)) % vec4<u32>(32u));
    var_1 = ~vec4<u32>(u_input.b, u_input.b, ~var_1.x, _wgslsmith_add_u32(u_input.b, u_input.b)) << ((min(~select(vec4<u32>(var_1.x, var_1.x, var_1.x, 30088u), vec4<u32>(var_1.x, u_input.d, 4294967295u, 18545u), true), abs(~vec4<u32>(var_1.x, u_input.b, 37027u, 1u))) ^ reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.x, 82835u, 51368u), ~vec4<u32>(13821u, u_input.b, 12467u, 40512u)))) % vec4<u32>(32u));
    let var_2 = Struct_1(!(!var_0.a));
    var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(66172u, 0u), _wgslsmith_sub_u32(var_1.x, 0u), _wgslsmith_clamp_u32(u_input.d, u_input.b, 0u), _wgslsmith_mult_u32(4294967295u, u_input.d)), abs(vec4<u32>(var_1.x, u_input.d, u_input.d, u_input.d))), _wgslsmith_div_u32(1u, var_1.x), 0u ^ _wgslsmith_dot_vec3_u32(reverseBits(var_1.www), vec3<u32>(u_input.b, 1u, 11372u)), reverseBits(~(var_1.x >> (14565u % 32u)))));
    return Struct_1(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.e, _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, firstTrailingBit(0i)), u_input.c.xz, -(~vec2<i32>(u_input.c.x, -17724i))) >> (vec2<u32>(u_input.b, min(abs(u_input.b), u_input.d)) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(226f * _wgslsmith_f_op_f32(step(-337f, -930f)))), _wgslsmith_f_op_f32(max(262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1903f - -367f))))), _wgslsmith_div_vec3_i32(u_input.a, select(_wgslsmith_div_vec3_i32(u_input.a, u_input.c << (vec3<u32>(1u, 4294967295u, u_input.b) % vec3<u32>(32u))), vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<bool>(any(vec3<bool>(false, false, true)), true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-706f, 608f, 122f, -2151f), vec4<f32>(1205f, -1289f, -1079f, 1000f)) * vec4<f32>(250f, -641f, 746f, -546f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-201f, var_1.x)))), _wgslsmith_f_op_f32(var_1.x + -855f), _wgslsmith_f_op_f32(1927f - 256f), var_1.x), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(863f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-220f * var_1.x) + var_1.x))), -943f, -720f, var_1.x), vec4<bool>(93661i != u_input.c.x, !var_0.a.x, var_0.a.x, !var_0.a.x)));
    var_0 = func_1(-(-abs(vec2<i32>(u_input.c.x, -14697i)) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.b, 6887u)) % vec2<u32>(32u))), vec2<i32>(u_input.a.x, countOneBits(u_input.c.x)), var_1.x, u_input.a | _wgslsmith_mult_vec3_i32(u_input.c, select(vec3<i32>(49720i, 2147483647i, u_input.e.x) & u_input.a, u_input.a, var_0.a.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 197f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1120f, var_1.x, 1000f, -1000f)))))));
    let var_2 = 45016i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-392f, var_1.x, var_0.a.x)) - _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_div_f32(667f, _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * -1114f), -377f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1473f, var_1.x, var_1.x), vec3<f32>(862f, -672f, var_1.x))), _wgslsmith_f_op_vec3_f32(trunc(var_1.xyw)), var_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -646f) * -1283f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-864f, var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1170f)))))), _wgslsmith_dot_vec3_i32(~u_input.a, ~(vec3<i32>(var_2, 17831i, 11100i) & -u_input.c)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-u_input.c.x, var_2), reverseBits(1i), -2147483647i));
}

