struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec2<u32>(33189u, 1u), vec2<u32>(12892u, 4294967295u)), Struct_3(vec2<u32>(49858u, 1u), vec2<u32>(15326u, 1u)), Struct_3(vec2<u32>(4294967295u, 82015u), vec2<u32>(0u, 4294967295u)), Struct_3(vec2<u32>(91373u, 0u), vec2<u32>(1u, 4726u)), Struct_3(vec2<u32>(101467u, 4294967295u), vec2<u32>(1u, 28557u)), Struct_3(vec2<u32>(36984u, 19840u), vec2<u32>(8422u, 4294967295u)), Struct_3(vec2<u32>(4294967295u, 65073u), vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(28998u, 12682u), vec2<u32>(15547u, 17156u)), Struct_3(vec2<u32>(24580u, 4294967295u), vec2<u32>(55769u, 66031u)), Struct_3(vec2<u32>(0u, 48877u), vec2<u32>(4294967295u, 0u)), Struct_3(vec2<u32>(0u, 31315u), vec2<u32>(23166u, 0u)), Struct_3(vec2<u32>(16292u, 0u), vec2<u32>(0u, 1u)), Struct_3(vec2<u32>(4294967295u, 1u), vec2<u32>(57835u, 1u)), Struct_3(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u)), Struct_3(vec2<u32>(66673u, 70595u), vec2<u32>(4294967295u, 81987u)), Struct_3(vec2<u32>(38947u, 53742u), vec2<u32>(5901u, 1u)), Struct_3(vec2<u32>(36865u, 21908u), vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec2<u32>(21935u, 7868u), vec2<u32>(1u, 26327u)), Struct_3(vec2<u32>(4294967295u, 27227u), vec2<u32>(52222u, 1u)), Struct_3(vec2<u32>(1u, 0u), vec2<u32>(42376u, 40477u)), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(29131u, 4294967295u)), Struct_3(vec2<u32>(0u, 77318u), vec2<u32>(4294967295u, 3745u)), Struct_3(vec2<u32>(1u, 33702u), vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(7927u, 9821u), vec2<u32>(1u, 119960u)), Struct_3(vec2<u32>(53868u, 28665u), vec2<u32>(34118u, 1866u)), Struct_3(vec2<u32>(4294967295u, 25259u), vec2<u32>(1u, 4294967295u)), Struct_3(vec2<u32>(1u, 0u), vec2<u32>(40272u, 19851u)), Struct_3(vec2<u32>(67153u, 3057u), vec2<u32>(4294967295u, 96417u)), Struct_3(vec2<u32>(37653u, 37908u), vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(14926u, 1u), vec2<u32>(62289u, 1u)), Struct_3(vec2<u32>(1u, 8479u), vec2<u32>(84178u, 4294967295u)));

var<private> global1: f32 = 375f;

var<private> global2: array<vec3<f32>, 14>;

var<private> global3: f32 = -1010f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1058f, -403f)), -188f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1375f * -536f), _wgslsmith_f_op_f32(select(1000f, 1460f, false))) - _wgslsmith_f_op_f32(min(-331f, _wgslsmith_div_f32(712f, -628f)))), _wgslsmith_f_op_f32(max(-313f, _wgslsmith_f_op_f32(f32(-1f) * -810f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(866f, -885f), vec2<f32>(703f, 429f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2215f, 362f))))), !vec2<bool>(any(vec2<bool>(false, false)), true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, ~55156u, 58065u), vec3<u32>(min(u_input.a, 1u) ^ firstLeadingBit(5340u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.a, 26660u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 43889u, 0u), vec3<u32>(u_input.a, 4294967295u, u_input.a))), u_input.a)), 31u)]);
    let var_1 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(114328u, u_input.a, var_0.c.a.x, 4294967295u), max(vec4<u32>(u_input.a, 2580u, var_0.c.b.x, 65740u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))) ^ var_0.c.b.x);
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global2 = array<vec3<f32>, 14>();
    var var_2 = _wgslsmith_div_vec2_f32(var_0.a.yz, var_0.a.zx);
    return ~_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -u_input.b.x, -1i, 0i, 5773i), u_input.b);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.b.wz);
    var var_1 = u_input.b;
    global1 = -146f;
    var_1 = _wgslsmith_sub_vec4_i32(-(~(min(u_input.b, vec4<i32>(-16220i, u_input.b.x, var_1.x, var_1.x)) >> (~vec4<u32>(240u, arg_2, u_input.a, 0u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-29436i, 26062i, u_input.b.x), vec3<i32>(0i, 0i, -1i)), i32(-1i) * -63344i, 2147483647i, ~(-46878i)) & func_3(), abs(vec4<i32>(_wgslsmith_div_i32(49837i, arg_1.b), _wgslsmith_sub_i32(var_0, 2147483647i), _wgslsmith_mod_i32(56269i, arg_1.b), -70489i))));
    global0 = array<Struct_3, 31>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f * arg_1.a)) * arg_1.a)), var_0, true);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = global2[_wgslsmith_index_u32(arg_1.x & 1u, 14u)];
    let var_2 = firstLeadingBit(u_input.b.xzz);
    let var_3 = ~arg_1.xzy;
    let var_4 = -min(~(~(arg_2.b.b << (u_input.a % 32u))), 6119i);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.zx, vec2<f32>(arg_0.x, 1363f)))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-574f, var_0.x), _wgslsmith_f_op_f32(step(func_2(var_3.x, Struct_1(var_0.x, var_2.x, false), 38438u, Struct_3(vec2<u32>(var_3.x, 0u), vec2<u32>(var_3.x, 0u))).a, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_2.c.a))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_4(arg_1.a, _wgslsmith_f_op_vec2_f32(func_4(vec2<f32>(-2773f, _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_div_f32(2429f, -853f))), vec4<u32>(~1u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 4294967295u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(26945u, 23328u, 1u)), arg_0.b.x), Struct_2(~(-u_input.b.zx), Struct_1(_wgslsmith_div_f32(-794f, arg_1.b.x), _wgslsmith_sub_i32(arg_2, u_input.b.x), false), func_2(~arg_0.a.x, Struct_1(arg_1.b.x, -21936i, false), countOneBits(0u), Struct_3(arg_1.c.b, arg_1.c.b))))), Struct_3(vec2<u32>(_wgslsmith_mult_u32(23019u, 4530u), _wgslsmith_mod_u32(abs(1u), _wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(16755u, arg_1.c.a.x)))), min(_wgslsmith_mult_vec2_u32(vec2<u32>(5778u, arg_0.a.x) << (vec2<u32>(14028u, arg_0.b.x) % vec2<u32>(32u)), select(arg_0.b, arg_1.c.a, vec2<bool>(false, false))), vec2<u32>(arg_0.a.x, ~73848u))));
    var_0 = arg_1;
    let var_1 = arg_1.a.xxz;
    let var_2 = arg_2;
    let var_3 = ~(~(~(~vec2<u32>(arg_0.a.x, 35047u))));
    return arg_0;
}

fn func_5(arg_0: Struct_4) -> f32 {
    var var_0 = func_2(abs(46898u), func_2(u_input.a, Struct_1(arg_0.a.x, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), false), _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, ~arg_0.c.a.x), _wgslsmith_add_u32(1u, arg_0.c.b.x)), func_1(Struct_3(arg_0.c.b, ~arg_0.c.b), arg_0, -u_input.b.x)), func_1(func_1(Struct_3(arg_0.c.a, vec2<u32>(4294967295u, 42806u)), arg_0, -1i), arg_0, func_3().x).a.x | arg_0.c.a.x, func_1(func_1(Struct_3(arg_0.c.a, arg_0.c.b << (arg_0.c.b % vec2<u32>(32u))), arg_0, -(~0i)), arg_0, ~u_input.b.x));
    global2 = array<vec3<f32>, 14>();
    let var_1 = vec3<i32>(1i, u_input.b.x, -(~1i));
    var var_2 = -_wgslsmith_mod_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, 1i, -2254i), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(var_0.b, 2147483647i, 3141i, var_0.b)))), max(_wgslsmith_mult_vec4_i32(-u_input.b, vec4<i32>(var_0.b, u_input.b.x, var_1.x, 11415i)), _wgslsmith_add_vec4_i32(-u_input.b, ~u_input.b)));
    let var_3 = arg_0.b;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_5(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-1000f - 1759f), _wgslsmith_div_f32(1739f, -641f), _wgslsmith_f_op_f32(219f * 118f), -138f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(452f, -676f) * vec2<f32>(-529f, 1397f)))), func_1(global0[_wgslsmith_index_u32(u_input.a, 31u)], Struct_4(vec4<f32>(-2511f, 140f, -568f, -573f), vec2<f32>(-1026f, 1000f), global0[_wgslsmith_index_u32(u_input.a, 31u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(5808i, -2147483647i, u_input.b.x))))))));
    let var_1 = false;
    var var_2 = ~abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 5265u, 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 34227u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))) * -194f), -min(-35346i, -u_input.b.x << (u_input.a % 32u)), false);
    var var_4 = func_2(1u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f)), u_input.b.x, !var_3.c), 112017u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 31482u, 31525u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 0u)), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), select(vec4<u32>(18521u, 0u, u_input.a, 55909u) | vec4<u32>(77602u, 19849u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 19711u) & vec4<u32>(47263u, 1u, u_input.a, 66922u), !vec4<bool>(var_3.c, var_1, var_1, true))), ~4294967295u), 31u)]);
    var_3 = func_2(abs(34200u >> (_wgslsmith_add_u32(u_input.a, ~1u) % 32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f + -655f) - var_4.a) * 1354f), -51781i, !func_2(~81169u, func_2(u_input.a, Struct_1(305f, 16590i, var_1), u_input.a, global0[_wgslsmith_index_u32(u_input.a, 31u)]), _wgslsmith_div_u32(u_input.a, u_input.a), func_1(Struct_3(vec2<u32>(4294967295u, u_input.a), vec2<u32>(16093u, u_input.a)), Struct_4(vec4<f32>(-1737f, var_0, var_3.a, var_3.a), vec2<f32>(var_3.a, var_3.a), Struct_3(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 51019u))), -2147483647i)).c), countOneBits(4294967295u), global0[_wgslsmith_index_u32(~4294967295u, 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(u_input.b.x & _wgslsmith_add_i32(u_input.b.x, -12745i)), i32(-1i) * -73961i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.a, _wgslsmith_f_op_f32(var_0 + var_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2147f))), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_4.a, 817f, var_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_3.a, var_4.a, var_3.a) * vec4<f32>(-240f, 1227f, var_0, var_0)))))));
}

