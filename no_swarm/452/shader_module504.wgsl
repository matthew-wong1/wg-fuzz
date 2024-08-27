struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = !(!vec2<bool>(true, any(vec4<bool>(false, true, true, true))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = ~4294967295u;
    global0 = arg_0.x;
    global1 = array<f32, 20>();
    return Struct_4(36415u, Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -39567i, u_input.c.x), countOneBits(vec3<i32>(arg_1.x, u_input.a.x, -2147483647i))), u_input.b, arg_0), vec4<bool>(var_0.x, true, var_0.x, true)));
}

fn func_3(arg_0: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-219f - 1726f);
    var var_0 = 4294967295u;
    var var_1 = firstLeadingBit(1i);
    var var_2 = Struct_5(func_2(vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-739f, global1[_wgslsmith_index_u32(u_input.d.x, 20u)])), global1[_wgslsmith_index_u32(select(15859u, u_input.e, arg_0), 20u)])), ~abs(_wgslsmith_mult_vec3_i32(u_input.c.wyx, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~max(u_input.e, ~u_input.e), vec2<u32>(~1u, ~firstLeadingBit(1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(20422u, 20u)], 486f), vec2<f32>(671f, -1474f), arg_0))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.e, 20u)], global1[_wgslsmith_index_u32(u_input.d.x, 20u)]))))), Struct_2(func_2(vec2<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(64770u, 20u)])), 434f), _wgslsmith_clamp_vec3_i32(u_input.c.zyx, vec3<i32>(-2147483647i, u_input.c.x, -2147483647i), u_input.c.xyz) ^ u_input.c.wwz, _wgslsmith_add_u32(u_input.d.x, 8189u) >> (u_input.e % 32u), min(vec2<u32>(4294967295u, 4294967295u), u_input.d)).b.a, vec4<bool>(any(func_2(vec2<f32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), u_input.c.xyw, u_input.d.x, vec2<u32>(75778u, 0u)).b.b.zwz), all(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, arg_0))), any(vec3<bool>(false, false, arg_0)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(991f)), 181f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 20u)])), global1[_wgslsmith_index_u32(max(u_input.e, 32200u), 20u)])) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(u_input.e, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], 461f, 1209f)))))))));
    return func_2(var_2.b, vec3<i32>(var_2.a.b.a.a, var_2.a.b.a.a, select(max(-7431i, max(1541i, -2147483647i)), var_2.a.b.a.a, any(vec2<bool>(arg_0, var_2.a.b.b.x)) & (true || var_2.c.b.x))), 1u, var_2.c.a.b).b.a;
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    var var_0 = true && all(vec4<bool>(all(vec3<bool>(arg_0.a.b.b.x, arg_0.a.b.b.x, true)) || arg_0.a.b.b.x, arg_0.b.x >= -845f, (i32(-1i) * -10382i) <= (arg_0.c.a.a >> (u_input.b.x % 32u)), any(!arg_0.c.b.zw)));
    var var_1 = false;
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-arg_0.b), vec3<i32>(max(countOneBits(u_input.c.x), 13996i), arg_0.c.a.a, -1i), u_input.b.x << (1u % 32u), arg_0.c.a.b).b;
    global1 = array<f32, 20>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.d.wyz)) * arg_0.d.wxw);
    return Struct_2(func_3(true), vec4<bool>(true, any(vec3<bool>(true, arg_0.c.b.x & false, u_input.c.x >= -7547i)), !(!arg_0.c.b.x), true));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool) -> f32 {
    global0 = global1[_wgslsmith_index_u32(u_input.b.x >> (1u % 32u), 20u)];
    var var_0 = -2147483647i;
    var_0 = -_wgslsmith_dot_vec3_i32(~min(-vec3<i32>(u_input.a.x, 0i, -1i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x)), u_input.a);
    let var_1 = abs(vec3<u32>(u_input.e, u_input.b.x << (u_input.b.x % 32u), 4294967295u));
    let var_2 = func_4(Struct_5(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(682f, arg_0), vec2<f32>(964f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(613f, global1[_wgslsmith_index_u32(9426u, 20u)]))), vec3<i32>(u_input.a.x, -1i, 0i) & _wgslsmith_mod_vec3_i32(vec3<i32>(-52642i, -2147483647i, arg_1), u_input.a), var_1.x >> (0u % 32u), ~var_1.yy >> (u_input.b % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(89705u, 20u)])) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0)))), Struct_2(func_3(!arg_2), !func_2(vec2<f32>(401f, global1[_wgslsmith_index_u32(var_1.x, 20u)]), u_input.c.yyz, u_input.e, var_1.zx).b.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-396f, -149f, arg_0, -211f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(956f, global1[_wgslsmith_index_u32(var_1.x, 20u)], arg_0, arg_0)))))));
    return _wgslsmith_f_op_f32(step(1191f, global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(var_2.a.b.x, 1u) ^ (~0u >> (~var_2.a.b.x % 32u))), 20u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -707f), -274f, -1425f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(62282u, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)])), 1f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(40985u, 20u)])), 1660f)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.d.x, 20u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d.x, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 20u)] * global1[_wgslsmith_index_u32(4294967295u ^ ~u_input.e, 20u)]), global1[_wgslsmith_index_u32(~u_input.b.x, 20u)], _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(0u, 20u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 4990i, u_input.a.x) ^ u_input.c, ~u_input.c), true))), func_2(_wgslsmith_f_op_vec2_f32(sign(func_3(true).c)), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) & (-1i << (u_input.d.x % 32u)), ~_wgslsmith_sub_i32(-14781i, -5165i), ~(i32(-1i) * -2147483647i)), ~1u, ~u_input.b).b.b.x));
    let var_1 = func_2(var_0.wz, _wgslsmith_add_vec3_i32(u_input.c.yxw, _wgslsmith_mult_vec3_i32(u_input.c.www >> (abs(vec3<u32>(u_input.b.x, 1u, u_input.d.x)) % vec3<u32>(32u)), abs(~u_input.c.yyz))), u_input.d.x, u_input.d);
    let var_2 = Struct_4(reverseBits(32141u), Struct_2(Struct_1(u_input.c.x, ~(~vec2<u32>(0u, 31467u)), var_1.b.a.c), var_1.b.b));
    var var_3 = Struct_3(Struct_2(var_1.b.a, vec4<bool>(true, var_1.b.b.x, !var_1.b.b.x, 1u > abs(u_input.b.x))), 158302u);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.a.a.c.x - func_2(func_3(true).c, ~u_input.a, 28539u, u_input.d).b.a.c.x))), 1287f, 669f, 751f);
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1507f)) + _wgslsmith_f_op_f32(floor(1596f)));
    let x = u_input.a;
    s_output = StorageBuffer(524f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_4.zxz * vec3<f32>(552f, -734f, -1000f)))))));
}

