struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_2,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: Struct_3 = Struct_3(vec3<i32>(22654i, 2147483647i, 2147483647i), vec4<u32>(14375u, 0u, 10096u, 70495u), Struct_2(Struct_1(true, vec4<i32>(1i, -6944i, -1i, 8594i), vec4<f32>(210f, 938f, 636f, 1178f), 26539u), Struct_1(true, vec4<i32>(i32(-2147483648), 9042i, -7534i, 1i), vec4<f32>(757f, -414f, 250f, 920f), 19546u), 0u), 48161u, vec2<bool>(true, false));

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_3, 32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = global1.c.b;
    var var_1 = global1.c.a;
    var_1 = global1.c.a;
    var var_2 = Struct_3(~firstLeadingBit(~var_0.b.zzx), ~vec4<u32>(~(~arg_0), global1.b.x, ~u_input.d.x, global1.b.x), global1.c, ~var_0.d, vec2<bool>(!var_0.a, !any(global1.e) & false));
    var var_3 = firstTrailingBit(vec4<u32>(abs(reverseBits(var_2.c.b.d)), abs(~1u), ~(var_1.d >> (var_2.d % 32u)) >> (~(~4294967295u) % 32u), var_0.d));
    return Struct_2(global1.c.b, global1.c.b, ~(~4294967295u));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    var var_0 = global1.c.a.b.yxx;
    var var_1 = Struct_1(!(_wgslsmith_add_u32(~4294967295u, arg_1.x ^ u_input.e.x) <= _wgslsmith_div_u32(global1.c.b.d, 1u)), vec4<i32>(_wgslsmith_sub_i32(abs(min(-15270i, global1.c.b.b.x)), -_wgslsmith_sub_i32(-1i, var_0.x)), _wgslsmith_dot_vec2_i32(-global1.a.yx, _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.c.a.b.x, u_input.a), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, -19127i))) << (func_2(21450u).c % 32u), arg_0, (arg_0 ^ 0i) & _wgslsmith_sub_i32(arg_0, _wgslsmith_add_i32(5503i, 1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(186f - global1.c.b.c.x)), 395f, _wgslsmith_f_op_f32(-global1.c.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -470f))), u_input.d.x);
    var var_2 = func_2(abs(~(arg_1.x << (arg_1.x % 32u)))).b;
    var_1 = func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global1.b.yww, _wgslsmith_sub_vec3_u32(vec3<u32>(27120u, u_input.d.x, arg_1.x), arg_1)) ^ arg_1, ~(~vec3<u32>(38464u, var_2.d, u_input.e.x)))).b;
    let var_3 = func_2(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(var_2.d, 8503u, arg_1.x)), arg_1)).b;
    return var_1.b.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(arg_1.c.a, Struct_1(false, global1.c.b.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1229f, 951f, global2.x, -116f) - global1.c.b.c))), _wgslsmith_clamp_u32(7273u, arg_3, 4294967295u)), ~9064u);
    var var_1 = _wgslsmith_sub_vec3_i32(min(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.c, 0i), firstTrailingBit(vec3<i32>(~arg_2.x, 0i, 0i))), _wgslsmith_div_vec3_i32(select(arg_1.a, firstTrailingBit(vec3<i32>(-20824i, -3114i, -26995i)), arg_1.c.a.a), -arg_1.c.b.b.yxx) >> (global1.b.yww % vec3<u32>(32u)));
    let var_2 = select(vec3<bool>(true, arg_1.e.x, global0[_wgslsmith_index_u32(1u, 26u)]), select(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)], var_0.b.a), select(vec3<bool>(true, global1.c.a.a, var_0.b.a), vec3<bool>(global1.e.x, false, global1.e.x), false), global0[_wgslsmith_index_u32(arg_3, 26u)]), vec3<bool>(global1.e.x, true, func_2(arg_0.x).a.a), !(!vec3<bool>(true, true, arg_1.c.a.a))), vec3<bool>(any(vec4<bool>(global1.c.a.a, true, global1.c.b.a, false)), func_2(arg_3).b.a, true), select(!vec3<bool>(var_0.b.a, false, global0[_wgslsmith_index_u32(global1.b.x, 26u)]), vec3<bool>(var_0.a.a | arg_1.c.b.a, true, arg_1.c.a.a), !select(vec3<bool>(false, false, var_0.b.a), vec3<bool>(global1.e.x, true, global1.e.x), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 26u)], false)))), select(select(select(vec3<bool>(false, false, false), !vec3<bool>(true, arg_1.e.x, true), !vec3<bool>(arg_1.e.x, true, true)), vec3<bool>(arg_1.e.x, true, arg_3 >= 1u), select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 26u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 26u)], var_0.a.a), global0[_wgslsmith_index_u32(61076u, 26u)]), !vec3<bool>(global1.e.x, true, true), all(vec2<bool>(true, false)))), select(select(vec3<bool>(global1.c.b.a, global0[_wgslsmith_index_u32(arg_0.x, 26u)], global1.c.a.a), !vec3<bool>(global1.e.x, true, arg_1.e.x), !vec3<bool>(false, var_0.b.a, false)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(global1.e.x, false, global1.c.a.a), var_0.a.a), !vec3<bool>(var_0.b.a, false, false), -30160i != var_1.x)), global1.c.b.a));
    global1 = global3[_wgslsmith_index_u32(~(_wgslsmith_div_u32(abs(abs(arg_1.b.x)), arg_3) & 16473u), 32u)];
    var var_3 = arg_1.c.b;
    return func_2(arg_0.x);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = array<bool, 26>();
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1062f) - global1.c.b.c.yw);
    var var_0 = global1.c;
    global3 = array<Struct_3, 32>();
    var var_1 = -989f;
    return func_4(vec3<u32>(_wgslsmith_div_u32(0u, global1.d), 4294967295u, 1u >> (min(global1.b.x, 0u) % 32u)), Struct_3(var_0.a.b.xyy & vec3<i32>(-21128i, 45089i, -1i), global1.b, func_2(~1u), var_0.b.d, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 26u)])), firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(-7525i, func_3(-11462i, vec3<u32>(u_input.e.x, u_input.b.x, var_0.b.d))), func_3(arg_0.b.x & 45015i, vec3<u32>(117981u, u_input.e.x, u_input.b.x) & vec3<u32>(4294967295u, 1u, u_input.b.x)))), ~(~arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.c.a);
    let var_1 = _wgslsmith_mod_u32(14447u, func_2(abs(~_wgslsmith_div_u32(0u, global1.b.x))).a.d);
    var var_2 = global3[_wgslsmith_index_u32(abs(abs(global1.c.b.d)) & var_0.a.d, 32u)];
    let var_3 = Struct_2(Struct_1(true, ~vec4<i32>(reverseBits(var_2.a.x), var_0.a.b.x, -var_0.a.b.x, _wgslsmith_dot_vec4_i32(var_2.c.a.b, vec4<i32>(var_2.a.x, global1.c.b.b.x, u_input.a, -43905i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1079f, _wgslsmith_f_op_f32(-165f * -1528f), _wgslsmith_f_op_f32(f32(-1f) * -810f), 675f)), 1u), var_0.a, 17391u);
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(575f, var_0.a.c.x), global1.c.a.c.xx)) - _wgslsmith_f_op_vec2_f32(floor(func_2(19081u ^ var_2.b.x).b.c.zz)))));
    var var_5 = 39730u;
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_2(4294967295u).b.c.x, var_0.a.c.x, global1.c.a.c.x, 1466f), vec4<f32>(global1.c.b.c.x, -1000f, func_2(_wgslsmith_add_u32(1u, global1.b.x)).b.c.x, func_2(reverseBits(0u)).a.c.x), !(!select(vec4<bool>(false, var_2.c.a.a, var_2.e.x, var_3.a.a), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)], false, var_2.c.b.a), vec4<bool>(var_3.a.a, global0[_wgslsmith_index_u32(var_0.c, 26u)], true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.a.b.x, global1.c.a.b.x, 3624i), var_2.b.x, max(firstTrailingBit(0i), -9419i), var_2.c.a.b.x);
}

