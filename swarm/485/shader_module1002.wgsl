struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_2,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(~0u, 21170u, vec2<bool>(true, arg_3.d.a.c.x), reverseBits(select(countOneBits(vec3<u32>(38143u, u_input.b, arg_0.b)), arg_0.d, all(arg_0.c)))), vec3<bool>(any(select(!vec4<bool>(arg_0.c.x, false, arg_3.d.b.x, true), !vec4<bool>(arg_3.e.b.x, arg_3.d.d.c.x, false, false), true)), false, any(select(vec3<bool>(arg_0.c.x, true, arg_0.c.x), vec3<bool>(true, false, arg_0.c.x), vec3<bool>(arg_2, true, false)))), -272f, Struct_1(~firstLeadingBit(abs(7287u)), abs(select(69274u, 52472u, false) ^ abs(arg_3.d.d.a)), select(arg_0.c, arg_3.e.d.c, true), ~arg_0.d));
    let var_1 = ~arg_0.d.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1775f, arg_3.a.x, var_0.c, arg_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(760f, var_0.c, arg_1, 597f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-709f, 1085f, 299f, var_0.c) + vec4<f32>(arg_3.e.c, 1000f, arg_1, -1567f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1658f, arg_1, var_0.c, 251f) * vec4<f32>(-758f, arg_1, var_0.c, arg_1))))));
    var_0 = arg_3.e;
    let var_3 = Struct_4(firstTrailingBit(firstLeadingBit(firstTrailingBit(vec4<i32>(1i, arg_3.c, 6153i, -2147483647i)))), arg_3, arg_3.e, ~vec4<u32>(_wgslsmith_div_u32(arg_0.d.x & 4294967295u, _wgslsmith_add_u32(28705u, var_1)), ~(~var_0.a.b), var_1, ~(~38595u)), arg_3.d.a.d.yz);
    return ~var_3.d;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(526f))))) != 1000f);
    let var_1 = false;
    var var_2 = abs(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(min(func_3(Struct_1(4294967295u, u_input.c, vec2<bool>(var_0.x, false), vec3<u32>(1u, 1u, 0u)), 666f, var_1, Struct_3(vec2<f32>(-366f, arg_0.x), arg_0.x, 24556i, Struct_2(Struct_1(u_input.b, 1u, vec2<bool>(true, var_1), vec3<u32>(47676u, 26129u, u_input.b)), vec3<bool>(var_1, false, false), 519f, Struct_1(u_input.b, u_input.a, vec2<bool>(false, var_0.x), vec3<u32>(1706u, u_input.c, 42424u))), Struct_2(Struct_1(u_input.b, 0u, vec2<bool>(var_0.x, var_1), vec3<u32>(u_input.b, u_input.c, u_input.a)), vec3<bool>(true, true, false), arg_0.x, Struct_1(u_input.c, u_input.b, vec2<bool>(false, var_0.x), vec3<u32>(u_input.a, u_input.c, u_input.a))))), func_3(Struct_1(0u, 4294967295u, vec2<bool>(var_1, true), vec3<u32>(0u, u_input.c, u_input.b)), -1000f, false, Struct_3(arg_0.wx, 1000f, 1i, Struct_2(Struct_1(4294967295u, u_input.b, vec2<bool>(var_0.x, var_1), vec3<u32>(u_input.b, u_input.c, u_input.a)), vec3<bool>(false, false, var_1), -2489f, Struct_1(u_input.c, 26626u, vec2<bool>(var_1, var_0.x), vec3<u32>(u_input.a, u_input.b, u_input.a))), Struct_2(Struct_1(1u, 0u, vec2<bool>(true, var_1), vec3<u32>(u_input.c, 29241u, 19102u)), vec3<bool>(var_1, false, false), arg_0.x, Struct_1(u_input.a, 4294967295u, vec2<bool>(var_1, false), vec3<u32>(u_input.b, u_input.a, u_input.a)))))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(u_input.c, u_input.c, 100966u)), abs(u_input.c), _wgslsmith_div_u32(u_input.b, u_input.b), ~u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(71886u, u_input.a, ~u_input.c, ~31522u), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, 27991u, u_input.c, u_input.a)), vec4<u32>(4294967295u, u_input.c, 4294967295u, 0u)))));
    var_2 = vec4<u32>(1u, _wgslsmith_mod_u32(reverseBits(u_input.c), ~(~(~var_2.x))), ~u_input.a, var_2.x);
    var var_3 = Struct_2(Struct_1(1u, ~_wgslsmith_add_u32(firstTrailingBit(u_input.a), u_input.a << (1u % 32u)), vec2<bool>(true, true), vec3<u32>(~var_2.x, min(u_input.c, 1u), _wgslsmith_dot_vec3_u32(var_2.ywx, var_2.zzz)) | ~reverseBits(vec3<u32>(var_2.x, var_2.x, 51381u))), !select(vec3<bool>(true, var_0.x, true), !vec3<bool>(true, var_0.x, var_1), select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, var_1, var_0.x), u_input.c > 4294967295u)), -612f, Struct_1(~var_2.x, 1u, vec2<bool>(false, var_1 | select(var_1, var_0.x, false)), ~_wgslsmith_mod_vec3_u32(~var_2.zzw, vec3<u32>(2233u, u_input.c, 0u))));
    return Struct_2(var_3.d, !select(select(var_3.b, var_3.b, any(var_3.b)), select(vec3<bool>(true, true, false), var_3.b, select(var_3.b, var_3.b, false)), true), _wgslsmith_f_op_f32(max(var_3.c, -1000f)), var_3.a);
}

fn func_1() -> vec3<bool> {
    var var_0 = ~3410u;
    var_0 = abs(select(u_input.c, ~4294967295u, (all(vec4<bool>(false, false, true, true)) & true) | all(vec4<bool>(true, true, true, true))));
    let var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2499f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1228f)), -1506f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(select(-554f, -633f, true))))), 1f), vec2<i32>(-1i, -2147483647i), (reverseBits(-vec3<i32>(2147483647i, -1i, -2147483647i)) << (min(~vec3<u32>(u_input.b, 81825u, u_input.c), min(vec3<u32>(u_input.b, u_input.c, u_input.a), vec3<u32>(4294967295u, 54785u, u_input.a))) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, -40283i), vec3<i32>(-31939i, -2147483647i, 21361i))), vec3<i32>(1i, 1i, 1i)));
    let var_2 = max(_wgslsmith_sub_vec3_i32(countOneBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(14920i, -2147483647i, -34918i), vec3<i32>(2147483647i, -30263i, 16532i))), ~vec3<i32>(1i, 1i, 1i) << (var_1.a.d % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, 0i, -2147483647i)), vec3<i32>(2147483647i, -1i, -1i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 24418i))), ~(min(1i, -2147483647i) & select(27972i, 42369i, true)), -38571i));
    var var_3 = vec2<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -658f) - _wgslsmith_f_op_f32(428f + var_1.c)))));
    return vec3<bool>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.x + var_3.x), _wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(468f - var_3.x), _wgslsmith_f_op_f32(-1532f + 292f))), var_2.yx, var_2).b.x, var_1.a.c.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(), vec3<bool>(true, select(false, true, true), true), true);
    let var_1 = 1i;
    let var_2 = ~(~(~(~vec2<u32>(u_input.a, 57224u))));
    var var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(377f, _wgslsmith_f_op_f32(round(380f)), !var_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -293f) * _wgslsmith_f_op_f32(f32(-1f) * -1813f))))), _wgslsmith_f_op_f32(107f + _wgslsmith_f_op_f32(select(-621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(116f, 146f, false))), var_0.x))), reverseBits(var_1), func_2(vec4<f32>(_wgslsmith_f_op_f32(-172f + _wgslsmith_f_op_f32(abs(-3154f))), -1447f, _wgslsmith_f_op_f32(-1171f - -602f), 2025f), vec2<i32>(firstLeadingBit(-32797i), 2147483647i), -vec3<i32>(var_1 >> (var_2.x % 32u), -1i, ~var_1)), func_2(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(262f * -2540f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(568f - -108f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) * _wgslsmith_div_f32(-2314f, -260f)), 998f), vec2<i32>(-1i) * -(vec2<i32>(-25199i, var_1) | vec2<i32>(9448i, 42828i)), ~select(vec3<i32>(10471i, var_1, var_1), ~vec3<i32>(var_1, -2147483647i, -2147483647i), vec3<bool>(var_0.x, true, var_0.x))));
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(sign(1301f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.a.x, var_3.b, var_3.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1479f, var_3.d.c, var_3.d.c)))))))));
    var_0 = vec3<bool>(true, false, true);
    let var_5 = !any(vec3<bool>(var_1 > 2147483647i, var_0.x || var_0.x, var_0.x));
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(815f, var_4.x, 236f) - vec3<f32>(var_4.x, var_3.d.c, 1183f)))), _wgslsmith_dot_vec4_i32(-countOneBits(~vec4<i32>(1i, var_1, var_3.c, -1i)), reverseBits(vec4<i32>(77238i << (var_2.x % 32u), max(var_1, 2165i), -2147483647i, ~6212i))));
}

