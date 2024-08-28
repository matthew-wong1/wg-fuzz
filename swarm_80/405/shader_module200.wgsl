struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -954f;

var<private> global1: vec4<u32> = vec4<u32>(0u, 18273u, 1u, 11919u);

var<private> global2: array<vec4<bool>, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, arg_1.b.x, arg_1.b.x, 887f))), vec4<f32>(-918f, _wgslsmith_f_op_f32(-578f - arg_1.b.x), _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), -1384f))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(min(-663f, -1372f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), -1239f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(-1496f, -384f)), 1821f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_1.b.zy + arg_1.b.yy))))), arg_1);
    let var_1 = Struct_4(select(global1.xzw, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global1.zyw, vec3<u32>(global1.x, 1u, 1u)), ~arg_0.yyw), max(arg_0.x, u_input.b), 28740u << (u_input.b % 32u)), vec3<bool>(select(false, all(vec3<bool>(true, var_0.a.x, true)), true), var_0.a.x, var_0.a.x)), _wgslsmith_mod_u32(max(4294967295u, countOneBits(4294967295u)), _wgslsmith_mod_u32(43301u | (52997u | global1.x), countOneBits(abs(23763u)))));
    var_0 = Struct_2(!var_0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(1418f, arg_1.b.x, -161f, -253f)), var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 525f)), Struct_1(select(abs(~var_0.d.a), _wgslsmith_add_vec2_u32(~vec2<u32>(var_0.d.a.x, 0u), _wgslsmith_div_vec2_u32(global1.zy, var_1.a.zz)), _wgslsmith_div_u32(arg_0.x, var_1.a.x) < 95256u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1302f, 556f, var_0.b.x), var_0.d.b, vec3<bool>(var_0.a.x, true, true))) * vec3<f32>(arg_1.b.x, var_0.c.x, var_0.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(343f, -704f, 1128f), var_0.d.b, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-391f, var_0.b.x, 685f) * arg_1.b)), vec3<bool>(select(false, false, var_0.a.x), u_input.a > u_input.a, true)))));
    global1 = arg_0;
    var var_2 = var_1;
    return any(vec4<bool>(var_0.a.x, !var_0.a.x, var_0.a.x & !var_0.a.x, -529f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(930f)) - 1f)));
}

fn func_2(arg_0: u32, arg_1: f32) -> vec4<f32> {
    var var_0 = ~vec3<i32>(5153i, -25415i, abs(_wgslsmith_mult_i32(u_input.a, -u_input.a)));
    var var_1 = Struct_2(select(vec3<bool>(true && func_3(vec4<u32>(0u, u_input.b, 38211u, 24561u), Struct_1(vec2<u32>(global1.x, 87573u), vec3<f32>(arg_1, arg_1, -765f))), var_0.x < (i32(-1i) * -1i), u_input.b != 1u), vec3<bool>(true, true, true), _wgslsmith_div_u32(select(arg_0, 4294967295u, false), firstLeadingBit(arg_0)) > firstLeadingBit(u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + arg_1))), arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, _wgslsmith_f_op_f32(-arg_1))), Struct_1(vec2<u32>(30252u, ~36921u) << ((global1.yx | max(global1.yw, global1.xy)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, -321f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(912f, -1434f, arg_1) + vec3<f32>(arg_1, 1785f, arg_1))))));
    var_1 = Struct_2(!vec3<bool>(!var_1.a.x, var_1.a.x, true), _wgslsmith_f_op_vec4_f32(ceil(var_1.b)), vec2<f32>(arg_1, -1806f), var_1.d);
    var var_2 = var_1.b;
    var var_3 = vec4<i32>(firstTrailingBit(max(reverseBits(_wgslsmith_mult_i32(u_input.a, var_0.x)), -25363i)), -u_input.a, -var_0.x, 0i);
    return _wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 169f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1, -312f), -100f, !var_1.a.x)))));
}

fn func_4(arg_0: vec4<f32>) -> vec4<u32> {
    global0 = arg_0.x;
    let var_0 = true;
    var var_1 = Struct_1(global1.zx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.xzw + _wgslsmith_f_op_vec3_f32(arg_0.zwy - arg_0.wxw))));
    let var_2 = vec3<bool>(~_wgslsmith_sub_u32(global1.x & 1u, max(global1.x, u_input.b)) == var_1.a.x, all(vec3<bool>(false, true, var_0)), any(vec2<bool>(var_0 && !var_0, func_3(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, u_input.b, global1.x, 1u), vec4<u32>(1u, 0u, var_1.a.x, u_input.b)), Struct_1(vec2<u32>(28700u, 46850u), vec3<f32>(571f, -867f, 1000f))))));
    global0 = -608f;
    return vec4<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(28466u, 55809u, var_1.a.x), vec3<u32>(1u, global1.x, 39611u)), 1u), var_1.a)), _wgslsmith_div_u32(19347u, _wgslsmith_sub_u32(53538u, max(0u, u_input.b))), var_1.a.x, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.x, 27384u) ^ 4294967295u, var_1.a.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    global1 = reverseBits(select(~(vec4<u32>(arg_0.x, 0u, global1.x, arg_0.x) & vec4<u32>(8865u, global1.x, global1.x, global1.x)), vec4<u32>(global1.x >> (u_input.b % 32u), ~arg_0.x, select(global1.x, 1u, true), ~u_input.b), vec4<bool>(select(true, false, true), true, all(vec2<bool>(true, false)), false))) | max(vec4<u32>(global1.x, ~1u, 11902u, select(global1.x, 51924u, false)), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(47912u, arg_2)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(619f, arg_1, arg_1, arg_1))))));
    global0 = -388f;
    return Struct_1(vec2<u32>(func_4(vec4<f32>(arg_1, arg_2, arg_2, -772f)).x, u_input.b) >> (firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.b, global1.x), global1.yyy), ~4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1855f, -162f, arg_2)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-947f, arg_2, -427f))))) + vec3<f32>(_wgslsmith_f_op_f32(arg_2 - arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-100f * -1031f)), arg_1)));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    var var_0 = vec2<bool>(true, !(~arg_0.a.x < func_4(vec4<f32>(772f, arg_0.b.x, arg_0.b.x, 1204f)).x));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, -41724i), ~u_input.a), 0i << ((arg_0.a.x << (18054u % 32u)) % 32u)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, u_input.a) << (u_input.b % 32u), 1i ^ (-2147483647i ^ arg_1)), ~(~0i)), vec2<i32>(-u_input.a, -(-u_input.a << (1u % 32u))));
    global1 = firstLeadingBit(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1140f, arg_0.b.x, -896f, -1000f), vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -1000f)))) + vec4<f32>(523f, _wgslsmith_f_op_f32(exp2(arg_0.b.x)), _wgslsmith_f_op_f32(select(arg_0.b.x, -879f, true)), 1753f))));
    let var_2 = Struct_2(vec3<bool>(var_0.x, !var_0.x & !var_0.x, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true))) && var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, func_1(global1.xy, arg_0.b.x, 917f).b.x, _wgslsmith_f_op_f32(sign(1259f)), -1106f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, 348f, arg_0.b.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, -881f, 635f, arg_0.b.x))))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.b.zy, arg_0.b.yx), vec2<f32>(766f, arg_0.b.x)), Struct_1(~global1.xw, arg_0.b));
    var var_3 = arg_0;
    return _wgslsmith_add_vec4_u32((~(vec4<u32>(arg_0.a.x, 72276u, 58848u, 48590u) & vec4<u32>(58125u, 13504u, 75536u, arg_0.a.x)) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 49249u, arg_0.a.x, var_2.d.a.x), vec4<u32>(var_2.d.a.x, 65542u, 20300u, 39480u))) | (vec4<u32>(abs(69304u), var_2.d.a.x, 1u, ~var_2.d.a.x) & vec4<u32>(24559u << (1u % 32u), firstLeadingBit(u_input.b), var_3.a.x & 69728u, 0u)), abs(abs(vec4<u32>(1u, 9073u, arg_0.a.x, u_input.b))) >> (min(~(~vec4<u32>(arg_0.a.x, arg_0.a.x, var_2.d.a.x, 46147u)), _wgslsmith_add_vec4_u32(vec4<u32>(46356u, var_3.a.x, var_2.d.a.x, u_input.b) >> (vec4<u32>(1u, arg_0.a.x, global1.x, 28053u) % vec4<u32>(32u)), ~vec4<u32>(0u, var_2.d.a.x, var_2.d.a.x, arg_0.a.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-2147483647i);
    global1 = _wgslsmith_mult_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.x, 39947u, u_input.b) & vec4<u32>(76537u, u_input.b, u_input.b, u_input.b), ~vec4<u32>(global1.x, u_input.b, global1.x, 1u))), ~func_5(func_1(vec2<u32>(global1.x, u_input.b), -647f, -454f), 0i) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(13186u, global1.x, 1u, 4294967295u), vec4<u32>(global1.x, global1.x, global1.x, 4294967295u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, global1.x)) % vec4<u32>(32u)));
    let var_1 = func_1(vec2<u32>(global1.x, global1.x) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.b, global1.x), global1.ww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f - 1260f) - 1706f), -702f).b.yy;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-359f)) + -1312f);
    var var_2 = Struct_4(~global1.wzx, ~select(func_1(reverseBits(global1.wz), _wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x).a.x, ~global1.x, any(select(global2[_wgslsmith_index_u32(u_input.b, 17u)], vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)))));
    var var_3 = Struct_2(vec3<bool>(true, func_3(~vec4<u32>(global1.x, u_input.b, 1u, 4294967295u) << (vec4<u32>(77149u, 1u, 1312u, u_input.b) % vec4<u32>(32u)), func_1(min(vec2<u32>(30489u, 65640u), var_2.a.zx), _wgslsmith_f_op_vec4_f32(func_2(0u, -1000f)).x, var_1.x)), true), vec4<f32>(var_1.x, -1000f, 780f, _wgslsmith_f_op_f32(-var_1.x)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x)), func_1(_wgslsmith_mod_vec2_u32(global1.yw, firstTrailingBit(vec2<u32>(4294967295u, 71149u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(func_2(1u, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))).x));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-42088i, 39447i, u_input.a, 18028i), vec4<i32>(1i, 30547i, 0i, var_0), vec4<i32>(-6850i, var_0, u_input.a, var_0)) | vec4<i32>(i32(-1i) * -13557i, -u_input.a, 2147483647i, -u_input.a)), ~vec3<i32>(-var_0, -var_0, _wgslsmith_add_i32(-1i, u_input.a)) << (global1.www % vec3<u32>(32u)), select(vec4<u32>(global1.x | var_3.d.a.x, 24839u, 8753u, ~(~var_2.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 4294967295u, var_3.d.a.x, 46925u) ^ vec4<u32>(0u, 0u, 12955u, 13939u), abs(vec4<u32>(var_3.d.a.x, 3606u, 1u, var_2.b))), global2[_wgslsmith_index_u32(u_input.b << (_wgslsmith_mod_u32(1u, 1u) % 32u), 17u)]), var_0);
}

