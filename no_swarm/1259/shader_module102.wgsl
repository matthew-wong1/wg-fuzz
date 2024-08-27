struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true));

var<private> global1: array<vec2<i32>, 15>;

var<private> global2: array<Struct_1, 8>;

var<private> global3: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-1000f, -1864f, -752f, 1478f), vec4<f32>(195f, 1400f, -1000f, -157f), vec4<f32>(600f, -373f, 2223f, -1029f), vec4<f32>(-596f, 568f, 216f, -965f), vec4<f32>(264f, -220f, -747f, 765f), vec4<f32>(1493f, -1641f, 2598f, 681f));

var<private> global4: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global2 = array<Struct_1, 8>();
    global4 = -1i;
    var var_0 = Struct_2(Struct_1(true), !select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), global2[_wgslsmith_index_u32(max(1u, ~_wgslsmith_mult_u32(firstTrailingBit(1u), 0u)), 8u)]);
    var var_1 = Struct_1(u_input.d.x < (-2147483647i & -u_input.d.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2170f), _wgslsmith_f_op_f32(step(-126f, 217f)), _wgslsmith_f_op_f32(min(-535f, 991f)), _wgslsmith_div_f32(1514f, -894f))), vec4<f32>(-2946f, _wgslsmith_f_op_f32(trunc(-998f)), _wgslsmith_f_op_f32(f32(-1f) * -1052f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1110f) + _wgslsmith_f_op_f32(step(-253f, 1186f)))))) - global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 6u)]);
    return var_1.a;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -808f, -587f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))))));
    global4 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, 2147483647i, select(18638i, -(i32(-1i) * -61868i), arg_2.a < arg_2.a)), u_input.d.zzw);
    global1 = array<vec2<i32>, 15>();
    var var_1 = select(vec3<bool>(all(vec3<bool>(!arg_0, any(vec3<bool>(arg_0, false, false)), !arg_0)), !(_wgslsmith_f_op_f32(f32(-1f) * -398f) == arg_1), all(!(!vec3<bool>(false, arg_0, true)))), select(vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_0), select(vec3<bool>(arg_0, !arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_1 >= -1434f, arg_0, true))), vec3<bool>(arg_0, arg_0, any(vec2<bool>(arg_0, any(vec2<bool>(false, false))))));
    var var_2 = 4294967295u;
    return vec2<bool>(true, any(select(!select(vec2<bool>(true, arg_0), var_1.xx, vec2<bool>(var_1.x, var_1.x)), vec2<bool>(true, true), true)));
}

fn func_2() -> Struct_3 {
    var var_0 = abs(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x | 1u, u_input.c, ~u_input.e.x), abs(abs(vec4<u32>(0u, 1u, u_input.c, 1u))))));
    var var_1 = Struct_3(Struct_2(Struct_1(true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), global2[_wgslsmith_index_u32(u_input.c, 8u)]), Struct_1(all(vec2<bool>(true, true))));
    var var_2 = ~(0u >> (~u_input.b.x % 32u));
    var var_3 = countOneBits(~min(u_input.b.x, 29990u));
    return Struct_3(Struct_2(Struct_1(true), select(vec2<bool>(true || var_1.a.c.a, u_input.e.x < 1u), func_4(func_3(), _wgslsmith_f_op_f32(ceil(1322f)), Struct_4(-1i)), !var_1.b.a), Struct_1(true)), var_1.b);
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> u32 {
    return u_input.a.x;
}

fn func_6(arg_0: u32) -> Struct_2 {
    var var_0 = func_2().b;
    let var_1 = 1i;
    var var_2 = 67323u;
    var_2 = u_input.b.x;
    let var_3 = vec3<bool>(!(_wgslsmith_f_op_f32(min(-1872f, _wgslsmith_f_op_f32(sign(251f)))) >= -1020f), false, false);
    return Struct_2(global2[_wgslsmith_index_u32(~arg_0, 8u)], var_3.yz, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(0u << (u_input.a.x % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 7641u, 16863u) | u_input.b.zxz, u_input.a)), 8u)]);
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_5) -> Struct_3 {
    let var_0 = arg_3.b;
    global2 = array<Struct_1, 8>();
    var var_1 = func_6(func_5(func_2(), _wgslsmith_div_i32(~1i, ~(~arg_1.a))));
    global0 = array<vec4<bool>, 29>();
    let var_2 = Struct_3(Struct_2(func_6(4294967295u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4136u, u_input.b.x), vec3<u32>(4294967295u, 4294967295u, 4294967295u)) % 32u)).c, vec2<bool>(true, ~22859u != (u_input.a.x << (37956u % 32u))), Struct_1(false)), Struct_1(true));
    return Struct_3(func_6(123568u ^ (u_input.e.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e.x), u_input.e.zx))), Struct_1(arg_2));
}

fn func_7(arg_0: Struct_3) -> f32 {
    var var_0 = func_2().a;
    let var_1 = Struct_4(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(2147483647i, -2147483647i), -u_input.d.x, u_input.d.x)), vec3<i32>(u_input.d.x, -(~6928i), _wgslsmith_div_i32(1i, firstLeadingBit(u_input.d.x)))));
    var var_2 = Struct_4(reverseBits(-abs(-56823i)));
    global3 = array<vec4<f32>, 6>();
    let var_3 = u_input.e.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-192f)) - -1863f))) * -991f) * -1436f);
}

fn func_8(arg_0: f32, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_5(Struct_4(~(-1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, 370f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1546f - -2100f)))) + global3[_wgslsmith_index_u32(14501u, 6u)]));
    var var_1 = _wgslsmith_mult_vec2_u32(u_input.b.zz, firstTrailingBit(vec2<u32>(u_input.e.x, ~4294967295u)));
    var var_2 = vec3<bool>(true, false, true);
    var_2 = vec3<bool>(func_6(0u).c.a, true, u_input.c >= ~_wgslsmith_mult_u32(countOneBits(var_1.x), countOneBits(4294967295u)));
    let var_3 = -1i;
    return Struct_3(Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, 53015u) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(7583u, 22373u), vec2<u32>(var_1.x, u_input.a.x)) % 32u), 8u)], var_2.xz, global2[_wgslsmith_index_u32(var_1.x, 8u)]), global2[_wgslsmith_index_u32(68992u, 8u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = max(6975i, 11663i);
    let var_0 = func_8(_wgslsmith_div_f32(344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(func_1(-1348f, Struct_4(-576i), true, Struct_5(Struct_4(35615i), vec4<f32>(1042f, 1000f, 452f, 1231f))))))), select(-max(u_input.d.x, -35156i), _wgslsmith_div_i32(~2147483647i << (_wgslsmith_dot_vec3_u32(u_input.b.zww, vec3<u32>(u_input.b.x, u_input.c, 4294967295u)) % 32u), _wgslsmith_div_i32(10958i, u_input.d.x) & -19758i), true));
    global0 = array<vec4<bool>, 29>();
    var var_1 = Struct_3(func_6(u_input.e.x), var_0.a.c);
    var var_2 = 1000f;
    var var_3 = abs(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(u_input.d.x >> (u_input.a.x % 32u), _wgslsmith_mod_i32(u_input.d.x, u_input.d.x), -492i)), vec3<i32>(-abs(u_input.d.x), 16845i, 0i)));
    var var_4 = func_1(-1176f, Struct_4(47605i), false, Struct_5(Struct_4(_wgslsmith_clamp_i32(-2147483647i, 72801i, u_input.d.x) << (_wgslsmith_sub_u32(1u, u_input.a.x) % 32u)), _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 6u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_sub_vec4_i32(-u_input.d, vec4<i32>(24405i, u_input.d.x, u_input.d.x, 2147483647i)), -_wgslsmith_mult_vec4_i32(u_input.d, u_input.d), var_1.b.a));
}

