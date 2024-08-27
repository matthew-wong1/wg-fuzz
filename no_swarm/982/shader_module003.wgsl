struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_3,
    d: Struct_4,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = arg_1.d.c.x;
    var var_1 = u_input.d.yy;
    var_1 = ~vec2<u32>(firstTrailingBit(reverseBits(var_1.x)) >> (_wgslsmith_div_u32(firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(arg_3, 1u, 24159u))) % 32u), 77335u);
    var_1 = reverseBits(abs(vec2<u32>(_wgslsmith_clamp_u32(1u, ~var_1.x, arg_3), _wgslsmith_mod_u32(51633u, ~arg_1.d.b.a.x))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 283f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1326f, arg_0)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.a, arg_0) + vec2<f32>(-1000f, arg_0)), vec2<f32>(1000f, 545f), vec2<bool>(true, arg_1.d.c.x))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-753f, 213f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    return ~arg_3;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_4) -> f32 {
    var var_0 = ~abs(_wgslsmith_div_vec3_u32(u_input.d, arg_2.c.c.a.yxx));
    var_0 = select(~(vec3<u32>(10261u, arg_0.x, 1u) & arg_2.b) << (u_input.d % vec3<u32>(32u)), vec3<u32>(4761u, ~4294967295u, ~func_3(_wgslsmith_f_op_f32(arg_2.c.d.a * arg_2.c.d.a), Struct_3(vec2<u32>(4294967295u, 21868u), 1u, Struct_1(arg_2.c.c.a, 14140i), arg_2.c.d, -31206i), -arg_1.x, _wgslsmith_div_u32(63331u, arg_2.b.x))), arg_2.c.d.c.x);
    var_0 = max(min(reverseBits(vec3<u32>(~u_input.a, ~var_0.x, max(1u, arg_2.c.c.a.x))), ~(vec3<u32>(4294967295u, var_0.x, 44411u) | u_input.d) >> (((vec3<u32>(70438u, 9584u, 12600u) & arg_2.c.c.a.xzx) ^ max(u_input.d, arg_2.b)) % vec3<u32>(32u))), arg_2.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.c.d.a, 1418f, 908f, arg_2.c.d.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.d.a, -328f, -888f, arg_2.c.d.a) - vec4<f32>(arg_2.c.d.a, 172f, -554f, arg_2.c.d.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.d.a, arg_2.c.d.a, -572f, arg_2.c.d.a)) - vec4<f32>(arg_2.c.d.a, arg_2.c.d.a, arg_2.c.d.a, -937f))))));
    var var_2 = arg_2.c.d;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.d.a)))), all(select(arg_2.c.d.c.xw, arg_2.c.d.c.yw, select(vec2<bool>(var_2.c.x, var_2.c.x), vec2<bool>(false, false), select(var_2.c.x, var_2.c.x, var_2.c.x))))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = arg_2.c;
    var var_1 = vec4<bool>(false, var_0.d.c.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_div_f32(-1982f, 129f), true))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1122f, 386f), arg_2.c.d.a, arg_0 > 30432u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec2<u32>(arg_2.b.x, arg_0), vec3<i32>(arg_1.x, -1i, -2638i), arg_2)))))));
    let var_2 = firstTrailingBit(3114u);
    var var_3 = arg_2.c.d;
    var_3 = arg_2.c.d;
    return Struct_1(vec4<u32>(abs(1u), 39210u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(max(73746u, arg_2.b.x), var_3.b.a.x >> (var_2 % 32u)), 41876u), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, var_0.b), vec2<u32>(2379u, 1u)), _wgslsmith_div_vec2_u32(arg_2.c.c.a.wz, vec2<u32>(33605u, var_0.c.a.x)), select(vec2<bool>(true, true), arg_2.c.d.c.yy, var_0.d.c.x)), ~(vec2<u32>(21516u, 1u) | var_0.a))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2507f - -469f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-609f * -939f) - -195f))) - _wgslsmith_f_op_f32(abs(1220f))));
    var var_1 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.c.x, _wgslsmith_add_i32(-22501i, u_input.c.x)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-u_input.c.x, u_input.c.x), 1i)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~0u, u_input.e >> (1u % 32u), u_input.a), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 15650u, u_input.b, 36193u), vec4<u32>(28390u, u_input.e, u_input.e, u_input.e)), 29024u, 0u)), select(~u_input.d, vec3<u32>(firstTrailingBit(u_input.a), _wgslsmith_mult_u32(4294967295u, u_input.b), u_input.d.x), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), Struct_3(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.d.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), u_input.d.xx, vec2<u32>(59904u, u_input.a))), u_input.d.zz), u_input.e, func_1(u_input.a, vec3<i32>(-1i) * -vec3<i32>(-16971i, u_input.c.x, u_input.c.x), Struct_4(u_input.c.x, ~vec3<u32>(u_input.a, u_input.b, 1u), Struct_3(vec2<u32>(4294967295u, u_input.e), u_input.a, Struct_1(vec4<u32>(u_input.e, 0u, 1u, u_input.b), -20472i), Struct_2(166f, Struct_1(vec4<u32>(u_input.b, 32494u, u_input.e, u_input.a), u_input.c.x), vec4<bool>(false, false, false, false)), -14925i))), Struct_2(_wgslsmith_f_op_f32(-var_0), Struct_1(~vec4<u32>(19094u, u_input.b, u_input.a, 2722u), u_input.c.x & -18234i), vec4<bool>(false, any(vec2<bool>(false, true)), true, true)), u_input.c.x));
    var_1 = Struct_4(0i, _wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.x, u_input.b, 19004u), u_input.d)) >> (vec3<u32>(u_input.b, 30337u, u_input.d.x) % vec3<u32>(32u)), countOneBits(~vec3<u32>(u_input.e, 55208u, 1u))), Struct_3(~func_1(1u, -vec3<i32>(-2147483647i, -33789i, 6165i), Struct_4(u_input.c.x, vec3<u32>(var_1.b.x, 0u, 38820u), Struct_3(var_1.b.zy, 1u, Struct_1(var_1.c.d.b.a, 1i), Struct_2(-373f, var_1.c.c, var_1.c.d.c), var_1.c.c.b))).a.wy, var_1.c.b, Struct_1(vec4<u32>(u_input.a >> (u_input.b % 32u), ~u_input.b, _wgslsmith_mult_u32(u_input.a, 31028u), _wgslsmith_dot_vec3_u32(var_1.c.d.b.a.wwx, vec3<u32>(31329u, 0u, u_input.a))), -1i), var_1.c.d, _wgslsmith_mod_i32(54074i & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 14638i), u_input.c), ~abs(2147483647i))));
    var_1 = Struct_4(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.c.x, -19809i)), -u_input.c), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_1.c.c.a.zzx, u_input.d), _wgslsmith_mod_vec3_u32(min(~u_input.d, u_input.d | vec3<u32>(var_1.c.d.b.a.x, 1u, 1u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 1u), u_input.d))), Struct_3(vec2<u32>(max(min(u_input.a, 0u), var_1.c.b), 1u), u_input.d.x, Struct_1(vec4<u32>(var_1.b.x & 4294967295u, u_input.e & 4294967295u, 84241u, ~u_input.d.x), countOneBits(_wgslsmith_div_i32(2147483647i, 34824i))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.d.a))), var_1.c.c, vec4<bool>(var_1.c.d.c.x, any(vec3<bool>(true, var_1.c.d.c.x, false)), var_1.c.d.c.x, !var_1.c.d.c.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-var_1.c.e, min(u_input.c.x, -53423i)), _wgslsmith_add_i32(~46939i, ~(-41238i)))));
    let var_2 = Struct_5(Struct_2(-1000f, Struct_1(var_1.c.d.b.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.c.e, 1i), vec3<i32>(-20782i, -1i, u_input.c.x))), var_1.c.d.c), -2147483647i, Struct_3(max(~vec2<u32>(u_input.b, 4354u), _wgslsmith_mult_vec2_u32(u_input.d.yy, var_1.c.d.b.a.zz) << (vec2<u32>(110823u, 61890u) % vec2<u32>(32u))), var_1.c.c.a.x, Struct_1(abs(select(var_1.c.d.b.a, vec4<u32>(16679u, 40735u, 40177u, 53468u), vec4<bool>(false, var_1.c.d.c.x, true, var_1.c.d.c.x))), abs(42545i)), var_1.c.d, 1i), Struct_4(~var_1.a, vec3<u32>(_wgslsmith_clamp_u32(min(u_input.e, u_input.b), var_1.c.a.x, 1019u), 0u, _wgslsmith_dot_vec3_u32(~var_1.c.d.b.a.www, vec3<u32>(42051u, 19357u, var_1.b.x))), var_1.c), firstTrailingBit(u_input.d.zz));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, ~(~1u), vec4<u32>(_wgslsmith_clamp_u32(~abs(0u), firstTrailingBit(1u) << ((var_1.c.a.x ^ var_2.d.c.a.x) % 32u), u_input.e), _wgslsmith_dot_vec2_u32(var_2.a.b.a.xy & var_1.b.xy, _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(var_2.e.x, 0u)), ~vec2<u32>(u_input.b, 4294967295u), firstLeadingBit(vec2<u32>(var_2.d.b.x, 4294967295u)))), 4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.a.b.a.x, 4294967295u, 33278u), ~var_1.c.d.b.a))));
}

