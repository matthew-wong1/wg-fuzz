struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: vec3<i32> = vec3<i32>(11770i, 0i, -4686i);

var<private> global2: array<Struct_3, 30>;

var<private> global3: vec4<f32> = vec4<f32>(-1115f, 361f, 1237f, -234f);

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = vec2<i32>(countOneBits((global1.x << (~0u % 32u)) & ((global1.x >> (u_input.d.x % 32u)) | global1.x)), -2147483647i | -(~arg_1 ^ (u_input.b.x << (arg_0.b % 32u))));
    global1 = ~abs(u_input.e.xzy);
    let var_1 = abs(countOneBits(u_input.a.xx));
    var_0 = var_1;
    global1 = u_input.a;
    return vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-(global1.x | var_0.x), (global1.x | 2147483647i) & arg_1), abs(-reverseBits(var_1.x))), _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(15250i, 20045i, -227i)), _wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(-14970i, global1.x, -3907i)), min(countOneBits(u_input.c), ~vec3<i32>(var_1.x, arg_1, -68922i)))), -26126i);
}

fn func_2() -> i32 {
    var var_0 = -(~(~(-func_3(Struct_1(vec3<bool>(true, false, false), 52749u, u_input.d), -28538i, vec4<f32>(-726f, 883f, 2050f, -114f)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(global3.x * 156f), true))) * _wgslsmith_f_op_f32(ceil(-732f))), global3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-522f - _wgslsmith_f_op_f32(f32(-1f) * -1646f)), _wgslsmith_f_op_f32(-global3.x))));
    global1 = vec3<i32>(abs(_wgslsmith_div_i32(~global1.x, 14932i | var_0.x) << ((_wgslsmith_sub_u32(32217u, u_input.d.x) & 1u) % 32u)), _wgslsmith_sub_i32(max(global1.x, ~u_input.e.x), 2147483647i >> (_wgslsmith_clamp_u32(u_input.d.x, reverseBits(4294967295u), u_input.d.x) % 32u)), u_input.e.x);
    global2 = array<Struct_3, 30>();
    var_0 = -_wgslsmith_add_vec3_i32(u_input.c, select(~u_input.c, u_input.c, select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))));
    return -(~(-1i));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_2(vec4<i32>(select(_wgslsmith_add_i32(global1.x, _wgslsmith_mult_i32(u_input.c.x, global1.x)), func_2(), true), _wgslsmith_add_i32(_wgslsmith_mod_i32(~4112i, -91573i), u_input.a.x), reverseBits(29575i), reverseBits(-2147483647i)), u_input.d.zzx << (u_input.d.yzx % vec3<u32>(32u)), false);
    let var_1 = -global1.x;
    let var_2 = Struct_3(var_0, var_0.a.xxx, ~vec3<u32>(0u, max(~u_input.d.x, var_0.b.x), 2296u), global3.yx);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.zyx - global3.yyx)) + _wgslsmith_f_op_vec3_f32(-global3.www)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(379f, global3.x, -270f) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, -1241f, 1000f) * global3.xyy), global3.zxw)))));
    global4 = 4294967295u;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(func_3(Struct_1(select(vec3<bool>(var_2.a.c, var_0.c, false), vec3<bool>(true, var_2.a.c, var_0.c), var_2.a.c), var_2.a.b.x, vec4<u32>(var_2.a.b.x, u_input.d.x, var_0.b.x, var_2.a.b.x) >> (vec4<u32>(var_2.c.x, 1845u, 19161u, 1u) % vec4<u32>(32u))), _wgslsmith_mult_i32(u_input.a.x, ~(-49641i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, global3.x, 851f, 247f) * vec4<f32>(1045f, var_3.x, var_2.d.x, -190f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1030f, -1242f, -1000f, var_2.d.x) * vec4<f32>(-141f, global3.x, 537f, global3.x)))).x, var_2.a.a.x, var_2.a.a.x, abs(-1i)), abs(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(global1.x, 2147483647i, 36074i, 0i)), -vec4<i32>(u_input.b.x, 7105i, 1i, 1i), var_0.a & u_input.e)) ^ select(u_input.e, vec4<i32>(i32(-1i) * -79921i, -23176i, 4194i, var_1), !(26423u <= var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<f32>(1f, -1156f, _wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(537f * 397f) - global3.x)));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-984f, _wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(-global3.x))))));
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) - global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(467f, 1000f, true)), _wgslsmith_f_op_f32(abs(-1791f))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1097f + global3.x)), global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_0 = vec2<f32>(1862f, global3.x);
    var var_1 = Struct_2(-func_1(), u_input.d.zyy | ~u_input.d.wwx, !(!(select(false, true, false) && true)));
    let var_2 = global2[_wgslsmith_index_u32(var_1.b.x, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(-32588i, _wgslsmith_f_op_f32(f32(-1f) * -1008f), -(~(min(-45502i, u_input.b.x) ^ 1i)), u_input.d.ww, u_input.d);
}

