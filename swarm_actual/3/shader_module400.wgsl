struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(41889u, 13986u);

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(Struct_1(vec2<i32>(12518i, 0i), 247f, vec2<f32>(660f, -176f), vec2<u32>(12742u, 0u), vec4<i32>(0i, 13637i, 2013i, -1i)), vec2<u32>(4294967295u, 27499u)), Struct_4(Struct_1(vec2<i32>(-3364i, i32(-2147483648)), -812f, vec2<f32>(1587f, 109f), vec2<u32>(33037u, 45001u), vec4<i32>(0i, -13302i, -1716i, -6788i)), vec2<u32>(38355u, 4294967295u)), Struct_4(Struct_1(vec2<i32>(-34431i, 1i), 2173f, vec2<f32>(-595f, 921f), vec2<u32>(4294967295u, 0u), vec4<i32>(59236i, -31571i, -29605i, i32(-2147483648))), vec2<u32>(81429u, 1u)), Struct_4(Struct_1(vec2<i32>(-8615i, i32(-2147483648)), 1000f, vec2<f32>(523f, 1761f), vec2<u32>(1u, 42825u), vec4<i32>(1i, 4898i, 0i, 0i)), vec2<u32>(4294967295u, 4294967295u)), Struct_4(Struct_1(vec2<i32>(8057i, 10215i), 186f, vec2<f32>(-1552f, 1000f), vec2<u32>(1u, 101873u), vec4<i32>(2147483647i, -11559i, -1i, -1i)), vec2<u32>(97618u, 0u)), Struct_4(Struct_1(vec2<i32>(-40090i, -10055i), 145f, vec2<f32>(2157f, -571f), vec2<u32>(0u, 0u), vec4<i32>(-28775i, 2857i, 36346i, -4775i)), vec2<u32>(4888u, 4294967295u)), Struct_4(Struct_1(vec2<i32>(2147483647i, 2147483647i), -383f, vec2<f32>(1587f, -1000f), vec2<u32>(4294967295u, 0u), vec4<i32>(12146i, -1i, -1i, 2147483647i)), vec2<u32>(3197u, 4294967295u)));

var<private> global2: array<vec3<bool>, 20>;

var<private> global3: u32 = 13758u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(u_input.d.x, u_input.d.x, Struct_1(u_input.d.yw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2060f * _wgslsmith_div_f32(-1324f, -1062f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, -1000f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-461f, 277f))))), ~u_input.c, -(vec4<i32>(28153i, u_input.d.x, u_input.d.x, u_input.d.x) << (~vec4<u32>(0u, global0.x, u_input.e, global0.x) % vec4<u32>(32u)))));
    global2 = array<vec3<bool>, 20>();
    let var_1 = Struct_3(Struct_2(var_0.b, var_0.b, Struct_1(select(u_input.d.zw ^ u_input.d.yx, vec2<i32>(-39956i, 1i), vec2<bool>(false, false)), _wgslsmith_f_op_f32(step(var_0.c.c.x, _wgslsmith_div_f32(var_0.c.c.x, var_0.c.b))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1130f), -699f), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 51883u, 21481u, 0u), vec4<u32>(91554u, 4294967295u, u_input.a, 4294967295u)), global0.x), select(vec4<i32>(-2147483647i, var_0.a, -13425i, u_input.d.x), _wgslsmith_clamp_vec4_i32(var_0.c.e, var_0.c.e, u_input.d), any(vec3<bool>(false, false, true))))), Struct_2(_wgslsmith_add_i32(2147483647i, ~var_0.a), u_input.d.x, Struct_1(vec2<i32>(-56345i, ~27249i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-194f, var_0.c.b) + vec2<f32>(var_0.c.c.x, var_0.c.c.x))), ~vec2<u32>(global0.x, var_0.c.d.x), ~vec4<i32>(u_input.d.x, 20520i, var_0.c.e.x, 48155i))));
    let var_2 = 0u;
    var_0 = var_1.a;
    return vec2<f32>(1827f, -243f);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_2(firstLeadingBit(arg_1.x), ~(~_wgslsmith_sub_i32(-2147483647i, u_input.d.x)), Struct_1(u_input.d.yw, _wgslsmith_f_op_f32(-arg_0.c.x), vec2<f32>(arg_0.b, -878f), u_input.c, ~vec4<i32>(1i, countOneBits(86354i), reverseBits(47712i), -13712i)));
    let var_1 = -30264i << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(max(arg_0.d.x, 25098u), ~global0.x), global0.x), _wgslsmith_div_u32(arg_0.d.x, 62600u) & firstTrailingBit(u_input.c.x)) % 32u);
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(var_0.c.e.yw, var_0.c.e.xy), _wgslsmith_f_op_f32(982f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.c.b)))), _wgslsmith_f_op_vec2_f32(func_3()).x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), 1057f), ~var_0.c.d << (vec2<u32>((0u >> (var_0.c.d.x % 32u)) & 1u, _wgslsmith_div_u32(1u, 1u)) % vec2<u32>(32u)), vec4<i32>(-14227i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, -50866i), vec2<i32>(arg_1.x, arg_1.x)), _wgslsmith_sub_i32(firstLeadingBit(arg_1.x) << (88836u % 32u), 1i), (u_input.d.x | 443i) ^ var_0.a));
    return select(!(!arg_2.yx), !select(vec2<bool>(true, var_2.d.x >= 0u), arg_2.yz, ~var_2.d.x <= 57496u), any(vec4<bool>(!arg_2.x, !(arg_1.x > arg_1.x), !(false & arg_2.x), arg_2.x)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = vec4<bool>(true, ((-22545i << (arg_0.c.d.x % 32u)) < _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, arg_0.a), vec2<i32>(-1i, arg_0.c.e.x))) & ((_wgslsmith_f_op_f32(min(-401f, 516f)) <= _wgslsmith_f_op_f32(arg_0.c.c.x - 447f)) & true), false, true);
    let var_1 = func_4(Struct_1(arg_0.c.e.xz, _wgslsmith_f_op_f32(max(-460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b) - _wgslsmith_f_op_f32(398f + arg_0.c.c.x)))), _wgslsmith_f_op_vec2_f32(func_3()), u_input.c, vec4<i32>(-(~(-1i)), 2102i, 0i, 0i)), abs(~u_input.d), select(select(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(false, true, all(var_0.zy), true), !(!vec4<bool>(var_0.x, false, var_0.x, true))), !vec4<bool>(true, var_0.x & false, any(vec4<bool>(false, true, var_0.x, var_0.x)), true), !var_0.x));
    global2 = array<vec3<bool>, 20>();
    return ~1u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = abs(_wgslsmith_add_vec2_i32(-firstTrailingBit(-vec2<i32>(-27781i, 51252i)), u_input.d.wy));
    var var_1 = vec3<u32>(global0.x, 4294967295u, u_input.e ^ 1u);
    global1 = array<Struct_4, 7>();
    global3 = min(max(var_1.x, var_1.x), 25199u);
    var_1 = ~(~(~vec3<u32>(var_1.x, 0u, global0.x))) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(min(vec3<u32>(54279u, 85058u, var_1.x), vec3<u32>(41581u, 93182u, var_1.x))), max(~vec3<u32>(u_input.a, var_1.x, 33343u), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 4294967295u, 4294967295u), vec3<u32>(global0.x, 31464u, var_1.x)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(40401u, 47132u, 4294967295u) ^ vec3<u32>(0u, global0.x, var_1.x), ~vec3<u32>(global0.x, 80491u, global0.x)));
    return _wgslsmith_add_u32(8400u, ~17301u) | func_2(Struct_2(_wgslsmith_clamp_i32(2147483647i << (global0.x % 32u), ~(-2147483647i), firstTrailingBit(-1i)), 45526i, Struct_1(select(vec2<i32>(var_0.x, 0i), u_input.d.zz, vec2<bool>(arg_1.x, true)), _wgslsmith_f_op_f32(-arg_2.x), arg_2, ~var_1.xy, abs(u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(abs(21502u), _wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c << (~firstLeadingBit(vec2<u32>(42405u, 0u)) % vec2<u32>(32u))));
    var var_1 = all(vec3<bool>(true, true, (_wgslsmith_div_u32(9548u, u_input.b) <= u_input.b) && !all(vec2<bool>(true, false))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1760f, _wgslsmith_div_f32(-2407f, 116f))) - _wgslsmith_f_op_f32(1604f + _wgslsmith_f_op_f32(f32(-1f) * -363f))) + _wgslsmith_f_op_f32(-390f + -1613f)));
    var_1 = any(vec2<bool>(!(!select(true, false, true)), global0.x < u_input.b));
    global1 = array<Struct_4, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d >> (_wgslsmith_mod_vec4_u32(vec4<u32>(abs(1u), ~u_input.e, func_1(vec3<bool>(true, false, false), vec4<bool>(true, true, false, true), vec2<f32>(var_2, var_2), vec2<f32>(var_2, 1025f)), ~u_input.e), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, 7853u, 31642u, var_0.x), vec4<u32>(var_0.x, 36169u, u_input.e, 67988u) ^ vec4<u32>(4294967295u, 89236u, global0.x, 30605u))) % vec4<u32>(32u)), firstLeadingBit(global0.x) << (0u % 32u), var_2, reverseBits(abs(~(~vec4<u32>(var_0.x, u_input.c.x, 10607u, 9714u)))), _wgslsmith_mod_vec2_i32(~vec2<i32>(~26031i, 0i), vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, 2147483647i, u_input.d.x)), u_input.d.x)));
}

