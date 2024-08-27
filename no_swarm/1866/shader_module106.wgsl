struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: Struct_1;

var<private> global2: vec2<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<i32>) -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(sign(2046f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.c.x - -1111f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), 852f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))))));
    var var_1 = 1i;
    var_1 = arg_0.x;
    global0 = array<bool, 32>();
    return vec2<i32>((i32(-1i) * -58312i) | min(~(-arg_0.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(26124i, global2.x, global2.x), reverseBits(2147483647i))), 22072i);
}

fn func_2(arg_0: i32) -> f32 {
    global2 = vec2<i32>(max(1i, global1.a), 20395i);
    let var_0 = true;
    global2 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(-global1.d.zy) | ~(~global1.d.wz), max(vec2<i32>(_wgslsmith_sub_i32(global2.x, -1i), -(~global1.d.x)), ~global1.d.yz), firstTrailingBit(global1.d.zz));
    global2 = max(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, global2.x), global1.d.wy), func_3(global1.d.zw)) & _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -34041i), vec2<i32>(arg_0, 0i)), vec2<i32>(24847i, -18318i)), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-arg_0, global2.x), ~global1.d.x), _wgslsmith_clamp_i32(-40300i, global1.d.x, global2.x)));
    global0 = array<bool, 32>();
    return -870f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>) -> bool {
    var var_0 = Struct_2(297f, ~(~23103u), global2.x < (global2.x << (u_input.a.x % 32u)), Struct_1(1i, _wgslsmith_f_op_f32(135f - _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(arg_0.b - 837f))), vec2<f32>(-1850f, arg_2.x), reverseBits(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(1i, global1.a, global1.a, -1i)), select(global1.d, vec4<i32>(global2.x, global1.d.x, global2.x, global2.x), false))), true), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + -536f) - arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-755f + arg_2.x))))));
    global0 = array<bool, 32>();
    return arg_0.e;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2) -> vec4<u32> {
    global2 = abs(abs(countOneBits(vec2<i32>(arg_1.a.d.a, arg_2.d.a))));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    var var_0 = vec3<bool>(!(!(!(!global1.e))), func_4(arg_1.b, !select(select(vec2<bool>(arg_2.c, global0[_wgslsmith_index_u32(9665u, 32u)]), vec2<bool>(true, true), vec2<bool>(true, arg_1.b.e)), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global1.e), arg_1.a.d.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(158f, _wgslsmith_f_op_f32(-arg_2.d.c.x), _wgslsmith_f_op_f32(func_2(7636i))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.a)), global1.c.x, 129f))), global1.e);
    var_0 = !select(vec3<bool>(arg_1.a.c, !(!global0[_wgslsmith_index_u32(arg_2.b, 32u)]), arg_1.a.c), vec3<bool>(global1.e, false, global0[_wgslsmith_index_u32(0u, 32u)]), !vec3<bool>(false, 1u >= arg_2.b, any(var_0.xx)));
    return max(abs(~(~vec4<u32>(arg_2.b, 13168u, arg_2.b, u_input.a.x)) >> (((vec4<u32>(50351u, arg_2.b, arg_1.a.b, arg_1.a.b) >> (vec4<u32>(u_input.a.x, 5972u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(0u, 0u, 70719u, 64291u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(countOneBits(reverseBits(26494u)), _wgslsmith_sub_u32(4294967295u, abs(4294967295u)), ~(~0u) << (arg_2.b % 32u), arg_1.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 80921u), vec4<u32>(4294967295u, 0u, u_input.a.x, 1u)), ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 87175u, u_input.a.x)), ~u_input.a.x), _wgslsmith_mod_vec4_u32(func_1(global1.c.x, Struct_4(Struct_2(global1.c.x, u_input.a.x, true, Struct_1(25303i, global1.b, vec2<f32>(-272f, 950f), global1.d, false), global1.c), Struct_1(global2.x, global1.b, global1.c, vec4<i32>(-16323i, global1.d.x, -21006i, -2147483647i), global1.e)), Struct_2(1000f, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], Struct_1(68194i, global1.b, global1.c, vec4<i32>(-58464i, -55734i, global2.x, -1i), global1.e), vec2<f32>(-422f, global1.c.x))), ~vec4<u32>(u_input.a.x, u_input.a.x, 79075u, 1u)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), false))), ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(38468u, u_input.a.x, u_input.a.x, 6577u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x)), vec4<u32>(14741u, u_input.a.x, u_input.a.x, 0u)), vec4<bool>(false, any(select(vec4<bool>(false, global1.e, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(30060u, 32u)], global1.e, false), vec4<bool>(true, true, false, false))), true, -1000f <= global1.b)), ~min(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.a.x, 26769u, 2867u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 17495u, 15375u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 68709u, u_input.a.x))), func_1(global1.c.x, Struct_4(Struct_2(-364f, 1u, global0[_wgslsmith_index_u32(30328u, 32u)], Struct_1(18043i, -1090f, vec2<f32>(1000f, global1.b), vec4<i32>(global1.a, 12419i, global2.x, -7594i), global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<f32>(-391f, global1.c.x)), Struct_1(global1.d.x, -1659f, global1.c, vec4<i32>(-19184i, 1i, global1.a, global2.x), global0[_wgslsmith_index_u32(64295u, 32u)])), Struct_2(-1331f, u_input.a.x, global1.e, Struct_1(-2147483647i, global1.c.x, vec2<f32>(global1.b, global1.c.x), vec4<i32>(global2.x, global1.d.x, 9556i, global1.d.x), global1.e), vec2<f32>(-1120f, global1.c.x)))));
    global2 = vec2<i32>(global2.x, i32(-1i) * -_wgslsmith_add_i32(global1.d.x ^ 44972i, 2147483647i));
    global0 = array<bool, 32>();
    var var_1 = any(select(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(4393u, 32u)], global1.e, global1.e), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], true), false), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, global1.e, false, true), global0[_wgslsmith_index_u32(4294967295u, 32u)]), (global1.c.x <= global1.c.x) | true), vec4<bool>(all(!vec4<bool>(false, false, false, global1.e)), true, true, any(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 32u)]))), global1.e));
    var var_2 = !any(vec2<bool>(any(select(vec3<bool>(global1.e, global1.e, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(2048u, 32u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))), global1.e));
    let var_3 = true;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_add_i32(global1.a, -1i)), vec2<i32>(~1i, global2.x), vec2<i32>(global1.a, reverseBits(26932i)))), (vec4<u32>(max(u_input.a.x, 9705u), 8919u, ~u_input.a.x, u_input.a.x << (u_input.a.x % 32u)) | _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 53155u, 52638u, u_input.a.x), vec4<u32>(6303u, 20506u, 1u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 15325u)))) | vec4<u32>(u_input.a.x, ~min(u_input.a.x, u_input.a.x), ~(u_input.a.x | 46189u), min(u_input.a.x, ~u_input.a.x)), global1.d);
}

