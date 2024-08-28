struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

var<private> global1: u32 = 1u;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    var var_0 = ~(-_wgslsmith_div_i32(-13795i, _wgslsmith_mult_i32(~2147483647i, 1i)));
    var_0 = _wgslsmith_mult_i32(countOneBits(u_input.a.x), 1i);
    let var_1 = global0[_wgslsmith_index_u32(60831u, 2u)];
    var_0 = -1i;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -472f)))))))));
    return 0u;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    var var_1 = Struct_2(var_0, arg_3, !(!select(vec4<bool>(arg_3.c.x, false, true, arg_3.c.x), global0[_wgslsmith_index_u32(33938u, 2u)], select(global0[_wgslsmith_index_u32(arg_3.b, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(62022u, 2u)]))), ~select(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(1u, 17999u, arg_0.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 1u, 1u, var_0.a.x), vec4<u32>(arg_3.b, 1u, arg_3.a.x, 27041u)), ~vec4<u32>(0u, 25724u, 0u, 4294967295u)), ~select(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 42681u), vec4<u32>(10755u, var_0.a.x, 4294967295u, 0u), arg_3.c.x), !(!vec4<bool>(arg_3.c.x, var_0.c.x, var_0.c.x, var_0.c.x))));
    var var_2 = _wgslsmith_f_op_f32(1f - arg_2);
    var var_3 = select(vec3<bool>(arg_3.c.x || (!var_1.b.c.x && select(false, true, true)), var_0.c.x, (max(arg_1.x, -2147483647i) == _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, 2147483647i))) || true), !(!(!var_1.c.wwz)), all(global0[_wgslsmith_index_u32(var_1.a.a.x, 2u)]));
    var var_4 = Struct_2(Struct_1(vec2<u32>(92111u, select(1u, 0u, var_0.c.x) & (arg_0.x & 0u)), 43551u, vec2<bool>(false, !arg_3.c.x)), arg_3, global0[_wgslsmith_index_u32(~var_0.a.x, 2u)], ~(vec4<u32>(abs(var_1.a.a.x), abs(arg_3.a.x), _wgslsmith_add_u32(arg_0.x, arg_3.a.x), 4294967295u) << ((vec4<u32>(arg_0.x, arg_3.b, var_1.d.x, var_1.a.a.x) & vec4<u32>(1u, arg_0.x, 17109u, var_0.a.x)) % vec4<u32>(32u))));
    return ~(~(~var_4.a.b));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.a.b, arg_1.d.x, ~(~0u)), abs(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~arg_1.d.ywz, vec3<u32>(arg_1.b.b, arg_1.d.x, arg_1.a.b) ^ arg_1.d.wzw), arg_1.d.wxw)));
    global1 = 90291u;
    global1 = _wgslsmith_sub_u32(func_2(max(-vec4<i32>(-2147483647i, arg_0.x, arg_0.x, u_input.a.x), vec4<i32>(-782i, 41406i, arg_0.x, 2147483647i) >> (arg_1.d % vec4<u32>(32u))), vec3<bool>(true, arg_1.a.c.x, false), ~(~var_0.x)), ~arg_1.d.x) << (_wgslsmith_add_u32(func_3(~vec3<u32>(0u, 0u, var_0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-24828i, 41241i, 24336i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 1i, arg_0.x), vec3<i32>(57428i, 2147483647i, u_input.a.x))), 1f, arg_1.a), ~(~var_0.x)) % 32u);
    let var_1 = arg_1.b;
    var var_2 = -_wgslsmith_sub_i32(arg_0.x, u_input.a.x);
    return ~select(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_1.a.x, 28473u) << (vec4<u32>(var_0.x, 1u, 7730u, 0u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, var_0.x, 22510u) << (vec4<u32>(arg_1.b.a.x, var_0.x, var_1.b, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.b, arg_1.b.b, 6180u, var_1.a.x), arg_1.d)), ~firstLeadingBit(arg_1.d), arg_1.a.c.x && false);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(1475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(253f)) + _wgslsmith_f_op_f32(f32(-1f) * -1019f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -485f)))), _wgslsmith_f_op_f32(select(256f, -905f, all(select(vec4<bool>(arg_1.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x), vec4<bool>(false, false, arg_1.c.x, false), arg_1.a.c.x)) && false)), _wgslsmith_div_f32(-746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(884f))))));
    var var_1 = var_0;
    global1 = arg_1.a.a.x;
    global1 = ~57339u;
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, u_input.a.x) << (~1u % 32u), arg_3), ~(-50186i), _wgslsmith_add_i32(~(~1i), -9789i));
    return arg_0.zx & min(arg_0.xx & vec2<u32>(38667u, arg_1.a.a.x), vec2<u32>(1u, func_3(_wgslsmith_sub_vec3_u32(arg_1.d.wzz, arg_1.d.wwy), vec3<i32>(var_2, arg_3, u_input.a.x), _wgslsmith_f_op_f32(var_1.x + -444f), arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u) | (~(~vec2<u32>(27001u, 4294967295u)) | firstTrailingBit(vec2<u32>(0u, 0u))), func_4(~_wgslsmith_add_vec4_u32(func_1(vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec2<u32>(1u, 1u), 1u, vec2<bool>(false, true)), Struct_1(vec2<u32>(0u, 0u), 4294967295u, vec2<bool>(true, false)), global0[_wgslsmith_index_u32(4294967295u, 2u)], vec4<u32>(1u, 0u, 5068u, 27391u))), ~vec4<u32>(23923u, 4294967295u, 18901u, 39049u)), Struct_2(Struct_1(vec2<u32>(1u, 4121u), 1u, vec2<bool>(true, true)), Struct_1(vec2<u32>(32213u, 1u), ~71965u, vec2<bool>(true, true)), global0[_wgslsmith_index_u32(~1u, 2u)], ~vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec2<u32>(1u, 1u), 1u, vec2<bool>(select(false, true, true), u_input.a.x > 0i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a) ^ u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(858f, 1031f, -886f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-248f, 1484f, -1543f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-836f, 698f, -1101f), vec3<f32>(1299f, -438f, -1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1328f, 1876f, -222f), _wgslsmith_div_vec3_f32(vec3<f32>(-214f, 1068f, -198f), vec3<f32>(-438f, -847f, -821f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(224f, 819f, 330f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x - var_2.x))) + 606f))));
    let var_4 = ~vec4<u32>(~(~(4294967295u << (var_1.x % 32u))), firstTrailingBit(var_1.x), ~var_1.x, ~12126u | firstLeadingBit(var_1.x));
    var var_5 = vec2<u32>(_wgslsmith_mod_u32(39484u >> (var_4.x % 32u), 4294967295u), var_1.x);
    let var_6 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(2147483647i), u_input.a.x, u_input.a.x), vec3<i32>(max(reverseBits(1i), ~u_input.a.x), u_input.a.x, var_6 ^ countOneBits(-2660i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(f32(-1f) * -1359f))), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -272f), max(~_wgslsmith_sub_vec2_u32(~vec2<u32>(var_4.x, var_5.x), var_4.ww), var_4.yx));
}

