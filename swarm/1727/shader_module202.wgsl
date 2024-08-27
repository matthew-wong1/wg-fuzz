struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(36142u, 54504u, 4294967295u, 88948u), vec4<u32>(4294967295u, 24173u, 1u, 35597u), vec2<bool>(false, true));

var<private> global2: f32;

var<private> global3: vec4<u32> = vec4<u32>(29515u, 85235u, 30455u, 51471u);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global3 = ~arg_1.b;
    global1 = arg_2.b;
    var var_0 = i32(-1i) * -(~u_input.a);
    let var_1 = arg_1;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-511f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(ceil(1173f))), _wgslsmith_f_op_f32(sign(808f)))))) + arg_2.c);
    return -68944i;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(u_input.c, u_input.c, global1.c);
    global0 = (-vec4<i32>(2147483647i, select(2147483647i, u_input.d, true), _wgslsmith_mult_i32(-19432i, u_input.d), -8967i) << ((u_input.c >> (countOneBits(var_0.b) % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<i32>(-2147483647i, func_3(128u, Struct_1(~vec4<u32>(3779u, global1.b.x, var_0.b.x, 4294967295u), ~vec4<u32>(1u, 0u, 4294967295u, var_0.a.x), vec2<bool>(var_0.c.x, true)), Struct_2(global3.x >= global3.x, Struct_1(vec4<u32>(4294967295u, 4351u, global1.a.x, 1u), vec4<u32>(global1.a.x, 1u, 84822u, var_0.a.x), vec2<bool>(var_0.c.x, var_0.c.x)), _wgslsmith_div_f32(-804f, -313f)), Struct_1(var_0.a, abs(var_0.b), vec2<bool>(var_0.c.x, true))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(min(global0.zw, vec2<i32>(1i, u_input.a)), global0.yy), _wgslsmith_sub_i32(-38513i, global0.x)), 0i);
    let var_1 = Struct_2(true & !all(select(vec2<bool>(global1.c.x, global1.c.x), vec2<bool>(global1.c.x, true), global1.c.x)), Struct_1(u_input.c, global1.b, global1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(721f, 1336f)), _wgslsmith_div_f32(152f, -788f))), -308f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1191f), 1104f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1401f)) - -308f)))));
    var var_2 = _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(step(-930f, -765f)));
    global0 = (select(vec4<i32>(2147483647i, global0.x, _wgslsmith_add_i32(-1i, 0i), global0.x), vec4<i32>(0i, _wgslsmith_div_i32(u_input.d, u_input.d), u_input.d, -u_input.d), 836f <= _wgslsmith_f_op_f32(var_1.c * 609f)) | select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 0i, 24028i), vec4<i32>(15414i, -1i, 1727i, global0.x) & vec4<i32>(-22645i, -2147483647i, 2147483647i, global0.x)), vec4<i32>(u_input.d ^ global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(3742i, 16381i, global0.x, -12294i), vec4<i32>(global0.x, 39677i, global0.x, global0.x)), 0i, ~0i), vec4<bool>(true & var_1.b.c.x, global1.c.x, !var_1.a, false))) | -vec4<i32>(~(-7639i) ^ ~global0.x, 1i, firstTrailingBit(24402i & u_input.a), abs(_wgslsmith_mod_i32(31475i, 2147483647i)));
    return -4273i;
}

fn func_1() -> bool {
    global0 = _wgslsmith_add_vec4_i32(min(vec4<i32>(global0.x, u_input.a, 88449i, min(u_input.a, global0.x) ^ func_2()), -(~vec4<i32>(29343i, 0i, global0.x, global0.x))), vec4<i32>(u_input.a ^ global0.x, _wgslsmith_mod_i32(abs(countOneBits(global0.x)), _wgslsmith_add_i32(u_input.a, u_input.a)), 1i, min(-2147483647i, _wgslsmith_dot_vec2_i32(global0.xy, -global0.zy))));
    global1 = Struct_1(~firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(11067u, u_input.b), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, global3.x, global3.x), global1.b.zwz), ~0u)), ~global1.b, !vec2<bool>(!global1.c.x, ~global3.x > ~u_input.c.x));
    let var_0 = _wgslsmith_mult_u32(~(~(~_wgslsmith_mod_u32(global1.b.x, 14117u))), min(54526u, 0u) << (~u_input.c.x % 32u));
    let var_1 = Struct_1(vec4<u32>(min(~(~7689u), 15312u), 1u, var_0, ~(~1u)), vec4<u32>(_wgslsmith_mult_u32(global3.x, 22433u), _wgslsmith_sub_u32(7323u, _wgslsmith_sub_u32(~u_input.c.x, abs(4294967295u))), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 6780u), global1.a.xx), u_input.b), select(0u, global3.x, global1.c.x) << (firstLeadingBit(56870u) % 32u)), ~(global1.a.x & _wgslsmith_add_u32(1u, var_0))), !select(select(global1.c, select(global1.c, global1.c, false), select(global1.c, vec2<bool>(global1.c.x, false), global1.c.x)), select(vec2<bool>(global1.c.x, global1.c.x), vec2<bool>(false, global1.c.x), select(vec2<bool>(global1.c.x, global1.c.x), global1.c, vec2<bool>(global1.c.x, false))), global1.c.x));
    let var_2 = vec2<i32>(abs(u_input.d << (global1.a.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-36689i, -1i) ^ (vec2<i32>(3742i, 2315i) | global0.zy), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(1i, u_input.d), u_input.a), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 56272i), vec2<i32>(-38768i, -3862i))), firstTrailingBit(vec2<i32>(1i, 1i)))));
    return var_2.x <= firstLeadingBit(1i);
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_2 {
    global0 = select(-vec4<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(arg_1, -1i)), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(-1i, 4832i)), u_input.d | reverseBits(global0.x), abs(-47613i ^ global0.x)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(1i, global0.x, -26879i, -2731i)), -firstLeadingBit(vec4<i32>(arg_1, arg_1, arg_1, 52216i)), max(vec4<i32>(-40583i, u_input.d, arg_1, u_input.d) | vec4<i32>(global0.x, 24838i, u_input.d, 1i), vec4<i32>(-2147483647i, 30887i, u_input.a, 1i))) >> (global1.b % vec4<u32>(32u)), !(!(!arg_0) && !(!arg_0)));
    let var_0 = Struct_1(vec4<u32>(abs(u_input.c.x) << ((u_input.b >> (9557u % 32u)) % 32u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global1.a.x, 4294967295u), global3.zwx)), 1u, global1.b.x) >> (_wgslsmith_div_vec4_u32(select(~global1.b, vec4<u32>(57781u, u_input.c.x, global1.a.x, 1u) ^ vec4<u32>(global1.b.x, 4294967295u, 46743u, 17565u), global1.c.x && true), ~vec4<u32>(47835u, global3.x, global1.b.x, u_input.b)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, max(4294967295u, 0u), global1.a.x), u_input.b, global1.a.x, global1.a.x) ^ vec4<u32>(_wgslsmith_sub_u32(~global3.x, ~1u), ~min(u_input.b, 19289u), countOneBits(_wgslsmith_mod_u32(global1.a.x, u_input.b)), 17686u << (~u_input.b % 32u)), vec2<bool>(global1.c.x, !global1.c.x | true));
    let var_1 = ~reverseBits(vec2<u32>(4294967295u, _wgslsmith_mult_u32(reverseBits(144838u), ~global3.x)));
    let var_2 = var_0;
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(_wgslsmith_mod_i32(2147483647i, 53139i), _wgslsmith_clamp_i32(2147483647i, global0.x, -2147483647i), max(global0.x, 27915i)), -(~(-vec3<i32>(-3309i, 0i, global0.x))), select(countOneBits(vec3<i32>(0i, global0.x, 2147483647i) << (u_input.c.xwz % vec3<u32>(32u))), -(~global0.yxy), ~10867u <= _wgslsmith_add_u32(8424u, u_input.c.x))), -vec3<i32>(global0.x, 2342i, -arg_1));
    return Struct_2(select(any(select(!vec3<bool>(false, var_2.c.x, false), !vec3<bool>(true, arg_0, false), true)), true, false), var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-397f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(abs(-376f)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), ~_wgslsmith_clamp_i32(~global0.x | reverseBits(-1i), u_input.d, firstTrailingBit(countOneBits(u_input.d))));
    global3 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.b.a, countOneBits(~vec4<u32>(var_0.b.a.x, global3.x, global1.b.x, var_0.b.b.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(0u), countOneBits(global3.x), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.c.ww, var_0.b.b.zz)), select(~global1.b, ~vec4<u32>(global1.a.x, global3.x, global3.x, var_0.b.a.x), !vec4<bool>(false, global1.c.x, true, global1.c.x)), countOneBits(~vec4<u32>(global1.a.x, var_0.b.b.x, var_0.b.a.x, global1.a.x))));
    global1 = func_4(var_0.a, ~firstLeadingBit(u_input.a)).b;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(58921u | global1.b.x, Struct_1(vec4<u32>(u_input.b, global3.x, 40804u, abs(global3.x)), select(u_input.c & var_0.b.a, vec4<u32>(global1.a.x, 0u, var_0.b.b.x, 46531u) & vec4<u32>(18820u, u_input.c.x, global3.x, 0u), !vec4<bool>(var_0.a, false, global1.c.x, true)), vec2<bool>(55362u <= global3.x, false)), var_0, Struct_1(vec4<u32>(~global1.b.x, var_0.b.a.x, 0u, _wgslsmith_mult_u32(15673u, global3.x)), vec4<u32>(u_input.b, global1.a.x, ~18081u, _wgslsmith_add_u32(var_0.b.a.x, u_input.c.x)), select(vec2<bool>(global1.c.x, false), select(global1.c, var_0.b.c, var_0.b.c), func_4(true, global0.x).b.c))), var_0.c, -(global0.x | _wgslsmith_mult_i32(func_2(), global0.x)), _wgslsmith_f_op_f32(-var_0.c), var_0.c);
}

