struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 30>;

var<private> global2: array<Struct_1, 17>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(4294967295u, 4294967295u, 27349u, 4294967295u), 4294967295u, 1i, 91450u);

var<private> global4: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    global4 = global2[_wgslsmith_index_u32(4294967295u, 17u)];
    global4 = Struct_1(global4.a, 0u, -reverseBits(arg_0.c), min(select(global4.b, min(global4.d, ~24539u), any(vec2<bool>(true, true))), ~u_input.b));
    var var_0 = arg_0;
    var_0 = global2[_wgslsmith_index_u32(~2444u, 17u)];
    let var_1 = false;
    return countOneBits((arg_0.c | _wgslsmith_sub_i32(global3.c >> (9340u % 32u), _wgslsmith_sub_i32(arg_0.c, 27339i))) ^ _wgslsmith_sub_i32(-1914i, 1i));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = vec4<u32>(countOneBits(_wgslsmith_mod_u32(~global4.b, 58960u)), countOneBits(~69031u), 58290u, ~arg_2.b);
    var var_1 = Struct_1(var_0, 1u, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, func_3(arg_0, -1394f))), global0.zy), global3.a.x);
    let var_2 = arg_0;
    global3 = global2[_wgslsmith_index_u32(select(~(~var_1.a.x), min(~(var_2.d << (_wgslsmith_clamp_u32(108825u, 0u, var_2.a.x) % 32u)), ~6077u), !arg_1), 17u)];
    let var_3 = Struct_1(~var_0, ~(var_0.x | ~1u), 10229i, _wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(0u >> (1u % 32u), ~var_0.x)) & 3055u);
    return Struct_1(~_wgslsmith_mod_vec4_u32(u_input.a ^ vec4<u32>(65605u, var_0.x, 1u, var_2.d), ~(vec4<u32>(var_2.a.x, u_input.c, 90630u, 4294967295u) ^ var_1.a)), var_2.b, var_2.c, select(0u, _wgslsmith_dot_vec4_u32(~(~var_2.a), var_3.a ^ _wgslsmith_mod_vec4_u32(var_0, vec4<u32>(12177u, arg_2.a.x, 38921u, 0u))), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> bool {
    global0 = _wgslsmith_mod_vec3_i32(abs(vec3<i32>(_wgslsmith_div_i32(global4.c, -2147483647i) >> (28741u % 32u), -(i32(-1i) * -1i), ~u_input.e)), vec3<i32>(global3.c, -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global0.zy, vec2<i32>(0i, 42262i)), arg_0.c), _wgslsmith_clamp_i32(func_3(global2[_wgslsmith_index_u32(17890u, 17u)], 492f), 1i << (_wgslsmith_sub_u32(u_input.a.x, arg_0.b) % 32u), u_input.e)));
    var var_0 = arg_2;
    let var_1 = !(!vec4<bool>(any(!vec4<bool>(var_0.x, arg_2.x, true, var_0.x)), !var_0.x && false, any(vec4<bool>(false, arg_2.x, true, true)), false));
    var_0 = select(vec2<bool>(select(var_1.x, var_0.x, all(select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_0.x, false, arg_2.x), vec3<bool>(false, arg_2.x, var_0.x)))), !var_0.x), var_1.zw, var_1.x);
    let var_2 = -(~(~global4.c) << (_wgslsmith_dot_vec3_u32(vec3<u32>(32289u, 0u, abs(global3.a.x)), select(_wgslsmith_mult_vec3_u32(arg_1.a.zxy, u_input.a.xzx), vec3<u32>(106845u, 4294967295u, 1u) | vec3<u32>(global3.b, global4.a.x, 55750u), select(var_1.x, false, arg_2.x))) % 32u));
    return !(!(!var_0.x));
}

fn func_1() -> vec2<bool> {
    var var_0 = all(select(!vec3<bool>(all(vec2<bool>(false, true)), true, true), !vec3<bool>(true, all(vec2<bool>(false, false)), all(vec3<bool>(false, false, false))), true | func_4(func_2(global2[_wgslsmith_index_u32(108679u, 17u)], false, Struct_1(u_input.a, 2539u, 1i, 0u), vec4<i32>(global4.c, -2147483647i, -18196i, global4.c)), Struct_1(global4.a, 33944u, global4.c, 1u), vec2<bool>(false, true), global1[_wgslsmith_index_u32(38066u >> (global4.b % 32u), 30u)])));
    var var_1 = Struct_1(countOneBits(reverseBits(vec4<u32>(1u, global4.d, 68012u, 11232u)) << (~vec4<u32>(global3.a.x, 4294967295u, global3.a.x, u_input.b) % vec4<u32>(32u))), 0u, 2147483647i, 1u);
    var var_2 = func_2(func_2(global2[_wgslsmith_index_u32(abs(global3.a.x), 17u)], select(any(vec4<bool>(true, true, true, true)), !select(true, true, true), _wgslsmith_clamp_u32(global4.b, global4.a.x, var_1.d) >= _wgslsmith_clamp_u32(global4.b, global3.b, u_input.a.x)), Struct_1(vec4<u32>(abs(global3.a.x), select(30410u, var_1.d, true), ~global4.b, select(0u, var_1.a.x, false)), ~(~global4.b), firstLeadingBit(global3.c), 34477u), -vec4<i32>(func_3(Struct_1(vec4<u32>(global3.d, 314u, 1u, 1u), 4294967295u, 6470i, u_input.d), global1[_wgslsmith_index_u32(global3.b, 30u)]), i32(-1i) * -14652i, _wgslsmith_mod_i32(global3.c, global4.c), ~global0.x)), true, Struct_1(vec4<u32>(59230u, 1u, 16292u, abs(u_input.b)), ~global4.b, ~10313i, ~firstLeadingBit(u_input.a.x)), ~reverseBits(firstLeadingBit(vec4<i32>(1i, -34504i, 45396i, global0.x))));
    let var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(global3.a, global4.a), _wgslsmith_mod_u32(1u, ~global3.a.x)), var_2.b), 30u)];
    return !(!(!select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), all(vec3<bool>(false, false, true)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = vec4<u32>(0u, ~1u, ~(arg_2.x & 4294967295u), firstTrailingBit(59436u));
    let var_1 = countOneBits(vec3<i32>(9158i, -(48175i | max(global0.x, global4.c)), ~(~_wgslsmith_sub_i32(global3.c, 0i))));
    global3 = global2[_wgslsmith_index_u32(36970u, 17u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~18236u, ~(~1u), 50646u), vec3<u32>(69327u, var_0.x, 0u)), 17u)];
    let var_3 = func_2(global2[_wgslsmith_index_u32(~min(select(4294967295u, 4294967295u, arg_1), reverseBits(var_2.b)), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global3.a.x, 30u)])) >= 1667f, Struct_1(~(~select(vec4<u32>(u_input.b, 4294967295u, 29401u, 30867u), vec4<u32>(arg_2.x, var_0.x, 4294967295u, 1u), vec4<bool>(arg_1, false, arg_1, false))), 18846u, global4.c, ~firstTrailingBit(29059u)), select(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.x, 2147483647i, -2147483647i, global4.c), vec4<i32>(global4.c, -60107i, 2147483647i, global3.c)), vec4<i32>(0i, u_input.e, abs(global0.x), _wgslsmith_clamp_i32(var_1.x, global0.x, -1i)), any(select(vec3<bool>(true, arg_0.x, arg_1), vec3<bool>(true, false, arg_1), vec3<bool>(false, true, true)))) >> (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(var_0.x, var_0.x, 5108u, var_0.x) & vec4<u32>(5603u, global4.b, 4294967295u, var_0.x)), u_input.a) % vec4<u32>(32u)));
    return _wgslsmith_add_vec4_u32(func_2(global2[_wgslsmith_index_u32(var_3.b, 17u)], arg_0.x, Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.d, global4.d, u_input.a.x, u_input.c) ^ var_2.a, _wgslsmith_mult_vec4_u32(vec4<u32>(global3.d, global3.a.x, 4294967295u, 0u), vec4<u32>(var_3.a.x, var_3.b, global3.b, var_0.x))), var_3.d, global4.c, firstTrailingBit(4294967295u)), vec4<i32>(1i, var_3.c, func_2(global2[_wgslsmith_index_u32(firstLeadingBit(22475u), 17u)], arg_0.x || false, func_2(Struct_1(vec4<u32>(var_2.b, arg_2.x, 28395u, 67577u), global3.a.x, 0i, 36896u), false, Struct_1(u_input.a, var_0.x, var_2.c, 0u), vec4<i32>(global4.c, 0i, var_1.x, var_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 19452i, global0.x, -22441i), vec4<i32>(1i, var_3.c, 2147483647i, arg_3.x))).c, -2147483647i)).a, ~(~countOneBits(~var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~max(global3.a.wzw, ~global3.a.wyz)), u_input.a.wzx);
    global3 = Struct_1(_wgslsmith_div_vec4_u32(~func_5(func_1(), true, ~vec3<u32>(17331u, 44542u, 28764u), -vec2<i32>(global3.c, global3.c)), global3.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(global4.d, 1u, u_input.d) >> (u_input.a.xww % vec3<u32>(32u)), global3.a.yxy), -1i, 4294967295u);
    global0 = ~vec3<i32>(reverseBits(~(-global0.x)), 1i, global3.c);
    global1 = array<f32, 30>();
    global0 = select(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(1i, firstLeadingBit(18256i), global3.c)), ~(vec3<i32>(global0.x, 1i, 22410i) | vec3<i32>(global3.c, global3.c, -29049i)) | ~vec3<i32>(-8022i, u_input.e, 34513i)), vec3<i32>((-2147483647i ^ global3.c) & global4.c, _wgslsmith_div_i32(u_input.e, min(45228i, -2147483647i)), ~global3.c), true);
    var var_1 = Struct_1(countOneBits(vec4<u32>(abs(global4.b), 1u, 0u, _wgslsmith_div_u32(0u, global4.d))) << (reverseBits(reverseBits(vec4<u32>(global4.a.x, u_input.b, global4.a.x, global4.b)) | vec4<u32>(global3.a.x, 1u, u_input.a.x, 1u)) % vec4<u32>(32u)), 4294967295u, ~(-19449i) >> (global4.b % 32u), 46632u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(max(select(4294967295u, max(65374u, 14152u), all(vec2<bool>(true, true))), select(min(0u, u_input.d), min(4294967295u, 0u), true)), 30u)])), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global4.c, 17678i, global4.c), vec3<i32>(global4.c, 23645i, 2147483647i))), select(~vec3<i32>(27838i, -1i, 1i), vec3<i32>(global3.c, global3.c, global0.x) | vec3<i32>(global3.c, 17297i, global0.x), vec3<bool>(true, false, false))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-27042i, global4.c, var_1.c), vec3<i32>(global0.x, -var_1.c, -36723i), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-4745i, -81460i, global4.c), vec3<i32>(var_1.c, global0.x, global4.c)), abs(vec3<i32>(global4.c, var_1.c, var_1.c))))), u_input.a);
}

