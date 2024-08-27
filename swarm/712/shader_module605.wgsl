struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    var var_0 = Struct_4(vec2<i32>(~(~_wgslsmith_clamp_i32(-2147483647i, -1459i, u_input.a.x)), _wgslsmith_sub_i32(u_input.b, ~(~u_input.a.x))));
    var_0 = Struct_4(var_0.a);
    var var_1 = Struct_3(-vec2<i32>(-_wgslsmith_clamp_i32(var_0.a.x, -2147483647i, -2147483647i), var_0.a.x), Struct_1(abs(~firstLeadingBit(u_input.c.x)), select(select(vec4<i32>(1i, u_input.a.x, var_0.a.x, var_0.a.x), vec4<i32>(1i, u_input.b, -2147483647i, u_input.b), true), -vec4<i32>(var_0.a.x, u_input.a.x, 0i, -2147483647i), true) << (_wgslsmith_mod_vec4_u32(vec4<u32>(75825u, u_input.c.x, u_input.c.x, 4294967295u), countOneBits(vec4<u32>(46968u, 62348u, 40525u, u_input.c.x))) % vec4<u32>(32u))), Struct_1(~1u, vec4<i32>(-(i32(-1i) * -22365i), var_0.a.x, u_input.b, -(~u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(747f)), _wgslsmith_f_op_f32(-824f - _wgslsmith_f_op_f32(f32(-1f) * -978f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(635f, -166f, 1429f), vec3<f32>(631f, -1000f, 1163f), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(257f, -1488f, -1501f) + vec3<f32>(1878f, -215f, -147f))))));
    let var_2 = Struct_3(vec2<i32>(u_input.a.x, var_0.a.x), var_1.c, var_1.b, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, var_1.d.x, true)))), var_1.e.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-434f, var_1.e.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.d.x, var_1.e.x, false)))), var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.e.x - 878f))))));
    let var_3 = _wgslsmith_div_vec3_u32(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 86036u, var_1.b.a), vec3<u32>(var_2.b.a, 19959u, 0u)), vec3<u32>(0u, min(4294967295u, u_input.c.x), ~75944u)), _wgslsmith_add_vec3_u32(vec3<u32>(52874u, var_2.b.a, 1u), countOneBits(countOneBits(~vec3<u32>(4294967295u, var_2.b.a, u_input.c.x)))));
    return true;
}

fn func_2() -> vec4<i32> {
    var var_0 = all(vec2<bool>(false, func_3())) | true;
    var_0 = false;
    let var_1 = -select(firstTrailingBit(abs(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.a.x))), (vec4<i32>(1i, -61326i, 29242i, 1i) ^ vec4<i32>(44831i, -1i, u_input.a.x, u_input.a.x)) << (~vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false))) | (vec4<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 503i, u_input.a.x), vec3<i32>(0i, 0i, u_input.b))), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, u_input.b), u_input.a), _wgslsmith_clamp_i32(u_input.a.x >> (u_input.c.x % 32u), ~1i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), abs(countOneBits(-2147483647i))) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(4369i, 57983i, -2147483647i, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(u_input.b, u_input.b, 1i, 0i))), abs(~vec4<i32>(-5629i, 2147483647i, u_input.b, u_input.b))));
    let var_2 = Struct_4(vec2<i32>(select(-var_1.x, 32502i, true), _wgslsmith_mod_i32(var_1.x, u_input.a.x) | u_input.b) >> (~(~vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)));
    var var_3 = 4294967295u;
    return ~(-(var_1 << (vec4<u32>(_wgslsmith_mod_u32(0u, u_input.c.x), ~u_input.c.x, ~u_input.c.x, u_input.c.x) % vec4<u32>(32u))));
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-210f, -907f, 1361f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-292f, -1106f, 1000f)))))), !vec4<bool>(false, false, true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), max(func_2(), _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, 54005i, -2147483647i) | countOneBits(vec4<i32>(u_input.b, -38273i, u_input.b, 2147483647i)), ~vec4<i32>(-46729i, u_input.b, u_input.b, 21783i) ^ abs(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.b)))), vec2<u32>(u_input.c.x, u_input.c.x), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, firstLeadingBit(u_input.c.x)), 1u, 34384u), -(func_2() ^ -vec4<i32>(29009i, -10949i, 2147483647i, u_input.b))));
    var var_1 = Struct_4(_wgslsmith_div_vec2_i32(vec2<i32>((-1i << (u_input.c.x % 32u)) >> (select(1u, 4545u, var_0.b.x) % 32u), var_0.c.x), vec2<i32>(-1i) * -(vec2<i32>(u_input.a.x, -41571i) ^ vec2<i32>(var_0.e.b.x, var_0.e.b.x))));
    var var_2 = Struct_1(var_0.e.a, vec4<i32>(firstLeadingBit(-abs(-32357i)), u_input.a.x, select(-_wgslsmith_clamp_i32(22315i, var_1.a.x, 0i), -2147483647i, true), ~(-44454i)));
    var_1 = Struct_4(~(-var_1.a));
    var_2 = var_0.e;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -317f))), _wgslsmith_f_op_f32(sign(-1744f)), var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.x, -1331f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_1 = Struct_3(~(~(~(~u_input.a))), Struct_1(u_input.c.x, _wgslsmith_mod_vec4_i32(select(~vec4<i32>(2147483647i, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.a.x), vec4<bool>(true, true, false, true)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(25799i, u_input.b, u_input.b, u_input.b), vec4<i32>(2147483647i, u_input.a.x, -17687i, 0i), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b)))), Struct_1(54955u, vec4<i32>(u_input.b & firstLeadingBit(0i), u_input.b & u_input.b, 2147483647i, min(u_input.a.x, u_input.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.ww, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.zx, var_0.yz)) - var_0.wz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.xwx))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.b.b.x, _wgslsmith_f_op_f32(abs(var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - var_1.d.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1231f - _wgslsmith_f_op_f32(sign(var_1.e.x))), 1058f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_1.d.x))));
}

