struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, true, false, false, false, false, false, false, false, false, false, false, true, false, true, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> vec3<i32> {
    var var_0 = any(!(!vec3<bool>(!global0[_wgslsmith_index_u32(arg_1, 17u)], any(arg_0), !global0[_wgslsmith_index_u32(22485u, 17u)])));
    return vec3<i32>(~u_input.c.x, abs(2502i), u_input.c.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = arg_0;
    var var_1 = firstTrailingBit(max(arg_0.a.e, _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.c.x, 15972i, 2147483647i) ^ vec4<i32>(u_input.c.x, arg_3, u_input.c.x, 37284i), abs(~vec4<i32>(-1i, -25080i, var_0.b, u_input.c.x)))));
    return 1u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(min(_wgslsmith_mod_u32(1u, u_input.a.x | 41787u), firstTrailingBit(select(u_input.b.x, 4294967295u, true))), global0[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(53921u, arg_2, false, u_input.c.x, vec4<i32>(73220i, u_input.c.x, u_input.c.x, -1i)), ~u_input.c.x, select(vec2<bool>(global0[_wgslsmith_index_u32(58175u, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(0u, 17u)])), abs(vec2<i32>(u_input.c.x, -49930i)), Struct_2(Struct_1(3539u, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true, u_input.c.x, vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x)), 41439i, select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true), false)), u_input.c.x), 17u)], false, -(_wgslsmith_div_i32(u_input.c.x, u_input.c.x) ^ u_input.c.x), abs(-vec4<i32>(-8478i, -59040i, 1i, 2147483647i)) & (countOneBits(vec4<i32>(0i, u_input.c.x, 2147483647i, u_input.c.x)) & abs(vec4<i32>(-37637i, u_input.c.x, u_input.c.x, u_input.c.x)))), Struct_1(max(func_3(Struct_2(Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], false, 25971i, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i)), u_input.c.x, vec2<bool>(arg_2, false)), u_input.c.yz, Struct_2(Struct_1(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true, u_input.c.x, vec4<i32>(u_input.c.x, u_input.c.x, 0i, 2147483647i)), -1i, vec2<bool>(false, false)), 4788i), 18867u) >> (0u % 32u), any(vec3<bool>(arg_2, true, arg_2 & false)), !((u_input.a.x & 28406u) < ~u_input.b.x), 1i, abs(~vec4<i32>(-1i, 2768i, -1i, u_input.c.x))), arg_0.x, select(select(vec3<bool>(206f > arg_1.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)] && false), vec3<bool>(true, false, true), select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(global0[_wgslsmith_index_u32(52714u, 17u)], false, true), true), vec3<bool>(true, false, arg_2), vec3<bool>(false, arg_2, true))), !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], arg_2))), global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), Struct_2(Struct_1(~(~1u), all(select(vec2<bool>(arg_2, true), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], false))), all(vec4<bool>(arg_2, false, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], false)), _wgslsmith_dot_vec3_i32(select(u_input.c, u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), u_input.c), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-14515i, u_input.c.x, u_input.c.x, 0i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.c.x, u_input.c.x, -1i, 0i))), _wgslsmith_mod_i32(~(~u_input.c.x), -_wgslsmith_div_i32(u_input.c.x, u_input.c.x)), !vec2<bool>(!arg_2, !global0[_wgslsmith_index_u32(12279u, 17u)])));
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var var_1 = abs(countOneBits(var_0.b.e.zxx));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-var_0.c)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.x, arg_1.x)))))), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(exp2(arg_0.x))));
    return Struct_3(var_0.b, Struct_1(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b >> (~u_input.b % vec2<u32>(32u))), var_0.e.a.b && (true || (false && global0[_wgslsmith_index_u32(7779u, 17u)])), arg_2, -1i, vec4<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, var_0.b.d), func_1(var_0.e.c, u_input.b.x).x), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.c.x, var_0.b.e.x, 20468i), ~(-2147483647i), firstLeadingBit(var_1.x)), -var_1.x)), -160f, select(!var_0.d, var_0.d, global0[_wgslsmith_index_u32(min(~1u, var_0.b.a), 17u)]), Struct_2(var_0.a, ~var_0.e.a.e.x, select(var_0.e.c, var_0.d.xx, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.c, u_input.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, ~u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-36863i, -2147483647i, 17123i), u_input.c), u_input.c.x)), ~_wgslsmith_add_vec3_i32(u_input.c, func_1(vec2<bool>(global0[_wgslsmith_index_u32(37174u, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), u_input.b.x)), -vec3<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -29792i, 27275i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)))));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -294f), _wgslsmith_f_op_f32(abs(2148f)), _wgslsmith_f_op_f32(round(-597f)), _wgslsmith_f_op_f32(564f + -976f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-343f, -260f, 548f, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1354f, -913f, 1637f, -594f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(265f - -743f), _wgslsmith_f_op_f32(-580f + 2300f), _wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_f_op_f32(select(100f, 1386f, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(139f, 1793f, 133f, -1797f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, -712f, -1081f, -613f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(702f, -688f, 668f, -1000f), vec4<f32>(336f, 2556f, 414f, 1000f), false)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2202f, -378f, -771f, -1333f)))))), global0[_wgslsmith_index_u32(~0u, 17u)]);
    let var_2 = vec4<i32>(-20141i, -1i, countOneBits(1i), ~(i32(-1i) * -1i));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c, -1605f, -1203f, -718f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_1.c, 701f, var_1.c) + vec4<f32>(var_1.c, 1264f, -1183f, var_1.c))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-657f, var_1.c, var_1.c, var_1.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 1000f, var_1.c, var_1.c))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f + var_1.c)), -658f)), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1213f)))), -855f), true).e.a;
    var_1 = Struct_3(var_1.a, Struct_1(var_1.e.a.a, true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.e.a.a, ~var_1.b.a), 17u)], var_1.b.e.x, ~reverseBits(abs(vec4<i32>(69939i, var_0.x, var_0.x, 16882i)))), var_1.c, !(!select(vec3<bool>(true, true, true), var_1.d, var_1.d)), Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_1.c, var_1.c, 838f) - vec4<f32>(var_1.c, var_1.c, var_1.c, 491f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, 1175f, var_1.c, 1398f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1419f, var_1.c, var_1.c, var_1.c))), u_input.b.x < func_2(vec4<f32>(198f, var_1.c, -210f, 1541f), vec4<f32>(var_1.c, 683f, -1000f, var_1.c), false).b.a).a, 1i << (u_input.b.x % 32u), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(701f, _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -930f), _wgslsmith_f_op_f32(-639f * -104f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c, var_1.c)))), _wgslsmith_div_f32(421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(max(var_1.c, -1201f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * var_1.c)));
}

