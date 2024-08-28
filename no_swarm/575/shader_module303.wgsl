struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(0u, 1u, 0u, 8593u, 1u, 1u, 53109u, 50383u, 4294967295u, 0u, 1u, 33244u, 0u, 512u, 4294967295u, 4294967295u, 73019u, 116918u, 4294967295u, 4294967295u, 51880u, 0u, 67764u, 1552u, 21381u, 0u, 21296u, 64878u, 16866u, 23942u, 1u, 1u);

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(-5929i, i32(-2147483648)), vec4<i32>(1i, -6102i, 16102i, 10180i), 41486u);

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(-54276i, 49896i), vec4<i32>(0i, i32(-2147483648), 0i, 2147483647i), 18451u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = 1i;
    let var_1 = _wgslsmith_add_i32(-1i, global2.b.x);
    let var_2 = all(global2.a.wx);
    let var_3 = arg_0;
    return global2.a;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-837f + _wgslsmith_f_op_f32(min(arg_1.x, 699f))), arg_1.x, _wgslsmith_sub_u32(1u, global2.d) == _wgslsmith_sub_u32(1u, 0u))), arg_1.x, 623f));
    global1 = _wgslsmith_add_u32(~(~(_wgslsmith_clamp_u32(20906u, 83419u, u_input.c) | ~global2.d)), global3.d);
    var var_1 = Struct_1(!select(select(!vec4<bool>(false, false, false, global2.a.x), select(global2.a, vec4<bool>(true, false, global2.a.x, false), global2.a), !global2.a), vec4<bool>(global2.b.x > global3.b.x, any(vec4<bool>(true, global2.a.x, global2.a.x, false)), true, true), global2.a), global3.b, firstLeadingBit(global2.c), ~13611u);
    let var_2 = Struct_1(select(!(!(!vec4<bool>(false, true, false, global3.a.x))), !(!func_2(Struct_1(global3.a, vec2<i32>(-1i, u_input.b), vec4<i32>(2147483647i, -1i, 1i, 29852i), var_1.d))), false), abs(~global2.b), vec4<i32>(-1i, 2147483647i, _wgslsmith_mult_i32(40781i, ~global2.c.x), 9829i | global2.b.x), u_input.c);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -831f)), arg_1.x);
    return any(global2.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = arg_1;
    global1 = arg_1.d;
    var var_1 = global2.c;
    var var_2 = arg_1;
    global1 = _wgslsmith_add_u32(var_0.d, global3.d);
    return _wgslsmith_clamp_u32(~abs(global3.d), 0u, global3.d);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> StorageBuffer {
    global3 = Struct_1(select(func_2(Struct_1(select(arg_1.a, arg_3.a, arg_3.a.x), arg_3.c.xy, -arg_3.c, _wgslsmith_mod_u32(34488u, global0[_wgslsmith_index_u32(arg_3.d, 32u)]))), arg_0.a, !vec4<bool>(func_2(Struct_1(global2.a, global2.b, vec4<i32>(-7117i, arg_1.b.x, 1i, -1i), 1u)).x, true, !arg_1.a.x, arg_3.b.x == -28056i)), arg_0.b, firstTrailingBit(global3.c), countOneBits(global3.d));
    let var_0 = arg_0;
    var var_1 = abs(~((_wgslsmith_mult_u32(arg_0.d, arg_0.d) << (0u % 32u)) ^ (global2.d | (var_0.d ^ 29318u))));
    return StorageBuffer(~(-1i ^ arg_1.b.x) << (_wgslsmith_sub_u32(arg_0.d, _wgslsmith_div_u32(arg_3.d | 1u, ~arg_3.d)) % 32u), vec4<u32>(~(4294967295u & _wgslsmith_div_u32(arg_3.d, 45878u)), func_4(4294967295u, arg_3, func_3(-32008i, vec4<f32>(592f, 1358f, 416f, -1024f))), 28041u, firstLeadingBit(arg_1.d)), firstLeadingBit(~firstLeadingBit(global2.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-446f, 553f), _wgslsmith_f_op_f32(round(-433f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-555f, 424f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-(~_wgslsmith_mod_i32(abs(global3.b.x), 3780i)), 64081i, true);
    let var_1 = Struct_1(vec4<bool>(1u <= ~_wgslsmith_mult_u32(global3.d, global3.d), global3.a.x, (reverseBits(global2.d) | global0[_wgslsmith_index_u32(55298u, 32u)]) > ~(~global0[_wgslsmith_index_u32(4294967295u, 32u)]), global3.a.x), ~(vec2<i32>(-11833i, global3.b.x << (u_input.c % 32u)) ^ -global2.b), vec4<i32>(-2147483647i, global2.b.x, -44792i, -global3.b.x), u_input.c);
    var var_2 = global2.d;
    var var_3 = var_1.b.x > global2.b.x;
    global2 = var_1;
    var var_4 = global3.c.x | u_input.a;
    let var_5 = var_1;
    let x = u_input.a;
    s_output = func_1(Struct_1(global3.a, countOneBits(vec2<i32>(global3.c.x, var_1.b.x)), var_5.c, firstLeadingBit(22571u)), var_1, global2.a.yxx, Struct_1(var_5.a, var_1.c.wx, (vec4<i32>(global2.c.x, -72692i, global2.b.x, var_1.c.x) & _wgslsmith_add_vec4_i32(vec4<i32>(global2.b.x, -1i, 1i, 0i), vec4<i32>(-2147483647i, -11832i, var_5.c.x, -23744i))) ^ vec4<i32>(~global2.c.x, -43972i, _wgslsmith_mult_i32(23311i, -38773i), 32493i), var_5.d));
}

