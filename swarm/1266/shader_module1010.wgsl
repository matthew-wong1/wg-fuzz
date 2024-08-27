struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<u32> = vec4<u32>(6616u, 1u, 1u, 6413u);

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_4, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> f32 {
    var var_0 = vec4<f32>(-230f, arg_0.e.b.x, _wgslsmith_f_op_f32(step(-719f, 495f)), -824f);
    let var_1 = Struct_3(vec4<bool>(arg_0.e.a, true, all(vec3<bool>(arg_0.e.a, u_input.c == arg_0.a.x, true)), true), 936f);
    var var_2 = arg_0.e;
    global1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global1.x, _wgslsmith_clamp_u32(select(4294967295u, arg_1, false), ~29611u, ~u_input.d), _wgslsmith_dot_vec2_u32(abs(arg_0.c.zy), vec2<u32>(45934u, global0.x))), u_input.a);
    let var_3 = ~(-select(vec3<i32>(-arg_0.d.x, arg_0.a.x, _wgslsmith_div_i32(arg_0.a.x, 2147483647i)), -select(vec3<i32>(-76i, 6874i, arg_0.d.x), arg_0.a.zzz, false), var_1.a.wyy));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(957f, arg_0.e.b.x)))) + var_1.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_0.x)))))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_3(vec4<bool>(1u == global1.x, all(!(!vec4<bool>(arg_2, false, arg_2, false))), true, arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(arg_0, arg_1.x, arg_1.x, arg_0), 16577u, vec3<u32>(u_input.a.x, global0.x, 0u), u_input.b, Struct_2(arg_2, vec2<f32>(arg_3.x, arg_3.x))), _wgslsmith_clamp_u32(global0.x >> (15360u % 32u), 4294967295u, ~45236u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f * arg_3.x)) + arg_3.x)));
    global2 = _wgslsmith_mult_u32(global1.x, ~_wgslsmith_mod_u32(min(global0.x, 25986u), 0u) | ~(~1u));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~32874u, _wgslsmith_sub_u32(firstLeadingBit(u_input.e), 10159u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 14695u, u_input.d), global1.yzz, vec3<u32>(1u, global0.x, 1u) >> (vec3<u32>(0u, global1.x, global0.x) % vec3<u32>(32u)))), 27u)];
    global0 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(_wgslsmith_mult_u32(11213u, global1.x), 1u)), ~(~(global1.ww & global1.wx)));
    let var_2 = any(select(select(!vec2<bool>(true, arg_2), vec2<bool>(true, true), all(!var_0.a.yzy)), select(!var_0.a.yx, vec2<bool>(true, true), var_0.a.yx), var_0.a.zx));
    return global3[_wgslsmith_index_u32(countOneBits(~reverseBits(71372u)), 27u)];
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b * arg_1.e.b) * _wgslsmith_f_op_vec2_f32(exp2(arg_1.e.b))), arg_1.e.b);
    let var_1 = _wgslsmith_mod_u32(~min(49641u, 1u), _wgslsmith_sub_u32(~(53351u ^ arg_1.c.x), ~(~(arg_1.b & 0u))));
    var var_2 = func_2(_wgslsmith_dot_vec3_i32(arg_1.a.wxw, ~(~(-vec3<i32>(arg_1.d.x, -1i, arg_1.d.x)))), u_input.b, false, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.x, var_0.x, 1101f), vec3<f32>(arg_0, -1000f, arg_0), arg_2.a))))))).e;
    let var_3 = Struct_4(arg_1.a, ~62345u, ~global1.wzx, -u_input.b, arg_2);
    var var_4 = u_input.b << (global1.wz % vec2<u32>(32u));
    return 1i;
}

fn func_1(arg_0: vec2<i32>) -> vec4<f32> {
    var var_0 = -1i;
    let var_1 = _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(arg_0.x & ~(-2147483647i), func_4(_wgslsmith_f_op_f32(-1482f - 928f), func_2(u_input.c, arg_0, false, vec3<f32>(-1629f, 889f, 750f)), Struct_2(false, vec2<f32>(1527f, 641f)), ~global1.wxz))), vec2<i32>(-48912i, reverseBits(-77i)), arg_0);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(131f * 264f)))))), ~countOneBits(~_wgslsmith_clamp_u32(global0.x, global0.x, 2189u)));
    let var_3 = func_2(reverseBits(~((arg_0.x >> (5909u % 32u)) | 34010i)), min(-_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, -102930i), arg_0), _wgslsmith_div_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(var_1, vec2<i32>(-43591i, arg_0.x)))) << (u_input.a.zw % vec2<u32>(32u)), ~global1.x >= 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a, -742f, -216f))) * vec3<f32>(_wgslsmith_div_f32(var_2.a, 1229f), 1000f, -1142f))));
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, u_input.e, 0u, _wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.a.x, global1.x), 1u)), ~u_input.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.b.x, 1237f, -300f, var_3.e.b.x)), vec4<f32>(770f, 573f, 1541f, -418f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(264f, var_3.e.b.x, 457f, var_3.e.b.x), vec4<f32>(1000f, 2708f, 755f, 371f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1469f, var_2.a, -586f, var_2.a), vec4<f32>(-526f, 216f, var_2.a, 567f), vec4<bool>(var_3.e.a, var_3.e.a, false, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.a.wx, global1.zw, ~global1.zz));
    let var_0 = _wgslsmith_div_u32(1u | u_input.d, abs(~(~43857u) << ((global0.x & u_input.a.x) % 32u)));
    var var_1 = 4294967295u;
    let var_2 = Struct_2(false, vec2<f32>(-162f, _wgslsmith_f_op_f32(f32(-1f) * -780f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(i32(-1i) * -23593i)) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(16764i, 0i), u_input.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(u_input.c, u_input.b.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1083f, _wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(u_input.c, 5907i))).x), _wgslsmith_f_op_vec4_f32(func_1(u_input.b))), !var_2.a)), _wgslsmith_clamp_vec3_u32(global1.wxy, vec3<u32>(reverseBits(4294967295u), ~countOneBits(global1.x), ~(~0u)), global1.xwx));
}

