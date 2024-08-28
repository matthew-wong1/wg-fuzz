struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: i32 = -5283i;

var<private> global2: array<vec3<u32>, 17>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    var var_0 = vec4<f32>(-1000f, -638f, 621f, _wgslsmith_f_op_f32(1000f - -2922f));
    let var_1 = ~_wgslsmith_sub_u32(min(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 22433u), u_input.a.yz)) & 1u, ~firstTrailingBit(u_input.a.x) | ~0u);
    let var_2 = Struct_4(Struct_1(true, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), -1000f)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_0.x)), 532f), 1282f, vec3<u32>(1u, var_1, ~u_input.a.x));
    let var_3 = Struct_2(vec3<bool>(!any(var_2.a.b.wx), all(select(vec2<bool>(true, var_2.a.b.x), vec2<bool>(true, false), !var_2.a.b.wx)), true), Struct_1(var_2.a.a, !(!(!vec4<bool>(true, var_2.a.a, var_2.a.b.x, false)))), true, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 1434i), u_input.b), u_input.b), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, 39595i), -1i | abs(u_input.b.x))));
    var var_4 = Struct_1(true, select(var_3.b.b, vec4<bool>(var_2.a.b.x & var_3.b.a, var_2.a.a, select(any(var_2.a.b), true, select(false, var_2.a.a, true)), var_2.a.b.x), var_2.a.b));
    return min(80468u, ~(~(~_wgslsmith_add_u32(1u, u_input.a.x))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = select(select(vec2<bool>(true, -481f != _wgslsmith_f_op_f32(sign(arg_0.c.x))), !(!select(vec2<bool>(false, arg_1.b.b.x), arg_0.a.b.zz, vec2<bool>(arg_1.a.x, arg_1.c))), false), vec2<bool>(true, false), vec2<bool>(false, 7534u > _wgslsmith_div_u32(~u_input.a.x, 0u << (arg_0.e.x % 32u))));
    var var_1 = Struct_1((~49002u | _wgslsmith_clamp_u32(arg_0.e.x, 0u, _wgslsmith_mod_u32(1u, u_input.a.x))) <= _wgslsmith_add_u32(_wgslsmith_add_u32(39897u, 1u), func_3()), vec4<bool>(((arg_2 <= -392f) & arg_1.b.b.x) || arg_0.a.a, arg_0.a.b.x, var_0.x, arg_1.a.x));
    let var_2 = arg_2;
    let var_3 = vec4<i32>(_wgslsmith_add_i32(arg_1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1277i, -11635i, u_input.b.x, 71072i), ~vec4<i32>(43806i, u_input.b.x, -56187i, u_input.b.x)) << (arg_0.e.x % 32u)), _wgslsmith_div_i32((reverseBits(u_input.b.x) & (i32(-1i) * -19340i)) | -3264i, arg_1.d.x), select(89882i, ~_wgslsmith_dot_vec2_i32(arg_1.d, vec2<i32>(826i, 0i)) ^ _wgslsmith_div_i32(-u_input.b.x, _wgslsmith_mod_i32(-27564i, -2147483647i)), true & any(select(vec4<bool>(arg_0.a.a, var_1.b.x, true, arg_1.b.b.x), vec4<bool>(false, arg_0.a.a, false, var_1.a), var_1.b))), max(countOneBits(8632i), 0i));
    let var_4 = _wgslsmith_clamp_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 21935u >> (~arg_0.e.x % 32u)), 17u)], u_input.a.wyz & _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, 30454u), vec3<u32>(45107u, 38037u, arg_0.e.x), vec3<u32>(4294967295u, 1u, 29635u)), ~firstTrailingBit(arg_0.e), vec3<u32>(4294967295u, ~1u, 2825u)), ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, min(u_input.a, vec4<u32>(13974u, 0u, u_input.a.x, 1u))), vec4<u32>(22556u, ~arg_0.e.x, max(arg_0.e.x, u_input.a.x), u_input.a.x | 0u)), 17u)]);
    return arg_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_5 {
    var var_0 = u_input.b.x;
    var var_1 = any(select(select(select(func_2(Struct_4(arg_2.b, arg_0.x, vec3<f32>(arg_0.x, arg_0.x, arg_0.x), -1169f, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), arg_2, -300f).b.b.yww, !arg_2.b.b.xyx, arg_2.a), !func_2(Struct_4(arg_2.b, -482f, vec3<f32>(1000f, arg_0.x, arg_0.x), -331f, u_input.a.xxy), arg_2, 2431f).a, arg_2.a), arg_2.b.b.xyx, arg_2.b.b.x));
    return Struct_5(func_2(Struct_4(Struct_1(true, arg_2.b.b), _wgslsmith_f_op_f32(abs(-955f)), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), 840f, _wgslsmith_div_f32(arg_0.x, arg_0.x)), arg_0.x, ~reverseBits(global2[_wgslsmith_index_u32(65698u, 17u)])), Struct_2(vec3<bool>(true, true, true), arg_2.b, all(vec3<bool>(arg_2.c, false, arg_2.c)), firstTrailingBit(vec2<i32>(u_input.b.x, -31709i))), arg_0.x).b, -402f, Struct_4(Struct_1((39209i ^ arg_2.d.x) >= arg_2.d.x, !(!arg_2.b.b)), _wgslsmith_f_op_f32(floor(arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, 954f)) * _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), -402f, arg_0.x), -480f, vec3<u32>(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 39813u, 77836u), u_input.a.zww), ~vec3<u32>(0u, 0u, arg_1.x)), ~1u)));
}

fn func_5(arg_0: i32, arg_1: Struct_5) -> bool {
    global0 = u_input.a.x;
    global2 = array<vec3<u32>, 17>();
    global2 = array<vec3<u32>, 17>();
    var var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.c.e.x, arg_1.c.e.x), firstTrailingBit(select(vec2<u32>(arg_1.c.e.x, 35253u), u_input.a.ww, true))), u_input.a.xz);
    var var_1 = vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(~arg_1.c.e.x, var_0.x), ~_wgslsmith_sub_u32(arg_1.c.e.x, 1u | arg_1.c.e.x), countOneBits(~(~29441u))) << (~select(vec4<u32>(arg_1.c.e.x, _wgslsmith_clamp_u32(0u, var_0.x, 34691u), 1u, arg_1.c.e.x | 44457u), vec4<u32>(1u, 26005u, ~16217u, ~85661u), all(arg_1.c.a.b.yy)) % vec4<u32>(32u));
    return all(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.c.c.xz)) - arg_1.c.c.yz), vec2<u32>(1907u, ~arg_1.c.e.x), func_2(Struct_4(Struct_1(arg_1.c.a.b.x, vec4<bool>(true, true, true, arg_1.c.a.b.x)), _wgslsmith_f_op_f32(-arg_1.c.b), arg_1.c.c, _wgslsmith_f_op_f32(sign(-643f)), vec3<u32>(4294967295u, u_input.a.x, 1u)), Struct_2(select(vec3<bool>(false, false, arg_1.c.a.b.x), arg_1.a.b.xyw, vec3<bool>(arg_1.a.b.x, false, arg_1.c.a.b.x)), Struct_1(arg_1.c.a.a, vec4<bool>(arg_1.a.a, true, arg_1.c.a.b.x, false)), all(arg_1.c.a.b), vec2<i32>(u_input.b.x, -51074i)), arg_1.c.d)).c.a.b.wzx);
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a.wx;
    let var_1 = Struct_4(Struct_1(func_5(u_input.b.x, func_4(vec2<f32>(571f, 1000f), vec2<u32>(var_0.x, u_input.a.x), func_2(Struct_4(Struct_1(true, vec4<bool>(false, false, false, false)), 737f, vec3<f32>(-1050f, -2107f, 1478f), -345f, vec3<u32>(0u, u_input.a.x, var_0.x)), Struct_2(vec3<bool>(true, false, false), Struct_1(false, vec4<bool>(true, false, true, true)), false, u_input.b.xy), -839f))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-670f + _wgslsmith_div_f32(-378f, -2025f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f) - 730f)), _wgslsmith_f_op_f32(-1614f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2167f)))), true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(188f, func_4(vec2<f32>(380f, -513f), vec2<u32>(u_input.a.x, 0u), Struct_2(vec3<bool>(false, true, true), Struct_1(false, vec4<bool>(false, true, true, true)), false, vec2<i32>(u_input.b.x, 2147483647i))).b, _wgslsmith_f_op_f32(sign(-2225f))) - func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1689f, 1403f)), select(u_input.a.wy, vec2<u32>(21340u, 16219u), vec2<bool>(true, true)), func_2(Struct_4(Struct_1(false, vec4<bool>(true, true, false, true)), 412f, vec3<f32>(578f, 172f, 440f), -712f, vec3<u32>(u_input.a.x, 4294967295u, 30464u)), Struct_2(vec3<bool>(true, false, true), Struct_1(false, vec4<bool>(true, true, false, true)), false, vec2<i32>(u_input.b.x, -316i)), -377f)).c.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-901f, 1107f) + _wgslsmith_f_op_f32(select(283f, -392f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(687f, -203f) * 746f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-279f + -453f) + _wgslsmith_f_op_f32(f32(-1f) * -302f)) != _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(112f, -800f))))), abs(global2[_wgslsmith_index_u32(4294967295u, 17u)]));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.c.zy, vec2<f32>(var_1.c.x, var_1.d))), u_input.a.wy, Struct_2(!vec3<bool>(true, var_1.b > -177f, false), Struct_1(!var_1.a.a, vec4<bool>(var_1.a.b.x, var_1.a.a, true, var_1.a.b.x)), all(select(var_1.a.b, var_1.a.b, var_1.a.b)) | !func_4(var_1.c.xz, var_1.e.xz, Struct_2(vec3<bool>(true, false, var_1.a.b.x), var_1.a, true, vec2<i32>(14266i, u_input.b.x))).a.b.x, ~(u_input.b.zx & select(vec2<i32>(u_input.b.x, -2147483647i), u_input.b.zz, true))));
    return Struct_2(select(!select(!vec3<bool>(true, var_1.a.b.x, true), vec3<bool>(var_2.c.a.a, false, var_1.a.a), !vec3<bool>(false, var_2.a.b.x, var_1.a.a)), vec3<bool>(all(vec4<bool>(var_1.a.b.x, var_2.a.b.x, var_2.c.a.b.x, false)), true, any(!var_1.a.b.zx)), !vec3<bool>(var_1.a.b.x | var_2.a.a, false, true)), func_2(var_1, Struct_2(var_2.a.b.yxy, var_2.a, false, _wgslsmith_mult_vec2_i32(u_input.b.zz, ~u_input.b.xx)), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c.c.yy) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b, -2426f)))), ~(~var_2.c.e.yz), Struct_2(func_2(var_1, Struct_2(vec3<bool>(var_2.a.b.x, true, var_1.a.a), Struct_1(false, var_1.a.b), var_2.c.a.a, u_input.b.yy), -478f).a, func_4(vec2<f32>(var_2.c.d, 1022f), vec2<u32>(49666u, 4294967295u), Struct_2(var_1.a.b.xwz, var_1.a, true, u_input.b.xz)).c.a, true, -vec2<i32>(u_input.b.x, u_input.b.x))).c.b).b, true, reverseBits(firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, -34975i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_5(func_2(func_4(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1723f, -547f)), vec2<u32>(28333u, u_input.a.x), Struct_2(vec3<bool>(var_0.c, var_0.c, true), Struct_1(true, var_0.b.b), var_0.b.a, vec2<i32>(841i, -2147483647i))).c.c.yx, u_input.a.xx, func_1()).c, func_1(), -772f).b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1230f)) + _wgslsmith_f_op_f32(1538f * 1339f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-532f - -971f))))), Struct_4(var_0.b, -849f, vec3<f32>(662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(852f * -661f)), -423f), -850f, vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, 39767u, firstLeadingBit(u_input.a.x)), 0u, select(u_input.a.x, 1u, all(vec4<bool>(false, false, true, var_0.a.x))))));
    global1 = ~(-8430i);
    let var_2 = _wgslsmith_f_op_f32(-var_1.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, var_1.b, var_2, var_1.c.b)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-839f, -440f, 1291f, var_1.b)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b, var_1.c.b, 781f, var_2))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1949f, var_2, 134f, var_2), vec4<f32>(var_1.c.b, 1000f, 773f, var_2))) - vec4<f32>(_wgslsmith_f_op_f32(select(var_2, -487f, false)), 336f, var_2, -1814f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_1.b, -370f, -378f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(289f, var_1.c.c.x, 1000f, 1090f) * vec4<f32>(var_2, -313f, var_2, var_1.c.c.x)), func_5(13174i, Struct_5(var_1.c.a, 1000f, Struct_4(var_1.c.a, -1000f, var_1.c.c, 484f, vec3<u32>(4294967295u, var_1.c.e.x, 1u)))))))))));
    global2 = array<vec3<u32>, 17>();
    var var_4 = !func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(var_3.xy)), func_4(vec2<f32>(-758f, var_3.x), u_input.a.xw, Struct_2(vec3<bool>(false, true, true), Struct_1(false, var_1.a.b), true, vec2<i32>(2147483647i, 11350i))).c.c.xy))), abs(~vec2<u32>(var_1.c.e.x, var_1.c.e.x)), Struct_2(!var_1.a.b.zxw, var_0.b, _wgslsmith_f_op_f32(-var_2) != var_2, _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b.x, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.d.x, -1i), vec2<i32>(u_input.b.x, var_0.d.x))))).a.b.zz;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(16958u, 0u, u_input.a.x, 1u)), firstLeadingBit(vec4<u32>(3558u, 4294967295u, 23813u, 0u)))) & vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(17833u, 0u, var_1.c.e.x, var_1.c.e.x), u_input.a), 1u, ~_wgslsmith_add_u32(u_input.a.x, 1u), select(_wgslsmith_div_u32(u_input.a.x, 4294967295u), _wgslsmith_mult_u32(0u, var_1.c.e.x), any(vec4<bool>(true, var_4.x, var_1.a.b.x, var_4.x)))), -countOneBits(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.d.x, var_0.d.x, var_0.d.x, u_input.b.x), reverseBits(vec4<i32>(var_0.d.x, 10459i, u_input.b.x, -7663i)))));
}

