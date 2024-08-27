struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<u32>, 3>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-arg_0.yxx);
}

fn func_3() -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1000f));
    var var_0 = Struct_4(~_wgslsmith_clamp_vec3_u32(~u_input.b, abs(u_input.b), ~u_input.b), vec2<i32>(-5358i, 0i));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(833f)), -1372f, 329f, _wgslsmith_f_op_f32(trunc(-1000f)));
    var var_2 = Struct_3(Struct_2(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false)), vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), false, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x - 792f), 571f) - var_1.yw), Struct_1(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, false, true)), u_input.b.x, -firstLeadingBit(vec3<i32>(0i, var_0.b.x, var_0.b.x))), Struct_1(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), var_0.a.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2734i, var_0.b.x), ~vec3<i32>(-10351i, -1i, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 120f, var_1.x, 1850f), vec4<f32>(global0.x, var_1.x, var_1.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2157f, var_1.x, global0.x, -829f))))))), 4294967295u, Struct_1(select(vec4<bool>(true, false, any(vec4<bool>(false, false, false, false)), false), vec4<bool>(true, false, true, true), false), firstTrailingBit(u_input.c.x), firstTrailingBit((vec3<i32>(var_0.b.x, -17242i, var_0.b.x) << (vec3<u32>(u_input.a, 401u, 4294967295u) % vec3<u32>(32u))) >> (select(u_input.b, u_input.c, false) % vec3<u32>(32u)))));
    var_2 = Struct_3(Struct_2(!any(vec4<bool>(false, false, var_2.a.e.a.x, true)), vec4<bool>(-var_0.b.x != _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.c.x, -40670i, 23966i), vec3<i32>(var_0.b.x, var_0.b.x, 1i)), false, select(false, var_2.d.a.x, var_2.a.d.a.x), !(global0.x >= global0.x)), global0.yx, Struct_1(!vec4<bool>(true, true, false, var_2.d.a.x), _wgslsmith_sub_u32(~var_0.a.x, 0u), var_2.d.c), var_2.d), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.b, _wgslsmith_f_op_vec4_f32(-var_2.b), var_2.a.d.a.x)) + vec4<f32>(_wgslsmith_div_f32(var_2.a.c.x, 1483f), _wgslsmith_f_op_f32(abs(-410f)), var_2.b.x, 818f)))), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_0.a.zz, vec2<u32>(var_0.a.x, var_2.c) & var_0.a.zx)), Struct_1(var_2.a.d.a, 43036u, var_2.d.c));
    return var_2.d.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<u32>) -> vec3<f32> {
    global1 = array<vec4<u32>, 3>();
    var var_0 = arg_1.b.x;
    var var_1 = _wgslsmith_clamp_i32(arg_1.b.x, -2572i, arg_1.b.x);
    var_0 = i32(-1i) * -1i;
    var var_2 = Struct_2(func_3(), vec4<bool>(!all(vec3<bool>(true, true, true)), true, _wgslsmith_mod_u32(84707u, u_input.c.x) > arg_0.x, all(vec3<bool>(true, true, true))), global0.xz, Struct_1(vec4<bool>(true, true, true, true), min(_wgslsmith_sub_u32(77533u << (arg_0.x % 32u), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(59153u, 14856u))), arg_0.x & arg_0.x), _wgslsmith_add_vec3_i32(abs(vec3<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), vec3<i32>(1i, -22391i, 8478i))), Struct_1(vec4<bool>(false, true, false, true), firstLeadingBit(~select(u_input.c.x, u_input.a, true)), select(firstTrailingBit(vec3<i32>(1i, 0i, arg_1.b.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, arg_1.b.x, -1i), vec3<i32>(arg_1.b.x, 23033i, arg_1.b.x)), abs(vec3<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x))), false)));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, -2261f, -759f, global0.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1361f, global0.x, global0.x, -1740f), vec4<f32>(353f, 2041f, global0.x, global0.x)))), Struct_1(!vec4<bool>(false, false, var_2.b.x, var_2.a), ~var_2.e.b, -vec3<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)))).x, global0.x, 136f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, -1204f, global0.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-606f, global0.x, 1000f), vec3<f32>(global0.x, -2352f, 1504f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1171f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -538f, global0.x))), any(!vec2<bool>(true, var_0)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -467f))), _wgslsmith_f_op_f32(global0.x + global0.x), -1246f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(226f, 284f, -1613f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2261f, global0.x, global0.x), vec3<f32>(global0.x, -707f, 526f)))))));
    global1 = array<vec4<u32>, 3>();
    let var_1 = Struct_1(vec4<bool>(true || !var_0, all(select(vec4<bool>(true, var_0, var_0, var_0), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0)), !vec4<bool>(var_0, false, false, var_0))), var_0, var_0), ~(max(2566u, ~1u) | u_input.c.x), vec3<i32>(1i, abs(-20929i), i32(-1i) * -1i));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, var_0)) - _wgslsmith_f_op_f32(global0.x - -1158f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1586f * _wgslsmith_div_f32(-454f, global0.x))));
    var var_3 = (global1[_wgslsmith_index_u32(0u, 3u)] << (abs(firstLeadingBit(vec4<u32>(u_input.a, 5324u, var_1.b, u_input.b.x) | global1[_wgslsmith_index_u32(1u, 3u)])) % vec4<u32>(32u))) << ((~global1[_wgslsmith_index_u32(~37453u, 3u)] << (abs(global1[_wgslsmith_index_u32(~u_input.c.x, 3u)] << (reverseBits(vec4<u32>(45390u, 1u, u_input.a, var_1.b)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1862f, var_2.x, _wgslsmith_f_op_f32(312f - -393f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -1292f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 288f))), vec3<f32>(_wgslsmith_f_op_f32(-280f + global0.x), 1492f, global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(global0.x, 205f, -1104f, -1667f), Struct_1(vec4<bool>(var_0, false, var_1.a.x, var_0), u_input.b.x, vec3<i32>(var_1.c.x, var_1.c.x, var_1.c.x)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-109f, var_2.x, -1423f))), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(var_3.x, 68020u), Struct_4(vec3<u32>(var_3.x, 17029u, 4294967295u), var_1.c.xy), vec2<u32>(var_3.x, u_input.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, -1435f, global0.x))))), !var_1.a.x));
    var_3 = global1[_wgslsmith_index_u32(18161u << (_wgslsmith_mult_u32(max(22134u, firstLeadingBit(54678u)), _wgslsmith_dot_vec3_u32(var_3.wwz, var_3.zxw << (min(vec3<u32>(0u, var_1.b, var_3.x), var_3.wxy) % vec3<u32>(32u)))) % 32u), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(global0.x + 1365f), _wgslsmith_f_op_f32(trunc(983f)), var_2.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-555f, global0.x, 695f, 837f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-890f, 1580f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(func_2(var_3.yz, Struct_4(u_input.b, var_1.c.yx), vec2<u32>(18640u, var_1.b))).x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))))));
}

