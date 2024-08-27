struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<i32, 3>;

var<private> global2: array<vec2<u32>, 29>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>) -> u32 {
    global1 = array<i32, 3>();
    let var_0 = _wgslsmith_f_op_f32(sign(-488f));
    let var_1 = _wgslsmith_dot_vec4_u32((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u), max(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 22055u), vec4<u32>(15886u, u_input.c.x, u_input.c.x, 4294967295u))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 33829u), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 35136u)), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u)) % vec4<u32>(32u))) ^ ~(vec4<u32>(34318u, u_input.c.x, 49939u, u_input.c.x) | ~vec4<u32>(u_input.c.x, 4294967295u, 8975u, u_input.c.x)), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, 0u, 20840u), vec4<u32>(16773u, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(65974u, 9181u, 71327u, u_input.c.x)))));
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(min(_wgslsmith_sub_i32(arg_0.x, 2147483647i), _wgslsmith_add_i32(-8642i, 0i) & ~global1[_wgslsmith_index_u32(20474u, 3u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(-arg_0.x, arg_0.x), arg_0 ^ vec2<i32>(15332i, 25267i)), 2147483647i, 1i), abs(min(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 1i, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], arg_0.x), vec4<i32>(u_input.b, -2147483647i, -3914i, arg_0.x)), vec4<i32>(8665i, -8581i, arg_0.x, u_input.a))) << (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1, u_input.c.x, u_input.c.x, var_1)), ~vec4<u32>(u_input.c.x, 34172u, 1u, u_input.c.x)) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, arg_1.x) + vec3<f32>(var_0, -217f, var_0)))));
    return firstTrailingBit(u_input.c.x);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global1 = array<i32, 3>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.e.x * arg_0.e.x))) <= 804f;
    let var_1 = -12249i;
    var var_2 = min(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(func_3(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-50353i, -11755i), vec2<i32>(u_input.b, var_1)), min(vec2<i32>(-1i, var_1), vec2<i32>(24594i, global1[_wgslsmith_index_u32(arg_0.c, 3u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.e.zx * vec2<f32>(arg_0.e.x, 714f)))), 3u)], min(-(~1i), i32(-1i) * -1i)), 14821i);
    global1 = array<i32, 3>();
    return Struct_2(arg_0, -(global1[_wgslsmith_index_u32(40072u, 3u)] | var_1), var_1, Struct_1(u_input.b, vec3<u32>(119761u, _wgslsmith_sub_u32(arg_0.c, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(5952u, 29u)], vec2<u32>(arg_0.b.x, 10881u)), ~u_input.c.yy)), u_input.c.x, vec4<bool>(arg_0.d.x, global0.x, all(arg_0.d), any(vec3<bool>(arg_0.d.x, global0.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.e.x, arg_0.e.x, 841f, arg_0.e.x))))), arg_0);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(arg_0);
    global1 = array<i32, 3>();
    global0 = vec2<bool>(!(true || global0.x), any(!vec4<bool>(global0.x, true, all(var_0.a.d.zzx), var_0.c > 2147483647i)));
    var var_1 = func_2(func_2(func_2(func_2(func_2(var_0.d).a).a).a).d);
    global1 = array<i32, 3>();
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(45630i, reverseBits(u_input.c), ~u_input.c.x, vec4<bool>(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(367f * -833f))) <= -1460f, true && global0.x, global0.x), vec4<f32>(2002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-479f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1333f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * -571f), _wgslsmith_f_op_f32(max(600f, -968f)), all(vec4<bool>(global0.x, true, global0.x, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f)))));
    var var_1 = global1[_wgslsmith_index_u32(abs(~u_input.c.x), 3u)];
    var var_2 = func_1(Struct_1(global1[_wgslsmith_index_u32(35005u, 3u)], u_input.c, u_input.c.x, select(!var_0.d, !(!var_0.d), vec4<bool>(!global0.x, !global0.x, any(var_0.d.wzx), false || global0.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - -609f), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)), _wgslsmith_f_op_f32(-686f - _wgslsmith_f_op_f32(var_0.e.x + var_0.e.x)))));
    let var_3 = func_2(Struct_1(~_wgslsmith_dot_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(32456u, 3u)], 1i, 0i, global1[_wgslsmith_index_u32(var_0.b.x, 3u)]), vec4<i32>(u_input.b, var_2.a, var_2.a, global1[_wgslsmith_index_u32(1u, 3u)]) << (vec4<u32>(var_2.b.x, 0u, 1u, 0u) % vec4<u32>(32u))), countOneBits(var_2.b), var_2.b.x, !select(vec4<bool>(var_2.d.x, var_0.d.x, true, false), vec4<bool>(var_2.d.x, false, false, var_2.d.x), vec4<bool>(var_2.d.x, global0.x, true, var_0.d.x)), _wgslsmith_f_op_vec4_f32(-var_2.e)));
    let var_4 = _wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_3.c, u_input.a, 7060i), ~(-vec3<i32>(7479i, 1i, -46519i))), vec3<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -45391i, -1i), vec3<i32>(20658i, var_3.d.a, u_input.b), vec3<i32>(-44930i, var_2.a, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(4805i, var_3.d.a, 8195i), select(vec3<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 3u)], 2147483647i, var_0.a), vec3<i32>(var_2.a, global1[_wgslsmith_index_u32(var_3.d.c, 3u)], var_0.a), true))), global1[_wgslsmith_index_u32(4294967295u, 3u)], 18748i));
    var var_5 = var_3.e;
    var var_6 = var_2.e.wzy;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e, var_5.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.x, var_6.x))) - _wgslsmith_f_op_vec2_f32(exp2(var_6.zy))));
}

