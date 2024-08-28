struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(52275i);

var<private> global1: vec4<f32> = vec4<f32>(-433f, -682f, -1793f, -488f);

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: array<f32, 26> = array<f32, 26>(809f, 366f, -174f, -1000f, -682f, -1461f, -1000f, 1203f, 287f, -1639f, 1528f, 142f, 115f, -936f, -1542f, -1000f, 823f, 608f, 362f, 1064f, 359f, -125f, 1000f, -633f, 1131f, -306f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(4294967295u, 26u)])))));
    var var_1 = u_input.a.x;
    let var_2 = countOneBits(u_input.b);
    var var_3 = global3.b.x | all(vec3<bool>(global3.b.x, !global3.b.x, global3.b.x));
    let var_4 = select(!global3.b, vec4<bool>(global1.x >= -155f, global3.b.x, global3.b.x, true), vec4<bool>(false, !all(global3.b.zyy), any(vec4<bool>(true, !global3.b.x, global3.b.x, !global3.b.x)), _wgslsmith_clamp_u32(max(3531u, 109725u), 37216u, ~85268u) == ~(~26230u)));
    return vec2<i32>(-17539i, 2147483647i) & vec2<i32>(~select(firstLeadingBit(global0.a), ~global3.a, false), abs(u_input.a.x));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))), arg_1.b, global4[_wgslsmith_index_u32(~4294967295u, 26u)]);
    return -4959i;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = ~19633i & _wgslsmith_div_i32(func_3(!select(vec4<bool>(true, global3.b.x, arg_0.x, arg_0.x), vec4<bool>(false, global3.b.x, global3.b.x, false), global3.b), Struct_2(Struct_1(global0.a, global3.b, global0.a, vec2<i32>(global3.d.x, global0.a)), 791f, Struct_1(0i, vec4<bool>(false, global3.b.x, true, global3.b.x), -2147483647i, u_input.a.zx))), 20669i);
    global0 = Struct_3(-37245i);
    global1 = vec4<f32>(1080f, _wgslsmith_f_op_f32(min(608f, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(786f))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_1, 26u)]), any(global3.b.yzx))) - global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(~u_input.c.xxz, u_input.c.zwx)), 26u)]), global4[_wgslsmith_index_u32(arg_2, 26u)]);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 26u)]))) * -944f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~1u, 26u)] + global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(3150f)), -474f)), _wgslsmith_f_op_f32(select(-1049f, _wgslsmith_f_op_f32(ceil(global1.x)), true)), !(!arg_0.x)))), 584f, -498f);
    let var_2 = vec2<bool>(arg_0.x && all(!(!vec4<bool>(true, arg_0.x, global3.b.x, false))), !arg_0.x);
    return Struct_3(var_0);
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = vec3<bool>(any(!vec4<bool>(true, true, true, -734f < arg_0.x)), false, global3.b.x);
    let var_1 = Struct_1(1750i, global3.b, 31022i, _wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(-vec2<i32>(global0.a, global3.d.x), func_1(), firstLeadingBit(vec2<i32>(arg_2.a, -53697i)))), _wgslsmith_mult_vec2_i32(func_1(), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), ~vec2<i32>(1i, arg_2.a)))));
    global3 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(global3.a << (arg_1 % 32u)), 2447i, func_2(vec2<bool>(true, true), _wgslsmith_mult_u32(arg_1, u_input.b), ~86822u, u_input.b | 4294967295u).a, _wgslsmith_sub_i32(-9712i, global0.a << (u_input.c.x % 32u))), ~abs(-vec4<i32>(2005i, u_input.a.x, 26628i, arg_2.a))), vec4<bool>(any(!vec2<bool>(var_1.b.x, false)), global3.b.x, false, all(select(vec3<bool>(true, false, var_0.x), !vec3<bool>(var_0.x, global3.b.x, var_1.b.x), global3.b.xxw))), -1903i, ~(reverseBits(_wgslsmith_mod_vec2_i32(u_input.a.xy, vec2<i32>(11708i, 1i))) | var_1.d));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-484f, _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(countOneBits(arg_1), 26u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.x)), arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + global4[_wgslsmith_index_u32(arg_1, 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(304f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(-506f, _wgslsmith_f_op_f32(1349f + 363f))))));
    return select(vec4<bool>(false, !((var_1.d.x ^ 12082i) > max(35299i, global0.a)), true, true), var_2.b, var_1.b);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_0, 1910f, Struct_1(countOneBits(42646i), select(!select(vec4<bool>(arg_0.b.x, false, true, true), global3.b, arg_0.b), !(!vec4<bool>(true, true, arg_0.b.x, global3.b.x)), any(func_4(global1.wx, u_input.c.x, Struct_3(1i)).xzx)), 38026i, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), _wgslsmith_div_i32(-1i, -1i)), _wgslsmith_mult_vec2_i32(min(arg_0.d, vec2<i32>(2147483647i, global0.a)), vec2<i32>(-20711i, arg_0.d.x)))));
    let var_1 = true;
    global4 = array<f32, 26>();
    return Struct_1(~(~(~(~(-41137i)))), !select(!global3.b, !func_4(global1.zw, 4294967295u, Struct_3(-1i)), true), ~_wgslsmith_dot_vec3_i32(max(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(global0.a, 34788i, 2147483647i), u_input.a)), vec3<i32>(global3.a, var_0.a.d.x, -u_input.a.x)), -vec2<i32>(firstLeadingBit(14539i), ~var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-firstTrailingBit(u_input.a.x), vec4<bool>(true, !(global3.b.x | global3.b.x), global3.b.x, true), 1i, u_input.a.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1283f))), Struct_1(~13058i, global3.b, 327i, select(_wgslsmith_clamp_vec2_i32(-vec2<i32>(global3.d.x, 46098i), func_1(), global3.d), vec2<i32>(-global3.a, -16380i), global1.x > _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(0u, 26u)], global1.x)))));
    global3 = func_5(Struct_1(-(0i | _wgslsmith_dot_vec2_i32(var_0.c.d, var_0.c.d)), func_4(_wgslsmith_f_op_vec2_f32(global1.wz + _wgslsmith_f_op_vec2_f32(ceil(global1.yw))), u_input.b, func_2(select(vec2<bool>(true, true), var_0.c.b.yz, vec2<bool>(var_0.c.b.x, var_0.c.b.x)), 0u, 47400u ^ u_input.b, 0u)), 0i, ~vec2<i32>(u_input.a.x, -u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.b));
}

