struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: bool;

var<private> global1: vec3<f32>;

var<private> global2: array<u32, 7> = array<u32, 7>(6762u, 20029u, 18384u, 35876u, 0u, 22539u, 4294967295u);

var<private> global3: array<vec2<f32>, 19>;

var<private> global4: vec3<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))) - 938f)))));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-567f, 402f)), _wgslsmith_f_op_f32(-573f - global1.x), global4.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1342f, -637f, global4.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -353f))))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2813f - global4.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global4.x)), 2486f)), global4.x)), vec3<bool>(false, true, true)));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(~34344u, 1u), u_input.b.x, abs(~_wgslsmith_clamp_u32(select(global2[_wgslsmith_index_u32(75096u, 7u)], 4294967295u, false), u_input.b.x & 78604u, 65962u)), abs(u_input.b.x) << (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c, u_input.b.x), _wgslsmith_clamp_u32(0u, ~u_input.c, global2[_wgslsmith_index_u32(~1u, 7u)])) % 32u));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1193f, global1.x, 1750f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1966f, global4.x) - vec3<f32>(1460f, -1190f, global1.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global4.x, global1.x), vec3<f32>(1267f, global1.x, 902f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1481f, 1848f) + vec3<f32>(-303f, 1474f, -212f)) + vec3<f32>(global1.x, 1106f, 319f)))), vec3<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-619f, global4.x, false)) + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.x - global4.x))))));
    global2 = array<u32, 7>();
    return 36617i;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global3 = array<vec2<f32>, 19>();
    let var_0 = firstLeadingBit(_wgslsmith_mult_i32(~_wgslsmith_div_i32(u_input.a.x, u_input.d.x), _wgslsmith_sub_i32(func_3(-2147483647i), u_input.d.x)) << (_wgslsmith_sub_u32(~(u_input.c >> (1u % 32u)), 48846u) % 32u));
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 513f, global4.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 1000f, arg_0.x), vec3<f32>(1115f, -349f, 113f)), vec3<f32>(global4.x, global1.x, 1162f), any(vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global4.x, global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1441f, global4.x, -200f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-836f, 1000f, 629f)))), vec3<bool>(true, true, true))))));
    let var_1 = Struct_1(!(firstLeadingBit(~global2[_wgslsmith_index_u32(4294967295u, 7u)]) <= 15741u), !(reverseBits(-u_input.d.x) <= u_input.e), ~(~11735i), select(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-28302i, 1i, var_0, u_input.d.x)), select(vec4<i32>(0i, -17216i, var_0, 15345i), -vec4<i32>(28511i, -1i, u_input.e, u_input.d.x), false)), firstTrailingBit(_wgslsmith_div_vec4_i32(min(vec4<i32>(-51096i, 0i, 0i, u_input.d.x), vec4<i32>(u_input.e, -1i, var_0, 1i)), ~vec4<i32>(u_input.d.x, 2147483647i, 1i, 29543i))), vec4<bool>(!(u_input.c != 61963u), false, false, ~global2[_wgslsmith_index_u32(u_input.b.x, 7u)] <= max(1u, 55963u))));
    let var_2 = !var_1.a;
    return 1i;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_2(~countOneBits(vec2<i32>(65123i ^ u_input.d.x, -26056i)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(global4.x - global4.x)), vec3<f32>(1062f, -1269f, 1163f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, 1213f, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -972f, 1204f))))))), vec3<bool>(true, all(vec3<bool>(true, global4.x < 294f, true)), any(vec3<bool>(true, true, false)) && false), vec3<i32>(~reverseBits(func_2(vec2<f32>(231f, global1.x))), (arg_1.x | 2147483647i) & ~u_input.e, 1i));
    let var_1 = 4294967295u;
    global2 = array<u32, 7>();
    let var_2 = var_0.c;
    var var_3 = Struct_1(var_2.x && any(select(var_2.zx, select(var_0.c.yx, vec2<bool>(var_2.x, true), vec2<bool>(true, var_0.c.x)), !var_0.c.yz)), !(u_input.b.x < 38265u), u_input.d.x, firstLeadingBit(vec4<i32>(u_input.e, abs(-2147483647i), countOneBits(~var_0.a.x), -1i)));
    return Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -1131f, -207f, 150f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.x, -778f, -344f, global1.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-767f, var_0.b.x, global1.x, var_0.b.x)))))))), _wgslsmith_sub_u32(var_1, ~arg_0) >= u_input.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    global3 = array<vec2<f32>, 19>();
    let var_0 = ~arg_0.d.yyz;
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -364f, arg_2.a.x) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1433f, -136f, global1.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -1974f, -1461f)) - arg_1.a.xwz), vec3<f32>(_wgslsmith_div_f32(536f, 1000f), arg_1.a.x, _wgslsmith_f_op_f32(-arg_2.a.x))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(arg_1.a.zwx, vec3<f32>(func_1(u_input.b.x, select(u_input.a.zz, vec2<i32>(0i, 33297i), false)).a.x, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-arg_2.a.x), false)), _wgslsmith_f_op_f32(abs(arg_1.a.x))), !(!select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, arg_1.b, true), vec3<bool>(arg_2.b, arg_2.b, false)))))));
    global0 = arg_0.a | !(arg_0.a | arg_2.b);
    return -735f >= arg_1.a.x;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    var var_0 = vec3<i32>(~u_input.a.x & arg_1.c, _wgslsmith_sub_i32(arg_1.d.x, ~func_3(-46122i) ^ -13174i), ~arg_1.d.x);
    global3 = array<vec2<f32>, 19>();
    var var_1 = !(!(!(!arg_3 || false)));
    let var_2 = _wgslsmith_mod_vec2_u32((u_input.b.yy & _wgslsmith_mult_vec2_u32(u_input.b.xx, u_input.b.xy << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)))) | u_input.b.xx, u_input.b.yy);
    global2 = array<u32, 7>();
    return _wgslsmith_add_i32(_wgslsmith_add_i32(select(reverseBits(-21447i), u_input.a.x, arg_1.b), -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-u_input.a.x), -countOneBits(-33259i)), arg_1.d.wz));
}

fn func_6(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(true, false, ~(-(~u_input.d.x)), ~vec4<i32>(-1i, -26485i, _wgslsmith_mod_i32(arg_1, arg_1), ~11162i)), 0u, Struct_2(u_input.a.zz, vec3<f32>(global1.x, _wgslsmith_f_op_f32(step(global1.x, func_1(24470u, vec2<i32>(u_input.d.x, 32495i)).a.x)), _wgslsmith_f_op_f32(-global1.x)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(15060u, u_input.a.zx).b), vec3<bool>(all(vec4<bool>(true, true, true, false)), any(vec3<bool>(true, false, true)), false)), vec3<i32>(-33815i, -15804i, -2147483647i)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global1.x, func_5(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1453f * global1.x)))), Struct_1(select(false, true, false), true, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.a.x), u_input.a.zz), -2147483647i), vec4<i32>(u_input.d.x, u_input.d.x >> (u_input.b.x % 32u), 1i, -u_input.d.x)), vec4<bool>(func_4(Struct_1(true, true, -2147483647i, vec4<i32>(8452i, u_input.e, u_input.d.x, -1i)), func_1(global2[_wgslsmith_index_u32(0u, 7u)], u_input.d.zz), func_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)], vec2<i32>(u_input.e, u_input.a.x))), true, ~33732u < global2[_wgslsmith_index_u32(~u_input.b.x, 7u)], all(vec4<bool>(true, false, false, true))), true || select(any(vec2<bool>(true, false)), true, all(vec4<bool>(true, true, true, false)))));
    let var_1 = Struct_2(vec2<i32>(u_input.e, reverseBits(max(1i, _wgslsmith_mod_i32(u_input.e, var_0.d.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global1.x, 698f) + vec3<f32>(global1.x, global1.x, global4.x))))), !vec3<bool>(true, var_0.b, !var_0.b), vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec2_i32(max(var_0.d.zx & vec2<i32>(-1i, var_0.d.x), -vec2<i32>(var_0.d.x, u_input.e)), u_input.a.yx), -47805i));
    var_0 = Struct_1(var_1.c.x, false, u_input.d.x, -(~var_0.d));
    var var_2 = u_input.b;
    let var_3 = Struct_4(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global4.x, 2654f)))), -962f, var_1.b.x), true);
    global4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(-58628i);
}

