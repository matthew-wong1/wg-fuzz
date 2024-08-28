struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1365f;

var<private> global1: Struct_2;

var<private> global2: Struct_4 = Struct_4(-1i, vec3<bool>(true, false, true), -1089f, 696f, vec4<bool>(false, false, false, false));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(805f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(select(1669f, 924f, true))))))));
    global2 = Struct_4(6393i, !global2.b, -559f, _wgslsmith_f_op_f32(1060f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) + _wgslsmith_f_op_f32(global1.a * -210f))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)) >= _wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(-global1.a)), !any(!vec2<bool>(global2.e.x, global2.e.x)), _wgslsmith_div_u32(u_input.a.x, 4294967295u) != ~(~4294967295u), !global2.e.x));
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32(u_input.b.yyw, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, u_input.c) & ~vec3<u32>(4294967295u, u_input.b.x, 3943u), select(vec3<u32>(u_input.b.x, 1u, 45243u), vec3<u32>(49784u, u_input.a.x, u_input.c), vec3<bool>(global2.e.x, global2.e.x, false)))), vec2<i32>(0i, _wgslsmith_mod_i32(19507i, 2147483647i) >> (~u_input.b.x % 32u)) << (u_input.a.xw % vec2<u32>(32u)), 14405u, u_input.a);
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(932f)), 121f) + _wgslsmith_f_op_f32(-global2.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.c * global1.a), 809f)) * _wgslsmith_f_op_f32(f32(-1f) * -1062f))));
}

fn func_3() -> i32 {
    var var_0 = !(!any(global2.e));
    var var_1 = ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 2601u, 51274u), min(vec3<u32>(4294967295u, u_input.b.x, 496u), u_input.b.yyy), vec3<u32>(4294967295u, 51407u, u_input.a.x)) ^ _wgslsmith_add_vec3_u32(u_input.b.yzw | vec3<u32>(0u, 81412u, u_input.c), vec3<u32>(1u, u_input.c, 0u)));
    global2 = Struct_4(9069i, !global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-925f, global1.a)) + _wgslsmith_f_op_f32(-1068f * 525f)))), _wgslsmith_f_op_f32(-global2.c), vec4<bool>(select(true, global2.b.x, all(!global2.e.wxw)), false, any(global2.b), true));
    var var_2 = true;
    var var_3 = min(_wgslsmith_dot_vec4_i32(-select(vec4<i32>(-1i, global2.a, global2.a, 48743i) | vec4<i32>(global2.a, global2.a, global2.a, 2147483647i), abs(vec4<i32>(-2147483647i, global2.a, 1i, -20228i)), vec4<bool>(global2.b.x, global2.b.x, false, false)), _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.a, -20809i, -25482i, 23291i), vec4<i32>(47491i, 44276i, -1i, global2.a))), select(vec4<i32>(-1i, 1i, global2.a, global2.a), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.a, -50586i, global2.a, global2.a), vec4<i32>(global2.a, global2.a, 1i, -33421i)), vec4<bool>(global2.e.x, global2.b.x, false, global2.e.x)))), abs(~global2.a));
    return 34865i;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> vec2<bool> {
    let var_0 = Struct_3(0u, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.a, -23790i, 11347i, 0i), vec4<i32>(-2147483647i, global2.a, global2.a, global2.a)), reverseBits(vec4<i32>(-2147483647i, 1i, arg_2, arg_2))), min(-arg_2, 3833i)), -(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.a, global2.a), vec2<i32>(arg_2, global2.a)) ^ ~vec2<i32>(arg_2, global2.a))), _wgslsmith_mod_u32(arg_0, 4294967295u) & 34542u, firstTrailingBit(u_input.b));
    global1 = func_2();
    var var_1 = _wgslsmith_add_i32(func_3(), ~countOneBits(var_0.b.x));
    let var_2 = global2.e.ywx;
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1415f), -245f)));
    return vec2<bool>(false, all(global2.e.zyz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec2<bool>(all(vec4<bool>(global2.b.x, true, global2.b.x, true)), all(global2.e.yxz)), !(!global2.b.zz), global2.b.x), select(func_1(u_input.c, !global2.e, global2.a), select(select(global2.e.xx, global2.b.xx, true), !select(vec2<bool>(false, global2.e.x), vec2<bool>(false, global2.b.x), global2.e.yz), !func_1(24360u, vec4<bool>(global2.b.x, true, global2.e.x, true), global2.a)), select(global2.e.wx, !vec2<bool>(true, global2.b.x), !(!vec2<bool>(false, global2.b.x)))), !(all(global2.b) || global2.b.x));
    var var_1 = global2.c;
    var var_2 = _wgslsmith_f_op_f32(func_2().a * global1.a);
    let var_3 = !vec3<bool>(true, !select(true, false, global2.e.x) & func_1(countOneBits(80688u), vec4<bool>(true, var_0.x, false, global2.e.x), -global2.a).x, global2.b.x);
    var var_4 = min(global2.a << (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-23434i, global2.a, global2.a) & (vec3<i32>(-2147483647i, global2.a, global2.a) << (vec3<u32>(4906u, 50736u, u_input.c) % vec3<u32>(32u)))), ~countOneBits(firstLeadingBit(vec3<i32>(global2.a, 0i, 1i)))));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a, global2.c), vec2<f32>(-665f, global1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-479f, global1.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, global2.d, -906f) + vec3<f32>(global1.a, -372f, global2.c))))));
}

