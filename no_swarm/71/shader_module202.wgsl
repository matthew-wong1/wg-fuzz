struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 32>;

var<private> global2: array<Struct_3, 5>;

var<private> global3: vec4<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> i32 {
    global0 = Struct_4(Struct_2(-66057i, _wgslsmith_dot_vec4_u32(~arg_0, ~vec4<u32>(arg_0.x, global3.x, 18488u, arg_1)) == countOneBits(~52211u)), firstTrailingBit(countOneBits(global0.b)));
    global0 = Struct_4(Struct_2(abs(1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -73869i), u_input.a.ywz)), true), ~max(vec4<i32>(global0.b.x, 1i, global0.b.x, reverseBits(2147483647i)), countOneBits(-global0.b)));
    let var_0 = 75516u;
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.a.xww, select(vec3<i32>(u_input.a.x, global0.a.a, 0i), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x) & u_input.a.yyy, select(global0.a.b, !global1[_wgslsmith_index_u32(arg_0.x, 32u)], false)) ^ abs(countOneBits(vec3<i32>(1i, 8606i, -8857i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1564f, 317f)))))));
    return 1i;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(global0.a, vec4<i32>(min(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x ^ u_input.a.x), u_input.a.x), func_3(vec4<u32>(~global3.x, 1u, 0u | global3.x, ~global3.x), ~18717u | _wgslsmith_dot_vec2_u32(vec2<u32>(7506u, global3.x), global3.zy)), 1i, 1i));
    var var_1 = select(vec3<bool>(true, global0.a.b, false), select(!select(vec3<bool>(global0.a.b, false, global0.a.b), select(vec3<bool>(true, false, true), vec3<bool>(global4.a.x, false, var_0.a.b), vec3<bool>(var_0.a.b, global1[_wgslsmith_index_u32(global3.x, 32u)], var_0.a.b)), !vec3<bool>(global0.a.b, false, false)), vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 32u)], true, global1[_wgslsmith_index_u32(global3.x, 32u)])), global0.a.b, true), vec3<bool>(!all(global4.a), any(!vec3<bool>(true, false, var_0.a.b)), !any(vec3<bool>(global4.a.x, false, var_0.a.b)))), var_0.a.b);
    let var_2 = global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(global3.x, ~max(global3.x, 16323u))), 5u)];
    let var_3 = min(_wgslsmith_div_u32(~firstLeadingBit(max(global3.x, global3.x)), max(_wgslsmith_dot_vec2_u32(select(vec2<u32>(14340u, 9041u), global3.xy, var_2.a.x), vec2<u32>(global3.x, global3.x)), global3.x)), min(8513u, 8984u));
    let var_4 = abs(vec4<u32>(_wgslsmith_div_u32(24451u, 30094u), 36369u, _wgslsmith_mod_u32(var_3, var_3), 1u) << ((select(vec4<u32>(var_3, var_3, 4294967295u, 1u) ^ vec4<u32>(43569u, 4294967295u, var_3, global3.x), ~vec4<u32>(var_3, 2009u, 1u, global3.x), vec4<bool>(false, false, var_1.x, false)) ^ vec4<u32>(3076u, var_3, ~4294967295u, _wgslsmith_mult_u32(1u, 4294967295u))) % vec4<u32>(32u)));
    return Struct_2(-_wgslsmith_mult_i32(i32(-1i) * -global0.a.a, -(i32(-1i) * -28433i)), ~_wgslsmith_mult_u32(var_4.x, ~var_4.x) > select(~_wgslsmith_clamp_u32(var_3, var_4.x, 4294967295u), ~countOneBits(0u), global4.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = all(global4.a);
    let var_1 = arg_1;
    let var_2 = Struct_3(vec3<bool>(all(global4.a), 27378i <= var_1.a, false));
    let var_3 = arg_0.b & (global0.a.b & !global4.a.x);
    global4 = Struct_1(!(!global4.a));
    return firstLeadingBit(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, _wgslsmith_add_i32(1i, arg_1.a), arg_0.a), vec4<i32>(26031i << (global3.x % 32u), -1i, 1i, 1i << (global3.x % 32u))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = countOneBits(-max(global0.b, -vec4<i32>(-1i, 342i, global0.a.a, u_input.a.x)));
    var var_1 = Struct_2(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, 3972i, var_0.x, u_input.a.x), ~vec4<i32>(-21466i, 9323i, -1587i, -60660i)), func_4(func_2(), func_2())), global4.a.x);
    global1 = array<bool, 32>();
    let var_2 = firstLeadingBit(global3.zz);
    var_1 = func_2();
    return Struct_2(-2147483647i ^ (_wgslsmith_mod_i32(1i, func_3(vec4<u32>(var_2.x, global3.x, 0u, 65583u), 4294967295u)) >> (_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, 4294967295u, 4294967295u), vec4<u32>(global3.x, var_2.x, global3.x, global3.x)), global3.x ^ global3.x) % 32u)), ~abs(_wgslsmith_mult_u32(global3.x, 4294967295u)) == ~reverseBits(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~min(-global0.b.xx, global0.b.xx));
    global0 = Struct_4(func_1(global0.b.wy), u_input.a);
    let var_1 = global0.a;
    let var_2 = !vec2<bool>(var_1.b, var_1.b);
    global2 = array<Struct_3, 5>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1174f, -769f)))))) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-819f, -2112f), 1041f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1512f))));
    var_0 = _wgslsmith_sub_vec2_i32(u_input.a.yx, select(max(global0.b.wz, reverseBits(~vec2<i32>(global0.b.x, var_0.x))), _wgslsmith_mult_vec2_i32(min(vec2<i32>(-1i, 2147483647i), vec2<i32>(9989i, u_input.a.x)), global0.b.zw), global4.a));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1256f, 3956f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.x, -805f), vec2<f32>(-255f, var_3.x))) * vec2<f32>(275f, var_3.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.x, 1000f))), vec2<f32>(var_3.x, var_3.x), select(var_2, global4.a, true))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) + vec2<f32>(-591f, var_3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.wwy >> (~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, 15062u, 4294967295u), global3.yyx), global3.zwx) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_3.x)))) * -352f), -1611f));
}

