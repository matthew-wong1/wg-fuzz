struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
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

var<private> global0: vec3<bool>;

var<private> global1: vec4<i32> = vec4<i32>(56510i, 2147483647i, -5873i, 1i);

var<private> global2: vec4<f32>;

var<private> global3: vec3<bool>;

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~global4.b.a, vec2<u32>(1u, u_input.b) & vec2<u32>(0u, global4.b.a.x)) | global4.b.a, _wgslsmith_add_vec2_u32(vec2<u32>(global4.b.a.x, ~0u), global4.b.a)), -1000f);
    var_0 = global4.b;
    let var_1 = !(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.x, -2147483647i, 2147483647i, 2147483647i) << (countOneBits(vec4<u32>(37829u, global4.a.a.x, 47168u, 33252u)) % vec4<u32>(32u)), ~(~vec4<i32>(2147483647i, u_input.d, -2147483647i, 0i))) <= u_input.d);
    let var_2 = ~_wgslsmith_sub_i32(~2147483647i, u_input.d);
    var_0 = global4.a;
    return _wgslsmith_add_vec4_u32(abs(vec4<u32>(abs(global4.a.a.x), 4294967295u, u_input.c, ~var_0.a.x)), vec4<u32>(~0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 1u, 0u, 11336u), vec4<u32>(u_input.c, u_input.c, var_0.a.x, u_input.b)), ~0u ^ u_input.b, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b, 4294967295u, global4.b.a.x)), max(vec3<u32>(global4.b.a.x, var_0.a.x, global4.b.a.x), vec3<u32>(u_input.c, u_input.c, 22288u))))) & min(vec4<u32>(firstLeadingBit(4294967295u) << (var_0.a.x % 32u), u_input.b, ~4294967295u, ~(~4294967295u)), vec4<u32>(u_input.b, 1u, 37957u, abs(4546u)) | (vec4<u32>(global4.b.a.x, u_input.b, u_input.b, var_0.a.x) ^ vec4<u32>(var_0.a.x, 4294967295u, global4.a.a.x, 33757u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = !global0.yz;
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.b) + 1652f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1792f * global2.x))))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global4.a.b) * vec4<f32>(global4.a.b, global2.x, var_1.x, 732f))))) - vec4<f32>(838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global2.x, var_1.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -1378f), false | var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -1216f)), _wgslsmith_f_op_f32(f32(-1f) * -1253f)));
    global4 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(global4.b.a, reverseBits(arg_0.a.yx)), arg_3.a.wz), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1819f)))), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(select(4294967295u, arg_0.a.x, true), select(arg_3.a.x, global4.b.a.x, global4.c)), vec2<u32>(arg_0.a.x, 28198u)), _wgslsmith_f_op_f32(-1969f + -1548f)), false);
    var var_2 = select(vec3<bool>(false, !global3.x, _wgslsmith_f_op_f32(min(1045f, _wgslsmith_f_op_f32(round(var_1.x)))) < -590f), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 572f) * 196f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -195f))), !(u_input.d >= 1i), true), !vec3<bool>(false, false, _wgslsmith_f_op_f32(max(var_1.x, var_1.x)) != _wgslsmith_f_op_f32(step(1000f, global2.x))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(global4.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.b + global2.x) + _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(-2011f)))), -229f));
}

fn func_2() -> i32 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.a.b, global2.x, global2.x, global4.b.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.b, 635f, 252f, global4.a.b) * vec4<f32>(-217f, -332f, 413f, global2.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(func_3(true)), global0.x, ~_wgslsmith_add_u32(4294967295u, u_input.b), Struct_3(~vec4<u32>(global4.b.a.x, 4294967295u, 1u, 4294967295u))))));
    let var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(~vec4<i32>(0i, i32(-1i) * -10590i, i32(-1i) * -1i, ~(-71393i))), _wgslsmith_div_vec4_i32(min(~vec4<i32>(u_input.a, global1.x, 2147483647i, global1.x) >> (~vec4<u32>(34797u, u_input.b, global4.b.a.x, 463u) % vec4<u32>(32u)), countOneBits(vec4<i32>(global1.x, u_input.a, u_input.d, global1.x) << (vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u) % vec4<u32>(32u)))), abs(vec4<i32>(u_input.a, global1.x, -11415i, -23418i)) & vec4<i32>(u_input.a, -u_input.d, u_input.d, _wgslsmith_clamp_i32(u_input.a, global1.x, global1.x))));
    let var_1 = global2.wzw;
    global3 = !vec3<bool>(true, any(!global0.zz) && global3.x, (_wgslsmith_mult_u32(13138u, global4.a.a.x) != u_input.c) | global0.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(global2.ywy * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec4<u32>(u_input.c, u_input.b, 1u, u_input.c)), global3.x, u_input.b, Struct_3(vec4<u32>(4294967295u, u_input.b, 102408u, u_input.b)))).x, var_1.x, -133f), global2.zxy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(select(-927f, -2195f, global0.x)), var_1.x)))));
    return ~u_input.d;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_4, arg_3: f32) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = global4.b;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(max(955f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3))))))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1657f, _wgslsmith_f_op_f32(f32(-1f) * -157f)))), 1101f);
    var var_2 = global4.b;
    global3 = !(!select(vec3<bool>(true, false, true), !vec3<bool>(global4.c, global3.x, false), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, false), false)));
    return Struct_2(Struct_1(firstTrailingBit(vec2<u32>(~4294967295u, select(0u, arg_2.a.x, global4.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b * arg_1))))), Struct_1(vec2<u32>(1u, _wgslsmith_clamp_u32(global4.b.a.x ^ global4.a.a.x, ~4294967295u, global4.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -411f)), global4.c);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(vec3<i32>(_wgslsmith_dot_vec2_i32(global1.xw, countOneBits(vec2<i32>(u_input.a, -1i)) ^ _wgslsmith_mult_vec2_i32(global1.zw, vec2<i32>(u_input.d, global1.x))), -33407i, 1i), global4.b.b, Struct_4(_wgslsmith_mult_vec3_u32(vec3<u32>(global4.b.a.x >> (global4.a.a.x % 32u), max(u_input.c, u_input.c), select(u_input.c, 0u, global0.x)), reverseBits(reverseBits(vec3<u32>(1u, u_input.c, 44870u)))), reverseBits(_wgslsmith_sub_i32(u_input.d, u_input.d) << (global4.b.a.x % 32u))), global4.a.b);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global2.zyy)));
    let var_1 = func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -7043i, 1i), -(global1.yzy & (vec3<i32>(88473i, u_input.d, 2147483647i) << (vec3<u32>(41802u, 54683u, u_input.c) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, global2.x, global4.c)))), -639f)), Struct_4(_wgslsmith_sub_vec3_u32(vec3<u32>(select(17252u, 0u, global4.c), 0u, firstLeadingBit(u_input.b)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.c, 0u, global4.b.a.x), vec3<u32>(u_input.b, u_input.c, 61786u), global4.c), ~vec3<u32>(global4.b.a.x, 1u, u_input.c))), _wgslsmith_dot_vec3_i32(global1.xzx, _wgslsmith_div_vec3_i32(vec3<i32>(0i, 49549i, -1i), vec3<i32>(24542i, -5005i, u_input.d)))), global2.x).b;
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(-countOneBits(global1.x), firstLeadingBit(u_input.a))));
}

