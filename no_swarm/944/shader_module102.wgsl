struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, false, false, false, false, false, false, true, true, true, false, true, true, false, false, true, false, false, true, false, false, true, true, false, true);

var<private> global1: Struct_2 = Struct_2(vec4<i32>(22284i, 2147483647i, 2147483647i, i32(-2147483648)), Struct_1(79745u), 1000f, 1i, -2289f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_1 {
    return global1.b;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 1u;
    global1 = Struct_2(vec4<i32>(arg_0.a.x, max(arg_0.d, _wgslsmith_sub_i32(-2147483647i, -1i) | _wgslsmith_div_i32(-21605i, global1.a.x)), global1.d, -max(-1i, ~(-1i))), func_2(), global1.c, _wgslsmith_dot_vec2_i32(arg_0.a.xw, _wgslsmith_sub_vec2_i32(global1.a.xz, -global1.a.wy)), global1.e);
    global1 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -201f)) * _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(-arg_0.e)));
    let var_2 = Struct_2(~_wgslsmith_mod_vec4_i32(global1.a, vec4<i32>(1i, arg_0.d, arg_0.a.x, firstLeadingBit(14400i))), global1.b, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c)))), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.e))));
    return arg_0;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = 2147483647i;
    var var_1 = global0[_wgslsmith_index_u32(arg_1.b.a, 26u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e * _wgslsmith_f_op_f32(sign(arg_1.e))) + arg_0.x), -398f, global1.c)));
    global1 = Struct_2(max(-_wgslsmith_mult_vec4_i32(~arg_1.a, global1.a << (vec4<u32>(global1.b.a, u_input.a.x, 17826u, global1.b.a) % vec4<u32>(32u))), func_1(Struct_2(-vec4<i32>(var_0, global1.a.x, -1i, global1.a.x), func_1(Struct_2(vec4<i32>(0i, arg_1.d, arg_1.a.x, global1.a.x), global1.b, -685f, -2147483647i, 758f)).b, 551f, max(global1.a.x, var_0), _wgslsmith_f_op_f32(exp2(global1.e)))).a), func_2(), arg_1.c, 43858i, _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
    global1 = Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_1.a.x, 0i, var_0, 61851i), abs(global1.a) ^ -vec4<i32>(global1.a.x, global1.a.x, var_0, -22213i)), vec4<i32>(~(arg_1.a.x | arg_1.d), _wgslsmith_dot_vec2_i32(arg_1.a.zw, firstTrailingBit(arg_1.a.xz)), select(arg_1.d, -arg_1.a.x, !global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), 27748i), min(global1.a, _wgslsmith_add_vec4_i32(arg_1.a << (vec4<u32>(19707u, u_input.a.x, global1.b.a, global1.b.a) % vec4<u32>(32u)), vec4<i32>(arg_1.a.x, arg_1.a.x, global1.d, 5346i)))), func_1(Struct_2(-global1.a, global1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(floor(global1.e)))), arg_1.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))).b, _wgslsmith_f_op_f32(-925f + var_2.x), 3607i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * arg_0.x) - _wgslsmith_f_op_f32(ceil(573f)))))));
    return ~(~vec2<u32>(~(~0u), arg_1.b.a));
}

fn func_4(arg_0: vec2<u32>) -> i32 {
    var var_0 = Struct_2(vec4<i32>(1688i, global1.d, global1.d, i32(-1i) * -21747i), Struct_1(_wgslsmith_sub_u32(u_input.a.x, 1u)), global1.c, _wgslsmith_clamp_i32(global1.d, global1.d, min(abs(global1.a.x), global1.a.x & global1.d) ^ -42672i), global1.c);
    var var_1 = Struct_2(~abs(firstLeadingBit(_wgslsmith_mod_vec4_i32(global1.a, var_0.a))), func_2(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f)))), ~abs(~0i), var_0.e);
    let var_2 = func_2();
    let var_3 = Struct_1(firstTrailingBit(1u));
    var_1 = Struct_2(var_1.a, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(round(-462f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.c, 971f), 943f)))) * var_0.c), -26286i, var_1.e);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_2(_wgslsmith_add_vec4_i32(global1.a, vec4<i32>(1i, global1.d, 7547i, select(3392i, global1.a.x, true))), Struct_1(~global1.b.a), 1000f, _wgslsmith_add_i32(global1.a.x, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1627f, _wgslsmith_div_f32(-1216f, 249f))))));
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1356f * global1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.e)))))));
    let var_2 = Struct_1(u_input.a.x);
    let var_3 = ~(-global1.a);
    var var_4 = Struct_2(var_3 & max(global1.a, -(~global1.a)), var_2, 330f, -func_4(func_3(vec3<f32>(-2399f, 1246f, -383f), Struct_2(vec4<i32>(-56169i, var_3.x, global1.d, 1i), Struct_1(var_2.a), -1377f, -8271i, var_1.x))), var_1.x);
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1403f, 1385f, -816f) - vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), 1f, _wgslsmith_div_f32(-1000f, -732f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(global1.c, global1.e), 793f, 787f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1607f, 1364f, var_1.x)))))) - vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_4.e, 1374f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.e)) + global1.e)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2189f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i));
}

