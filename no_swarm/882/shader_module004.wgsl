struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<vec3<f32>, 7>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global3 = array<vec3<f32>, 7>();
    let var_0 = Struct_1(max(vec3<u32>(~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x), ~_wgslsmith_clamp_u32(u_input.c.x, global0.c.x, u_input.c.x), ~43036u), abs(u_input.c)), -abs(_wgslsmith_mod_vec3_i32(vec3<i32>(29740i, u_input.b, 1i), abs(vec3<i32>(u_input.b, u_input.b, -22413i)))));
    global3 = array<vec3<f32>, 7>();
    global0 = Struct_3(Struct_2(global1.x, _wgslsmith_f_op_f32(-global0.a.b)), -65058i, ~global0.c, ~(-vec4<i32>(global0.d.x ^ var_0.b.x, 1i, global0.b << (75004u % 32u), min(u_input.b, 1745i))));
    var var_1 = max(min(select(~vec3<u32>(var_0.a.x, global0.c.x, 17979u), global0.c, global0.a.a && true), firstTrailingBit(~vec3<u32>(76026u, u_input.c.x, 98382u))), ~(var_0.a & vec3<u32>(max(4294967295u, u_input.c.x), 35344u, 0u)));
    return _wgslsmith_dot_vec4_i32(global0.d, select(countOneBits(global0.d), global0.d, true && select(global1.x | global0.a.a, global1.x, all(global1.zy))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_3(global0.a, -2147483647i, firstTrailingBit(vec3<u32>(~u_input.c.x, u_input.c.x << (u_input.c.x % 32u), ~1u) ^ u_input.c), firstTrailingBit(select(global0.d, vec4<i32>(-2147483647i, 13175i, global0.b, 2147483647i), global0.a.a)) | vec4<i32>(49427i, arg_0.b.x & (u_input.b & -13580i), abs(global0.d.x), func_3()));
    global0 = Struct_3(global0.a, var_0.d.x, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 1u, ~0u), arg_0.a), -vec4<i32>(0i, 1i, -2147483647i, 1i));
    var var_1 = vec3<bool>(var_0.a.a || !(-var_0.d.x > (var_0.b << (1u % 32u))), true, global0.a.a);
    var var_2 = true;
    global3 = array<vec3<f32>, 7>();
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b) - _wgslsmith_f_op_f32(-392f + _wgslsmith_f_op_f32(arg_1 + 191f))), arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b - global0.a.b)))));
    let var_1 = arg_1;
    var var_2 = var_1;
    let var_3 = func_2(arg_2, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(arg_1))));
    var var_4 = arg_2;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(23788i, _wgslsmith_clamp_i32(-7119i, -87767i, -45704i), func_1(Struct_1(global0.c, global0.d.www), 900f, global2[_wgslsmith_index_u32(global0.c.x, 10u)]), global0.d.x), global0.d, select(vec4<bool>(true, true, false, true), select(vec4<bool>(global0.a.a, global0.a.a, false, true), vec4<bool>(global1.x, false, true, false), vec4<bool>(global0.a.a, false, true, false)), vec4<bool>(false, global0.a.a, global0.a.a, global1.x))), firstLeadingBit(select(reverseBits(vec4<i32>(u_input.a, 18983i, 0i, -61893i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, global0.b, 10766i, global0.d.x), global0.d, vec4<i32>(-46081i, u_input.b, 0i, 17235i)), true)), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(1i, u_input.a), global0.d.x, 2147483647i) ^ firstLeadingBit(vec4<i32>(-3137i, global0.b, global0.d.x, 39089i)));
    var var_1 = ((firstLeadingBit(-u_input.b) | global0.b) ^ global0.b) >= u_input.a;
    global3 = array<vec3<f32>, 7>();
    var var_2 = u_input.c.x;
    var_2 = ~(~4294967295u);
    var var_3 = Struct_3(Struct_2(all(global1.ww), global0.a.b), var_0.x, global0.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, countOneBits(u_input.a), ~(i32(-1i) * -10826i), -1i), min(abs(vec4<i32>(-1i, -3441i, -1858i, global0.b)), countOneBits(vec4<i32>(var_0.x, global0.b, 2147483647i, -13971i))), ~reverseBits(select(vec4<i32>(7913i, u_input.b, -2147483647i, -3657i), vec4<i32>(global0.b, -4455i, 30203i, u_input.b), true))));
    let var_4 = vec4<f32>(global0.a.b, func_2(global2[_wgslsmith_index_u32(global0.c.x, 10u)], global0.a.b).a.b, global0.a.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(247f - global0.a.b), _wgslsmith_f_op_f32(var_3.a.b + var_3.a.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_div_f32(var_3.a.b, var_3.a.b))))))));
    let var_5 = Struct_1(func_2(Struct_1(vec3<u32>(var_3.c.x, 9184u, global0.c.x) & vec3<u32>(var_3.c.x, 65792u, 52171u), vec3<i32>(8030i, u_input.b, -69759i) >> (var_3.c % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) * _wgslsmith_f_op_f32(f32(-1f) * -1252f))).c & vec3<u32>(global0.c.x, _wgslsmith_add_u32(35986u, func_2(global2[_wgslsmith_index_u32(102968u, 10u)], -1000f).c.x), u_input.c.x), global0.d.zwy);
    let var_6 = global1.yzz;
    let x = u_input.a;
    s_output = StorageBuffer(min(global0.d.x, (2147483647i ^ func_2(Struct_1(var_5.a, global0.d.zyw), -343f).d.x) >> (_wgslsmith_mult_u32(u_input.c.x | var_3.c.x, ~var_3.c.x) % 32u)), var_3.c.x, ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_5.a.x, u_input.c.x, 37510u, u_input.c.x)), ~min(vec4<u32>(4294967295u, 1u, 0u, 43066u), vec4<u32>(var_3.c.x, 58201u, var_3.c.x, var_5.a.x))), 0u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.b, global0.a.b, 532f, 1228f) * vec4<f32>(global0.a.b, var_4.x, 1316f, var_4.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.b, 948f, 231f, var_3.a.b), var_4))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(400f, var_3.a.b, var_3.a.b, -1590f) - var_4)))))));
}

