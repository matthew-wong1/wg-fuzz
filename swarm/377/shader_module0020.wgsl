struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<u32> = vec2<u32>(77088u, 0u);

var<private> global2: i32 = -1i;

var<private> global3: array<f32, 5>;

var<private> global4: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(2317f, 3395f, -1029f, 351f), vec4<f32>(754f, 765f, 1437f, 138f), vec4<f32>(431f, -557f, -304f, -738f), vec4<f32>(-2490f, -1273f, -1459f, 2414f), vec4<f32>(273f, 1348f, 224f, -239f), vec4<f32>(305f, 267f, -2265f, -510f), vec4<f32>(550f, -1000f, -1000f, 502f), vec4<f32>(1024f, -1611f, -1204f, -2338f), vec4<f32>(-1315f, -1586f, 391f, 658f), vec4<f32>(-1328f, 502f, 352f, 934f), vec4<f32>(-2175f, -1490f, 654f, 1405f), vec4<f32>(-306f, 1000f, 443f, -1151f), vec4<f32>(1366f, 1018f, 1000f, -1849f), vec4<f32>(-1438f, 1651f, 323f, -1065f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = u_input.d.x;
    var var_1 = !select(vec4<bool>(true | select(global0.b.b, global0.b.b, global0.b.b), global0.b.b & false, global0.b.b, true | (u_input.c >= global1.x)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, global0.b.b, false, global0.b.b), vec4<bool>(global0.b.b, global0.b.b, true, true), global0.b.b), !vec4<bool>(false, global0.b.b, true, global0.b.b), select(vec4<bool>(true, true, false, global0.b.b), vec4<bool>(global0.b.b, global0.b.b, global0.b.b, false), vec4<bool>(global0.b.b, true, true, true))), !(!vec4<bool>(global0.b.b, global0.b.b, global0.b.b, global0.b.b))), any(!(!vec4<bool>(false, global0.b.b, true, global0.b.b))));
    let var_2 = global1.x;
    let var_3 = ~countOneBits(global0.d.zz);
    var var_4 = var_1.yy;
    return arg_0.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(round(arg_0)), arg_0), global0.b, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.x, 5u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.a.yx, u_input.b)) * arg_0))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -156f))), abs(_wgslsmith_add_vec4_u32(global0.d, global0.d)));
    global1 = min(_wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(var_0.d, vec4<u32>(28193u, global1.x, var_0.d.x, 36249u)), 1u), select(u_input.b.zx, ~var_0.d.ww | vec2<u32>(0u, var_0.d.x), any(vec4<bool>(true, var_0.b.b, false, false))), var_0.d.wy), _wgslsmith_add_vec2_u32(~global0.d.zx ^ _wgslsmith_clamp_vec2_u32(global0.d.xz ^ global0.d.yw, var_0.d.xw, _wgslsmith_clamp_vec2_u32(vec2<u32>(11234u, global0.d.x), vec2<u32>(0u, global0.d.x), u_input.b.xz)), ~vec2<u32>(1u, _wgslsmith_dot_vec3_u32(var_0.d.xww, vec3<u32>(u_input.c, global0.d.x, 19895u)))));
    let var_1 = global0.b;
    global2 = min(0i & (_wgslsmith_sub_i32(max(-65036i, 1i), abs(u_input.d.x)) >> (0u % 32u)), 1i);
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.a.x)))), 1560f, -189f)), global0.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(var_0.c, global0.c)))), vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(step(1000f, 600f)))))), u_input.b);
    return var_0;
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(14389u << (u_input.c % 32u), 5u)] + _wgslsmith_f_op_f32(-392f + global0.a.x))))), 187f, _wgslsmith_f_op_f32(step(global0.a.x, -1182f)), -580f);
    let var_1 = 18429u;
    global2 = ~u_input.a.x;
    global2 = max(u_input.a.x, u_input.a.x);
    var var_2 = func_2(global0.c.x);
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(~(~7767u), 0u >> (_wgslsmith_div_u32(var_2.d.x ^ global1.x, 30779u) % 32u)), ~15610u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(509f, -578f)))))), global0.c);
    var var_1 = ~vec4<u32>(~11938u, u_input.b.x, func_1(), global0.d.x);
    global1 = (~min(global0.d.zz, ~vec2<u32>(4294967295u, 0u)) | ((~vec2<u32>(1u, 49455u) << (vec2<u32>(u_input.b.x, 42887u) % vec2<u32>(32u))) & abs(global0.d.yx))) ^ global0.d.zz;
    var var_2 = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(firstLeadingBit(func_1()), 5u)])))));
    let var_3 = _wgslsmith_mult_u32(~countOneBits(~u_input.b.x & (var_1.x << (55069u % 32u))), abs(global0.d.x));
    let var_4 = Struct_2(var_2.a, var_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.xz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, -861f))) + vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), var_2.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + 1000f) + global0.c.x), 173f)), global0.d);
    global4 = array<vec4<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1.x, ~(~4294967295u), _wgslsmith_sub_u32(~72602u, u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_4.b.a, 1000f, global0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(227f, global0.b.a, -158f, 1125f))), global4[_wgslsmith_index_u32(27774u >> (global0.d.x % 32u), 14u)], false))), u_input.a.x, _wgslsmith_f_op_f32(-548f * 293f), var_4.c);
}

