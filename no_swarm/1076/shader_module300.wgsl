struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: i32 = 30790i;

var<private> global2: vec3<u32> = vec3<u32>(37645u, 75903u, 1u);

var<private> global3: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> vec2<f32> {
    var var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(u_input.b.x, u_input.d.x), u_input.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.yz), _wgslsmith_mod_u32(1353u, 1u)), u_input.d ^ u_input.b);
    global0 = array<Struct_2, 19>();
    var var_1 = Struct_1(26849u, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global3.x, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(634f + global3.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x * 302f))), global3.x), (_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.a, 13983i, u_input.c.x, -1i)), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 18319i, 132i))) << (14830u % 32u)) ^ -1i, -1326f);
    var var_2 = u_input.d.x;
    global0 = array<Struct_2, 19>();
    return vec2<f32>(-556f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-338f * global3.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1501f, 1335f), var_1.d))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<bool>) -> vec3<i32> {
    var var_0 = ~_wgslsmith_mult_u32(12652u, global2.x) >> (~global2.x % 32u);
    global0 = array<Struct_2, 19>();
    var var_1 = true;
    let var_2 = arg_3.x;
    var var_3 = Struct_2(~(~(-(~u_input.a))));
    return _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(312i, arg_0, var_3.a) ^ u_input.c, firstLeadingBit(u_input.c), -u_input.c), reverseBits(u_input.c)) >> (u_input.d.yyx % vec3<u32>(32u)), u_input.c);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(select(-min(u_input.c, u_input.c) ^ u_input.c, u_input.c, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), func_3(~1i, _wgslsmith_f_op_vec2_f32(func_2()), 1335f, !vec2<bool>(u_input.d.x < global2.x, global3.x != -1733f)));
    let var_1 = !(!(_wgslsmith_mult_i32(-27262i, -1i) != firstLeadingBit(_wgslsmith_add_i32(-1i, u_input.c.x))));
    var var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.d, min(vec4<u32>(35796u, _wgslsmith_mod_u32(55177u, 78574u), _wgslsmith_mult_u32(4294967295u, global2.x), _wgslsmith_mod_u32(u_input.d.x, 4294967295u)), reverseBits(u_input.d))), min(u_input.b, vec4<u32>(~31531u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, 57992u), ~32675u), 73641u, ~min(u_input.b.x, 1u))));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, -316f, 1000f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, 1000f, -668f), vec3<f32>(global3.x, -652f, -510f)))), _wgslsmith_div_vec3_f32(vec3<f32>(469f, global3.x, -162f), vec3<f32>(global3.x, global3.x, 2304f)))), vec3<f32>(_wgslsmith_f_op_f32(576f + _wgslsmith_f_op_f32(select(global3.x, global3.x, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - global3.x) - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + 1145f) - global3.x)))));
    return Struct_1(~88530u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f) - global3.x)), var_4.x, _wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(1f + -1000f)), _wgslsmith_dot_vec3_i32(-var_0, ~u_input.c), _wgslsmith_f_op_f32(738f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(-813f * global3.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global3.x;
    let var_2 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), !vec3<bool>(true, true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), !(!(4294967295u >= _wgslsmith_div_u32(global2.x, 54550u))));
    var var_3 = Struct_2(~_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c, var_0.c, 2147483647i, -8073i), vec4<i32>(77545i, 2147483647i, u_input.a, var_0.c), vec4<i32>(u_input.a, -7010i, var_0.c, -26745i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-18598i, var_0.c, var_0.c, 30552i), firstLeadingBit(vec4<i32>(14575i, -7889i, u_input.c.x, 1134i)), vec4<i32>(var_0.c, 1i, -75708i, var_0.c))));
    global0 = array<Struct_2, 19>();
    var var_4 = ~vec3<i32>(16697i, max(func_1().c, 50574i) >> (~abs(var_0.a) % 32u), _wgslsmith_div_i32(var_3.a, ~7295i));
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-168f * func_1().b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.b.x)))), 1029f, _wgslsmith_f_op_f32(f32(-1f) * -565f), -1078f);
    var var_6 = vec2<i32>(min(func_1().c, 2147483647i | firstLeadingBit(firstTrailingBit(u_input.c.x))), -countOneBits(~var_0.c));
    let var_7 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(-var_4.x, reverseBits(-2147483647i | var_6.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_5.yyw) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.x, global3.x, var_5.x)))))));
}

