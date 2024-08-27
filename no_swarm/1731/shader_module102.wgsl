struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-11318i, -1i, 2147483647i, 2147483647i), 1068f, vec4<i32>(-68070i, 49729i, 1i, i32(-2147483648)), 4294967295u);

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-14148i, 2147483647i), global0.a.zy), ~global2.a.x), _wgslsmith_mod_i32(max(global3.a.x, global0.c.x), 22318i));
    global0 = Struct_1(vec4<i32>(43218i, 1i, ~(-global0.c.x), _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(-global3.c.x, -1i), 0i)), global2.b, -vec4<i32>(-37188i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(global3.c.x, global2.a.x), var_0), global0.c.x, 0i), ~71286u);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1564f, -311f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.b, global3.b), vec2<f32>(global0.b, -1810f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(-1361f, global2.b, false)), global2.b))))));
    var var_2 = -2359i;
    var var_3 = all(vec4<bool>(true, true, any(select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(9237u, 0u, global0.d), 19u)], select(global1[_wgslsmith_index_u32(14011u, 19u)], vec3<bool>(true, false, false), true), true)), all(vec2<bool>(all(vec4<bool>(true, false, false, false)), true))));
    return 1i;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_1(-global0.a, -378f, -firstLeadingBit(countOneBits(vec4<i32>(12887i, -26781i, 2147483647i, -23249i))) | select(vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2.a.x, u_input.b.x), global3.a.zzy), -18342i, func_3()), vec4<i32>(global3.c.x, 21194i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, -34419i), vec3<i32>(global0.c.x, global2.a.x, global2.a.x)), global2.a.x), !any(global1[_wgslsmith_index_u32(u_input.c, 19u)])), _wgslsmith_mod_u32(~min(~global3.d, ~82016u), _wgslsmith_div_u32(global3.d, _wgslsmith_sub_u32(global2.d, global0.d)) | 78937u));
    var var_1 = firstTrailingBit(vec4<i32>(14826i, ~(~global0.a.x), global2.a.x, max(~(var_0.c.x | 10781i), ~(-u_input.b.x))));
    let var_2 = Struct_1(vec4<i32>(-1i) * -global0.c, global0.b, ~firstLeadingBit(global0.c), u_input.c);
    global3 = var_0;
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(ceil(-1085f));
}

fn func_1() -> Struct_1 {
    var var_0 = firstLeadingBit(vec2<u32>(u_input.c, _wgslsmith_mult_u32(~(~u_input.d), ~max(0u, global3.d))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, firstLeadingBit(vec2<u32>(global2.d, 0u))))), _wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(-global0.b)))) >= global2.b;
    global1 = array<vec3<bool>, 19>();
    let var_2 = vec4<f32>(global2.b, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.b, global2.b, all(vec4<bool>(false, false, false, true)))) + global0.b), global0.b);
    global3 = Struct_1(-_wgslsmith_sub_vec4_i32(global0.c, vec4<i32>(-18333i, -34760i, 0i, global3.c.x) << ((vec4<u32>(5165u, global0.d, var_0.x, u_input.d) << (vec4<u32>(global3.d, global2.d, global0.d, global0.d) % vec4<u32>(32u))) % vec4<u32>(32u))), global2.b, ~vec4<i32>(abs(1i) << (abs(var_0.x) % 32u), -14177i, u_input.b.x, global2.a.x), 0u);
    return Struct_1(_wgslsmith_add_vec4_i32(global0.a, -(~min(vec4<i32>(global0.c.x, 9931i, -4466i, global0.a.x), vec4<i32>(19294i, 1i, 12523i, 0i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - global0.b), reverseBits(_wgslsmith_mult_vec4_i32(select(vec4<i32>(global2.a.x, 2147483647i, 27258i, global2.a.x), vec4<i32>(global3.a.x, u_input.a.x, 0i, 22589i), vec4<bool>(false, false, true, false)), _wgslsmith_div_vec4_i32(global0.a, vec4<i32>(22272i, u_input.b.x, 1i, global0.a.x)))) >> (((_wgslsmith_clamp_vec4_u32(vec4<u32>(41275u, global3.d, global2.d, u_input.d), vec4<u32>(93460u, var_0.x, 4294967295u, global3.d), vec4<u32>(4294967295u, 52201u, 4294967295u, global2.d)) | _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 34951u, global2.d, global3.d), vec4<u32>(2047u, var_0.x, global3.d, var_0.x))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 40040u, 0u, 1u) ^ vec4<u32>(u_input.d, global2.d, 0u, 1u), vec4<u32>(var_0.x, 20958u, 17599u, u_input.d) ^ vec4<u32>(global3.d, 1u, u_input.d, 2218u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(23087u, 1u), ~46480u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(~84140u, ~(~abs(global0.d)));
    global3 = func_1();
    var_0 = 3565u;
    global0 = Struct_1(~(-reverseBits(global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) * _wgslsmith_f_op_f32(max(-829f, -692f))), global0.a >> (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(105604u, 4294967295u, 1u, u_input.c), min(vec4<u32>(1u, 4294967295u, global0.d, 1u), vec4<u32>(0u, global2.d, 42753u, global0.d)), vec4<u32>(global3.d, global2.d, global2.d, 0u)), vec4<u32>(0u, ~45234u, ~0u, global3.d)) % vec4<u32>(32u)), global2.d);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(all(vec4<bool>(true, false, true, select(true, true, false))), ~_wgslsmith_add_vec2_u32(vec2<u32>(global0.d, 14481u) << (vec2<u32>(global0.d, global2.d) % vec2<u32>(32u)), ~vec2<u32>(global0.d, global3.d)))) * 180f);
    let var_2 = ~(~72166u);
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec3<u32>(global2.d, 58345u, 31130u))) & vec3<u32>(~25033u, u_input.d, reverseBits(~global3.d)), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_dot_vec3_i32(global0.a.wxy, (~global2.a.zxx | global3.c.yxw) >> (firstLeadingBit(~vec3<u32>(global3.d, 1u, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, global2.b), vec2<f32>(global2.b, global3.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1939f, -2359f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global3.b, _wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(-1588f * -1176f)))), 1146f)));
}

