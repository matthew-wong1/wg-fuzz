struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(19076i, vec4<i32>(i32(-2147483648), -51128i, 0i, -25890i), vec3<u32>(24443u, 10141u, 0u), vec2<u32>(13567u, 0u), 0u);

var<private> global1: Struct_1;

var<private> global2: array<u32, 15> = array<u32, 15>(66810u, 39872u, 0u, 26430u, 1u, 81367u, 4294967295u, 0u, 0u, 9859u, 50418u, 1u, 4294967295u, 97986u, 0u);

var<private> global3: i32 = 1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = -1i;
    return ~global1.b.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(~countOneBits(_wgslsmith_div_i32(2147483647i, global0.a)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1127f))), global0.b, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0.c, vec3<u32>(global1.c.x, global1.e, global0.e)), ~(~global1.c)), ~_wgslsmith_mult_u32(0u, u_input.a), ~(29807u >> (0u % 32u))), reverseBits(min(vec2<u32>(~u_input.a, global0.e), vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(global0.c, global0.c)))), 1u ^ u_input.a);
    global2 = array<u32, 15>();
    global2 = array<u32, 15>();
    var var_1 = ~vec4<u32>(~4294967295u, u_input.a, 4294967295u >> (u_input.a % 32u), _wgslsmith_add_u32(~global1.c.x, u_input.a) ^ global1.c.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1754f + -587f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-827f, -241f, false))), 411f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(290f * -1671f) * _wgslsmith_f_op_f32(ceil(723f)))))));
    return Struct_1(-1i, vec4<i32>(-1i) * -abs(abs(global0.b)), min(~(global0.c & global1.c), ~(~select(vec3<u32>(global1.e, var_1.x, 46745u), var_0.c, vec3<bool>(false, true, false)))), ~select(_wgslsmith_clamp_vec2_u32(global1.d, ~vec2<u32>(var_1.x, 0u), min(vec2<u32>(11285u, global1.d.x), global0.c.zy)), countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.x, 15u)], 15u)], arg_0)), vec2<bool>(false, false)), select(global0.e, ~47947u, select(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true)))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global1 = func_2(max(_wgslsmith_sub_u32(arg_0.x, global0.d.x), u_input.a));
    var var_0 = 80174u;
    var var_1 = Struct_1(2147483647i, _wgslsmith_mult_vec4_i32(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a, -2147483647i, 8086i, global0.b.x), global0.b), global0.b >> (vec4<u32>(0u, global2[_wgslsmith_index_u32(1u, 15u)], u_input.a, 39855u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, global1.a, -1i, 77915i)), _wgslsmith_mult_vec4_i32(global1.b | vec4<i32>(global1.b.x, global1.b.x, global0.b.x, 0i), global1.b) >> (countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, global0.e, arg_0.x), vec4<u32>(global1.d.x, 9357u, arg_0.x, global0.c.x))) % vec4<u32>(32u))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(arg_0.x, 15u)], 0u, 59088u), vec3<u32>(global1.e, arg_0.x, global0.e)), arg_0, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))) << (~(countOneBits(arg_0) & _wgslsmith_add_vec3_u32(arg_0, vec3<u32>(22478u, global1.d.x, arg_0.x))) % vec3<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(~27680u, arg_0.x) ^ ~15104u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global0.d ^ vec2<u32>(global0.c.x, global0.e), max(vec2<u32>(0u, u_input.a), vec2<u32>(global2[_wgslsmith_index_u32(global1.c.x, 15u)], arg_0.x))), _wgslsmith_dot_vec3_u32(arg_0, firstLeadingBit(global1.c)))), global1.c.x);
    global0 = Struct_1(global1.a, abs(func_2(global2[_wgslsmith_index_u32(1u, 15u)]).b), min(abs(global1.c), ~var_1.c), min(~vec2<u32>(arg_0.x, arg_0.x) << (select(~vec2<u32>(1u, arg_0.x), ~vec2<u32>(global0.e, global2[_wgslsmith_index_u32(0u, 15u)]), vec2<bool>(true, true)) % vec2<u32>(32u)), vec2<u32>((global2[_wgslsmith_index_u32(0u, 15u)] >> (63979u % 32u)) & 4294967295u, reverseBits(~7385u))), ~global0.c.x);
    var var_2 = false == !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true)));
    return func_2(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.a, global0.e), global2[_wgslsmith_index_u32(global1.d.x, 15u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.c);
    let var_1 = func_2(global0.d.x);
    let var_2 = ~_wgslsmith_mod_u32(firstLeadingBit(~(global2[_wgslsmith_index_u32(var_0.e, 15u)] << (25377u % 32u))), ~abs(var_0.d.x));
    global3 = _wgslsmith_div_i32(~abs(-50965i), firstTrailingBit(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1719f) * _wgslsmith_f_op_f32(-1680f + -139f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1277f, 324f, -1300f, -491f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, 1542f, -488f, -543f) - vec4<f32>(-931f, 489f, -1000f, -208f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, -1387f, -549f, -1454f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1053f, -826f, 465f, -1022f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, 1233f, -383f, 1054f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(269f, -2240f, -1484f, -2055f))))), any(vec2<bool>(true, _wgslsmith_mod_i32(var_0.b.x, var_0.b.x) == abs(global0.b.x)))));
    let var_4 = Struct_1(-func_2(~(global0.d.x ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)])).a, var_0.b, vec3<u32>(~1u, 1u, ~select(85316u, _wgslsmith_mod_u32(36468u, u_input.a), true)), _wgslsmith_div_vec2_u32(var_1.c.zz | select(~var_1.c.yz, vec2<u32>(global1.c.x, var_1.e), true), ~(global1.d & vec2<u32>(9251u, u_input.a))), ~(~abs(~0u)));
    global2 = array<u32, 15>();
    global3 = _wgslsmith_sub_i32(-global1.a, var_1.b.x);
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(global0.a, var_4.a), vec4<i32>(global0.a, var_0.b.x, i32(-1i) * -1i, -44571i));
}

