struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-24266i, -5006i, 2147483647i));

var<private> global2: vec4<f32>;

var<private> global3: array<vec2<i32>, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = arg_1;
    var var_1 = abs(abs(arg_2.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-831f)))), 401f, arg_1.a.d.x, _wgslsmith_f_op_f32(min(-1000f, -1071f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.x - arg_2.c), 1088f, arg_2.e.x, _wgslsmith_f_op_f32(arg_1.a.c * var_0.a.e.x)) + vec4<f32>(_wgslsmith_f_op_f32(min(-247f, arg_1.a.e.x)), 1f, -1000f, -664f))))));
    var var_3 = Struct_4(arg_3.b.x, select(vec3<bool>(_wgslsmith_f_op_f32(-arg_1.a.e.x) < _wgslsmith_f_op_f32(step(var_2.x, arg_2.e.x)), !arg_3.a, any(!vec3<bool>(arg_3.c.x, false, arg_3.a))), !arg_3.c, true));
    global1 = array<vec3<i32>, 1>();
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1710f)))))), var_0.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, var_2.x, 638f) - vec3<f32>(var_0.a.c, var_0.a.c, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1092f, -196f, var_0.a.c)), vec3<bool>(arg_3.b.x, false, false)))))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, 39271i, u_input.b)) | max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c.x) << (vec4<u32>(0u, arg_0.x, u_input.a.x, 36470u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -7564i, 5460i, u_input.c.x), vec4<i32>(-1i, u_input.c.x, u_input.c.x, 1i))), ~abs(arg_0.x) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.x, u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(135f, -500f, arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, arg_1.x)))), global2.xw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(-31620i, Struct_2(Struct_1(vec4<i32>(23380i, u_input.b, -1i, u_input.c.x), 8163u, 1182f, arg_1, vec3<f32>(global2.x, 1634f, global2.x)), vec3<i32>(u_input.b, u_input.b, u_input.c.x), vec3<u32>(33818u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 10342u, arg_0.x), 0u), Struct_1(vec4<i32>(u_input.c.x, 1i, u_input.c.x, 10294i), arg_0.x, arg_1.x, arg_1, vec3<f32>(arg_1.x, -260f, -946f)), Struct_3(arg_2.x, vec2<bool>(false, true), arg_2))))))), ~(vec3<i32>(1i, ~u_input.b, _wgslsmith_div_i32(-78763i, u_input.c.x)) ^ vec3<i32>(~u_input.b, 0i, ~u_input.c.x)), u_input.a.ywz, vec3<u32>(1u, arg_0.x, abs(_wgslsmith_div_u32(~u_input.a.x, arg_0.x))), ~arg_0.x);
    global1 = array<vec3<i32>, 1>();
    var var_1 = select(!vec4<bool>(arg_2.x, true, arg_2.x, arg_3), vec4<bool>(arg_3, all(arg_2), arg_2.x, !(false && arg_3) & true), !vec4<bool>(select(any(arg_2.yz), arg_2.x, 30095i < var_0.a.a.x), false, false, all(arg_2)));
    global3 = array<vec2<i32>, 26>();
    var var_2 = !(arg_2.x || true);
    return 43573i;
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = true;
    var var_1 = true;
    global0 = u_input.a.x;
    var_1 = var_0;
    let var_2 = Struct_1(vec4<i32>(min(0i, i32(-1i) * -1969i), ~func_2(u_input.a.wz, global2.zw, vec3<bool>(true, false, arg_0.c.x), arg_0.b.x), -u_input.b, reverseBits(u_input.b)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, abs(u_input.b), countOneBits(-21672i), i32(-1i) * -60932i), countOneBits(vec4<i32>(u_input.b, 477i, u_input.b, u_input.b) >> (vec4<u32>(u_input.a.x, u_input.a.x, 60188u, 736u) % vec4<u32>(32u))), ~vec4<i32>(-42249i, 1i, u_input.b, u_input.b) & (vec4<i32>(0i, 1i, u_input.c.x, u_input.c.x) << (vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)))), ~(~(~u_input.a.x)), global2.x, global2.xy, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2.x, -656f), -1957f, _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.wzz + global2.zzy) * vec3<f32>(global2.x, 771f, -1192f))))));
    return !select(arg_0.b, vec2<bool>(arg_0.c.x, any(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))), select(select(vec2<bool>(true, true), vec2<bool>(var_0, false), arg_0.c.x), arg_0.c.yz, arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(_wgslsmith_mult_i32(countOneBits(~u_input.c.x), 2147483647i), 1i);
    var var_1 = Struct_4(!all(vec3<bool>(true, u_input.a.x <= 1u, false)), vec3<bool>(all(select(func_1(Struct_3(true, vec2<bool>(true, false), vec3<bool>(false, true, true))), vec2<bool>(true, false), true)), u_input.b >= ~_wgslsmith_sub_i32(-25183i, 1566i), func_1(Struct_3(true, vec2<bool>(true, true), vec3<bool>(false, false, false))).x));
    let var_2 = !select(select(!vec2<bool>(var_1.b.x, false), var_1.b.xy, select(var_1.b.yy, func_1(Struct_3(var_1.a, vec2<bool>(false, var_1.b.x), vec3<bool>(var_1.a, var_1.b.x, true))), var_1.b.x)), !var_1.b.zx, select(select(select(vec2<bool>(false, var_1.a), vec2<bool>(true, var_1.a), vec2<bool>(true, var_1.b.x)), vec2<bool>(var_1.a, true), vec2<bool>(var_1.b.x, var_1.b.x)), vec2<bool>(false, true), var_1.b.yy));
    var var_3 = _wgslsmith_clamp_i32(u_input.c.x, max(abs(u_input.c.x), 0i), -u_input.b);
    let var_4 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.b), i32(-1i) * -46251i, u_input.b, -2147483647i), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 0i, 0i, u_input.b), vec4<i32>(-70073i, -2147483647i, u_input.c.x, 2147483647i), vec4<i32>(u_input.b, 9198i, 0i, u_input.b)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, u_input.c.x))), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1444f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(696f + global2.x))), _wgslsmith_f_op_vec2_f32(-global2.zw), _wgslsmith_div_vec3_f32(vec3<f32>(-1492f, _wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-1630f * -363f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -570f), _wgslsmith_f_op_f32(min(global2.x, global2.x)), _wgslsmith_f_op_f32(-global2.x)))), global1[_wgslsmith_index_u32(max(~u_input.a.x, abs(~34319u)), 1u)] << (abs(u_input.a.yyz ^ vec3<u32>(63483u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), reverseBits(abs(vec3<u32>(44296u, abs(u_input.a.x), 4294967295u))), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x | ~u_input.a.x, u_input.a.x), 0u, _wgslsmith_mult_u32(u_input.a.x ^ u_input.a.x, 0u)), ~4294967295u);
    let var_5 = max(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-var_4.a.a, var_4.a.a), ~(~vec4<i32>(34221i, var_4.b.x, -1i, u_input.c.x))), -60834i, _wgslsmith_div_i32(u_input.c.x, max(var_4.a.a.x, -u_input.c.x))), ~u_input.c);
    var var_6 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~u_input.a, ~u_input.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.wy)) * _wgslsmith_f_op_vec2_f32(-var_4.a.d)))), vec4<i32>(_wgslsmith_div_i32(-_wgslsmith_sub_i32(13947i, var_5.x), -(u_input.b & -2147483647i)), 18694i, ~2147483647i, (var_5.x >> (min(u_input.a.x, u_input.a.x) % 32u)) ^ var_5.x), ~u_input.a);
}

