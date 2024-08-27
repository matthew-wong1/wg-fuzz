struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<f32, 11>;

var<private> global1: vec4<i32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = Struct_1(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, 1i, arg_3), vec3<i32>(global1.x, 2147483647i, 52284i), vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_i32(-global1.wwz, vec3<i32>(-1i, arg_3, arg_3))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(43548i, 2147483647i)), ~vec2<i32>(global1.x, 2147483647i), -global1.zx), ~(global1.xw ^ global1.yw)) | global1.xz);
    var_0 = Struct_1(8268i, min(abs(var_0.b) & (global1.ww & vec2<i32>(arg_3, -16320i)), vec2<i32>(arg_3, global1.x)) & var_0.b);
    var var_1 = Struct_1(var_0.a, firstLeadingBit(vec2<i32>(arg_3, global1.x)));
    var_0 = Struct_1(1i, global1.yw);
    var_0 = Struct_1(~var_0.a, ~vec2<i32>(var_0.a, arg_3));
    return _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f + -1073f) * global0[_wgslsmith_index_u32(firstTrailingBit(~54868u) >> (abs(u_input.a.x >> (u_input.a.x % 32u)) % 32u), 11u)]));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<f32>) -> vec4<i32> {
    global0 = array<f32, 11>();
    global1 = ~select(vec4<i32>(~2147483647i, arg_2, arg_2, arg_2), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, -2147483647i, global1.x, arg_2), vec4<i32>(1i, 0i, global1.x, -18749i)) & abs(vec4<i32>(arg_2, arg_2, arg_2, arg_2)), vec4<bool>(!arg_1.x, true, true, arg_3.x >= 131f)) << ((countOneBits(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(56344u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(1u, 1u, 77772u, 904u)))) << (~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), u_input.a.x, 14072u, 29449u >> (u_input.a.x % 32u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(arg_3.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(869f, global0[_wgslsmith_index_u32(4294967295u, 11u)]), arg_0.zx, true)), arg_3.yx) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_1.x | true, true, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_add_i32(-2147483647i, global1.x))), arg_3.x) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(579f)) + _wgslsmith_f_op_f32(572f + -1000f)), 1030f))));
    let var_2 = all(vec3<bool>(var_0.x, arg_1.x, any(select(vec3<bool>(true, true, true), arg_1, arg_1))));
    return min(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-43782i, global1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -1i, global1.x, 0i), vec4<i32>(1i, -1i, 2147483647i, 2706i)), firstTrailingBit(global1.x), _wgslsmith_div_i32(global1.x, arg_2)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, 30938u, 66624u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 30598u), ~vec4<u32>(u_input.a.x, 34191u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(-global1.x | min(2434i, 13420i), global1.x, (arg_2 & global1.x) & _wgslsmith_div_i32(0i, -2147483647i), global1.x)), countOneBits(~min(vec4<i32>(global1.x, arg_2, arg_2, 0i), vec4<i32>(1i, global1.x, 1i, arg_2)) | (select(vec4<i32>(2147483647i, global1.x, arg_2, global1.x), vec4<i32>(global1.x, 35608i, global1.x, arg_2), true) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global1.x, arg_2, -4853i), vec4<i32>(0i, 1i, -23336i, 0i)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(min(~firstTrailingBit(vec4<u32>(u_input.a.x, 27759u, u_input.a.x, 0u)), ~max(vec4<u32>(22516u, 0u, 6964u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), 23860u, ~u_input.a.x, ~u_input.a.x)), countOneBits(firstTrailingBit(~vec4<u32>(u_input.a.x, 0u, 2059u, 4294967295u))) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x) >> (vec4<u32>(0u, u_input.a.x, 93466u, u_input.a.x) % vec4<u32>(32u)), abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 6558u, 44272u) & vec4<u32>(u_input.a.x, 3813u, u_input.a.x, 4294967295u)));
    global1 = _wgslsmith_mult_vec4_i32(~(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(150f, -120f, 535f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -552f, 1000f)), vec3<bool>(true, true, true), global1.x | -32673i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(409f, arg_1, -130f))) ^ max(vec4<i32>(-512i, 0i, -72944i, -3676i), abs(vec4<i32>(-2147483647i, global1.x, global1.x, arg_0.a)))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_div_i32(global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -3202i), global1.wzy)), -arg_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -2545i), -vec2<i32>(2147483647i, global1.x))), reverseBits(vec4<i32>(arg_0.b.x, global1.x >> (0u % 32u), 0i, global1.x >> (u_input.a.x % 32u)))));
    let var_1 = Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0.b.x, 0i, ~arg_0.a), ~6932i), vec2<i32>(1i, global1.x) >> (max(abs(vec2<u32>(var_0.x, 0u)), vec2<u32>(var_0.x, ~u_input.a.x)) % vec2<u32>(32u)));
    var var_2 = 4294967295u;
    global1 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.x, arg_0.b.x), vec3<i32>(-1458i, 57026i, arg_0.b.x)), countOneBits(13931i), any(vec2<bool>(false, false))), reverseBits(arg_0.a), firstTrailingBit(var_1.a ^ 1i), 0i), vec4<i32>(-1i) * -func_2(vec3<f32>(1522f, global0[_wgslsmith_index_u32(1u, 11u)], arg_1), vec3<bool>(true, true, false), global1.x, vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 11u)], arg_1, arg_1)), vec4<i32>(38907i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-11354i, arg_0.a, arg_0.a), countOneBits(arg_0.a)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), global1.wxw), 65741i));
    return _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, ~var_0.x), countOneBits(firstLeadingBit(u_input.a))), 11u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~32802u, 11u)])))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: bool) -> vec4<bool> {
    let var_0 = 3194i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]) * vec2<f32>(1330f, global0[_wgslsmith_index_u32(0u, 11u)])) * arg_2.xy)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 2261f) + 362f) + 864f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) + -1353f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), 489f)))), global0[_wgslsmith_index_u32(11918u, 11u)]);
    let var_3 = _wgslsmith_f_op_f32(-var_2.x);
    let var_4 = arg_0;
    return vec4<bool>(all(!select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_3, false, true, arg_3), arg_1.x), !vec4<bool>(arg_3, false, arg_3, true), !vec4<bool>(true, arg_3, arg_1.x, true))), true, any(vec2<bool>(arg_3, !(u_input.a.x <= u_input.a.x))), _wgslsmith_mod_i32(var_0, var_4.b.x) != arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(i32(-1i) * -7951i, 2147483647i, firstLeadingBit(global1.x), -19436i);
    let var_0 = any(func_4(Struct_1(~(-global1.x), vec2<i32>(34846i, -21379i) ^ min(global1.wx, global1.zy)), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), all(vec2<bool>(false, false))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global1.x, global1.zw), global0[_wgslsmith_index_u32(u_input.a.x, 11u)])) * _wgslsmith_f_op_f32(ceil(-1284f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-244f, -240f))), 236f), true));
    var var_1 = !func_4(Struct_1(_wgslsmith_mult_i32(-18962i, 28989i), ~(-global1.xx)), !(!(!vec2<bool>(var_0, true))), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), -159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)] - global0[_wgslsmith_index_u32(u_input.a.x, 11u)]) - global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), var_0).zx;
    global0 = array<f32, 11>();
    var var_2 = Struct_1(-70139i, global1.yw);
    var var_3 = Struct_1(-29739i, ~select(global1.zx, var_2.b >> ((vec2<u32>(11104u, u_input.a.x) & u_input.a) % vec2<u32>(32u)), vec2<bool>(var_0, true)));
    let var_4 = Struct_1(-(~2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(16478i, -9773i), -var_3.b) | ~(-_wgslsmith_mod_vec2_i32(var_2.b, vec2<i32>(var_2.b.x, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i));
}

