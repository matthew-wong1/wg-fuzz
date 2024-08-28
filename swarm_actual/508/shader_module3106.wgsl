struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<Struct_5, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5) -> vec4<f32> {
    let var_0 = Struct_4(reverseBits(abs(26917i)), false, ~vec3<u32>(~(~1u), 1u << (arg_1.c % 32u), u_input.c));
    var var_1 = select(_wgslsmith_sub_vec2_i32(arg_1.a.yy & arg_1.a.zx, _wgslsmith_mult_vec2_i32(arg_1.a.xz & (arg_1.a.xx & arg_1.a.yz), _wgslsmith_sub_vec2_i32(vec2<i32>(-57175i, global0[_wgslsmith_index_u32(31612u, 31u)]), ~vec2<i32>(-4093i, var_0.a)))), _wgslsmith_mod_vec2_i32(~vec2<i32>(~arg_1.a.x, var_0.a), vec2<i32>(-54804i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 27478i, u_input.a, arg_1.a.x), vec4<i32>(arg_1.a.x, 0i, var_0.a, arg_1.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 13581i, 1i, -2147483647i), vec4<i32>(-1i, 38428i, u_input.a, var_0.a))))), var_0.b);
    var var_2 = Struct_4(_wgslsmith_div_i32(u_input.a | var_0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, arg_1.a.x, 0i), vec4<i32>(var_0.a, global0[_wgslsmith_index_u32(1u, 31u)], arg_1.a.x, 2147483647i)) ^ var_0.a, abs(-28896i | u_input.a))), select(true != var_0.b, false, var_0.b), _wgslsmith_sub_vec3_u32(countOneBits(abs(vec3<u32>(var_0.c.x, u_input.b.x, arg_1.c))), countOneBits(var_0.c)) >> (~var_0.c % vec3<u32>(32u)));
    var var_3 = 0u;
    var var_4 = 13002i;
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_5) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(445f, arg_2.b, arg_2.b, 2075f) - vec4<f32>(1679f, arg_0.d.x, arg_2.b, 1067f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1041f, arg_2.b, 3250f, arg_0.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(arg_0.d.x, -1000f, 1000f, -208f), Struct_5(vec3<i32>(-6511i, 1i, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), arg_0.d.x, arg_0.a))) * _wgslsmith_div_vec4_f32(vec4<f32>(-2478f, 146f, -791f, 362f), vec4<f32>(935f, arg_0.d.x, -301f, -224f))))), firstTrailingBit(vec3<u32>(14618u, ~(u_input.c ^ arg_0.c.x), _wgslsmith_dot_vec3_u32(arg_0.c.xzw | vec3<u32>(arg_2.c, arg_0.a, arg_0.a), arg_1))), arg_0, vec3<u32>(~arg_0.e.x, _wgslsmith_clamp_u32(1u, (4294967295u << (u_input.b.x % 32u)) >> (1u % 32u), arg_1.x), firstTrailingBit(abs(~6933u))), ~(-37166i));
    let var_1 = Struct_3(firstTrailingBit(arg_2.a.x ^ 36459i), -var_0.e | reverseBits(var_0.e), !((~4296u < arg_1.x) | true));
    var var_2 = Struct_4(83475i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(542f - arg_2.b))) - _wgslsmith_f_op_f32(round(-1351f))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1310f - -589f))), ~(~vec3<u32>(_wgslsmith_add_u32(arg_1.x, var_0.b.x), 71520u, firstTrailingBit(1u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))))));
    var_2 = Struct_4(_wgslsmith_div_i32(var_2.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(18542i, -44413i)), -arg_2.a.zy)) | 36663i, select(true, false != (7815u >= firstLeadingBit(arg_0.e.x)), false), vec3<u32>(14827u, select(arg_0.e.x, _wgslsmith_add_u32(33637u, 0u), !var_1.c) ^ ~_wgslsmith_mult_u32(1u, 18877u), ~(~52975u)));
    return Struct_1(14421u << (firstLeadingBit(~(~4294967295u)) % 32u), var_0.c.d.x, ~arg_0.c, arg_0.d, _wgslsmith_mod_vec2_u32(~arg_1.zz ^ (arg_1.xz & vec2<u32>(103865u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 0u), ~vec2<u32>(65617u, 4294967295u))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.b);
    var var_1 = max(arg_0.c, vec4<u32>(arg_0.e.x, reverseBits(u_input.b.x | ~arg_0.a), ~(~(~9730u)), 93340u));
    var var_2 = func_2(func_2(func_2(arg_0, var_1.xxw, global1[_wgslsmith_index_u32(u_input.c, 3u)]), ~var_1.zzw, Struct_5(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 31u)], 1i) & ~vec3<i32>(45401i, 1i, -2147483647i), -1053f, ~var_1.x ^ ~1u)), ~(_wgslsmith_div_vec3_u32(vec3<u32>(47828u, arg_0.c.x, 21907u), max(var_1.xyx, var_1.xzx)) | vec3<u32>(66448u, u_input.c, u_input.c << (57493u % 32u))), Struct_5(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, 1i, global0[_wgslsmith_index_u32(u_input.c, 31u)]) & vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_0.e.x, 31u)], u_input.a)), countOneBits(vec3<i32>(u_input.a, -1i, u_input.a) ^ vec3<i32>(-9357i, global0[_wgslsmith_index_u32(var_1.x, 31u)], u_input.a)), countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)], global0[_wgslsmith_index_u32(65791u, 31u)]) ^ vec3<i32>(global0[_wgslsmith_index_u32(8568u, 31u)], global0[_wgslsmith_index_u32(17477u, 31u)], 1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -848f))), arg_0.b), ~firstLeadingBit(var_1.x) | 155u));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, var_2.b, arg_0.b, arg_0.b) + vec4<f32>(-834f, 1076f, var_2.d.x, var_2.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-981f, 359f, -1265f, var_2.d.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, arg_0.b, arg_0.d.x, -267f)))), false)))), var_1.xww, func_2(arg_0, var_2.c.xwx, global1[_wgslsmith_index_u32(4294967295u ^ ((4294967295u | var_2.a) << (var_2.c.x % 32u)), 3u)]), abs(abs(~vec3<u32>(var_1.x, 14468u, arg_0.e.x))), ~(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(45445u, var_1.x & 3412u), 31u)] ^ u_input.a));
    var_1 = countOneBits(func_2(func_2(func_2(Struct_1(u_input.c, var_3.a.x, var_3.c.c, vec2<f32>(var_2.b, var_2.d.x), vec2<u32>(114666u, var_2.a)), firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 25977u)), global1[_wgslsmith_index_u32(4294967295u, 3u)]), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.e.x, 4294967295u, var_1.x), vec3<u32>(1u, 4294967295u, var_3.d.x))), global1[_wgslsmith_index_u32(43275u, 3u)]), select(vec3<u32>(~var_2.e.x, 14217u, var_2.a), ~arg_0.c.xwy, select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), Struct_5(~abs(vec3<i32>(var_3.e, var_3.e, u_input.a)), _wgslsmith_f_op_f32(trunc(var_2.b)), func_2(var_3.c, var_3.d | vec3<u32>(4294967295u, 0u, arg_0.e.x), Struct_5(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(var_1.x, 31u)], -3679i), 2692f, arg_0.e.x)).e.x)).c);
    return arg_0.d.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    var var_0 = vec2<bool>(!(arg_0.x > _wgslsmith_f_op_f32(func_4(func_2(Struct_1(33522u, arg_0.x, vec4<u32>(4294967295u, u_input.c, 1u, 98557u), arg_0.ww, vec2<u32>(4294967295u, 63474u)), vec3<u32>(arg_2, u_input.c, 5579u), global1[_wgslsmith_index_u32(u_input.b.x, 3u)])))), !all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))));
    let var_1 = select(vec3<bool>(true, false, any(!vec4<bool>(var_0.x, true, var_0.x, false))), select(select(vec3<bool>(select(false, var_0.x, false), all(vec4<bool>(false, var_0.x, true, true)), false), vec3<bool>(true, true, !var_0.x), !any(vec2<bool>(false, var_0.x))), !vec3<bool>(true, all(vec4<bool>(true, var_0.x, true, true)), true), u_input.a < (global0[_wgslsmith_index_u32(select(4294967295u, 61648u, false), 31u)] ^ -2147483647i)), !(firstLeadingBit(-15702i >> (1u % 32u)) < min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], arg_1, -47292i), vec4<i32>(arg_3.x, arg_1, u_input.a, arg_3.x)), _wgslsmith_mult_i32(-2147483647i, 0i))));
    var_0 = !select(vec2<bool>(70651u < ~u_input.c, -303f <= _wgslsmith_div_f32(arg_0.x, -148f)), !select(select(vec2<bool>(var_1.x, true), vec2<bool>(var_0.x, var_1.x), vec2<bool>(true, var_0.x)), select(var_1.zx, vec2<bool>(true, false), vec2<bool>(false, var_0.x)), !var_1.x), vec2<bool>(var_1.x, var_1.x));
    var_0 = !select(!(!select(vec2<bool>(var_0.x, var_0.x), var_1.zy, var_0.x)), !vec2<bool>(var_0.x, false), var_0.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(-arg_0.x)))), firstLeadingBit(~(~func_2(Struct_1(4294967295u, arg_0.x, vec4<u32>(8832u, 1u, u_input.b.x, u_input.c), vec2<f32>(219f, arg_0.x), u_input.b), vec3<u32>(arg_2, u_input.b.x, u_input.b.x), Struct_5(vec3<i32>(41746i, arg_1, arg_3.x), arg_0.x, 0u)).c.yzx)), Struct_1(u_input.b.x, arg_0.x, abs(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 7456u, arg_2), vec4<u32>(u_input.b.x, arg_2, 118672u, 1u))), _wgslsmith_f_op_vec2_f32(-arg_0.yz), vec2<u32>(abs(~0u), firstTrailingBit(_wgslsmith_sub_u32(arg_2, u_input.b.x)))), vec3<u32>(min(~arg_2, 11350u) | firstLeadingBit(u_input.c), 10024u, 4294967295u << ((u_input.b.x << (firstLeadingBit(u_input.c) % 32u)) % 32u)), (i32(-1i) * -17996i) >> (~(~_wgslsmith_clamp_u32(u_input.b.x, arg_2, 0u)) % 32u));
    return reverseBits(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 3>();
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    var var_0 = Struct_4(u_input.a, any(vec2<bool>(true, true)), ~vec3<u32>(~u_input.c, _wgslsmith_add_u32(func_1(vec4<f32>(1000f, -809f, 877f, 1117f), global0[_wgslsmith_index_u32(1u, 31u)], u_input.c, vec2<i32>(-1i, 19696i)), min(0u, u_input.b.x)), 1u));
    global1 = array<Struct_5, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_1(u_input.b.x, -1381f, vec4<u32>(u_input.b.x, 31042u, u_input.c, 11688u), vec2<f32>(-752f, -1938f), var_0.c.xx), var_0.c, Struct_5(vec3<i32>(9043i, -1i, u_input.a), 392f, 60113u)).d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f))), 1000f, vec4<f32>(-146f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(422f, 864f, true)) - _wgslsmith_f_op_f32(round(-1643f))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -349f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(182f))) + _wgslsmith_f_op_f32(floor(-515f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -968f)))), _wgslsmith_mult_i32(0i, global0[_wgslsmith_index_u32(~31262u, 31u)]));
}

