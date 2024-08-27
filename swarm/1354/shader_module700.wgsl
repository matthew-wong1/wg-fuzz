struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: array<f32, 29> = array<f32, 29>(590f, -1000f, 2021f, -1000f, 813f, 1000f, -1766f, 856f, 1009f, 1000f, -1489f, 2074f, 443f, -134f, 1181f, 1453f, 1016f, 1386f, -1240f, -995f, -742f, -122f, -696f, -1150f, -572f, -154f, 1990f, -327f, -527f);

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(~(i32(-1i) * -38157i), -2147483647i)), Struct_1(vec3<i32>(~max(-77175i, -36330i), ~(-4573i), -39232i), vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<u32>(u_input.a, 48392u), any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)))), Struct_1(~vec3<i32>(~9458i, 1i, -42648i), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), true)), u_input.d, any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, false)))), true, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(reverseBits(0i), _wgslsmith_mult_i32(1i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 6830i), vec2<i32>(-2147483647i, 22540i)))), ~min(select(vec3<i32>(-38497i, -36137i, 0i), vec3<i32>(-2147483647i, 4964i, 0i), false), ~vec3<i32>(-1i, -5561i, -2147483647i))));
    global3 = firstTrailingBit(vec4<u32>(var_0.b.c.x, min(u_input.b, 1u), u_input.a, firstTrailingBit(~u_input.d.x)) ^ select(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(34131u, var_0.b.c.x), 18u)], global1[_wgslsmith_index_u32(2410u, 18u)], !(var_0.b.b.x & var_0.b.b.x)));
    global1 = array<vec4<u32>, 18>();
    var var_1 = global3.xzw;
    var var_2 = Struct_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a.x, -53268i, 1111i, var_0.a), countOneBits(vec4<i32>(58789i, var_0.a, var_0.c.a.x, 2147483647i) ^ vec4<i32>(2147483647i, var_0.e, var_0.a, var_0.a))), var_0.c, Struct_1(var_0.c.a, vec2<bool>(true, true), var_1.yy, false), var_0.c.d, ~1i);
    return vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(60954u, 7781u), reverseBits(var_2.b.c.x)), ~global3.x << (1u % 32u)), 23142u, countOneBits(u_input.b), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.c.x, 0u), u_input.d)), 4294967295u)) << (_wgslsmith_clamp_vec4_u32(countOneBits(global1[_wgslsmith_index_u32(0u, 18u)]) >> (max(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 112651u, var_1.x, var_2.c.c.x), global1[_wgslsmith_index_u32(var_0.b.c.x, 18u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.c.x, 0u), var_1.yy), 18u)]) % vec4<u32>(32u)), vec4<u32>(~(~var_1.x), ~_wgslsmith_mult_u32(var_0.c.c.x, 15758u), ~firstTrailingBit(var_0.b.c.x), ~var_2.c.c.x), global1[_wgslsmith_index_u32(4294967295u, 18u)]) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global3 = min(vec4<u32>(u_input.b, ~(~1u), countOneBits(~27816u), global3.x) ^ func_3(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 29u)] - global2[_wgslsmith_index_u32(global3.x, 29u)]))), select(vec4<u32>(~0u, _wgslsmith_mod_u32(global3.x, 4294967295u), arg_0.c.c.x, 0u >> (1u % 32u)), ~_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(u_input.d.x, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], vec4<u32>(u_input.b, u_input.d.x, global3.x, u_input.a)), !(global2[_wgslsmith_index_u32(17563u, 29u)] != -1821f)) & firstTrailingBit(vec4<u32>(~global3.x, firstTrailingBit(u_input.d.x), ~92252u, arg_0.c.c.x)));
    let var_0 = Struct_1(reverseBits(arg_0.c.a), vec2<bool>(all(select(vec4<bool>(true, arg_0.b.d, false, true), select(vec4<bool>(false, arg_0.c.d, true, arg_0.c.b.x), vec4<bool>(arg_0.d, arg_0.d, true, true), arg_0.b.d), select(vec4<bool>(arg_0.b.d, true, arg_0.c.b.x, arg_0.c.b.x), vec4<bool>(arg_0.d, arg_0.d, false, true), vec4<bool>(arg_0.d, arg_0.b.b.x, arg_0.c.d, false)))), true), vec2<u32>(~firstTrailingBit(~global3.x), u_input.d.x), arg_0.c.c.x >= 19636u);
    global0 = -arg_0.b.a.x;
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(select(-var_0.a, -arg_0.b.a, arg_0.c.d) & arg_0.b.a, _wgslsmith_sub_vec3_i32(vec3<i32>(abs(arg_0.b.a.x), 23170i, i32(-1i) * -22163i), _wgslsmith_div_vec3_i32(arg_0.b.a, max(arg_0.c.a, vec3<i32>(arg_0.e, 12560i, -26010i))))), vec2<bool>(global2[_wgslsmith_index_u32(var_0.c.x, 29u)] > _wgslsmith_f_op_f32(-726f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.x, 29u)] - 707f)), all(select(!vec4<bool>(true, true, true, arg_0.d), !vec4<bool>(var_0.b.x, true, true, false), vec4<bool>(false, false, false, true)))), vec2<u32>(30729u, _wgslsmith_add_u32(~69435u, (u_input.a >> (0u % 32u)) & 35104u)), !all(select(!vec2<bool>(false, arg_0.d), var_0.b, vec2<bool>(true, true))));
    return ~(select(min(1u, 1407u | var_0.c.x), 1u, arg_0.c.d) ^ (~(var_0.c.x >> (var_0.c.x % 32u)) >> ((u_input.d.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 34861u, u_input.b, u_input.d.x), global1[_wgslsmith_index_u32(var_1.c.x, 18u)]) % 32u)) % 32u)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    let var_0 = arg_2;
    var var_1 = arg_2.c.c.x;
    var_1 = ~_wgslsmith_div_u32(~(~1u), ~arg_2.c.c.x << (var_0.b.c.x % 32u));
    let var_2 = firstTrailingBit(func_2(arg_2));
    var var_3 = var_0;
    return countOneBits(min(arg_2.c.a.x | -27483i, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(1i), var_3.c.a.x ^ 0i, var_0.b.a.x), select(-vec3<i32>(8057i, -2147483647i, -1i), var_3.c.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    global0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, 347i), _wgslsmith_sub_i32(0i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-4758i, 23569i, 46043i), vec3<i32>(24594i, 0i, -2147483647i))) ^ -(~(i32(-1i) * -25085i)), -2147483647i);
    var var_0 = false | (_wgslsmith_add_i32(~1i, -func_1(-462f, u_input.d, Struct_2(1i, Struct_1(vec3<i32>(24495i, -2147483647i, 2147483647i), vec2<bool>(false, true), vec2<u32>(u_input.c, 1u), true), Struct_1(vec3<i32>(-4297i, -2147483647i, -5829i), vec2<bool>(false, false), u_input.d, false), true, -2147483647i))) >= _wgslsmith_add_i32(abs(reverseBits(-6754i)), ~1i));
    global3 = vec4<u32>(select(~4294967295u, u_input.d.x, true), _wgslsmith_add_u32(_wgslsmith_mult_u32(~(4294967295u >> (u_input.c % 32u)), ~29627u), _wgslsmith_div_u32(~5740u, _wgslsmith_add_u32(func_2(Struct_2(35972i, Struct_1(vec3<i32>(6019i, -2147483647i, 1i), vec2<bool>(true, false), vec2<u32>(95080u, u_input.a), true), Struct_1(vec3<i32>(0i, 2147483647i, 0i), vec2<bool>(false, false), u_input.d, true), true, 22615i)), ~global3.x))), func_2(Struct_2(-32552i, Struct_1(firstTrailingBit(vec3<i32>(1i, 2147483647i, -2147483647i)), vec2<bool>(true, true), ~vec2<u32>(global3.x, 1u), true), Struct_1(vec3<i32>(0i, 47033i, 8121i), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), ~vec2<u32>(u_input.c, global3.x), all(vec4<bool>(false, false, true, false))), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), ~_wgslsmith_div_i32(17808i, 2147483647i))), _wgslsmith_div_u32(_wgslsmith_sub_u32(global3.x, ~(~u_input.b)), 48335u));
    global3 = vec4<u32>(4294967295u, 1u, global3.x, _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_add_u32(1u, ~min(0u, global3.x)), 0u));
    var_0 = true | (true || !(!any(vec2<bool>(false, true))));
    var_0 = false;
    var var_1 = 31087i;
    global1 = array<vec4<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * 298f))), vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~global3.x, 29u)] * _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 29u)], _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.d.x, 29u)]))))), global2[_wgslsmith_index_u32(global3.x, 29u)], global2[_wgslsmith_index_u32(u_input.b ^ ~1u, 29u)]));
}

