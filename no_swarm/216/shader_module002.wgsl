struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: f32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1071f, -197f, -1653f, 546f) * vec4<f32>(-1138f, -776f, 483f, 1041f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2332f), _wgslsmith_f_op_f32(select(164f, -1349f, true)), _wgslsmith_f_op_f32(-496f * 471f), _wgslsmith_f_op_f32(-576f + -1151f))))));
    let var_1 = ~(~_wgslsmith_add_vec3_u32(~max(u_input.e, u_input.e), vec3<u32>(1u, _wgslsmith_mod_u32(u_input.e.x, 47343u), u_input.e.x)));
    let var_2 = Struct_1(var_0.wx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -358f))) - var_0.x));
    let var_3 = var_1.x;
    let var_4 = select(vec4<bool>(any(vec2<bool>(any(vec4<bool>(false, true, true, true)), u_input.d < u_input.b)), true, true, true), select(vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), true, select(all(vec4<bool>(true, true, true, false)), var_2.a.x > 1223f, true)), vec4<bool>(true, true, true, true), u_input.c.x <= _wgslsmith_dot_vec3_i32(u_input.c >> (vec3<u32>(4294967295u, 0u, 1u) % vec3<u32>(32u)), vec3<i32>(-29526i, u_input.d, u_input.b))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true), any(vec3<bool>(true, false, false))), vec4<bool>(all(vec2<bool>(false, true)), false, true, false), any(vec4<bool>(true, false, true, true))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(446f, 145f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(360f, var_0.x, var_4.x)))))), _wgslsmith_f_op_f32(sign(var_2.a.x))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1765f, 675f)))) - vec2<f32>(_wgslsmith_f_op_f32(select(-337f, -1269f, true)), -583f)), 1098f), !vec2<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1746f) == _wgslsmith_f_op_f32(ceil(555f))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(282f, -1480f))), _wgslsmith_f_op_f32(-136f * _wgslsmith_f_op_f32(f32(-1f) * -954f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-3140f, -937f, 627f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, 137f, -324f))) * vec3<f32>(-2188f, _wgslsmith_f_op_f32(406f - 828f), _wgslsmith_f_op_f32(step(-1324f, 200f)))), arg_0.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(-1048f, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(503f + 946f), _wgslsmith_f_op_f32(ceil(788f))))), _wgslsmith_f_op_f32(1803f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), -select(countOneBits(vec3<i32>(u_input.c.x, 0i, u_input.d)) ^ u_input.c, ~u_input.c >> (u_input.e % vec3<u32>(32u)), select(0u, 37988u, false) <= ~u_input.e.x));
    var var_1 = u_input.a;
    let var_2 = vec3<bool>(true, false, !(-636f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f) + _wgslsmith_f_op_f32(sign(929f)))));
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(u_input.e.x, 1u), u_input.e.x);
    var var_4 = ~u_input.e.yz;
    return Struct_3(Struct_1(var_0.c.b.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b - 1176f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x * -637f)))), select(select(vec2<bool>(var_0.b.x | false, true), var_0.b, !select(var_2.xy, var_2.zx, vec2<bool>(true, var_2.x))), vec2<bool>(true, !(var_2.x & var_0.b.x)), vec2<bool>(var_2.x, var_2.x)), var_0.c, var_0.c.a, ~vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.c, u_input.b), vec2<i32>(var_0.c.c, arg_0.x)), firstLeadingBit(0i)), i32(-1i) * -4480i, firstLeadingBit(_wgslsmith_clamp_i32(arg_0.x, 0i, u_input.d))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = max(arg_2, ~(_wgslsmith_mult_vec4_u32(vec4<u32>(28637u, arg_1.x, arg_2.x, arg_1.x), vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, 4294967295u)) << (vec4<u32>(0u, u_input.e.x, 0u, u_input.a) % vec4<u32>(32u))) << (arg_2 % vec4<u32>(32u)));
    var var_1 = !vec4<bool>(any(select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), !vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x), true)), any(select(vec2<bool>(false, true), func_2(arg_0.e.xy).b, !arg_0.b.x)), arg_0.b.x, reverseBits(arg_0.c.c << (arg_1.x % 32u)) <= 2147483647i);
    var_1 = !select(vec4<bool>(!var_1.x && !var_1.x, all(!vec2<bool>(arg_0.b.x, true)), false, !(arg_0.b.x & arg_0.b.x)), select(!vec4<bool>(true, var_1.x, arg_0.b.x, true), !vec4<bool>(false, var_1.x, true, true), select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, true, false, arg_0.b.x))), vec4<bool>(all(select(vec4<bool>(var_1.x, false, arg_0.b.x, var_1.x), vec4<bool>(false, var_1.x, true, arg_0.b.x), vec4<bool>(true, var_1.x, arg_0.b.x, arg_0.b.x))), arg_0.b.x && arg_0.b.x, select(true, 56632u == var_0.x, select(true, true, true)), var_1.x));
    let var_2 = !(!(_wgslsmith_dot_vec2_u32(arg_2.xw, arg_1) <= (arg_2.x >> (0u % 32u))) & all(vec2<bool>(any(vec4<bool>(var_1.x, false, arg_0.b.x, arg_0.b.x)), var_1.x | true)));
    var_1 = vec4<bool>(false, !(!var_2 && true), false, false);
    return Struct_2(func_2(-vec2<i32>(_wgslsmith_div_i32(3002i, arg_0.e.x), u_input.b)).a, arg_0.c.b, -86149i);
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = func_4(func_2(arg_0), u_input.e.yx, vec4<u32>(1u, 65626u, u_input.a ^ u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x | 70311u, ~3543u, u_input.e.x, firstLeadingBit(39929u)), reverseBits(vec4<u32>(u_input.a, 1010u, u_input.e.x, u_input.e.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(374f, 443f, 804f), vec3<f32>(-1268f, 1589f, -1444f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -290f), func_2(u_input.c.xy).a.a.x, 1010f))))));
    var var_1 = ~abs(90076u) <= u_input.a;
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(func_4(Struct_3(var_0.a, vec2<bool>(true, false), var_0, Struct_1(vec2<f32>(var_0.a.a.x, var_0.b.x), -333f), vec3<i32>(var_0.c, var_2, var_2)), vec2<u32>(u_input.a, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.e.x, 24204u, 0u), vec4<u32>(90746u, 20525u, 5452u, 0u)), _wgslsmith_f_op_vec3_f32(-var_0.b)).b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(-var_0.a.a.x))))) * vec2<f32>(_wgslsmith_f_op_f32(var_0.a.b - _wgslsmith_f_op_f32(f32(-1f) * -1562f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(-2147483647i, var_2)).d.b - _wgslsmith_f_op_f32(var_0.a.a.x * -191f)) + _wgslsmith_f_op_f32(trunc(var_0.a.b)))));
    let var_4 = func_2(vec2<i32>(43705i << (1u % 32u), _wgslsmith_clamp_i32(~var_0.c, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_0.c, arg_0.x), vec3<i32>(-1i, var_2, var_2))), _wgslsmith_sub_i32(u_input.d, -1i)))).b;
    return Struct_3(var_0.a, func_2(arg_0 >> (~_wgslsmith_mod_vec2_u32(u_input.e.zx, vec2<u32>(u_input.a, 14256u)) % vec2<u32>(32u))).b, var_0, Struct_1(vec2<f32>(var_0.b.x, func_2(firstTrailingBit(u_input.c.xx)).c.b.x), _wgslsmith_f_op_f32(-var_3.x)), countOneBits(vec3<i32>(2147483647i, ~var_2, -(~(-19015i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c.xy);
    let var_1 = var_0.d;
    let var_2 = ~var_0.c.c;
    let var_3 = func_4(func_2(_wgslsmith_mult_vec2_i32(select(vec2<i32>(var_2, -2147483647i) >> (vec2<u32>(u_input.a, u_input.e.x) % vec2<u32>(32u)), vec2<i32>(-47847i, -17596i), !vec2<bool>(false, var_0.b.x)), ~func_2(var_0.e.xy).e.yz)), vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, u_input.e.x, 23937u), vec4<u32>(1u, u_input.a, u_input.a, u_input.e.x))), vec4<u32>(min(u_input.e.x, 4294967295u), reverseBits(4294967295u), ~0u, _wgslsmith_dot_vec3_u32(u_input.e, u_input.e)))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(20430u, u_input.e.x, 0u, u_input.a) << (vec4<u32>(u_input.a, 0u, u_input.a, 96926u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 40746u, 78478u), vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x) & vec4<u32>(u_input.e.x, 37511u, 0u, u_input.e.x))), vec4<u32>(0u, max(u_input.a, 14158u >> (u_input.e.x % 32u)), u_input.a, ~4294967295u & abs(u_input.a))), var_0.c.b).a;
    let var_4 = ~u_input.a;
    let var_5 = Struct_1(vec2<f32>(1480f, -541f), var_1.b);
    var var_6 = var_0.c.b;
    let var_7 = ~var_4;
    let x = u_input.a;
    s_output = StorageBuffer(0i >> ((3923u | ~var_4) % 32u), vec4<f32>(var_3.a.x, -906f, _wgslsmith_div_f32(-584f, var_0.c.b.x), 1f), _wgslsmith_f_op_f32(f32(-1f) * -2139f), 159f);
}

