struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(4294967295u, 51889u, 1u), vec3<u32>(45290u, 0u, 15536u), vec3<u32>(3572u, 0u, 1u), vec3<u32>(58868u, 31235u, 1u), vec3<u32>(0u, 26335u, 4294967295u), vec3<u32>(1u, 0u, 33511u), vec3<u32>(0u, 0u, 52642u), vec3<u32>(0u, 0u, 1u), vec3<u32>(23609u, 0u, 4294967295u), vec3<u32>(74397u, 1u, 38137u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 1u, 1384u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 1u, 16360u), vec3<u32>(4294967295u, 68653u, 1u), vec3<u32>(4294967295u, 64433u, 53942u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 20855u, 6556u), vec3<u32>(4294967295u, 4294967295u, 71337u), vec3<u32>(36604u, 0u, 41322u), vec3<u32>(94539u, 29448u, 43317u), vec3<u32>(73201u, 4294967295u, 4294967295u), vec3<u32>(28254u, 9194u, 0u), vec3<u32>(69218u, 14840u, 0u), vec3<u32>(4294967295u, 45347u, 28528u));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(57646u, 27954u, 4294967295u), 0i, vec3<i32>(2147483647i, -29749i, -1i)), vec2<f32>(-1121f, 2051f), Struct_1(vec3<u32>(66793u, 39497u, 47949u), -1i, vec3<i32>(-1i, -1i, 42617i)), 437f);

var<private> global2: f32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = global1.c;
    global0 = array<vec3<u32>, 25>();
    let var_1 = false;
    global0 = array<vec3<u32>, 25>();
    var var_2 = select(select(!select(!vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, var_1)), select(select(vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, true)), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), var_1)), vec2<bool>(false, !var_1), any(select(vec2<bool>(var_1, false), vec2<bool>(true, false), vec2<bool>(var_1, false)))), var_0.a.x != 4294967295u), vec2<bool>(true, var_1), (var_1 || all(!vec2<bool>(var_1, true))) && !all(!vec2<bool>(var_1, var_1)));
    return firstTrailingBit(~var_0.a.x);
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(u_input.a, i32(-1i) * -1i, vec3<i32>(_wgslsmith_div_i32(-1i, global1.a.c.x) & 2147483647i, (global1.a.c.x | 8423i) | -11679i, u_input.e.x)), vec2<f32>(global1.b.x, global1.b.x), Struct_1(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.c, 4917u), vec3<u32>(11465u, global1.a.a.x, 4294967295u), vec3<u32>(4294967295u, 4294967295u, u_input.a.x)), _wgslsmith_clamp_i32(i32(-1i) * -55581i, -2147483647i, ~u_input.b), -(~_wgslsmith_clamp_vec3_i32(global1.a.c, vec3<i32>(global1.a.c.x, 35467i, global1.a.c.x), vec3<i32>(2147483647i, -54430i, global1.c.b)))), _wgslsmith_f_op_f32(-global1.b.x));
    var var_1 = ~firstTrailingBit(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.a.x, 9922u, 17211u, var_0.a.a.x), vec4<u32>(15291u, u_input.a.x, global1.a.a.x, var_0.c.a.x))));
    global1 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(sign(global1.b)), Struct_1(~vec3<u32>(var_1.x, func_3(global1.b.x, 443f), func_3(430f, var_0.d)), 2147483647i, vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.c.b, 0i)), abs(vec2<i32>(u_input.b, global1.a.c.x))), -2147483647i, _wgslsmith_sub_i32(~37487i, _wgslsmith_clamp_i32(var_0.a.c.x, -6540i, global1.c.c.x)))), -1000f);
    var var_2 = -2147483647i << (0u % 32u);
    var var_3 = Struct_2(Struct_1(var_1.yzw, -(3418i ^ global1.a.c.x) & 24858i, _wgslsmith_mult_vec3_i32(var_0.a.c, reverseBits(vec3<i32>(u_input.e.x, -35832i, 22097i))) ^ select(global1.c.c, select(u_input.e, vec3<i32>(-1i, -2147483647i, -4507i), true), vec3<bool>(true, true, true))), vec2<f32>(var_0.d, _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d), global1.d, true)))), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~49123u, 62442u, ~0u), var_0.c.a, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(87725u, 47232u, 86u), u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 125491u))), countOneBits(global1.a.c.x), vec3<i32>(var_0.a.b, 0i, _wgslsmith_div_i32(max(u_input.d, var_0.c.b), -18433i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.x)) - _wgslsmith_f_op_f32(round(var_0.d))));
    return u_input.a.x != reverseBits(_wgslsmith_sub_u32(global1.a.a.x, min(var_0.c.a.x, var_0.c.a.x) >> (50379u % 32u)));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = global1.a;
    let var_1 = var_0.a.x;
    global2 = global1.d;
    let var_2 = ~firstLeadingBit(u_input.c & _wgslsmith_sub_u32(var_0.a.x << (110721u % 32u), var_0.a.x));
    return func_2();
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = Struct_2(Struct_1(vec3<u32>(~1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(116540u, 51769u, global1.a.a.x, var_0.a.x), vec4<u32>(global1.c.a.x, arg_1.a.x, global1.a.a.x, var_0.a.x))), 57577u), global1.c.b, abs(vec3<i32>(countOneBits(arg_1.c.x), -45042i, _wgslsmith_add_i32(4700i, var_0.c.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(166f, arg_0.x) * _wgslsmith_f_op_vec2_f32(exp2(global1.b))), arg_0), vec2<f32>(557f, global1.d)), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2185f, 604f))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 25>();
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(select(global1.b, _wgslsmith_f_op_vec2_f32(global1.b + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global1.b, global1.b, vec2<bool>(true, true)))))), vec2<bool>(select(func_1(Struct_1(vec3<u32>(27233u, global1.a.a.x, global1.a.a.x), -44195i, global1.a.c)), false, true), false))), global1.a, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(-56799i, 1i, -2933i, global1.c.c.x)), ~(vec4<i32>(u_input.d, -1i, 1i, -78209i) << (vec4<u32>(u_input.a.x, global1.a.a.x, global1.c.a.x, 59533u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, i32(-1i) * -24956i, u_input.d, 1i), select(vec4<i32>(global1.c.b, -2147483647i, u_input.e.x, global1.c.c.x), vec4<i32>(global1.a.c.x, global1.c.c.x, 0i, 0i), true) | -vec4<i32>(0i, -1i, -1i, 1i))));
    global0 = array<vec3<u32>, 25>();
    var var_1 = Struct_2(func_4(var_0.b, var_0.c, vec4<i32>(var_0.a.b, var_0.a.c.x, -35943i, countOneBits(firstLeadingBit(global1.a.b)))).c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.d)), global1.b.x)), global1.d), Struct_1(~(~var_0.a.a >> (select(vec3<u32>(75508u, global1.a.a.x, 4631u), vec3<u32>(global1.a.a.x, u_input.c, 1u), vec3<bool>(false, true, true)) % vec3<u32>(32u))), -_wgslsmith_mult_i32(global1.c.b, u_input.d), firstLeadingBit(global1.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)));
    global1 = Struct_2(func_4(var_0.b, func_4(_wgslsmith_f_op_vec2_f32(var_1.b - vec2<f32>(var_1.d, 1165f)), Struct_1(~var_1.a.a, 1i, vec3<i32>(global1.a.c.x, var_0.a.c.x, -19156i)), vec4<i32>(global1.a.c.x, -1i, u_input.d, var_0.c.b) | (vec4<i32>(-1i, var_1.c.b, var_1.a.b, -2147483647i) >> (vec4<u32>(43556u, 28277u, var_0.a.a.x, u_input.c) % vec4<u32>(32u)))).a, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global1.a.b, var_0.a.b, -1i, -60011i), vec4<i32>(42951i, global1.a.b, i32(-1i) * -14948i, countOneBits(-64904i)))).a, _wgslsmith_div_vec2_f32(global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -731f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, global1.d))) * vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1066f)))), Struct_1(~global0[_wgslsmith_index_u32(0u, 25u)], -68832i, -(~(-u_input.e))), _wgslsmith_f_op_f32(983f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1233f)))));
    global1 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.b), _wgslsmith_f_op_vec2_f32(exp2(var_0.b)), true)))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b * var_1.b) + _wgslsmith_f_op_vec2_f32(var_1.b + var_1.b)), global1.a, select(select(vec4<i32>(2147483647i, -98644i, 2147483647i, global1.a.c.x), vec4<i32>(-2147483647i, -1i, u_input.d, var_1.c.c.x), vec4<bool>(true, true, false, false)), abs(vec4<i32>(var_0.c.b, u_input.b, var_0.c.b, global1.a.c.x)), true)).a, _wgslsmith_mod_vec4_i32(-(vec4<i32>(global1.a.c.x, 0i, 4436i, -11112i) << (vec4<u32>(var_0.c.a.x, 14115u, global1.c.a.x, 4294967295u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.a.c, vec3<i32>(-57749i, u_input.e.x, -51743i)), 0i, 0i, select(var_0.c.c.x, global1.a.c.x, false)))).c, _wgslsmith_f_op_vec2_f32(-var_0.b), Struct_1(~var_1.a.a, u_input.d, vec3<i32>(firstTrailingBit(-59653i) & ~23188i, u_input.b, firstLeadingBit(u_input.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - global1.b.x) - 1000f)))));
    var var_2 = 15074i;
    global0 = array<vec3<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global1.b))), Struct_1(~var_0.c.a, _wgslsmith_sub_i32(-1i, u_input.e.x), min(var_0.a.c, var_0.a.c)), vec4<i32>(1i, 1i, u_input.e.x, var_0.a.c.x)).b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.b))), vec2<bool>(func_1(var_0.c), true))));
}

