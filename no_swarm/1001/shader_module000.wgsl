struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-1137f, 253f, 2349f, -543f, 482f, 1565f, -1458f, -1443f, -1543f, 314f, 967f, -280f, 1000f, -883f, 386f, 177f, 504f, 374f);

var<private> global1: bool = true;

var<private> global2: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_2(vec2<u32>(u_input.a, 4510u));
    var var_1 = Struct_2(max(~(~vec2<u32>(55447u, 0u)), ~abs(u_input.c.wx)) | u_input.c.xy);
    let var_2 = Struct_1(vec4<f32>(arg_1.a.x, -1093f, _wgslsmith_f_op_f32(396f + _wgslsmith_f_op_f32(min(global2.a.x, _wgslsmith_f_op_f32(exp2(arg_1.a.x))))), arg_1.a.x));
    let var_3 = 66892u;
    var var_4 = ~(~(~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(u_input.c.yw, vec2<u32>(u_input.a, 0u)))));
    return _wgslsmith_f_op_f32(1257f * global0[_wgslsmith_index_u32(var_3, 18u)]);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(min(1000f, arg_3.a.x))) - global2.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2002f * _wgslsmith_f_op_f32(-arg_3.a.x)) + _wgslsmith_f_op_f32(func_3(0i, Struct_1(vec4<f32>(arg_2.x, 387f, -631f, 178f)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b))))));
    global0 = array<f32, 18>();
    var var_1 = -2147483647i;
    let var_2 = var_0;
    global1 = !(!arg_0);
    return Struct_2(u_input.c.zz);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    var var_0 = any(!(!vec4<bool>(arg_0, arg_0 || arg_0, true, any(vec2<bool>(arg_0, true)))));
    var var_1 = arg_1;
    let var_2 = func_2(false, global2.a.x, _wgslsmith_f_op_vec4_f32(-global2.a), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global2.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -535f, -1485f, global0[_wgslsmith_index_u32(var_1.a.x, 18u)]) * vec4<f32>(826f, -841f, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(var_1.a.x, 18u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.a.x, global0[_wgslsmith_index_u32(u_input.d, 18u)], 1522f, global2.a.x), global2.a)))))));
    var var_3 = func_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, 0i, 8003i)), select(vec3<i32>(u_input.b.x, 36858i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 7225i), vec3<bool>(arg_0, arg_0, true))), 0i) != min(firstTrailingBit(u_input.b.x), u_input.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(-global2.a), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -925f), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(35872u, 18u)])), _wgslsmith_f_op_f32(func_3(u_input.b.x, Struct_1(vec4<f32>(1000f, 913f, global2.a.x, 575f)), vec2<i32>(2147483647i, 2532i))), global2.a.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(134f, global2.a.x, 733f, 884f) * vec4<f32>(637f, 1286f, 148f, -142f))))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(21851u, 18u)] + global2.a.x), _wgslsmith_f_op_f32(floor(-369f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.a.x, 18u)], global0[_wgslsmith_index_u32(26565u, 18u)]), -379f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.a), vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(var_1.a.x, 18u)], 605f, global0[_wgslsmith_index_u32(var_2.a.x, 18u)]), u_input.b.x != 2526i)))));
    return func_2(any(select(!select(vec4<bool>(false, false, arg_0, false), vec4<bool>(arg_0, false, false, false), arg_0), select(!vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), true), select(vec4<bool>(true, arg_0, arg_0, false), !vec4<bool>(true, false, arg_0, arg_0), select(vec4<bool>(true, false, arg_0, false), vec4<bool>(true, true, arg_0, true), vec4<bool>(false, arg_0, arg_0, arg_0))))), _wgslsmith_f_op_f32(var_4.a.x + global0[_wgslsmith_index_u32(u_input.d, 18u)]), var_4.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(182f, 146f, var_4.a.x, 761f), vec4<f32>(global2.a.x, global0[_wgslsmith_index_u32(12480u, 18u)], 1233f, -1000f), vec4<bool>(false, true, false, true)))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_2.a);
    let var_1 = max(-vec4<i32>(2147483647i, 11209i | u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1, u_input.b.x, u_input.b.x), vec4<i32>(arg_1, -10952i, 8998i, 9318i)), _wgslsmith_dot_vec4_i32(vec4<i32>(45479i, -16433i, arg_1, 0i), vec4<i32>(arg_1, arg_1, u_input.b.x, -1i))) >> (select(select(vec4<u32>(43023u, 4294967295u, 1u, arg_0.a.x), u_input.c, true) | ~vec4<u32>(4294967295u, 4294967295u, 14247u, 0u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0.a.x, arg_0.a.x, 1u), u_input.c), true) % vec4<u32>(32u)), countOneBits(abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, u_input.b.x, arg_1, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, arg_1, arg_1, arg_1), vec4<i32>(u_input.b.x, u_input.b.x, 1i, arg_1), vec4<i32>(arg_1, arg_1, u_input.b.x, u_input.b.x))))));
    global2 = arg_2;
    global2 = arg_2;
    var var_2 = var_1;
    return func_2(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(abs(1027f)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(0i, var_2.x), Struct_1(vec4<f32>(arg_2.a.x, -603f, global2.a.x, global0[_wgslsmith_index_u32(0u, 18u)])), -vec2<i32>(u_input.b.x, var_1.x))))), -146f, -1945f, _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(func_3(~var_2.x, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(75650u, 18u)], global2.a.x, global0[_wgslsmith_index_u32(0u, 18u)])), min(vec2<i32>(-1i, 66265i), var_1.ww))))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    let var_0 = func_4(func_1(select(_wgslsmith_dot_vec3_i32(vec3<i32>(14670i, u_input.b.x, 15660i), vec3<i32>(0i, -36018i, u_input.b.x)), abs(u_input.b.x), true) < 23119i, Struct_2(~_wgslsmith_div_vec2_u32(u_input.c.xw, u_input.c.zy))), reverseBits(~_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b.x, 40811i), u_input.b.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-899f)), _wgslsmith_f_op_f32(trunc(807f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(278f)) + _wgslsmith_f_op_f32(min(1074f, global0[_wgslsmith_index_u32(4294967295u, 18u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.d), 18u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1854f - global2.a.x), 1066f))), _wgslsmith_f_op_f32(ceil(global2.a.x))));
    var var_1 = ~vec4<u32>(0u, ~(~_wgslsmith_add_u32(var_0.a.x, 4294967295u)), 76896u, 0u);
    var var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a));
    var_2 = Struct_2(firstTrailingBit(max(vec2<u32>(countOneBits(var_0.a.x), _wgslsmith_mult_u32(var_0.a.x, var_1.x)), func_1(true, var_0).a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.b.x, 1i, 86993i, -1i)), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 14054i, -22644i), u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, -17713i), _wgslsmith_sub_i32(2147483647i, u_input.b.x))) ^ (vec4<i32>(u_input.b.x << (4294967295u % 32u), u_input.b.x, _wgslsmith_div_i32(-2147483647i, u_input.b.x), 0i) ^ ~max(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 22299i, u_input.b.x, -2147483647i))), u_input.c.wzw, ~(~4294967295u), ~u_input.b.x);
}

