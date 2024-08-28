struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
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

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<vec3<f32>, 12>;

var<private> global2: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    global1 = array<vec3<f32>, 12>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1121f, 456f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-236f, -1344f)))) + vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -965f), -530f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1350f, 1341f), vec2<f32>(-1000f, -345f))))), global2.a.x && ((u_input.d & 1u) < 48975u)));
    let var_1 = global2.c;
    let var_2 = global2.c;
    global2 = Struct_2(vec4<bool>(global2.a.x, any(!vec4<bool>(false, global2.a.x, global2.a.x, false)), var_0.x > var_0.x, select(true, true, true)), global2.b, Struct_1(~_wgslsmith_add_vec2_u32(var_2.a, vec2<u32>(u_input.b, global2.c.a.x)) ^ abs(firstLeadingBit(vec2<u32>(0u, var_1.a.x))), ~var_1.b, select(_wgslsmith_add_vec4_i32(var_2.c, -global2.c.c), ~(-vec4<i32>(global2.c.d.x, -34762i, global2.b.x, var_1.c.x)), global2.a), vec2<i32>(_wgslsmith_clamp_i32(var_2.c.x, -11303i, ~(-65286i)), _wgslsmith_dot_vec3_i32(~var_2.c.zyw, ~var_1.c.yyw))), vec3<bool>(global2.a.x, global2.a.x, global2.d.x));
    return true;
}

fn func_2() -> i32 {
    let var_0 = select(global2.d.x, global2.d.x, func_3());
    var var_1 = global2.c.b.zwy;
    var var_2 = !(!select(!vec3<bool>(true, global2.a.x, global2.d.x), !global2.a.xzw, global2.a.x));
    global2 = global0[_wgslsmith_index_u32(var_1.x, 8u)];
    var_2 = global2.a.zyy;
    return global2.c.d.x;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = global2.c;
    var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(global2.c.b.yx, ~firstTrailingBit(_wgslsmith_sub_vec2_u32(global2.c.a, u_input.a)), abs(_wgslsmith_mod_vec2_u32(global2.c.b.yx & vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(31614u, 29469u)))), ~abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(48193u, var_0.a.x, 13273u, u_input.b), global2.c.b)), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 1i, global2.c.d.x) << (select(vec3<u32>(u_input.d, 0u, var_0.a.x), var_0.b.zzx, vec3<bool>(global2.a.x, global2.a.x, global2.a.x)) % vec3<u32>(32u)), min(vec3<i32>(29317i, -25431i, 0i), var_0.c.xxx ^ vec3<i32>(-2147483647i, var_0.d.x, global2.c.c.x))), abs(-20789i | global2.c.c.x), -7586i, -(~abs(var_0.c.x))), vec2<i32>(select(0i, 26252i, !(!global2.d.x)), ~var_0.c.x));
    let var_1 = Struct_1(global2.c.b.yw, firstTrailingBit(global2.c.b), firstLeadingBit(reverseBits(var_0.c)), vec2<i32>(func_2() ^ ~global2.c.c.x, -1i));
    global1 = array<vec3<f32>, 12>();
    return var_1;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = all(!global2.d);
    global0 = array<Struct_2, 8>();
    var var_1 = _wgslsmith_f_op_f32(1000f * arg_2);
    var var_2 = -1i;
    var_1 = _wgslsmith_f_op_f32(select(-1128f, -972f, 1i == _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(arg_1.d.x, -52698i, global2.c.c.x, arg_1.c.x)), global2.c.c)));
    return Struct_2(global2.a, global2.b, Struct_1(~vec2<u32>(78834u, 0u) ^ _wgslsmith_mult_vec2_u32(arg_1.b.yy, vec2<u32>(19930u, global2.c.b.x)), arg_1.b, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, arg_1.c.x), ~arg_1.d.x), arg_1.c.x, 29060i, ~min(-1i, 9599i)), -(~global2.b)), vec3<bool>(true, true, all(!global2.d) || all(vec4<bool>(true, var_0, true, global2.d.x))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_3.c.b, ~(_wgslsmith_div_vec4_u32(arg_1.c.b, vec4<u32>(arg_1.c.a.x, 4294967295u, 44103u, global2.c.a.x)) >> ((global2.c.b << ((global2.c.b >> (global2.c.b % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)))), 8u)];
    var var_2 = Struct_2(select(select(!arg_3.a, var_1.a, all(select(vec4<bool>(arg_3.a.x, true, false, arg_3.a.x), arg_1.a, vec4<bool>(true, global2.d.x, false, global2.d.x)))), global2.a, !global2.d.x), ~select(reverseBits(vec2<i32>(arg_3.b.x, arg_3.b.x)), vec2<i32>(var_1.c.c.x, -1i), all(!vec3<bool>(arg_1.d.x, arg_3.a.x, true))), func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, -553f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1759f, -518f) - vec2<f32>(244f, arg_2))))))), select(select(vec3<bool>(all(vec2<bool>(true, var_1.d.x)), false, false), vec3<bool>(all(arg_1.a.wyy), arg_1.a.x, all(arg_1.a)), !var_1.a.x && any(vec4<bool>(var_1.d.x, var_0, arg_3.a.x, arg_3.d.x))), global2.a.xyy, arg_3.a.yww));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2, arg_2)), _wgslsmith_f_op_f32(ceil(1862f))) * arg_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -738f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) + _wgslsmith_f_op_f32(abs(445f)))) * vec3<f32>(919f, arg_2, 1288f));
    let var_4 = _wgslsmith_mult_i32(19674i, -(~var_1.b.x ^ 0i));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(~56292u, 8u)];
    var var_0 = ~(global2.b & max(-vec2<i32>(2147483647i, global2.c.d.x), vec2<i32>(-6044i, -1i) | global2.c.d)) | -firstTrailingBit(global2.c.c.yx);
    let var_1 = ~countOneBits(global2.c.c.xyx);
    var var_2 = vec2<i32>(-var_1.x ^ ~min(var_1.x, i32(-1i) * -30473i), var_1.x);
    global1 = array<vec3<f32>, 12>();
    global0 = array<Struct_2, 8>();
    let x = u_input.a;
    s_output = func_5(vec2<u32>(~reverseBits(67576u), u_input.d), func_4(40574u, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(346f, 1000f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-273f, -2117f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f) - 307f), _wgslsmith_f_op_f32(trunc(-402f)))), Struct_2(func_4((1u >> (global2.c.b.x % 32u)) ^ ~global2.c.a.x, global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1545f * 655f) + 1203f)).a, vec2<i32>(i32(-1i) * -var_1.x, var_2.x), func_4(u_input.c, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1983f, 377f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(921f)))).c, !vec3<bool>(all(vec3<bool>(false, true, global2.d.x)), true, global2.b.x <= 39749i)));
}

