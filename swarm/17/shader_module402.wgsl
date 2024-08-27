struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32>;

var<private> global2: vec4<i32>;

var<private> global3: vec2<f32> = vec2<f32>(665f, 355f);

var<private> global4: vec3<u32> = vec3<u32>(65905u, 146189u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = ~(~(~(~(vec3<u32>(23240u, global4.x, 4294967295u) >> (vec3<u32>(1u, 13020u, 1u) % vec3<u32>(32u))))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_mod_i32(global2.x, arg_2);
    var var_3 = countOneBits(_wgslsmith_clamp_vec2_u32(firstTrailingBit(global4.zz), vec2<u32>(var_0.x, 4294967295u), ~(~reverseBits(global4.zx))));
    let var_4 = Struct_2(-522f);
    return Struct_2(1000f);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = false;
    global2 = vec4<i32>(_wgslsmith_dot_vec4_i32(~(u_input.b << (_wgslsmith_mod_vec4_u32(vec4<u32>(13278u, 0u, global4.x, global4.x), vec4<u32>(30345u, global4.x, 0u, 0u)) % vec4<u32>(32u))), firstTrailingBit(u_input.b)), firstTrailingBit(-_wgslsmith_add_i32(arg_3.c.x >> (1u % 32u), _wgslsmith_mod_i32(global2.x, -2147483647i))), -max(~global2.x, _wgslsmith_add_i32(1i, global1.x)) << (((~global4.x ^ ~0u) ^ _wgslsmith_sub_u32(~39811u, global4.x)) % 32u), -20050i);
    global4 = _wgslsmith_sub_vec3_u32(~firstLeadingBit(max(vec3<u32>(global4.x, global4.x, 1u), vec3<u32>(global4.x, 0u, 30878u))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global4.x, global4.x), vec3<u32>(global4.x, 4294967295u, global4.x), vec3<u32>(4294967295u, 27123u, global4.x)) >> (countOneBits(vec3<u32>(3044u, global4.x, 22049u)) % vec3<u32>(32u)))) >> (vec3<u32>(global4.x, global4.x, abs(85591u)) % vec3<u32>(32u));
    let var_1 = arg_1;
    let var_2 = arg_3;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_3.a.x))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> vec3<bool> {
    global4 = vec3<u32>(~(0u ^ (global4.x | ~1u)), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(global4.x, _wgslsmith_clamp_u32(4294967295u, 44649u, 63188u), global4.x), 43221u), _wgslsmith_mult_u32(30326u, ~_wgslsmith_mod_u32(~global4.x, 4697u ^ global4.x)));
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-453f, 245f, 414f, 155f), vec4<f32>(136f, arg_2.x, arg_2.x, 842f))), vec4<f32>(arg_2.x, -399f, arg_1.a, arg_2.x)))), ~(~global1.yx ^ -global2.wy) >> (global4.zz % vec2<u32>(32u)), _wgslsmith_sub_i32(reverseBits(u_input.b.x & (global2.x << (4110u % 32u))), -34067i));
    let var_1 = _wgslsmith_f_op_f32(func_3(~(-389i), arg_1, Struct_1(abs(~(-2147483647i))), Struct_3(vec4<f32>(_wgslsmith_div_f32(-1268f, _wgslsmith_f_op_f32(f32(-1f) * -440f)), -697f, -1563f, _wgslsmith_f_op_f32(var_0.a + arg_1.a)), arg_2, arg_0.xx)));
    global0 = false;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 736f, 773f, -584f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-633f, 1130f, -339f, var_1), vec4<f32>(arg_2.x, -671f, 290f, 323f), vec4<bool>(false, false, true, true)))))), _wgslsmith_f_op_vec3_f32(sign(arg_2)), global2.zw);
    return select(vec3<bool>(false, true, true), !select(vec3<bool>(all(vec2<bool>(true, false)), true, select(true, false, false)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(step(-1582f, -1120f)) <= -113f), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), global1.x, -2147483647i), Struct_2(_wgslsmith_f_op_f32(sign(global3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x)))));
    var var_1 = -18890i >> (abs(_wgslsmith_mult_u32(global4.x, abs(_wgslsmith_mod_u32(5336u, global4.x)))) % 32u);
    var var_2 = Struct_1(-7921i);
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, global3.x, global3.x, -236f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1783f, global3.x, 364f, global3.x), vec4<f32>(global3.x, 523f, -630f, global3.x)), var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1382f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(max(-1000f, global3.x))))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xy, ~vec2<i32>(global2.x, global1.x)), ~vec2<i32>(1i, 1i), firstTrailingBit(-reverseBits(vec2<i32>(-21312i, global1.x)))));
    var_2 = Struct_1(max(~(-50938i), u_input.c));
    let var_4 = min(9705i, ~0i) & global2.x;
    let var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_3.a.x, 889f, _wgslsmith_f_op_f32(-525f - _wgslsmith_f_op_f32(-var_3.b.x)))), var_3.a.wyy, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.yy, u_input.a.yy), (vec2<i32>(-442i, global2.x) ^ global1.xy) << (min(abs(vec2<u32>(global4.x, 1u)), abs(vec2<u32>(40691u, global4.x))) % vec2<u32>(32u))));
    global2 = min(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(var_3.c.x, -35097i, 0i, -36197i) & u_input.b), vec4<i32>(firstLeadingBit(1i), var_3.c.x, -1i, firstLeadingBit(var_2.a))), i32(-1i) * -2147483647i, ~(-5041i)), u_input.b);
    var var_6 = -18206i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(1u)), -619f, vec2<u32>(global4.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(countOneBits(global4.zy), min(global4.xx, global4.xz)))));
}

