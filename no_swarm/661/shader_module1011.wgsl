struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(360f - _wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x)))) == -1276f;
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    let var_1 = ~select(vec4<u32>(~_wgslsmith_add_u32(64781u, arg_0.b.x), _wgslsmith_add_u32(0u, arg_0.b.x), 2161u, _wgslsmith_sub_u32(57507u | u_input.b, ~4294967295u)), ~(vec4<u32>(u_input.c.x, 1733u, 0u, u_input.a) | vec4<u32>(arg_0.b.x, 4993u, arg_0.b.x, arg_0.b.x)) | vec4<u32>(abs(u_input.b), _wgslsmith_dot_vec2_u32(arg_0.b, arg_0.b), _wgslsmith_mult_u32(16898u, arg_0.b.x), 0u >> (u_input.b % 32u)), !any(!vec4<bool>(true, false, arg_0.c, var_0)));
    global0 = array<Struct_1, 19>();
    return _wgslsmith_f_op_f32(-arg_0.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: bool) -> vec2<f32> {
    let var_0 = Struct_2(-2147483647i, vec2<u32>(~72502u >> (~(~1u) % 32u), ~10838u), arg_3, vec2<f32>(428f, _wgslsmith_f_op_f32(arg_0.c.x * 757f)));
    var var_1 = !select(select(!select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, arg_0.b), var_0.c), select(vec2<bool>(arg_3, false), !vec2<bool>(true, var_0.c), false), !select(vec2<bool>(arg_0.b, false), vec2<bool>(true, arg_0.b), arg_0.b)), vec2<bool>(var_0.c || false, arg_3), ((var_0.c & arg_3) && false) & !arg_0.b);
    var_1 = select(vec2<bool>(true, var_0.c), vec2<bool>(arg_0.b, true), false);
    var var_2 = !all(!select(!vec3<bool>(false, arg_0.b, arg_0.b), !vec3<bool>(false, false, var_1.x), vec3<bool>(true, true, true)));
    var var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_0.a, var_0.a), arg_1), arg_1, vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 46865i, -1i) << (~55755u % 32u), ~u_input.d & u_input.d, (arg_1.x ^ arg_1.x) ^ countOneBits(-24280i))) >> (~(~firstLeadingBit(vec3<u32>(var_0.b.x, arg_0.a, u_input.b))) % vec3<u32>(32u));
    return arg_0.c;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = !(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), false), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_sub_u32(u_input.b >> (~1u % 32u), ~u_input.a), false, vec2<f32>(1f, _wgslsmith_f_op_f32(func_3(Struct_2(-24756i, u_input.c.yx, true, vec2<f32>(1937f, -532f))))), ~21450u), vec3<i32>(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(2016i, u_input.d, u_input.d)), -vec3<i32>(u_input.d, u_input.d, u_input.d)), firstLeadingBit(u_input.d | -31789i) & -53494i, firstTrailingBit(~_wgslsmith_sub_i32(21628i, -1i))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-181f, -1407f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(237f, 650f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(329f, 310f), vec2<f32>(-628f, -227f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(142f, 1000f))))))), all(vec4<bool>(any(var_0.zx), arg_0 > ~arg_0, true, select(1i <= u_input.d, false, true)))));
    var_0 = vec4<bool>(false, true, !(!(arg_0 > ~38559u)), !var_0.x);
    var var_2 = !any(vec3<bool>(true, var_0.x, all(var_0.xzy)));
    let var_3 = u_input.d;
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 6846u)), firstLeadingBit(u_input.c.yy))), firstLeadingBit(4294967295u)), 19u)];
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    let var_0 = ~vec3<u32>(abs(1u), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(0u, u_input.a), firstTrailingBit(44746u)), 0u);
    let var_1 = arg_1.b & true;
    return ~u_input.c.x;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(306f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1100f, 456f, true))), _wgslsmith_f_op_f32(sign(arg_2)), arg_2))));
    global0 = array<Struct_1, 19>();
    var var_1 = false;
    return Struct_1(23752u, any(vec3<bool>(true, _wgslsmith_div_u32(1u, 3132u) != (u_input.b >> (u_input.b % 32u)), true)), _wgslsmith_f_op_vec2_f32(var_0.yx * var_0.wz), func_5(_wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 10770i), vec2<i32>(1i, arg_0)), vec2<i32>(1i, ~arg_0)), func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.zx, vec2<u32>(u_input.c.x, arg_1.x)), vec2<u32>(15892u, 21291u))), firstLeadingBit(vec4<i32>(u_input.d, arg_0, -2147483647i, 13112i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 73083i, u_input.d, 27388i), vec4<i32>(0i, u_input.d, 2147483647i, -27968i) >> (vec4<u32>(1u, arg_1.x, u_input.c.x, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -2147483647i, 14442i, -1i), vec4<i32>(u_input.d, u_input.d, 0i, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = func_1(u_input.d, ~u_input.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1003f, 362f, true)))))));
    let var_1 = Struct_1(1u, select(_wgslsmith_div_f32(var_0.c.x, func_2(u_input.a).c.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), func_2(func_5(~vec2<i32>(9442i, -3235i), func_2(u_input.b), vec4<i32>(-2147483647i, 15156i, 2147483647i, u_input.d) & vec4<i32>(50539i, -35170i, u_input.d, -1i))).b, func_2(_wgslsmith_div_u32(90131u, ~14652u)).b), _wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(select(var_0.a, 1u >> (var_0.d % 32u), all(vec2<bool>(var_0.b, true))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(63681u, 73119u), u_input.c.xz), 32140u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(-1313i, ~u_input.d, true), ~u_input.b, -select(~vec3<i32>(u_input.d, u_input.d, u_input.d), firstLeadingBit(vec3<i32>(u_input.d, u_input.d, 0i)), var_1.b) & -countOneBits(abs(vec3<i32>(1i, u_input.d, u_input.d))));
}

