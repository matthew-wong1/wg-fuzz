struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(-7630i), Struct_2(12231i), Struct_2(27054i), Struct_2(2466i), Struct_2(35142i), Struct_2(i32(-2147483648)), Struct_2(-6600i), Struct_2(i32(-2147483648)), Struct_2(12643i), Struct_2(1i), Struct_2(-16633i), Struct_2(22983i), Struct_2(i32(-2147483648)), Struct_2(-42133i), Struct_2(-16206i), Struct_2(-23848i), Struct_2(2033i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(-30172i), Struct_2(1i), Struct_2(-12802i), Struct_2(270i), Struct_2(-1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> vec3<i32> {
    var var_0 = 15844u;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(148f + 423f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f + 228f) * _wgslsmith_f_op_f32(abs(-867f))), _wgslsmith_f_op_f32(-arg_0), 1542f)) - arg_1);
    global1 = array<Struct_2, 24>();
    let var_2 = Struct_1(_wgslsmith_add_vec4_i32(~firstTrailingBit(-vec4<i32>(u_input.b.x, -15180i, -2147483647i, 2147483647i)), vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(23521i, arg_2, u_input.b.x, -37073i), vec4<i32>(-49530i, arg_2, 2147483647i, arg_2)), arg_2, abs(0i)) ^ ~vec4<i32>(1i, -2518i, 2147483647i, 19409i)), 0u);
    var var_3 = 2147483647i;
    return var_2.a.zwz;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> vec3<f32> {
    var var_0 = vec2<bool>(arg_0.a.x, all(vec2<bool>(select(true, !arg_0.a.x, true | arg_0.a.x), false)));
    let var_1 = arg_0.d;
    global1 = array<Struct_2, 24>();
    var var_2 = arg_0.b;
    global0 = !var_0.x;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1724f, -1051f, arg_0.c))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1066f, -1835f) + vec3<f32>(-547f, 1836f, arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, 698f))), 0i <= var_2.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-225f, -374f, arg_0.c)))))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(1u, arg_0.b) % vec2<u32>(32u)), ~vec2<u32>(59170u, arg_0.b) ^ vec2<u32>(arg_0.b, 4294967295u)), abs(arg_0.b), u_input.a.x), abs(~(u_input.a.xwx ^ vec3<u32>(u_input.a.x, arg_0.b, u_input.a.x)) & ~(~u_input.a.yzw)));
    global1 = array<Struct_2, 24>();
    let var_1 = u_input.a.xzy;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 134f)) - vec3<f32>(arg_2.x, -924f, _wgslsmith_f_op_f32(step(arg_2.x, 1163f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1056f)) + 540f), arg_2.x, arg_2.x), !arg_1)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), global1[_wgslsmith_index_u32(var_0.x, 24u)], arg_2.x, arg_0), _wgslsmith_f_op_vec2_f32(arg_2 * arg_2)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(sign(2277f)), -872f))));
    let var_3 = arg_1.x;
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), 1639f), vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(select(var_2.x, arg_2.x, true))), -658f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = -max(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, 65709i), arg_3.a.wxw, vec3<i32>(1i, 7959i, u_input.b.x))), vec3<i32>(select(u_input.b.x, arg_3.a.x, true), u_input.b.x, u_input.b.x)) << ((u_input.a.zyz | abs(abs(vec3<u32>(10566u, 58429u, u_input.a.x)))) % vec3<u32>(32u));
    let var_1 = select(!(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)))), !(!vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true)), arg_1 != ~58008u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1513f)), _wgslsmith_f_op_f32(floor(-1301f))) * -266f);
    let var_3 = arg_1 | 76861u;
    return Struct_2(~(-34881i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -23712i > _wgslsmith_add_i32(max(firstTrailingBit(38894i), max(u_input.b.x, 24241i)), _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.b.x, u_input.b.x, -23716i) << (u_input.a.xyz % vec3<u32>(32u))) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -15639i, 17774i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec3_i32(func_1(-680f, vec4<f32>(1095f, -122f, -3640f, -566f), u_input.b.x), vec3<i32>(-60512i, u_input.b.x, u_input.b.x))));
    var var_0 = Struct_2(u_input.b.x);
    global0 = false;
    let var_1 = u_input.a.x;
    var_0 = func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(select(vec4<i32>(u_input.b.x, -1i, var_0.a, var_0.a), vec4<i32>(u_input.b.x, u_input.b.x, var_0.a, -50412i), vec4<bool>(true, false, true, false)), 1u), vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(-1000f + 1495f), _wgslsmith_f_op_f32(min(-461f, -1219f))), max(vec3<i32>(-2147483647i, var_0.a, -31482i), ~vec3<i32>(2147483647i, 23664i, 1i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(169f, 158f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -1228f), vec2<f32>(872f, 390f)))))), ~(~27467u), select(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(u_input.a.yxz), ~vec3<u32>(75191u, 4294967295u, 1u)), ~_wgslsmith_add_vec3_u32(u_input.a.yzz, u_input.a.xww)), ~(~35470u), true), Struct_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 12436i, -2147483647i) ^ -vec4<i32>(var_0.a, u_input.b.x, u_input.b.x, u_input.b.x), select(firstTrailingBit(vec4<i32>(var_0.a, -8928i, 1i, 11159i)), firstTrailingBit(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a)), false)), 0u));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.a.yz >> (~vec2<u32>(u_input.a.x, 69330u) % vec2<u32>(32u))) & u_input.a.zy);
}

