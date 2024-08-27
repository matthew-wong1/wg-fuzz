struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
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

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, true), vec4<u32>(48096u, 71153u, 15041u, 9209u), vec3<f32>(-1000f, -1835f, -1683f), vec4<i32>(23077i, 31380i, 1i, 1i));

var<private> global2: array<u32, 27>;

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(global1.a, firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(select(0u, global2[_wgslsmith_index_u32(1u, 27u)], global1.a.x), ~global2[_wgslsmith_index_u32(global1.b.x, 27u)]), 4294967295u, global1.b.x, ~1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -1503f, global1.c.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.c))))), _wgslsmith_div_vec4_i32(global1.d, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), global1.d.xy), ~u_input.b.x), global1.d.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, global1.d.x), _wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(9509i, global1.d.x), vec2<i32>(global1.d.x, 27230i))), 1i)));
    global0 = array<Struct_1, 23>();
    let var_1 = true;
    let var_2 = var_0.d.zy;
    var var_3 = _wgslsmith_mult_u32(firstTrailingBit(57903u), var_0.b.x);
    return firstLeadingBit(~var_0.b);
}

fn func_2() -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(~global1.b.x ^ 1u, 27u)];
    return max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(12882u, 27u)], 0u), 5710u, ~(~global2[_wgslsmith_index_u32(0u, 27u)])), ~(~global1.b)), ~_wgslsmith_mod_vec4_u32(func_3(), global1.b));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(select(vec2<bool>(select(global1.a.x, true, true), all(select(vec3<bool>(false, false, arg_2.a.x), vec3<bool>(false, false, global1.a.x), vec3<bool>(global1.a.x, arg_1.a.x, arg_1.a.x)))), global1.a, select(vec2<bool>(true, false), select(vec2<bool>(false, false), select(arg_1.a, arg_2.a, arg_2.a), global1.a), select(arg_1.a, !vec2<bool>(true, arg_1.a.x), vec2<bool>(global1.a.x, arg_1.a.x)))), vec4<u32>(_wgslsmith_dot_vec4_u32(func_3(), vec4<u32>(15689u, 1u, global1.b.x, arg_2.b.x) ^ (vec4<u32>(global1.b.x, 1u, arg_1.b.x, 67880u) | arg_1.b)), firstLeadingBit(0u), ~(~(~global1.b.x)), _wgslsmith_mult_u32(20236u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, arg_1.b.x), vec2<u32>(global1.b.x, global2[_wgslsmith_index_u32(global1.b.x, 27u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)), arg_1.d);
    global0 = array<Struct_1, 23>();
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(firstLeadingBit(var_0.b.x), 27u)], global1.b.x, 1u) | ~(~reverseBits(global1.b.x)), 28u)];
    let var_1 = vec3<u32>(global1.b.x, _wgslsmith_sub_u32(arg_2.b.x, abs(_wgslsmith_div_u32(global1.b.x, global2[_wgslsmith_index_u32(arg_1.b.x, 27u)]) << (_wgslsmith_mod_u32(arg_1.b.x, 0u) % 32u))), global2[_wgslsmith_index_u32(abs(~abs(~var_0.b.x)), 27u)]);
    var_0 = arg_2;
    return global3[_wgslsmith_index_u32(85603u, 28u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global1 = func_4(-1i, Struct_1(global1.a, func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.c.x, arg_0.c.x)))) + vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x), _wgslsmith_f_op_f32(select(1000f, global1.c.x, true)))), firstLeadingBit(_wgslsmith_sub_vec4_i32(global1.d, _wgslsmith_clamp_vec4_i32(global1.d, vec4<i32>(-2147483647i, 0i, 2147483647i, 0i), vec4<i32>(global1.d.x, global1.d.x, 33654i, 6643i))))), global3[_wgslsmith_index_u32(~arg_0.b.x, 28u)], 1i);
    var var_0 = select(arg_0.a, vec2<bool>((false != global1.a.x) || false, true), select(arg_0.a, vec2<bool>(true, arg_0.a.x), arg_0.a.x));
    var var_1 = 41394i;
    var_1 = 1i;
    global3 = array<Struct_1, 28>();
    return Struct_1(!global1.a, ~(~(~(global1.b & vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], 33487u, 1u, global1.b.x)))), arg_0.c, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec2<i32>(u_input.c.x, 22633i));
    var var_1 = 16249i;
    var var_2 = func_1(Struct_1(!select(vec2<bool>(global1.a.x, global1.a.x), !global1.a, !global1.a.x), ~min(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], global1.b.x, 4294967295u, global1.b.x), vec4<u32>(global1.b.x, global1.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(140875u, 27u)], 27u)], 27u)], 4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1395f, 468f, -1830f)))), min(-vec4<i32>(global1.d.x, -5563i, u_input.b.x, 0i) >> (vec4<u32>(94621u, 4294967295u, global1.b.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, global1.d.x, -37660i, global1.d.x), vec4<i32>(-12087i, 10820i, u_input.a, var_0.x)))), -9172i | -(~(-27266i >> (global2[_wgslsmith_index_u32(12909u, 27u)] % 32u))));
    var var_3 = Struct_1(select(var_2.a, vec2<bool>(func_1(Struct_1(global1.a, vec4<u32>(var_2.b.x, 8084u, 1u, 59122u), global1.c, global1.d), _wgslsmith_sub_i32(2147483647i, var_0.x)).a.x, true), any(vec3<bool>(true, true, true)) && ((58410u != var_2.b.x) & var_2.a.x)), vec4<u32>(~global2[_wgslsmith_index_u32(0u, 27u)] ^ func_3().x, 0u, var_2.b.x, global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 1u), 27u)]) ^ (_wgslsmith_sub_vec4_u32(global1.b, vec4<u32>(global1.b.x, global1.b.x, global2[_wgslsmith_index_u32(73844u, 27u)], var_2.b.x)) << (global1.b % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-global1.c), select(firstTrailingBit(~vec4<i32>(-56031i, u_input.a, 30806i, 11827i) ^ select(vec4<i32>(42844i, 1i, var_0.x, 7708i), vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, var_2.d.x), false)), vec4<i32>(~(-21983i), max(22878i, -2147483647i), -9537i, -1i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-8087i, 10547i, var_0.x, var_0.x), global1.d, abs(global1.d)), select(select(vec4<bool>(global1.a.x, true, var_2.a.x, var_2.a.x), !vec4<bool>(true, var_2.a.x, global1.a.x, false), vec4<bool>(var_2.a.x, global1.a.x, true, true)), !(!vec4<bool>(true, false, var_2.a.x, true)), !vec4<bool>(global1.a.x, false, true, global1.a.x))));
    let var_4 = _wgslsmith_f_op_f32(-var_2.c.x);
    var var_5 = func_3().zz ^ vec2<u32>(var_2.b.x, 29425u);
    var var_6 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(~(~global2[_wgslsmith_index_u32(42305u, 27u)])), var_2.b.x, func_1(global3[_wgslsmith_index_u32(reverseBits(22327u) & var_5.x, 28u)], 4840i).b.x) & reverseBits(global1.b.x), 23u)];
    let var_7 = ~vec2<i32>(abs(-20082i), reverseBits(0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.c.x), func_4(-38600i, global3[_wgslsmith_index_u32(47817u, 28u)], Struct_1(!var_2.a, vec4<u32>(4294967295u, global1.b.x, 1u, var_3.b.x) << (var_6.b % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.c.x, var_6.c.x, global1.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.x, global1.c.x, var_6.c.x), var_6.c))), func_4(var_6.d.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.b.x, 27u)], 28u)], Struct_1(global1.a, var_6.b, var_3.c, var_2.d), u_input.a).d), -15975i).c);
}

