struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(0i, i32(-2147483648), 53969i, 5270i, -39582i, -49960i, i32(-2147483648), 2147483647i, 22895i, 15045i, 2147483647i, -1i, -127267i, 11503i, 14747i, 20504i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 19828i, 4310i, 0i, -1i, -13949i);

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<vec3<bool>, 23>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<bool> {
    global2 = array<Struct_1, 18>();
    global0 = array<i32, 24>();
    global2 = array<Struct_1, 18>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(-1028f, 1553f)), -1145f, -518f, -1691f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1232f), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-144f, _wgslsmith_f_op_f32(trunc(-439f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(arg_0.xwy, !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(12755u, min(771u, 31627u)), 23u)], !any(select(arg_0.zx, arg_0.yy, arg_0.zz))));
    var var_1 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(17633u, 0u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 1u) >> (reverseBits(~40708u) % 32u);
    return vec2<bool>(!(var_0.b.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 305f)))), !(!(arg_0.x | true)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_2(1u);
    global0 = array<i32, 24>();
    let var_1 = select(arg_3.zy, arg_3.zy, select(vec2<bool>(arg_2.c || true, arg_3.x), select(select(select(arg_3.xy, vec2<bool>(arg_2.c, arg_2.b), vec2<bool>(true, arg_2.b)), vec2<bool>(arg_3.x, false), arg_2.c), func_3(!vec4<bool>(false, arg_3.x, arg_3.x, false)), arg_2.b), !((arg_2.c | false) || (arg_1.b.x != arg_0.a))));
    global0 = array<i32, 24>();
    return Struct_3(global1[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e.x), arg_2.e.x)))), arg_0, !(!arg_3), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(arg_2.d, 24u)], u_input.a.x), -1i), 37176i) >> (_wgslsmith_sub_vec2_u32((arg_1.b.yz & vec2<u32>(arg_2.d, arg_0.a)) & vec2<u32>(4294967295u, 56291u), vec2<u32>(~var_0.a, _wgslsmith_mod_u32(arg_2.d, 1u))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: f32) -> i32 {
    return _wgslsmith_mod_i32(arg_1, func_2(func_2(func_2(global1[_wgslsmith_index_u32(1u, 7u)], Struct_4(arg_2, vec3<u32>(0u, 48831u, 29765u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(43090u, arg_0.a.a, 63112u, 64342u), vec4<u32>(arg_2, arg_2, arg_0.a.a, arg_0.c.a)), 18u)], vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x)).a, Struct_4(0u, vec3<u32>(arg_0.c.a, 11699u, arg_2) >> (vec3<u32>(arg_0.c.a, arg_0.a.a, 1u) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(4294967295u, 18u)], vec4<bool>(true, arg_0.d.x, arg_0.d.x, true)).c, Struct_4(_wgslsmith_mod_u32(reverseBits(arg_0.a.a), 0u), ~vec3<u32>(4294967295u, arg_2, arg_0.c.a) | (vec3<u32>(arg_0.a.a, 0u, 23102u) | vec3<u32>(arg_0.c.a, arg_0.a.a, arg_0.a.a))), global2[_wgslsmith_index_u32(1u, 18u)], arg_0.d).e.x);
}

fn func_1() -> vec3<i32> {
    global0 = array<i32, 24>();
    return select(_wgslsmith_div_vec3_i32(~u_input.a.yyz & u_input.a.xwy, select(_wgslsmith_add_vec3_i32(u_input.a.zwy, u_input.a.zxw), _wgslsmith_mult_vec3_i32(u_input.a.ywz, vec3<i32>(13587i, global0[_wgslsmith_index_u32(1u, 24u)], -1i)), all(vec4<bool>(true, false, true, false)))) | _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.wwz, _wgslsmith_sub_vec3_i32(u_input.a.wzy, u_input.a.yzy)), u_input.a.wyw, abs(select(u_input.a.wzx, vec3<i32>(23566i, -2147483647i, -12804i), vec3<bool>(false, true, false)))), countOneBits(vec3<i32>(firstLeadingBit(1i), 1i, func_4(func_2(Struct_2(1u), Struct_4(0u, vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), true, true, 0u, vec2<f32>(380f, -462f)), vec4<bool>(false, true, true, false)), global0[_wgslsmith_index_u32(abs(52993u), 24u)], ~1u, -540f))), global3[_wgslsmith_index_u32(firstLeadingBit(reverseBits(57u)), 23u)]);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> StorageBuffer {
    global1 = array<Struct_2, 7>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, arg_0.e.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-532f, 748f, _wgslsmith_f_op_f32(exp2(arg_0.e.x))) - vec3<f32>(-211f, arg_0.e.x, -593f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.e.x)) - _wgslsmith_f_op_f32(-204f * _wgslsmith_f_op_f32(f32(-1f) * -261f))), global3[_wgslsmith_index_u32(1u >> (arg_1.x % 32u), 23u)]);
    let var_1 = func_2(Struct_2(33627u), Struct_4(~0u, vec3<u32>(_wgslsmith_mod_u32(86905u, arg_1.x), abs(_wgslsmith_dot_vec3_u32(arg_1.wxw, vec3<u32>(arg_0.d, arg_0.d, arg_1.x))), _wgslsmith_clamp_u32(arg_1.x & 56188u, countOneBits(61885u), 27236u))), arg_0, vec4<bool>(arg_0.b, !(any(vec3<bool>(true, false, true)) | select(arg_0.c, var_0.d.x, false)), !all(!vec3<bool>(var_0.d.x, false, arg_0.b)), func_3(func_2(func_2(Struct_2(1u), Struct_4(arg_1.x, vec3<u32>(20283u, arg_0.d, 30313u)), Struct_1(u_input.a.yzz, true, arg_0.c, arg_0.d, var_0.b.yy), vec4<bool>(var_0.d.x, true, true, true)).c, Struct_4(arg_0.d, arg_1.wxw), global2[_wgslsmith_index_u32(4294967295u, 18u)], !vec4<bool>(true, arg_0.c, false, var_0.d.x)).d).x));
    global2 = array<Struct_1, 18>();
    var var_2 = ~_wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(arg_0.d, 12318u, 15814u, 15136u)) ^ ((arg_1 << (arg_1 % vec4<u32>(32u))) ^ vec4<u32>(var_1.a.a, arg_1.x, arg_1.x, 4294967295u)), firstLeadingBit(vec4<u32>(~12801u, _wgslsmith_div_u32(arg_0.d, arg_0.d), ~1u, firstLeadingBit(arg_0.d))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(-var_0.a)) * var_0.a))), var_2.x ^ _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, var_2.x, var_1.a.a, var_1.a.a), ~vec4<u32>(27071u, arg_0.d, 16256u, 4294967295u)), arg_0.d), -320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(558f + _wgslsmith_f_op_f32(sign(arg_0.e.x)))) * _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec4_f32(-var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 18>();
    global2 = array<Struct_1, 18>();
    global2 = array<Struct_1, 18>();
    var var_0 = ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(91491u, 4140u, 4294967295u), ~vec3<u32>(59189u, 0u, 0u)), 1u, ~1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u)), 1u)));
    global2 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = func_5(Struct_1(countOneBits(func_1()), any(global3[_wgslsmith_index_u32(~abs(var_0.x), 23u)]), true, 38131u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(776f, -492f), vec2<f32>(1194f, -734f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(226f, 470f))) - vec2<f32>(2064f, 629f)))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u >> (var_0.x % 32u), ~0u, 2496u) | ~(vec4<u32>(25913u, var_0.x, var_0.x, var_0.x) << (vec4<u32>(var_0.x, 0u, var_0.x, var_0.x) % vec4<u32>(32u))), ~countOneBits(~vec4<u32>(0u, var_0.x, 4294967295u, var_0.x))));
}

