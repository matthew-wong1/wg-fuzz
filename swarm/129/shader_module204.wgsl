struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-1i, 2147483647i, 1i, 108350i), vec4<i32>(-1i, -18439i, 1i, 0i), vec4<i32>(51688i, 1795i, 7241i, -1i), vec4<i32>(0i, -59620i, -1i, -34483i), vec4<i32>(0i, 1i, -23484i, 37639i), vec4<i32>(-15050i, 21952i, 2147483647i, -8594i), vec4<i32>(-1631i, 22720i, 86333i, 550i));

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 4294967295u, 82379u, 31147u), vec4<u32>(4294967295u, 988u, 4294967295u, 4294967295u), vec4<u32>(28607u, 30307u, 43794u, 60846u), vec4<u32>(8182u, 44536u, 1u, 1u), vec4<u32>(1u, 28473u, 0u, 16790u), vec4<u32>(4294967295u, 30638u, 72780u, 0u), vec4<u32>(19322u, 4294967295u, 4294967295u, 21819u), vec4<u32>(1298u, 4294967295u, 39048u, 0u), vec4<u32>(8695u, 17425u, 44878u, 6429u), vec4<u32>(50175u, 0u, 13453u, 4294967295u), vec4<u32>(4294967295u, 47709u, 35734u, 4294967295u), vec4<u32>(0u, 1u, 27648u, 1u), vec4<u32>(1u, 34098u, 0u, 13665u), vec4<u32>(4243u, 19533u, 1u, 1u), vec4<u32>(23064u, 92971u, 65033u, 1u), vec4<u32>(1u, 0u, 4294967295u, 3538u), vec4<u32>(0u, 58492u, 115814u, 4510u), vec4<u32>(1949u, 0u, 1334u, 37882u), vec4<u32>(47014u, 1855u, 1u, 0u), vec4<u32>(9877u, 30250u, 17908u, 10647u), vec4<u32>(4294967295u, 0u, 26012u, 4294967295u), vec4<u32>(4294967295u, 85933u, 4294967295u, 14485u), vec4<u32>(4294967295u, 21801u, 0u, 0u));

var<private> global2: Struct_3 = Struct_3(vec4<u32>(4294967295u, 85055u, 46841u, 1u), vec3<bool>(true, false, false), -32220i, Struct_2(vec4<bool>(false, false, false, true), vec2<i32>(-28093i, -7185i), vec3<u32>(8718u, 1u, 1u), vec4<i32>(0i, 2147483647i, -38099i, -37400i), 4294967295u), true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> bool {
    var var_0 = 1i;
    global1 = array<vec4<u32>, 23>();
    return all(vec2<bool>(arg_3, true));
}

fn func_2() -> i32 {
    global0 = array<vec4<i32>, 7>();
    var var_0 = global2.d;
    let var_1 = any(select(select(!select(vec4<bool>(false, global2.b.x, true, false), vec4<bool>(true, global2.e, var_0.a.x, global2.b.x), global2.b.x), select(select(global2.d.a, var_0.a, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), global2.d.a.x || true), vec4<bool>(!var_0.a.x, true, var_0.b.x <= var_0.d.x, func_3(var_0.b.x, Struct_3(vec4<u32>(global2.a.x, 1u, var_0.e, u_input.a.x), vec3<bool>(true, false, var_0.a.x), 1i, global2.d, var_0.a.x), 376f, true))), vec4<bool>(global2.d.a.x, var_0.a.x, !var_0.a.x, true), !var_0.a));
    global2 = Struct_3(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(27928u, 23u)], countOneBits(u_input.a)), global2.a), var_0.a.yxz, abs(~_wgslsmith_mod_i32(max(-81781i, -3247i), -var_0.d.x)), global2.d, all(var_0.a));
    var var_2 = 14136i;
    return _wgslsmith_add_i32(~var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, _wgslsmith_sub_i32(var_0.d.x, global2.c), 0i), _wgslsmith_mult_vec3_i32(max(global2.d.d.yzz, var_0.d.zwx), vec3<i32>(301i, 32727i, -1i)))) << (33438u % 32u);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec3<f32> {
    var var_0 = 0i;
    let var_1 = !(!(!select(arg_0.x > global2.a.x, global2.b.x && global2.d.a.x, true)));
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_div_i32((global2.d.b.x >> (~u_input.a.x % 32u)) << (countOneBits(~10608u) % 32u), max(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(global2.c, global2.d.d.x), select(0i, global2.c, var_1)))), func_2());
    var var_3 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-reverseBits(vec2<i32>(18163i, var_2)), -(vec2<i32>(-14827i, global2.c) >> (u_input.a.zz % vec2<u32>(32u))), global2.d.d.wz), firstLeadingBit(global2.d.d.ww)), !var_1, global2.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
    var_0 = ~abs(var_3.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~u_input.a, global2.d.a.yzx, firstLeadingBit(-2147483647i), Struct_2(global2.d.a, ~(_wgslsmith_sub_vec2_i32(global2.d.d.zz, vec2<i32>(global2.c, 2147483647i)) | _wgslsmith_sub_vec2_i32(global2.d.d.yw, global2.d.b)), _wgslsmith_mod_vec3_u32(u_input.a.yzx, vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(4294967295u, 1u), reverseBits(u_input.a.x))), -global2.d.d, ~27238u), !(!(!all(global2.d.a.zx))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-533f, -813f, -392f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(394f, 203f, 1000f), vec3<f32>(-960f, -1058f, -2075f), var_0.d.a.xwx))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<u32>(global2.a.x, u_input.a.x, global2.d.c.x), 1000f, vec3<f32>(1667f, -348f, -1808f), vec3<u32>(8013u, 4294967295u, 9311u)))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, -1261f)))), _wgslsmith_f_op_f32(795f + _wgslsmith_div_f32(1181f, -274f)))), _wgslsmith_f_op_f32(343f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(global2.a.wzz, -1000f, vec3<f32>(-104f, -145f, 1451f), vec3<u32>(78080u, 76326u, 1u))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-735f, -456f)) * 874f)));
    global2 = var_0;
    var var_2 = _wgslsmith_dot_vec2_i32(var_0.d.b, min(~(-var_0.d.b), global2.d.b));
    var var_3 = ~_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.c, global2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c, -35303i, global2.d.d.x, var_0.d.d.x), vec4<i32>(global2.d.b.x, global2.c, var_0.c, 1i))), -2147483647i), -32059i);
    var var_4 = ~countOneBits(~global2.d.d.wzy) >> (select(vec3<u32>(_wgslsmith_add_u32(var_0.a.x, 1u), ~_wgslsmith_mult_u32(18370u, u_input.a.x), ~var_0.a.x), vec3<u32>(~0u, reverseBits(~15681u), ~var_0.d.c.x), any(global2.d.a.yxz)) % vec3<u32>(32u));
    let var_5 = var_0.d.c << (vec3<u32>(u_input.a.x, var_0.d.c.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.d.c.x, global2.d.e), _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 17454u), u_input.a.x))) % vec3<u32>(32u));
    var_4 = abs(~(firstLeadingBit(vec3<i32>(-11306i, 2147483647i, -1i)) >> (~vec3<u32>(var_0.a.x, 116959u, 0u) % vec3<u32>(32u))) ^ firstTrailingBit(global2.d.d.wwy & var_0.d.d.ywy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(global2.d.b.x, -1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-354f + -1900f), -1053f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), -1845f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1608f)), _wgslsmith_f_op_vec3_f32(func_1(global2.a.zyw, var_1.x, var_1, vec3<u32>(var_0.d.e, var_0.a.x, 1u))).x))));
}

