struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-6984i, vec4<bool>(true, false, false, false), Struct_1(vec3<u32>(5444u, 10919u, 4294967295u), vec4<u32>(3653u, 0u, 1u, 57426u), 52006u, vec4<u32>(4294967295u, 4294967295u, 77422u, 19823u), vec3<u32>(4294967295u, 118137u, 1u)), vec3<u32>(41809u, 0u, 84910u), Struct_1(vec3<u32>(1u, 4294967295u, 9408u), vec4<u32>(12803u, 0u, 4294967295u, 1u), 4294967295u, vec4<u32>(1u, 0u, 1u, 1u), vec3<u32>(4294967295u, 36057u, 1u)));

var<private> global1: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, 1000f, 1085f, 1722f)), vec4<f32>(-1731f, -2406f, -196f, 266f))))));
    global0 = Struct_3(_wgslsmith_div_i32(global0.a, max(-36403i, -global0.a) << (global0.e.a.x % 32u)), select(!select(vec4<bool>(false, global0.b.x, false, global0.b.x), select(global0.b, vec4<bool>(global0.b.x, true, global0.b.x, false), false), global0.b.x), global0.b, vec4<bool>(false, global0.b.x, true, all(!global0.b))), Struct_1(~_wgslsmith_sub_vec3_u32(~u_input.e.xyx, vec3<u32>(57298u, global0.d.x, 39915u) & u_input.e.yzy), ~(u_input.d ^ (vec4<u32>(55687u, 0u, global0.e.e.x, 4294967295u) >> (global0.c.b % vec4<u32>(32u)))), 1u, abs(u_input.d), ~vec3<u32>(~global0.e.d.x, 41514u, ~u_input.e.x)), select(select(_wgslsmith_clamp_vec3_u32(global0.e.d.zxx, vec3<u32>(u_input.d.x, u_input.c.x, global0.e.b.x), vec3<u32>(4294967295u, 35392u, global0.e.b.x)) >> (~global0.e.d.wyy % vec3<u32>(32u)), ~firstTrailingBit(u_input.e.wxz), !all(global0.b.wxx)), vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.e, global0.e.b), min(6202u, global0.c.c), ~(~1u)), global0.b.x), global0.e);
    var var_1 = min(min(~min(~0u, u_input.e.x), countOneBits(_wgslsmith_sub_u32(~global0.c.e.x, u_input.c.x))), global0.c.c);
    var var_2 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(global0.c.a.x | 31626u, ~u_input.e.x), ~(global0.e.d.x >> (_wgslsmith_mult_u32(16614u, 1u) % 32u)), reverseBits(_wgslsmith_clamp_u32(global0.c.a.x, 4294967295u >> (1u % 32u), 1u))), u_input.d, ~u_input.c.x, _wgslsmith_sub_vec4_u32(vec4<u32>(max(4294967295u >> (u_input.e.x % 32u), ~0u), ~0u, ~(~0u), u_input.e.x), u_input.d), ~vec3<u32>(_wgslsmith_mod_u32(~global0.c.b.x, _wgslsmith_clamp_u32(u_input.c.x, global0.c.b.x, global0.e.a.x)), u_input.c.x & 108398u, ~u_input.d.x));
    var_2 = global0.c;
    return var_0.yzy;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_5) -> i32 {
    let var_0 = false;
    let var_1 = Struct_5(-346f);
    var var_2 = Struct_4(u_input.a.ywz, global0.d.x, Struct_1(arg_2.b.wxx, ~max(vec4<u32>(global0.c.d.x, u_input.d.x, arg_2.e.x, 76808u), ~global0.e.b), _wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.x, arg_2.e.x, arg_2.a.x), arg_2.b.wwy)), 53252u), firstLeadingBit(~max(vec4<u32>(u_input.c.x, 42482u, 59540u, global0.c.e.x), global0.c.d)), (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 30873u), vec3<u32>(global0.d.x, 20870u, u_input.d.x)) & vec3<u32>(arg_2.d.x, 19005u, arg_2.b.x)) & ~(~u_input.e.zyw)), _wgslsmith_sub_vec4_i32(vec4<i32>(48091i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 6520i, -1i, 2147483647i), vec4<i32>(u_input.b, u_input.a.x, u_input.b, 2147483647i) | u_input.a), 19432i, _wgslsmith_mult_i32(i32(-1i) * -53985i, u_input.b)), min(vec4<i32>(max(global0.a, -1i), i32(-1i) * -1i, _wgslsmith_clamp_i32(-62431i, 0i, u_input.b), -u_input.b), min(u_input.a, -u_input.a))));
    return ~(-8948i);
}

fn func_2(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = global0.a;
    let var_1 = Struct_4(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, -1i), arg_0.a), 22821i << (u_input.c.x % 32u), u_input.a.x) << (global0.d % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, min(~global0.d.x, u_input.c.x & u_input.c.x), 1u), select(abs(arg_0.e.d.wzw), _wgslsmith_mult_vec3_u32(global0.e.a, u_input.e.zwy), !arg_0.b.zwx) ^ global0.e.d.xww), global0.e, _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(arg_0.a, -1i), 2147483647i, ~arg_0.a, ~global0.a), -countOneBits(-u_input.a)));
    let var_2 = global0.b.yx;
    global1 = var_1.d.x;
    var var_3 = _wgslsmith_mult_vec3_i32(abs(var_1.d.xwx), vec3<i32>(u_input.a.x, func_4(Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -916f)), _wgslsmith_f_op_vec3_f32(func_3()), Struct_1(var_1.c.e, min(vec4<u32>(4294967295u, global0.d.x, arg_0.c.a.x, var_1.b), var_1.c.d), 1u, ~u_input.e, u_input.e.xyw), Struct_5(_wgslsmith_f_op_f32(-417f + 1001f))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, -1i, 42985i), var_1.d.xyy, true), -(vec3<i32>(var_1.a.x, global0.a, 10668i) >> (global0.c.d.ywx % vec3<u32>(32u))))));
    return ~_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(var_1.d.x, 6974i, var_3.x)), var_1.d.xww, -u_input.a.wyw);
}

fn func_5(arg_0: vec3<i32>) -> Struct_5 {
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, func_4(Struct_5(_wgslsmith_div_f32(475f, 768f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-481f, -2205f, -1000f) * vec3<f32>(-508f, -1166f, 2037f))), Struct_1(~vec3<u32>(25381u, u_input.c.x, u_input.e.x), vec4<u32>(global0.d.x, 52754u, 1u, 19743u), _wgslsmith_clamp_u32(u_input.e.x, u_input.d.x, 0u), vec4<u32>(global0.c.e.x, 1u, 6848u, 1u), global0.d), Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -647f))), _wgslsmith_mod_i32(-1i << (firstLeadingBit(4294967295u) % 32u), min(51187i, global0.a) << (1u % 32u))), -func_2(Struct_3(min(arg_0.x, arg_0.x), global0.b, Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<u32>(0u, global0.d.x, 62130u, u_input.e.x), 41057u, global0.e.b, vec3<u32>(u_input.d.x, 4294967295u, global0.c.b.x)), select(vec3<u32>(80916u, global0.d.x, global0.c.b.x), u_input.d.zyw, true), Struct_1(vec3<u32>(u_input.d.x, 0u, 1u), vec4<u32>(global0.c.a.x, 1u, global0.d.x, 1u), 4294967295u, global0.c.d, u_input.d.zyz))));
    var var_0 = reverseBits(u_input.d);
    global0 = Struct_3(-48563i | -(i32(-1i) * -u_input.b), global0.b, global0.c, vec3<u32>(~(~(var_0.x ^ var_0.x)), abs(global0.c.c), _wgslsmith_dot_vec2_u32(vec2<u32>(23975u, u_input.d.x), vec2<u32>(abs(var_0.x), abs(0u)))), Struct_1(u_input.e.yyx, u_input.d, reverseBits(58249u), vec4<u32>(~firstLeadingBit(6472u), _wgslsmith_sub_u32(~u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, 1301u)), firstTrailingBit(1u), abs(0u)), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.e.yxx, vec3<u32>(1u, u_input.e.x, global0.e.a.x)), 59948u, 20039u)));
    var var_1 = Struct_5(-807f);
    var_1 = Struct_5(var_1.a);
    return Struct_5(1775f);
}

fn func_1() -> f32 {
    var var_0 = func_5(_wgslsmith_sub_vec3_i32(select(func_2(Struct_3(35689i, vec4<bool>(false, global0.b.x, false, global0.b.x), global0.c, vec3<u32>(global0.e.e.x, 52362u, u_input.c.x), Struct_1(u_input.e.zzy, vec4<u32>(51739u, 0u, u_input.c.x, 4294967295u), 0u, u_input.e, vec3<u32>(u_input.d.x, 0u, u_input.c.x)))), -vec3<i32>(0i, -39700i, 1235i), all(!vec3<bool>(global0.b.x, false, false))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), u_input.a.yxw), u_input.a.ywx)));
    var var_1 = Struct_3(-abs(52556i), vec4<bool>(false, any(select(!global0.b, global0.b, !global0.b.x)), !global0.b.x, false), global0.e, select(vec3<u32>(max(41065u, 50238u), 0u, 1u), u_input.d.wwz, true & (u_input.b == global0.a)) << ((firstTrailingBit(global0.d ^ global0.d) | global0.d) % vec3<u32>(32u)), global0.c);
    let var_2 = u_input.e.x;
    let var_3 = var_1.b.x;
    let var_4 = false;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a)) - -1500f), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>) -> i32 {
    let var_0 = Struct_1(vec3<u32>(~firstLeadingBit(64000u) >> (_wgslsmith_sub_u32(arg_1.a.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.e.a.x, 901u, u_input.c.x), vec3<u32>(1u, u_input.d.x, 4294967295u))) % 32u), arg_2.x, arg_1.a.d.x), u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, 1u), _wgslsmith_dot_vec4_u32(u_input.e >> (vec4<u32>(arg_2.x, global0.c.c, 23362u, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.e.x, arg_1.a.c, 56237u, arg_1.a.c)), 0u >> (_wgslsmith_clamp_u32(28986u, 21609u, arg_2.x) % 32u), ~4294967295u), ~vec4<u32>(21407u, arg_1.a.d.x, 0u, arg_1.a.a.x) ^ abs(firstLeadingBit(vec4<u32>(28569u, u_input.c.x, 0u, global0.d.x)))), abs(arg_1.a.b) | _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c.x), 1u, min(4359u, global0.c.b.x), firstLeadingBit(global0.e.a.x)), ~u_input.d), vec3<u32>(global0.e.b.x, _wgslsmith_clamp_u32(31452u, _wgslsmith_div_u32(0u, ~1u), ~(~u_input.d.x)), arg_1.a.c));
    var var_1 = func_5(_wgslsmith_mult_vec3_i32(u_input.a.yxy, -select(u_input.a.zyy, u_input.a.zzw, !vec3<bool>(global0.b.x, global0.b.x, global0.b.x))));
    var_1 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(147f, _wgslsmith_div_f32(-1558f, _wgslsmith_f_op_f32(-arg_0))))));
    var var_2 = -1189f;
    let var_3 = Struct_2(global0.c);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.e.d.x << (3483u % 32u);
    let var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, reverseBits(u_input.b), _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yy), ~u_input.a.x), vec4<i32>(~(-15066i), global0.a, abs(global0.a), func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), Struct_2(global0.c), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, global0.e.c, 73022u), u_input.d), firstTrailingBit(global0.d.x)))));
    global0 = Struct_3(~var_1.x, !select(vec4<bool>(any(vec2<bool>(true, true)), true, true, global0.b.x), select(global0.b, !vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), select(global0.b, vec4<bool>(false, global0.b.x, true, true), global0.b.x)), !vec4<bool>(global0.b.x, false, true, global0.b.x)), global0.e, global0.e.b.xzw, Struct_1(max(firstLeadingBit(vec3<u32>(4294967295u, u_input.e.x, 0u)), ~vec3<u32>(global0.d.x, global0.c.d.x, global0.c.e.x)) | vec3<u32>(~4294967295u, 32210u, abs(45367u)), u_input.e, max(abs(_wgslsmith_div_u32(1u, global0.d.x)), 1u), min(vec4<u32>(u_input.c.x, max(u_input.c.x, global0.c.d.x), ~24176u, 242u), _wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(0u, 4294967295u, 0u, u_input.e.x)) >> (vec4<u32>(global0.c.c, global0.c.a.x, global0.d.x, u_input.c.x) % vec4<u32>(32u))), vec3<u32>(global0.c.b.x, 0u, reverseBits(u_input.d.x))));
    let var_2 = firstLeadingBit(20993u) ^ _wgslsmith_dot_vec3_u32(abs(global0.d), firstLeadingBit(~u_input.d.xzy) & ~u_input.e.wyw);
    let var_3 = vec2<u32>(var_2, _wgslsmith_clamp_u32(~global0.e.b.x, min(~(~u_input.d.x), global0.c.e.x), _wgslsmith_clamp_u32(abs(0u), ~global0.d.x, global0.d.x) ^ select(firstLeadingBit(13515u), _wgslsmith_add_u32(1u, u_input.e.x), global0.b.x)));
    var var_4 = -196f;
    let var_5 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1917f), _wgslsmith_f_op_f32(-2237f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-906f + -1626f))), 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1591f, _wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_f_op_f32(floor(1989f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, min(u_input.a.wz, min(reverseBits(abs(u_input.a.wz)), u_input.a.xz)), _wgslsmith_clamp_u32(var_2, ~var_3.x, 0u), _wgslsmith_div_f32(var_5.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x + _wgslsmith_f_op_f32(var_5.x + var_5.x)))), _wgslsmith_f_op_f32(func_1()));
}

