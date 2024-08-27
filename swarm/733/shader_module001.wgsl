struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1255u;

var<private> global1: array<Struct_2, 32>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 67715u);

var<private> global3: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(18879i, -29867i));

var<private> global4: Struct_3;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) - global4.a.e.x), _wgslsmith_f_op_f32(abs(global4.a.a.x)), global4.a.e.x);
    var_0 = vec3<f32>(410f, 1191f, _wgslsmith_f_op_f32(137f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f - -1394f)))));
    var var_1 = _wgslsmith_div_f32(-572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.a.e.x))));
    var_0 = _wgslsmith_div_vec3_f32(global4.a.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global4.a.a))))));
    let var_2 = Struct_4(countOneBits(u_input.a));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(671f, global4.a.e.x, 423f)) * _wgslsmith_f_op_vec3_f32(global4.a.a * global4.a.a)))));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec4<bool>) -> i32 {
    return ~(~_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.d.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.a, 0i, u_input.a, 26224i), vec4<i32>(-1i, -8256i, u_input.a, u_input.a))), _wgslsmith_add_i32(select(arg_1.b.a, u_input.a, global4.a.d), 17307i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()));
    global3 = array<vec2<i32>, 1>();
    global0 = ~arg_2.b.x;
    global1 = array<Struct_2, 32>();
    let var_1 = Struct_2((-20878i << (~(~arg_2.b.x) % 32u)) | (~func_3(global4.a.d, Struct_5(vec3<bool>(false, global4.b.x, false), global1[_wgslsmith_index_u32(3232u, 32u)], vec3<i32>(u_input.a, u_input.a, -5329i), Struct_4(arg_0.x)), Struct_3(arg_2, global4.b), vec4<bool>(true, true, false, false)) | select(~10904i, arg_0.x, global4.b.x)), ~(vec3<u32>(reverseBits(u_input.b), firstTrailingBit(global4.a.b.x), arg_2.b.x) ^ ~(vec3<u32>(arg_2.b.x, 0u, u_input.b) | vec3<u32>(4294967295u, global2.x, 67622u))), _wgslsmith_f_op_vec2_f32(arg_2.a.yy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2()).xy)));
    return select(global4.b.yx, select(vec2<bool>(!(u_input.b > 0u), true), global4.b.xz, !(!(!global4.b.yz))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(38129i, u_input.a), vec2<i32>(u_input.a, 8715i)), abs(~global3[_wgslsmith_index_u32(81u, 1u)])), global4.a.a, global4.a);
    let var_1 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(min(4294967295u, 4294967295u), u_input.b), 25422u, _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(global4.a.b, global4.a.b)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4973u, 44242u, u_input.b), vec3<u32>(28811u, global2.x, 66416u), vec3<u32>(74889u, 46457u, u_input.b)), firstTrailingBit(vec3<u32>(35386u, global4.a.b.x, global4.a.b.x)))), vec4<u32>(_wgslsmith_mod_u32(102082u, u_input.b) << (u_input.b % 32u), 30582u | _wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.b.x, 1u, global2.x, 4294967295u), vec4<u32>(34240u, 1u, u_input.b, global2.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 24950u), reverseBits(vec2<u32>(u_input.b, 94696u))), 7856u), vec4<u32>(4294967295u, 1u, global2.x, global4.a.b.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global4.a.e.x), global4.a.a.x);
    let var_3 = ~select(~(~(~107334u)), global2.x, any(vec3<bool>(global4.a.c, global4.b.x, true)));
    let var_4 = Struct_3(global4.a, select(select(!(!vec4<bool>(global4.a.c, global4.a.d, global4.a.c, global4.a.c)), global4.b, true), !(!select(global4.b, global4.b, vec4<bool>(true, var_0.x, var_0.x, false))), global4.b));
    global2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~var_4.a.b.x, 1u), _wgslsmith_add_vec2_u32(var_1.yy, _wgslsmith_clamp_vec2_u32(var_1.yw, var_1.zx, var_1.zy) | ~global4.a.b)), ~select(~vec2<u32>(3262u, 4294967295u), firstTrailingBit(vec2<u32>(13669u, 1u)), !select(vec2<bool>(false, var_0.x), vec2<bool>(var_4.b.x, true), false)), var_4.a.b);
    global2 = vec2<u32>(1u, 13996u);
    var var_5 = Struct_4(~(31171i ^ u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1232f, -553f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global4.a.e), _wgslsmith_f_op_vec2_f32(max(global4.a.a.yx, vec2<f32>(var_4.a.a.x, var_4.a.e.x))), vec2<bool>(true, false)))))), i32(-1i) * -_wgslsmith_dot_vec2_i32(max(vec2<i32>(-10107i, 1i), vec2<i32>(-26215i, 15616i)), -vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mult_vec4_i32(~(-(vec4<i32>(0i, 0i, 33521i, -6943i) ^ vec4<i32>(var_5.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, u_input.a, var_5.a, var_5.a), vec4<i32>(u_input.a, 35038i, 26531i, 1i)) << (_wgslsmith_sub_vec4_u32(min(var_1, vec4<u32>(4294967295u, 47710u, var_3, var_1.x)), vec4<u32>(4294967295u, u_input.b, 93910u, 222u)) % vec4<u32>(32u))));
}

