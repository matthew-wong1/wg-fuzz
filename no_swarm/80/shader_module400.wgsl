struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32> = vec4<u32>(101334u, 1u, 1u, 4294967295u);

var<private> global2: array<vec3<u32>, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = true;
    var var_1 = select(select(!vec4<bool>(any(vec2<bool>(false, arg_1.a.d.b)), true & global0.b, false, true), vec4<bool>(false, -u_input.d != _wgslsmith_div_i32(u_input.a.x, -2147483647i), true, true), !select(select(vec4<bool>(arg_1.a.c.c.x, false, true, false), vec4<bool>(true, var_0, arg_0.a.d.c.x, arg_0.a.b), arg_1.a.b), select(vec4<bool>(true, arg_1.a.b, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, global0.d.c.x)), true)), !(!(!select(vec4<bool>(global0.c.c.x, true, true, var_0), vec4<bool>(arg_0.a.d.b, false, arg_0.a.d.c.x, var_0), arg_0.a.b))), select(!select(select(vec4<bool>(arg_1.a.d.b, false, false, var_0), vec4<bool>(global0.c.c.x, true, var_0, arg_0.a.d.b), arg_0.a.b), vec4<bool>(false, false, true, arg_0.a.b), vec4<bool>(true, true, true, true)), vec4<bool>(any(!vec4<bool>(false, arg_0.a.b, true, false)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.a.d.b, false, true, false), vec4<bool>(arg_0.a.d.b, false, var_0, global0.c.c.x))), var_0, true), vec4<bool>(var_0, true, any(select(vec3<bool>(var_0, arg_1.a.b, true), vec3<bool>(false, false, false), arg_1.a.c.c)), _wgslsmith_f_op_f32(ceil(1686f)) < _wgslsmith_f_op_f32(arg_0.a.d.d.x * global0.d.d.x))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1344f, -1424f) * -1064f), -641f, any(select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.a.d.b, var_1.x, true, var_0), global0.d.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-917f + 1373f), -2437f))))));
    let var_4 = arg_0;
    return firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(min(0u, 6465u) ^ var_4.a.c.a.x, 23329u), arg_0.b.x, ~(~u_input.e.x), ~arg_0.b.x));
}

fn func_2() -> vec4<u32> {
    let var_0 = -(_wgslsmith_div_vec3_i32(abs(u_input.a.wzz), abs(u_input.a.yww)) | select(u_input.a.zwz >> (vec3<u32>(35067u, 1u, u_input.e.x) % vec3<u32>(32u)), u_input.a.yyy, !global0.b));
    global1 = ~(~(~vec4<u32>(13815u, u_input.c | global1.x, reverseBits(global0.d.a.x), ~global1.x)));
    var var_1 = ~u_input.b << ((select(0u, _wgslsmith_mod_u32(4294967295u | global0.a.x, ~global0.c.a.x), (global1.x | 43509u) != 26062u) ^ u_input.e.x) % 32u);
    global1 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(global0.c.a.x, u_input.e.x, global0.c.a.x, global0.c.a.x)) | vec4<u32>(4294967295u, u_input.e.x, 1u, global0.d.a.x), _wgslsmith_mod_vec4_u32(func_3(Struct_3(Struct_2(u_input.e, true, global0.c, Struct_1(vec3<u32>(58680u, 0u, 47976u), global0.d.b, vec3<bool>(false, global0.d.b, global0.d.b), global0.d.d)), vec2<u32>(global0.d.a.x, 25973u)), Struct_4(Struct_2(vec3<u32>(0u, u_input.c, global0.d.a.x), global0.d.c.x, Struct_1(vec3<u32>(global1.x, 4294967295u, global0.d.a.x), false, global0.c.c, vec2<f32>(global0.c.d.x, global0.d.d.x)), Struct_1(vec3<u32>(1u, 7879u, 89945u), global0.b, global0.c.c, global0.d.d)))), _wgslsmith_add_vec4_u32(vec4<u32>(50120u, global0.d.a.x, 28051u, global1.x), vec4<u32>(global1.x, 12380u, 56037u, global1.x))), ~vec4<u32>(79039u, u_input.e.x, 1u, global1.x) >> ((vec4<u32>(29503u, 78095u, global0.c.a.x, 3372u) << (vec4<u32>(0u, 4294967295u, 28612u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(57042u, 0u, 42487u, global0.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.d.a.x, u_input.c, u_input.e.x, global0.c.a.x), vec4<u32>(1u, 1u, 12545u, 1u))), vec4<u32>(u_input.c, u_input.e.x, global0.a.x, 1u) ^ ~vec4<u32>(u_input.e.x, 0u, 4294967295u, u_input.c))) ^ func_3(Struct_3(Struct_2(vec3<u32>(27685u, 1u, 3842u), true, global0.c, global0.d), select(vec2<u32>(u_input.c, global0.c.a.x), u_input.e.xx, false) << (firstLeadingBit(vec2<u32>(global0.c.a.x, 1u)) % vec2<u32>(32u))), Struct_4(Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 42093u, u_input.c), global0.d.a), global0.d.b, global0.c, Struct_1(vec3<u32>(global0.d.a.x, 1u, global0.a.x), global0.c.b, global0.c.c, vec2<f32>(global0.d.d.x, global0.c.d.x)))));
    global1 = ~_wgslsmith_div_vec4_u32(countOneBits(select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0.a.x, global0.c.a.x, 39066u), vec4<u32>(u_input.c, global1.x, 1u, 9394u)), select(vec4<u32>(global1.x, global0.a.x, 53247u, u_input.e.x), vec4<u32>(15149u, global0.d.a.x, 76629u, global0.a.x), vec4<bool>(global0.b, false, global0.c.b, true)), vec4<bool>(false, global0.b, global0.c.b, true))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, global1.x, u_input.c, global1.x), vec4<u32>(1u, global1.x, u_input.e.x, global0.c.a.x)), func_3(Struct_3(Struct_2(vec3<u32>(global1.x, global1.x, global1.x), true, global0.d, Struct_1(vec3<u32>(u_input.c, global0.a.x, 4294967295u), false, global0.c.c, vec2<f32>(global0.c.d.x, global0.c.d.x))), global0.a.yy), Struct_4(Struct_2(global0.c.a, true, Struct_1(global2[_wgslsmith_index_u32(global1.x, 16u)], false, global0.c.c, global0.d.d), global0.c))), ~vec4<u32>(6899u, global1.x, u_input.e.x, 1u) >> ((vec4<u32>(global1.x, u_input.c, u_input.c, global0.a.x) & vec4<u32>(u_input.c, 51596u, global1.x, 13776u)) % vec4<u32>(32u))));
    return ~(~vec4<u32>(_wgslsmith_sub_u32(global1.x, 4294967295u), global0.d.a.x >> (4294967295u % 32u), firstTrailingBit(0u), countOneBits(4294967295u)) | (max(firstLeadingBit(vec4<u32>(4294967295u, u_input.e.x, u_input.c, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d.a.x, 23705u, global1.x, 4294967295u), vec4<u32>(4294967295u, 0u, 2340u, global1.x), vec4<u32>(53406u, u_input.c, global0.c.a.x, global0.c.a.x))) | vec4<u32>(u_input.e.x, u_input.e.x, 1u, global0.a.x)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_5) -> Struct_1 {
    global1 = func_2();
    var var_0 = global1.x;
    var var_1 = _wgslsmith_f_op_f32(max(global0.c.d.x, 337f));
    var var_2 = Struct_1(firstTrailingBit(u_input.e), any(vec4<bool>(arg_1.a.x, all(arg_1.c), false, true)), !vec3<bool>(!(arg_0.c.d.x < global0.c.d.x), all(vec2<bool>(false, false)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.d.d, global0.d.d)) + arg_0.d.d));
    var var_3 = arg_1;
    return Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(~firstTrailingBit(global1.x), firstTrailingBit(min(var_2.a.x, 0u)), ~13039u), abs(global2[_wgslsmith_index_u32(3671u, 16u)])), !any(select(!vec4<bool>(true, true, global0.c.c.x, true), select(vec4<bool>(arg_1.c.x, arg_1.c.x, var_3.c.x, global0.c.b), vec4<bool>(var_2.c.x, global0.d.c.x, true, true), vec4<bool>(global0.b, global0.b, arg_0.d.c.x, var_3.c.x)), true & var_2.c.x)), arg_1.c, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-666f, _wgslsmith_f_op_f32(abs(-938f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec3<u32>(12987u, global0.a.x, 49091u), !(true && (_wgslsmith_add_u32(4294967295u, global0.c.a.x) >= ~u_input.c)), Struct_1(min(vec3<u32>(4294967295u, 1u, 64935u), min(vec3<u32>(53478u, 925u, 53457u), vec3<u32>(0u, 35864u, 4294967295u))) >> (global0.c.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(global0.d.d.x - global0.c.d.x) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.d.x))), global0.d.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.d * vec2<f32>(-1539f, global0.d.d.x)) * vec2<f32>(global0.c.d.x, _wgslsmith_f_op_f32(-global0.c.d.x)))), func_1(Struct_2(vec3<u32>(global1.x, ~global1.x, u_input.c), true, Struct_1(vec3<u32>(global1.x, 18959u, 79985u), false, global0.d.c, global0.c.d), global0.c), Struct_5(global0.c.c.zx, u_input.e.x, global0.d.c, max(~u_input.a.xw, _wgslsmith_add_vec2_i32(u_input.a.zx, u_input.a.zy)))));
    let var_0 = 1i >> (0u % 32u);
    global0 = Struct_2(global1.yzy, ~(~var_0) != firstLeadingBit(max(-28771i, max(u_input.a.x, var_0))), global0.c, func_1(Struct_2(func_3(Struct_3(Struct_2(vec3<u32>(u_input.c, u_input.c, 387u), global0.d.b, global0.c, Struct_1(vec3<u32>(31008u, 1u, global1.x), false, global0.c.c, vec2<f32>(564f, 1696f))), vec2<u32>(0u, 4294967295u)), Struct_4(Struct_2(vec3<u32>(global1.x, global1.x, u_input.e.x), false, Struct_1(vec3<u32>(1u, u_input.c, 4294967295u), false, vec3<bool>(true, true, true), vec2<f32>(-1175f, global0.d.d.x)), Struct_1(vec3<u32>(15463u, global0.c.a.x, global1.x), false, global0.d.c, global0.c.d)))).zwz, all(select(vec3<bool>(global0.b, false, false), vec3<bool>(global0.b, false, false), vec3<bool>(global0.d.c.x, global0.b, global0.c.c.x))), global0.c, func_1(Struct_2(global0.c.a, true, global0.c, Struct_1(global1.wxx, global0.c.b, global0.d.c, global0.c.d)), Struct_5(global0.d.c.zz, u_input.c, vec3<bool>(false, global0.d.b, global0.c.b), vec2<i32>(-2147483647i, 2147483647i)))), Struct_5(select(vec2<bool>(true, false), global0.c.c.xx, vec2<bool>(global0.d.b, global0.d.b)), _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(global1.x, global0.d.a.x)), select(select(vec3<bool>(true, global0.c.c.x, true), vec3<bool>(global0.c.b, true, false), global0.c.c), select(global0.d.c, vec3<bool>(false, false, global0.b), true), func_1(Struct_2(global0.c.a, global0.b, global0.c, Struct_1(global2[_wgslsmith_index_u32(global0.c.a.x, 16u)], global0.d.c.x, global0.c.c, vec2<f32>(-1330f, -1550f))), Struct_5(vec2<bool>(true, false), 52722u, vec3<bool>(true, global0.b, false), vec2<i32>(var_0, u_input.d))).b), vec2<i32>(19325i, abs(var_0)))));
    var var_1 = vec3<u32>(~reverseBits(~max(global0.c.a.x, 37666u)), global1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.a.x & global0.a.x, abs(global1.x), func_3(Struct_3(Struct_2(global1.wxy, true, Struct_1(vec3<u32>(global0.a.x, global1.x, global1.x), global0.d.b, global0.c.c, global0.c.d), global0.c), global0.c.a.yx), Struct_4(Struct_2(vec3<u32>(u_input.e.x, global1.x, u_input.e.x), true, Struct_1(vec3<u32>(11983u, 4294967295u, 0u), global0.c.c.x, vec3<bool>(global0.d.c.x, true, global0.c.b), global0.c.d), global0.c))).x, ~u_input.c), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(global1.x, 4294967295u, global0.d.a.x, 11868u), vec4<u32>(global0.c.a.x, 4294967295u, global1.x, 4033u)), vec4<u32>(18013u, 35704u, global1.x, 59771u), ~vec4<u32>(global0.d.a.x, 43124u, 1u, 1u))));
    global0 = Struct_2(global1.zzw, global0.b, func_1(Struct_2(vec3<u32>(~80988u, max(44862u, u_input.e.x), abs(global0.c.a.x)), global0.c.c.x, Struct_1(~global2[_wgslsmith_index_u32(global1.x, 16u)], true, global0.d.c, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(446f, global0.d.d.x), vec2<f32>(global0.d.d.x, global0.c.d.x)))), func_1(Struct_2(vec3<u32>(4294967295u, global0.a.x, global1.x), global0.b, global0.d, global0.d), Struct_5(global0.c.c.zx, global0.c.a.x, global0.d.c, u_input.a.xw))), Struct_5(select(global0.d.c.zz, vec2<bool>(true, true), !global0.c.c.yy), 0u, !select(global0.d.c, vec3<bool>(global0.b, false, false), vec3<bool>(global0.c.b, false, global0.d.b)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(-2147483647i, u_input.b), u_input.a.xw)))), global0.d);
    var var_2 = Struct_2(u_input.e, true, Struct_1(reverseBits(vec3<u32>(global0.c.a.x, 62704u, 4294967295u)) & (min(vec3<u32>(739u, 57652u, u_input.c), u_input.e) & global2[_wgslsmith_index_u32(global1.x | 1u, 16u)]), -16399i == var_0, select(!vec3<bool>(global0.b, false, false), !select(global0.c.c, global0.c.c, true), any(vec3<bool>(false, global0.c.c.x, true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.d.d - global0.d.d)))), Struct_1(global2[_wgslsmith_index_u32(12409u, 16u)], global0.c.b, !global0.d.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d.d.x, global0.d.d.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -300f), global0.c.d)), global0.c.c.yz)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.d.x * global0.c.d.x), -572f), var_2.d.d.x, var_2.d.d.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1043f, -1427f), var_2.c.d.x, _wgslsmith_f_op_f32(-var_2.c.d.x)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.d.d.x, -550f, 413f))))))));
}

