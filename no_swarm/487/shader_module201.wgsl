struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true));

var<private> global2: array<i32, 12> = array<i32, 12>(i32(-2147483648), 2147483647i, 1i, -1i, 2147483647i, 0i, 1i, -1i, 0i, 2147483647i, i32(-2147483648), -1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_4(vec3<f32>(arg_0, 113f, arg_0), select(select(vec2<bool>(u_input.b == 1u, all(vec3<bool>(true, false, false))), vec2<bool>(true, true), 1759f == arg_0), vec2<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, global2[_wgslsmith_index_u32(u_input.a, 12u)], u_input.c.x), vec4<i32>(6420i, 1i, u_input.c.x, global2[_wgslsmith_index_u32(u_input.b, 12u)])) > max(13135i, 2147483647i), all(vec4<bool>(false, true, true, false))), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true)), Struct_2(Struct_1(vec4<i32>(-51887i, u_input.c.x, 2147483647i, -1i), arg_0)), vec4<bool>(arg_0 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1074f))), (u_input.b == ~u_input.a) & true, true, true));
    global0 = false;
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2591f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-450f, -822f))), _wgslsmith_f_op_f32(-159f * 593f))), var_0.d.xx, Struct_2(var_0.c.a), var_0.d);
    global1 = array<vec3<bool>, 31>();
    var var_2 = !(!select(!select(vec3<bool>(var_1.d.x, var_0.d.x, var_1.b.x), vec3<bool>(false, true, var_0.d.x), true), vec3<bool>(all(vec3<bool>(true, false, false)), false, var_1.d.x), !all(vec3<bool>(false, false, true))));
    return -878f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(select(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(63251u, 36705u), vec2<u32>(28736u, 0u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 77372u, 54018u), ~vec4<u32>(1u, u_input.b, 6783u, 1u)), countOneBits(_wgslsmith_clamp_u32(42751u, 14551u, 0u)), ~min(u_input.b, u_input.a)), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.b), vec4<u32>(4294967295u, 1u, u_input.a, 1u), vec4<u32>(u_input.a, 20099u, u_input.a, u_input.b)) | abs(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.a))), all(select(!global1[_wgslsmith_index_u32(u_input.b, 31u)], vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(~u_input.a, 31u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1582f, 1386f, 1387f, 581f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1518f, -1383f, 426f, 1412f) + vec4<f32>(-2097f, -753f, 674f, -844f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-126f, 1507f, 1073f, 625f) * vec4<f32>(-1000f, -959f, -118f, 1367f)))))), Struct_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(8195u, 12u)], 1i, u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.c.x, global2[_wgslsmith_index_u32(1u, 12u)], -92404i), vec4<i32>(-46696i, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(func_3(-1000f)))), Struct_1(abs(firstLeadingBit(-vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 38743i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1157f, 1736f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -975f))))));
    global0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_0.a, var_0.a), u_input.b) < _wgslsmith_dot_vec2_u32(select(var_0.a.wx, select(var_0.a.wx | var_0.a.zz, reverseBits(vec2<u32>(u_input.b, 19677u)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))), var_0.a.wx | vec2<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, u_input.b), var_0.a.yz)));
    global0 = u_input.b != (~u_input.a & reverseBits(~(var_0.a.x | 4294967295u)));
    let var_1 = var_0.a.zyy;
    let var_2 = !select(vec4<bool>(true, all(vec2<bool>(false, false)), any(vec2<bool>(true, true)), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), true);
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1798f - _wgslsmith_div_f32(887f, _wgslsmith_div_f32(-1000f, -925f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b, arg_0.b))));
    let var_1 = ~1u;
    global2 = array<i32, 12>();
    global0 = true;
    global2 = array<i32, 12>();
    return min(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), min(vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, var_1, 4294967295u))), var_1), ~select(vec2<u32>(8203u, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(32694u, 68213u), vec2<u32>(1u, var_1)), select(true, true, false))), (vec2<u32>(countOneBits(u_input.b), _wgslsmith_div_u32(var_1, u_input.a)) << (~vec2<u32>(u_input.b, 34673u) % vec2<u32>(32u))) >> (~select(~vec2<u32>(1u, u_input.a), firstLeadingBit(vec2<u32>(4294967295u, u_input.b)), vec2<bool>(true, true)) % vec2<u32>(32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-892f, 921f)) * -793f))))));
    global2 = array<i32, 12>();
    global2 = array<i32, 12>();
    var var_1 = ~select(~(~vec2<u32>(u_input.a, u_input.a)), func_4(func_2(), Struct_1(~vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a, 12u)], 41631i, 1i), _wgslsmith_f_op_f32(sign(973f)))), select(vec2<bool>(true, var_0.x <= 1081f), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), 42665u == _wgslsmith_dot_vec4_u32(vec4<u32>(32460u, 1u, 11961u, 24513u), vec4<u32>(u_input.b, 30295u, 1u, 0u))));
    global0 = true;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))))) + vec3<f32>(func_1().b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-179f * 446f)) * var_0.b), var_0.b));
    global0 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -717f);
    var var_3 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-629f, -136f, var_2))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, var_0.b, var_0.b), vec3<f32>(var_0.b, var_0.b, 1000f))))), vec3<f32>(var_0.b, -470f, _wgslsmith_f_op_f32(f32(-1f) * -283f))), vec2<bool>(true, !(!any(vec2<bool>(false, true)))), Struct_2(func_1()), !select(vec4<bool>(any(vec4<bool>(true, true, true, false)), true, select(true, false, false), true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), true), select(all(vec2<bool>(false, true)), 1u < u_input.a, any(global1[_wgslsmith_index_u32(u_input.b, 31u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(var_0.a.x, 25410i));
}

