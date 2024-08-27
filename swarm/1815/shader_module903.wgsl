struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 57308u, 4294967295u, 0u), 1612f, vec2<bool>(true, false), vec4<f32>(-395f, 458f, 175f, -1638f));

var<private> global2: array<i32, 5> = array<i32, 5>(1i, -59128i, i32(-2147483648), -6013i, -23895i);

var<private> global3: bool;

var<private> global4: array<vec4<u32>, 3>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = vec4<i32>(~(~(-u_input.a)), global2[_wgslsmith_index_u32(4294967295u, 5u)], ~max(~u_input.a, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, 74139i), vec3<i32>(u_input.a, -44117i, -6081i)), 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.a), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(global1.a.x, 5u)], 1i, global2[_wgslsmith_index_u32(0u, 5u)]), firstLeadingBit(-2147483647i), abs(u_input.a)) ^ ~abs(vec4<i32>(-6554i, 46335i, global2[_wgslsmith_index_u32(global1.a.x, 5u)], 12812i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global1.a.x, 5u)], 32490i, -2147483647i, -1i) << (vec4<u32>(50390u, global1.a.x, 75297u, global1.a.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-5173i, u_input.a, -2147483647i, global2[_wgslsmith_index_u32(20843u, 5u)]), vec4<i32>(0i, -63758i, u_input.a, global2[_wgslsmith_index_u32(global1.a.x, 5u)])))));
    let var_1 = _wgslsmith_sub_i32(-min(-u_input.a, 52419i), ~reverseBits(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(0u, 5u)], u_input.a)));
    return countOneBits(1u);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_1(~(~vec4<u32>(4294967295u, arg_1, ~0u, func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1290f * 2023f)), global1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-413f * global1.d.x) + global1.b), 1150f, _wgslsmith_f_op_f32(global1.b - global1.b), global1.d.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(814f, global1.b, -401f, global1.b), vec4<f32>(global1.d.x, global1.b, global1.b, global1.d.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.d.x, -1036f, -1624f)))));
    global2 = array<i32, 5>();
    global2 = array<i32, 5>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-643f + var_0.d.x))))));
    var_0 = Struct_1(_wgslsmith_sub_vec4_u32(global1.a, abs(_wgslsmith_div_vec4_u32(~vec4<u32>(global1.a.x, 45324u, 33016u, 9766u), select(vec4<u32>(4294967295u, var_0.a.x, 1u, 22190u), vec4<u32>(12905u, 44745u, 0u, 3982u), vec4<bool>(arg_0, true, arg_2.x, var_0.c.x))))), var_0.d.x, select(var_0.c, arg_2.xy, vec2<bool>(!var_0.c.x, var_0.c.x | arg_0)), vec4<f32>(-2275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f)) * _wgslsmith_f_op_f32(ceil(var_1))), 868f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))));
    return firstTrailingBit(~vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(u_input.a, global2[_wgslsmith_index_u32(0u, 5u)])), -_wgslsmith_clamp_i32(0i, global2[_wgslsmith_index_u32(16319u, 5u)], u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global1 = arg_0;
    var var_0 = arg_0;
    global4 = array<vec4<u32>, 3>();
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-arg_0);
    global3 = (global1.a.x << (max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1306u, 273u), _wgslsmith_add_vec2_u32(arg_1.a.xy, arg_1.a.wx))) % 32u)) > firstLeadingBit(~(~1u));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_0, arg_0, -331f)) + _wgslsmith_f_op_vec4_f32(-arg_1.d)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(arg_1.d, arg_1.d, true)))) + arg_1.d)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f - arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))), arg_1.d.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(845f, arg_1.b), global1.d.x, arg_0) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(-1538f)))), -1494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(388f, 1671f)) * _wgslsmith_f_op_f32(467f * _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = func_4(Struct_1(min(global4[_wgslsmith_index_u32(arg_1.a.x | abs(global1.a.x), 3u)], ~global1.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b))))), select(select(vec2<bool>(true, true), vec2<bool>(global1.c.x, false), false), arg_1.c, vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -296f), global1.b, 187f, _wgslsmith_div_f32(var_0.x, 538f))))), -_wgslsmith_mod_vec2_i32(func_2(!global1.c.x, 89726u, !vec3<bool>(arg_1.c.x, true, true)), ~(vec2<i32>(-15768i, global2[_wgslsmith_index_u32(arg_1.a.x, 5u)]) | vec2<i32>(-1i, u_input.a))));
    return func_4(func_4(func_4(Struct_1(global4[_wgslsmith_index_u32(reverseBits(24016u), 3u)], -525f, arg_1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global1.b, 136f, -233f) * global1.d)), -vec2<i32>(-1i, global2[_wgslsmith_index_u32(global1.a.x, 5u)])), ~reverseBits(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(var_2.a.x, 5u)]))), -abs(-countOneBits(vec2<i32>(-28289i, 38162i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a << (_wgslsmith_add_vec4_u32(global1.a, _wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 4294967295u), ~vec4<u32>(12707u, global1.a.x, 16366u, global1.a.x), vec4<u32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x) >> (global1.a % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_div_f32(global1.b, 1101f), !select(select(select(global1.c, vec2<bool>(global1.c.x, global1.c.x), false), vec2<bool>(false, true), global1.c.x), select(vec2<bool>(true, true), !vec2<bool>(global1.c.x, global1.c.x), -1169f == global1.b), true), vec4<f32>(1588f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.d.x, 364f, false)), _wgslsmith_f_op_f32(-global1.d.x)))), -1071f, _wgslsmith_f_op_f32(-640f - _wgslsmith_f_op_f32(f32(-1f) * -180f))));
    var var_0 = !select(!(!vec4<bool>(global1.c.x, false, global1.c.x, false)), select(vec4<bool>(global1.c.x, false, global1.c.x, !global1.c.x), select(select(vec4<bool>(false, true, global1.c.x, global1.c.x), vec4<bool>(false, false, global1.c.x, false), vec4<bool>(global1.c.x, global1.c.x, false, global1.c.x)), !vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x), vec4<bool>(true, true, global1.c.x, global1.c.x)), !(159f < global1.b)), select(global1.a.x << (global1.a.x % 32u), 108090u, !global1.c.x) > 4294967295u);
    global4 = array<vec4<u32>, 3>();
    global1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.b)))))) + global1.b), Struct_1(vec4<u32>(~(~global1.a.x), ~global1.a.x, ~(1u << (1u % 32u)), reverseBits(global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, 563f))))), select(select(global1.c, vec2<bool>(var_0.x, var_0.x), global1.a.x != global1.a.x), !select(vec2<bool>(var_0.x, false), global1.c, var_0.x), vec2<bool>(!var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, _wgslsmith_f_op_f32(-global1.d.x), global1.d.x, _wgslsmith_f_op_f32(-global1.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1.d))))));
    let var_1 = abs(vec3<i32>(u_input.a, ~_wgslsmith_mod_i32(-global2[_wgslsmith_index_u32(global1.a.x, 5u)], global2[_wgslsmith_index_u32(0u, 5u)]), global2[_wgslsmith_index_u32(1u, 5u)]));
    var var_2 = func_4(func_4(func_4(Struct_1(vec4<u32>(1u, global1.a.x, global1.a.x, 0u), _wgslsmith_div_f32(global1.b, 784f), global1.c, _wgslsmith_f_op_vec4_f32(-global1.d)), vec2<i32>(func_2(var_0.x, 17236u, var_0.wyz).x, ~32502i)), ~(var_1.zz | _wgslsmith_mult_vec2_i32(vec2<i32>(45360i, var_1.x), var_1.zx))), vec2<i32>(-16967i, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-365f * 735f), ~_wgslsmith_sub_u32(33135u, var_2.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_2.d.xy)))) * vec2<f32>(-527f, -175f)));
}

