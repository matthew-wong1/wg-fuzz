struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = max(~(arg_2 | _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_1.b, arg_1.d.x), -20179i, -71520i)), abs(arg_1.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(162f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-293f, _wgslsmith_f_op_f32(-492f - 998f))))));
    let var_2 = arg_1.a;
    var_0 = min(~arg_2, abs(~1i));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-625f * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1186f))))) <= 1199f;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = ~vec2<u32>(~(~_wgslsmith_add_u32(1u, arg_1)), 40338u);
    var var_1 = max(vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(31368i, u_input.a)), reverseBits(-arg_2.b.c.c.xz)), 14440i), vec2<i32>(u_input.e, _wgslsmith_add_i32(-18518i, -1i)));
    var_0 = ~arg_2.b.d.wx;
    var_1 = (arg_2.b.e.c.yx & vec2<i32>(-1i, 1i)) & ~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(max(arg_2.b.e.c.zx, arg_2.b.c.c.zz), min(vec2<i32>(var_1.x, 2147483647i), arg_2.b.c.c.yz)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(76582i, var_1.x), arg_2.b.c.c.xy), vec2<i32>(66163i, u_input.e), arg_0.xw));
    var_0 = reverseBits(vec2<u32>(arg_2.c >> (_wgslsmith_mult_u32(abs(4294967295u), u_input.c) % 32u), ~u_input.b));
    return ~_wgslsmith_div_vec3_i32(min(_wgslsmith_sub_vec3_i32(arg_2.b.c.c, vec3<i32>(2147483647i, 2147483647i, u_input.e)), ~countOneBits(arg_2.b.e.c)), arg_2.b.c.c);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-655f, 881f, true)), -1899f, 291f))), vec2<u32>(~firstLeadingBit(u_input.c), 1u), func_3(!vec4<bool>(true, false, func_2(4294967295u, Struct_1(vec2<bool>(false, false), u_input.d, vec4<u32>(0u, 27660u, 4294967295u, 0u), vec2<i32>(15745i, u_input.e)), 1i, u_input.b), true), ~(~50057u), Struct_4(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(92910u, 0u), vec2<u32>(4294967295u, 31966u)), Struct_1(vec2<bool>(true, true), u_input.d, vec4<u32>(0u, 0u, 25659u, 0u), vec2<i32>(u_input.d, u_input.e)), min(-37386i, u_input.d), 21015u), Struct_3(_wgslsmith_f_op_f32(-873f * 847f), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, 90386u), vec3<u32>(u_input.c, u_input.c, 61434u)), Struct_2(vec3<f32>(870f, 492f, 161f), vec2<u32>(u_input.c, u_input.c), vec3<i32>(u_input.e, -1i, u_input.d)), min(vec4<u32>(u_input.c, u_input.b, 4294967295u, 77298u), vec4<u32>(4953u, 35357u, u_input.c, u_input.c)), Struct_2(vec3<f32>(-1000f, -734f, -1380f), vec2<u32>(4294967295u, u_input.c), vec3<i32>(1i, 0i, 2147483647i))), _wgslsmith_sub_u32(u_input.b, _wgslsmith_div_u32(1u, 4294967295u)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1095f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x * -732f), _wgslsmith_f_op_f32(step(-1000f, 1440f)))), -542f)), vec2<u32>(max(u_input.c << ((u_input.b << (u_input.b % 32u)) % 32u), var_0.b.x >> (37825u % 32u)), select(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 1u, 0u)), vec3<u32>(4294967295u, u_input.b, u_input.b)), ~(~u_input.b), true)), vec3<i32>(-1i) * -var_0.c);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(-576f)), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_div_f32(var_0.a.x, 1000f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1287f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1317f))), vec2<u32>(abs(min(4294967295u, select(u_input.c, 13168u, false))), min(0u, ~var_0.b.x)), -vec3<i32>(_wgslsmith_add_i32(var_0.c.x, 2147483647i), var_0.c.x, -9048i));
    let var_1 = Struct_1(vec2<bool>(true, true), min(_wgslsmith_dot_vec2_i32(select(max(var_0.c.zx, var_0.c.xz), var_0.c.yx, vec2<bool>(false, true)), var_0.c.yy), ~var_0.c.x), (vec4<u32>(select(1u, u_input.b, false), u_input.c, 1u, u_input.b) ^ ~(~vec4<u32>(22026u, 45634u, var_0.b.x, 1u))) >> (vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 33191u), vec3<u32>(var_0.b.x, u_input.b, 1u))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x), abs(4294967295u)), u_input.b, var_0.b.x) % vec4<u32>(32u)), firstTrailingBit(-var_0.c.yx));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(var_0.a)), var_1.c.wx, firstLeadingBit(var_0.c));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.a), _wgslsmith_clamp_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(30056u, var_1.c.x), abs(var_1.c.yz)), ~abs(vec2<u32>(86387u, u_input.b)), true), var_1.c.ww, countOneBits(_wgslsmith_sub_vec2_u32(var_0.b, ~vec2<u32>(4294967295u, 0u)))), ~var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = abs(~(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-2147483647i, -36758i), vec2<i32>(47138i, var_0), vec2<bool>(false, true)), abs(vec2<i32>(35802i, var_0))) | (vec2<i32>(-1i) * -vec2<i32>(u_input.d, -1553i))));
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)))), _wgslsmith_f_op_f32(-555f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1987f), _wgslsmith_f_op_f32(-117f - -1305f)))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 19641u, u_input.c), vec3<u32>(u_input.b, 4294967295u, 51772u)), 0u), max(reverseBits(u_input.b), 1u), u_input.c) | vec3<u32>(1u, ~abs(102115u), 84522u), func_1(), countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(79616u, u_input.b, 16006u, 29404u), vec4<u32>(4294967295u, 14324u, u_input.b, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.b), vec4<u32>(2388u, 17996u, 49090u, 23047u))) << (((vec4<u32>(1u, u_input.c, u_input.b, u_input.b) >> (vec4<u32>(0u, 4294967295u, 41194u, u_input.c) % vec4<u32>(32u))) >> (vec4<u32>(1u, u_input.c, u_input.c, 32576u) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_2(vec3<f32>(1f, 1f, 1f), ~vec2<u32>(1u, 1u), _wgslsmith_mult_vec3_i32(vec3<i32>(~var_1.x, -64548i, ~var_0), ~select(vec3<i32>(9878i, 1i, var_1.x), vec3<i32>(var_1.x, var_0, -1i), vec3<bool>(true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.yx);
}

