struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(45252u, 0u, 22031u), vec4<u32>(2261u, 4294967295u, 39487u, 4294967295u), 45459u, vec4<f32>(-126f, 1176f, -385f, 638f), vec4<i32>(40674i, -1i, 18218i, -71527i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    var var_0 = Struct_1(~firstTrailingBit(vec3<u32>(~101826u, _wgslsmith_add_u32(global0.c, 41085u), _wgslsmith_mod_u32(global0.a.x, 51166u))), firstLeadingBit(vec4<u32>(~(~50521u), _wgslsmith_dot_vec2_u32(vec2<u32>(84935u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_add_u32(u_input.a.x & u_input.b, global0.b.x & 4294967295u), firstTrailingBit(u_input.b))), ~abs(~(~0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), 894f, global0.d.x, -328f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global0.d.x)), _wgslsmith_f_op_f32(global0.d.x + global0.d.x), 1f, global0.d.x))), vec4<i32>(_wgslsmith_add_i32(u_input.c.x, ~1i >> (reverseBits(global0.c) % 32u)), 0i, 2147483647i, u_input.c.x));
    global0 = Struct_1((select(u_input.a.wzx | global0.a, ~vec3<u32>(var_0.c, 1u, var_0.a.x), vec3<bool>(false, false, false)) & ~vec3<u32>(var_0.c, global0.a.x, global0.a.x)) | vec3<u32>(u_input.a.x, 0u, 4294967295u), ~(~global0.b), _wgslsmith_clamp_u32(var_0.c, 6451u, select(~(~0u), 1u, !select(false, true, true))), _wgslsmith_f_op_vec4_f32(-var_0.d), firstTrailingBit(abs(vec4<i32>(-var_0.e.x, _wgslsmith_dot_vec3_i32(var_0.e.zzw, var_0.e.wyx), 38369i, ~2147483647i))));
    let var_1 = 1u;
    global0 = Struct_1(countOneBits(select(_wgslsmith_add_vec3_u32(vec3<u32>(global0.c, 2206u, 26111u), var_0.b.yyw) << (~vec3<u32>(u_input.a.x, var_1, 33538u) % vec3<u32>(32u)), u_input.a.xxw, true)), u_input.a, ~var_0.b.x << (31042u % 32u), global0.d, vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -global0.e.x) >> (firstTrailingBit(max(u_input.a.x, u_input.b)) % 32u), var_0.e.x, (~(-32903i) >> (_wgslsmith_clamp_u32(1u, u_input.b, u_input.b) % 32u)) & min(0i, -global0.e.x), 0i));
    return false;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(2287f - _wgslsmith_f_op_f32(min(1493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(global0.d.yw));
    global0 = Struct_1(~global0.b.zzz, vec4<u32>(u_input.b, _wgslsmith_mod_u32(global0.b.x, 17260u), _wgslsmith_sub_u32(global0.a.x, _wgslsmith_dot_vec4_u32(global0.b | vec4<u32>(40523u, global0.c, global0.b.x, 10037u), min(vec4<u32>(4294967295u, global0.b.x, global0.c, global0.a.x), u_input.a))), u_input.b), 46346u, global0.d, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(select(u_input.c, vec4<i32>(2147483647i, global0.e.x, global0.e.x, global0.e.x), vec4<bool>(false, false, false, true)), -_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(global0.e.x, 0i, global0.e.x, -6451i)), select(vec4<i32>(0i, 8967i, -1i, u_input.c.x) >> (vec4<u32>(1u, 22384u, 0u, u_input.b) % vec4<u32>(32u)), ~vec4<i32>(64320i, global0.e.x, global0.e.x, global0.e.x), !vec4<bool>(true, arg_2, false, arg_2))), -(~u_input.c)));
    global0 = Struct_1(abs(u_input.a.zyz), ~_wgslsmith_sub_vec4_u32(u_input.a, ~vec4<u32>(1u, 8555u, 10724u, 0u)) << (firstTrailingBit(~(vec4<u32>(u_input.a.x, 22479u, global0.c, 0u) >> (vec4<u32>(global0.a.x, 70186u, global0.c, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)), abs(max(~u_input.b, ~3494u) & 1u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(global0.d, vec4<f32>(-735f, -127f, _wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(-arg_1.x)))))), (u_input.c ^ ~(-u_input.c)) & vec4<i32>(abs(global0.e.x) & _wgslsmith_mod_i32(global0.e.x, 39370i), 1i << (_wgslsmith_mod_u32(u_input.b, 1u) % 32u), 2147483647i, -2147483647i));
    var var_2 = Struct_1(~global0.a, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(7192u, 39229u, global0.c, 1u), vec4<u32>(_wgslsmith_mod_u32(29477u, 1u), reverseBits(u_input.b), 4294967295u, global0.c)), firstLeadingBit(~(~0u)), u_input.a.x, firstTrailingBit(_wgslsmith_add_u32(58108u, global0.a.x))), 14591u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-683f, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * -269f), _wgslsmith_f_op_f32(trunc(-1262f)), var_0) - global0.d), u_input.c);
    return vec4<f32>(196f, 1523f, arg_0, arg_1.x);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2324f * 1100f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.d.x)), 131f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.d.zw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.d.x, -2259f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-586f, 439f), global0.d.yw) - _wgslsmith_f_op_vec2_f32(-arg_0.b.d.ww))))), !func_3()));
    global0 = arg_0.b;
    global0 = arg_0.b;
    let var_1 = !select(false, true, all(vec2<bool>(true, true)));
    let var_2 = select(!select(vec3<bool>(var_1, var_1, var_1), !select(vec3<bool>(var_1, true, false), vec3<bool>(var_1, false, var_1), var_1), !(!vec3<bool>(var_1, var_1, var_1))), vec3<bool>(select(!var_1 | (var_1 || var_1), var_1, var_1), false, true & var_1), vec3<bool>(!var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(163f, arg_0.b.d.x, true)) - _wgslsmith_f_op_f32(round(-715f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.d.x)) - -1556f), var_1 != var_1));
    return Struct_2(vec4<i32>(firstLeadingBit(u_input.c.x >> (~4294967295u % 32u)), min(-(~48574i), -2767i), 0i, u_input.c.x), Struct_1(arg_0.b.b.yzw, global0.b, 0u, _wgslsmith_f_op_vec4_f32(-global0.d), arg_0.b.e));
}

fn func_5(arg_0: Struct_2) -> i32 {
    global0 = func_2(Struct_2(func_2(Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, arg_0.a.x, 1i), vec4<i32>(u_input.c.x, arg_0.a.x, arg_0.a.x, 2147483647i)), Struct_1(global0.b.zxz, vec4<u32>(7637u, global0.c, 44293u, arg_0.b.c), 55687u, global0.d, u_input.c))).b.e, func_2(arg_0).b)).b;
    let var_0 = Struct_5(select((_wgslsmith_f_op_f32(f32(-1f) * -1525f) != _wgslsmith_f_op_f32(-global0.d.x)) && true, true, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(237f)), _wgslsmith_f_op_f32(-460f + global0.d.x), _wgslsmith_f_op_f32(arg_0.b.d.x - -2360f), _wgslsmith_div_f32(arg_0.b.d.x, -302f)))), vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), u_input.a.x >= ~(~u_input.b)), ~max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 42447i, u_input.c.x), -vec4<i32>(46889i, -11863i, arg_0.a.x, 2147483647i)), arg_0.b.e), func_2(func_2(func_2(Struct_2(arg_0.a, Struct_1(vec3<u32>(u_input.a.x, arg_0.b.b.x, 62149u), global0.b, 26833u, vec4<f32>(-816f, global0.d.x, 791f, 1232f), global0.e))))).b);
    global0 = arg_0.b;
    global0 = func_2(func_2(Struct_2(countOneBits(vec4<i32>(var_0.d.x, 2147483647i, var_0.d.x, -1i)), arg_0.b))).b;
    return global0.e.x;
}

fn func_6(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-800f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d.x)))));
    let var_1 = vec2<f32>(arg_0.e.d.x, _wgslsmith_f_op_f32(step(func_2(func_2(Struct_2(vec4<i32>(arg_0.e.e.x, 1i, global0.e.x, arg_0.d.x), arg_0.e))).b.d.x, var_0.x)));
    let var_2 = Struct_5(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(365f))), -371f, -708f, -162f), vec3<bool>(arg_0.a, true != arg_0.a, arg_0.a), -(~reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, arg_2, -17607i, arg_1.x), vec4<i32>(-2147483647i, arg_1.x, arg_1.x, -43334i)))), Struct_1(u_input.a.wyx, arg_0.e.b, 1u, vec4<f32>(_wgslsmith_div_f32(-652f, -116f), 1f, -324f, _wgslsmith_f_op_f32(f32(-1f) * -455f)), ~vec4<i32>(0i, arg_2, global0.e.x, _wgslsmith_mult_i32(arg_2, -11974i))));
    let var_3 = var_2;
    global0 = var_2.e;
    return arg_0.c;
}

fn func_1(arg_0: f32) -> Struct_5 {
    var var_0 = Struct_4(Struct_3(Struct_2(_wgslsmith_mod_vec4_i32(abs(global0.e), _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-10567i, global0.e.x, -2147483647i, u_input.c.x))), Struct_1(min(vec3<u32>(global0.b.x, u_input.a.x, u_input.a.x), u_input.a.zzy), u_input.a, 4294967295u, _wgslsmith_f_op_vec4_f32(max(global0.d, vec4<f32>(arg_0, arg_0, -853f, -1000f))), abs(u_input.c))), u_input.c.yz, _wgslsmith_div_u32(52837u, global0.c), func_6(Struct_5(true, global0.d, select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 24207i, -1i, global0.e.x), vec4<i32>(global0.e.x, global0.e.x, global0.e.x, u_input.c.x), global0.e), Struct_1(global0.b.yzx, vec4<u32>(123665u, u_input.b, u_input.a.x, 1u), u_input.a.x, global0.d, vec4<i32>(global0.e.x, -1i, u_input.c.x, global0.e.x))), vec2<i32>(-1i) * -u_input.c.zx, func_5(func_2(Struct_2(vec4<i32>(global0.e.x, -26053i, global0.e.x, 2147483647i), Struct_1(vec3<u32>(13754u, u_input.b, 35593u), vec4<u32>(64117u, u_input.b, u_input.b, global0.c), global0.c, global0.d, u_input.c)))))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.b, 4294967295u), vec4<u32>(13589u, u_input.b, global0.a.x, 32320u)), vec4<u32>(70518u, global0.c, global0.c, 4294967295u) | vec4<u32>(11460u, u_input.a.x, 17128u, global0.c))));
    var var_1 = var_0.a.a.b.d.zzz;
    var var_2 = func_2(func_2(Struct_2((vec4<i32>(-1i, -3328i, 0i, u_input.c.x) << (vec4<u32>(u_input.b, 434u, u_input.b, 1u) % vec4<u32>(32u))) ^ u_input.c, Struct_1(global0.a, u_input.a ^ vec4<u32>(global0.c, u_input.b, u_input.b, 0u), select(var_0.c.x, u_input.a.x, var_0.a.d.x), _wgslsmith_f_op_vec4_f32(ceil(var_0.a.a.b.d)), -var_0.a.a.a)))).b.b.xyx;
    var_2 = firstTrailingBit(min(~(~global0.a) & reverseBits(vec3<u32>(var_2.x, u_input.b, var_0.c.x)), _wgslsmith_sub_vec3_u32(u_input.a.yyw, u_input.a.xyw)));
    var_0 = Struct_4(var_0.a, var_0.a.d.zy, u_input.a);
    return Struct_5(var_0.a.d.x | true, _wgslsmith_f_op_vec4_f32(-var_0.a.a.b.d), var_0.a.d, countOneBits(~vec4<i32>(global0.e.x, var_0.a.a.a.x, 0i, 1131i)) ^ func_2(func_2(Struct_2(global0.e, Struct_1(global0.a, vec4<u32>(36166u, var_0.a.c, 7637u, 4294967295u), 1u, vec4<f32>(var_1.x, -816f, arg_0, global0.d.x), vec4<i32>(u_input.c.x, u_input.c.x, var_0.a.b.x, global0.e.x))))).b.e, func_2(var_0.a.a).b);
}

fn func_7(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: vec4<i32>) -> vec3<bool> {
    global0 = arg_2.e;
    let var_0 = all(select(!vec4<bool>(any(vec3<bool>(true, arg_2.c.x, true)), false, true, false), select(!select(vec4<bool>(false, true, true, arg_2.c.x), vec4<bool>(false, false, arg_2.a, false), vec4<bool>(arg_2.a, arg_2.a, true, false)), select(!vec4<bool>(arg_2.a, true, arg_2.a, arg_2.c.x), !vec4<bool>(true, true, arg_2.a, arg_2.c.x), arg_2.c.x), !vec4<bool>(true, false, arg_2.a, arg_2.a)), arg_2.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.e.d.x))))))));
    var var_2 = arg_2.c.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2042f)));
    return !select(vec3<bool>(var_0 & arg_2.a, true, true), func_6(Struct_5(var_0, global0.d, arg_2.c, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -2147483647i, 0i, -2147483647i), vec4<i32>(-1i, arg_2.d.x, -27348i, u_input.c.x)), func_1(var_1).e), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-42692i, -7129i), global0.e.xy, global0.e.zw), u_input.c.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(func_7(global0.d.x, _wgslsmith_sub_vec2_u32(~u_input.a.yx, vec2<u32>(0u, u_input.b) & u_input.a.yz) << (countOneBits(vec2<u32>(4294967295u, 45153u)) % vec2<u32>(32u)), func_1(509f), u_input.c));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-731f - global0.d.x))), vec2<f32>(global0.d.x, global0.d.x), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(818f, _wgslsmith_f_op_f32(step(-2063f, global0.d.x)), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(round(-592f))))) + global0.d);
    global0 = Struct_1(vec3<u32>(1u, u_input.b, min(abs(u_input.a.x), ~global0.a.x)), select(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(global0.b, global0.b), global0.b), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(global0.b & vec4<u32>(4294967295u, global0.a.x, global0.c, 0u), ~vec4<u32>(global0.c, u_input.a.x, global0.a.x, 24657u)), u_input.a, u_input.a), true || func_7(_wgslsmith_f_op_f32(exp2(var_1.x)), vec2<u32>(global0.c, u_input.a.x), func_1(411f), vec4<i32>(11372i, 13136i, u_input.c.x, -11429i)).x), ~1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0.d.x, 222f, var_1.x)))), var_1), vec4<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<i32>(-1i, -2147483647i, global0.e.x))), -select(~global0.e.x, global0.e.x, true), _wgslsmith_mult_i32(~global0.e.x, min(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.e.x, -9161i), vec3<i32>(global0.e.x, -67732i, 1i)))), _wgslsmith_dot_vec3_i32(global0.e.yyy, vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, global0.e.x))));
    global0 = Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(~u_input.b, min(u_input.a.x, global0.c), global0.b.x)), _wgslsmith_mod_vec3_u32(u_input.a.wwz ^ reverseBits(global0.a), global0.a)), ~u_input.a, firstLeadingBit(11099u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yw)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-246f * global0.d.x), -812f, _wgslsmith_f_op_f32(var_1.x - 115f), global0.d.x) - vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0.d.x - global0.d.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 1330f), _wgslsmith_f_op_f32(ceil(var_1.x)), 1f, var_1.x), vec4<f32>(var_1.x, 567f, global0.d.x, var_1.x), firstTrailingBit(u_input.b) <= (1u >> (1u % 32u))))), abs(vec4<i32>(~u_input.c.x, -1i, reverseBits(global0.e.x), -6844i | global0.e.x)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(70803u, u_input.a.x, u_input.b, global0.b.x), vec4<u32>(90341u, global0.b.x, 1u, 4294967295u)) % vec4<u32>(32u)));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.e.zy, -(~(-u_input.c.x)));
}

