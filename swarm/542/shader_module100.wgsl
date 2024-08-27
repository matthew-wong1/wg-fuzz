struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
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

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(311f, true, 4261u, false, Struct_1(vec3<bool>(true, true, true), -2203f, false, vec4<u32>(1u, 4294967295u, 4294967295u, 0u))), Struct_2(1000f, true, 1u, false, Struct_1(vec3<bool>(false, true, true), 1196f, true, vec4<u32>(4294967295u, 44589u, 34067u, 12239u))), Struct_2(-176f, true, 1u, false, Struct_1(vec3<bool>(false, true, false), -718f, true, vec4<u32>(4294967295u, 0u, 35101u, 4294967295u))), Struct_2(-256f, false, 4294967295u, false, Struct_1(vec3<bool>(true, false, false), 182f, false, vec4<u32>(42168u, 19705u, 17277u, 22929u))), Struct_2(-1000f, false, 0u, false, Struct_1(vec3<bool>(false, false, true), 118f, true, vec4<u32>(15225u, 3002u, 58049u, 49390u))), Struct_2(-359f, true, 0u, false, Struct_1(vec3<bool>(false, false, true), -822f, false, vec4<u32>(1u, 18422u, 1212u, 1u))));

var<private> global1: Struct_5;

var<private> global2: array<vec4<bool>, 11>;

var<private> global3: Struct_2;

var<private> global4: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(22026u, 5791u), vec2<u32>(25592u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    global1 = Struct_5(~vec2<i32>(-2147483647i, firstLeadingBit(-global1.a.x)), vec4<bool>(select(true, !any(global3.e.a), all(vec2<bool>(global3.b, global3.d))), global3.b, true, all(vec3<bool>(false, global3.d, true)) && true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(954f, global3.a, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -518f))))));
    return firstTrailingBit(abs(u_input.b.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: i32) -> bool {
    let var_0 = arg_2;
    global3 = Struct_2(global3.e.b, !(~arg_1.a.x >= ~firstLeadingBit(0u)), abs(13061u), any(global1.b.xw), global3.e);
    global3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.e.b)) * global1.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b))), global1.b.x, arg_1.c.d.x, !(!all(arg_1.c.a.yx) != !(global3.d || arg_1.c.c)), Struct_1(select(global1.b.wxz, !(!arg_1.c.a), global3.e.a), global3.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(19204u, 2834u), _wgslsmith_add_u32(arg_1.a.x, 1u)) > _wgslsmith_div_u32(u_input.c, max(59155u, 4294967295u)), global3.e.d));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(17960i, -32308i), vec2<i32>(-42615i, global1.a.x)), vec2<i32>(arg_2, 29132i), ~vec2<i32>(global1.a.x, var_1.x)), vec2<i32>(-1i, -2147483647i), _wgslsmith_div_vec2_i32(global1.a, var_1) >> (global3.e.d.wx % vec2<u32>(32u)))), _wgslsmith_add_vec2_i32(vec2<i32>(~abs(u_input.b.x), var_1.x), u_input.b & ~(-global1.a)));
    return true;
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = firstTrailingBit(~global1.a);
    global0 = array<Struct_2, 6>();
    global4 = array<vec2<u32>, 2>();
    var var_1 = Struct_5(~global1.a, select(vec4<bool>(global3.d & (u_input.a > global3.e.d.x), any(vec2<bool>(true, global1.b.x)), global3.d, global1.a.x <= 0i), vec4<bool>(global1.b.x, any(!vec3<bool>(global3.b, false, global1.b.x)), global3.b, true), !func_4(!global1.b.xx, Struct_4(global3.e.d, vec3<f32>(arg_0.x, -776f, arg_0.x), Struct_1(global3.e.a, global3.a, true, global3.e.d)), func_3())), global1.c);
    var var_2 = !any(select(!global1.b.xyx, global1.b.xwz, global3.e.a));
    return Struct_4(~(global3.e.d << (global3.e.d % vec4<u32>(32u))) | (global3.e.d ^ vec4<u32>(global3.c, 9225u, 6199u, global3.e.d.x | 0u)), _wgslsmith_f_op_vec3_f32(floor(arg_0.zwz)), Struct_1(!(!select(var_1.b.zww, global3.e.a, vec3<bool>(global1.b.x, false, global3.e.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * global1.c) * -701f), global3.d, ~(vec4<u32>(global3.e.d.x, 31828u, global3.c, global3.c) << (vec4<u32>(22422u, 53970u, 0u, u_input.d) % vec4<u32>(32u)))));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_5) -> vec3<u32> {
    global1 = arg_3;
    var var_0 = ~1u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1133f, 406f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -194f)))));
    var var_2 = 0i;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1603f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b - 1102f)))), -528f))));
    return vec3<u32>(44443u, _wgslsmith_clamp_u32(u_input.d, abs(abs(~arg_0.c.d.x)), ~_wgslsmith_mod_u32(~1u, arg_2.x)), u_input.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<u32> {
    global2 = array<vec4<bool>, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.c, -669f))), -1454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.b)))));
    global3 = global0[_wgslsmith_index_u32(17487u, 6u)];
    return vec4<u32>(arg_0.d.x, _wgslsmith_dot_vec3_u32((arg_0.d.yxy >> (~vec3<u32>(u_input.a, 54916u, 9432u) % vec3<u32>(32u))) | func_5(func_2(var_0), u_input.b.x, ~global3.e.d.xwy, Struct_5(vec2<i32>(u_input.b.x, arg_1.x), vec4<bool>(false, true, false, arg_0.a.x), arg_0.b)), vec3<u32>(1u, ~u_input.a, 0u)), ~(~(~u_input.a)) >> (_wgslsmith_sub_u32(arg_0.d.x, _wgslsmith_mult_u32(1u & arg_0.d.x, arg_0.d.x >> (0u % 32u))) % 32u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(false, !global3.b, global1.b.x), global3.a, true, select(~(global3.e.d >> (global3.e.d % vec4<u32>(32u))) | func_1(Struct_1(vec3<bool>(false, global3.b, true), global1.c, global1.b.x, global3.e.d), vec4<i32>(global1.a.x, global1.a.x, -33128i, 27042i) << (vec4<u32>(4294967295u, 1u, 350u, 0u) % vec4<u32>(32u))), global3.e.d, global3.b));
    var var_1 = vec4<f32>(1971f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.c - global3.e.b))), -827f, _wgslsmith_f_op_f32(748f * -1000f));
    var var_2 = var_1.xw;
    let var_3 = global0[_wgslsmith_index_u32(13890u, 6u)];
    let var_4 = _wgslsmith_f_op_f32(var_0.b - global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

