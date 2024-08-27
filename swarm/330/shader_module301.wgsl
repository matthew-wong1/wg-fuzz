struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec4<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: f32,
    d: Struct_4,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 4294967295u, 0u);

var<private> global1: array<vec2<f32>, 15>;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<bool>(false, true, false), vec3<i32>(2147483647i, -17687i, -6480i)), Struct_3(vec3<bool>(true, false, false), vec3<i32>(1i, 927i, -7319i)), Struct_3(vec3<bool>(true, true, true), vec3<i32>(-34628i, 31436i, i32(-2147483648))), Struct_3(vec3<bool>(true, true, true), vec3<i32>(63083i, -1i, -22113i)), Struct_3(vec3<bool>(true, false, false), vec3<i32>(2147483647i, -4245i, 16727i)), Struct_3(vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 1i, -22766i)), Struct_3(vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), 36135i, -1i)), Struct_3(vec3<bool>(false, false, true), vec3<i32>(0i, -1i, -19000i)), Struct_3(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 66409i, -54935i)), Struct_3(vec3<bool>(false, false, true), vec3<i32>(-11770i, 11220i, -35011i)), Struct_3(vec3<bool>(true, true, true), vec3<i32>(-15323i, 1i, 100310i)), Struct_3(vec3<bool>(false, true, false), vec3<i32>(1i, -1i, 34741i)), Struct_3(vec3<bool>(false, true, true), vec3<i32>(-1i, -1i, 7331i)), Struct_3(vec3<bool>(false, true, true), vec3<i32>(2147483647i, -11825i, 29645i)), Struct_3(vec3<bool>(true, true, false), vec3<i32>(0i, -19832i, i32(-2147483648))), Struct_3(vec3<bool>(false, false, false), vec3<i32>(1814i, -38618i, 24077i)), Struct_3(vec3<bool>(true, true, true), vec3<i32>(0i, 1i, -10155i)), Struct_3(vec3<bool>(true, false, false), vec3<i32>(-35031i, -1i, 2147483647i)));

var<private> global4: Struct_5;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    global3 = array<Struct_3, 18>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.a * global4.a)))), global3[_wgslsmith_index_u32(~(abs(select(1u, u_input.a, arg_0.x)) & firstTrailingBit(1u)), 18u)], global4.a.x, Struct_4(Struct_3(global4.b.a, vec3<i32>(19387i, u_input.b.x, ~u_input.b.x)), -963f, global4.d.c, Struct_3(!vec3<bool>(false, arg_0.x, arg_0.x), ~select(u_input.b.yyw, vec3<i32>(69410i, -18232i, global4.b.b.x), vec3<bool>(global4.d.a.a.x, false, true)))), countOneBits(~global0.zx));
    var var_1 = global3[_wgslsmith_index_u32(global4.e.x, 18u)];
    global2 = _wgslsmith_sub_i32(-2147483647i, -firstLeadingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b.x, var_1.b.x, global4.d.a.b.x), vec3<i32>(1i, -17586i, -46642i), false), ~vec3<i32>(34327i, -1i, 1i))));
    var var_2 = Struct_3(var_1.a, var_0.b.b);
    return _wgslsmith_dot_vec2_i32(min(vec2<i32>(_wgslsmith_mod_i32(min(-62947i, -2147483647i), 2147483647i), -54823i), var_1.b.xz), min(select(-var_1.b.xx >> (var_0.e % vec2<u32>(32u)), var_0.b.b.zx, global4.d.a.a.x), u_input.b.ww));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: i32) -> vec2<i32> {
    global4 = Struct_5(_wgslsmith_f_op_vec4_f32(trunc(global4.d.c)), global3[_wgslsmith_index_u32(global4.e.x ^ ~countOneBits(44947u), 18u)], _wgslsmith_f_op_f32(1130f + global4.a.x), global4.d, _wgslsmith_clamp_vec2_u32(global4.e, vec2<u32>(global0.x, _wgslsmith_sub_u32(~64211u, 5742u)), global4.e));
    var var_0 = global4.d;
    global4 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.a) + vec4<f32>(_wgslsmith_div_f32(622f, _wgslsmith_f_op_f32(abs(-332f))), 1498f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1568f * -892f) * _wgslsmith_f_op_f32(-global4.d.b)), 371f)), Struct_3(!vec3<bool>(arg_1.x, true, arg_2.x), arg_0.xwz), global4.d.b, global4.d, global4.e);
    let var_1 = -var_0.a.b.x;
    return ~global4.d.a.b.yy;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> u32 {
    var var_0 = firstLeadingBit(vec2<i32>(0i, 0i));
    let var_1 = Struct_3(arg_0.yxx, vec3<i32>(firstLeadingBit(~(-2147483647i)), ~var_0.x, i32(-1i) * -12891i));
    var_0 = func_4(vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(1i), abs(global4.b.b.x)), global4.d.a.b.x, ~(var_0.x | -26102i), ~(-48031i)), !(!(!arg_0.zwz)), !vec4<bool>(var_1.a.x, arg_0.x, all(global4.d.d.a), true), func_3(global4.d.a.a.zy)) & ~(vec2<i32>(-u_input.b.x, u_input.b.x) & vec2<i32>(func_3(arg_0.zz), global4.b.b.x));
    var var_2 = any(arg_0.zy);
    var var_3 = global4.e.x;
    return 1u & abs(max(global4.e.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, 48436u), 82472u)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~24762u;
    let var_1 = countOneBits(global4.e ^ (vec2<u32>(_wgslsmith_div_u32(8024u, global0.x), func_2(vec4<bool>(global4.b.a.x, global4.b.a.x, true, true), vec2<f32>(global4.c, -208f))) & abs(select(global4.e, vec2<u32>(4294967295u, 4294967295u), true))));
    global1 = array<vec2<f32>, 15>();
    var var_2 = 1881f;
    var var_3 = select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, ~_wgslsmith_div_u32(0u, 1u)), ~vec2<u32>(1u << (global0.x % 32u), ~var_1.x)), ~_wgslsmith_add_vec2_u32(vec2<u32>(18897u, u_input.a), ~(~global0.xw)), global4.b.a.x);
    return Struct_1(vec3<bool>(~var_3.x == ~(~56989u), true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(u_input.b, select(abs(vec4<i32>(32254i, -2147483647i, 1i, 2147483647i) & u_input.b), _wgslsmith_add_vec4_i32(u_input.b >> (vec4<u32>(1u, 33563u, global0.x, global4.e.x) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, -29651i, u_input.b.x, u_input.b.x) | vec4<i32>(u_input.b.x, u_input.b.x, 28684i, 1i)), !vec4<bool>(false, global4.d.d.a.x, false, global4.b.a.x)) >> (vec4<u32>(49171u, 29282u, 46627u, (global0.x & 3464u) << (~u_input.a % 32u)) % vec4<u32>(32u)));
    var var_1 = 0u < (_wgslsmith_mult_u32(u_input.a, select(71763u, u_input.a, false)) ^ select(u_input.a, global0.x >> (11926u % 32u), all(global4.b.a.zx)));
    global3 = array<Struct_3, 18>();
    var var_2 = global4.e.x;
    var var_3 = Struct_2(global4.d.c.x, _wgslsmith_dot_vec2_u32(~global0.xw, min(~vec2<u32>(54156u, u_input.a), ~firstTrailingBit(global4.e))), func_1(), Struct_1(!global4.d.d.a, false), vec2<u32>(~firstTrailingBit(u_input.a), ~countOneBits(global0.x) & (u_input.a << (1u % 32u))));
    let var_4 = Struct_3(vec3<bool>(all(vec2<bool>(global4.d.d.a.x, var_3.c.b)), true, true), _wgslsmith_add_vec3_i32(global4.b.b, ~(-vec3<i32>(-7847i, -1i, var_0.x))));
    var_0 = firstTrailingBit(-firstTrailingBit(_wgslsmith_div_vec4_i32(u_input.b, -vec4<i32>(-1i, 0i, var_4.b.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(567f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * -266f) + global4.c), _wgslsmith_f_op_f32(-459f + 743f))), max(global4.e.x, abs(_wgslsmith_add_u32(53660u, global0.x << (global4.e.x % 32u)))), -21861i, var_4.b.x);
}

