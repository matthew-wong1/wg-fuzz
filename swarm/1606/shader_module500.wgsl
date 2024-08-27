struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: array<i32, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = any(vec2<bool>(arg_0.c.x, false));
    global3 = array<i32, 2>();
    global3 = array<i32, 2>();
    var var_1 = Struct_1(arg_2.a);
    let var_2 = Struct_1(~select(~abs(vec4<u32>(arg_2.a.x, arg_2.a.x, 35533u, 0u)), min(vec4<u32>(var_1.a.x, arg_2.a.x, 1u, 4294967295u) >> (arg_2.a % vec4<u32>(32u)), arg_2.a), !(!vec4<bool>(arg_0.c.x, var_0, arg_0.c.x, true))));
    return 18025u;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> vec2<u32> {
    let var_0 = abs(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 26420u), ~_wgslsmith_clamp_u32(~37487u, 1u, ~39009u), ~4294967295u), 2u)]);
    let var_1 = vec3<u32>(80735u, ~abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 56012u), vec3<u32>(1u, 1u, 1u))), 1u);
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(func_3(Struct_2(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(22635u, 2u)], 0i, u_input.b.x), firstTrailingBit(vec3<i32>(26134i, 0i, 2147483647i)), arg_0.xy), _wgslsmith_div_vec2_i32(vec2<i32>(var_0 | -15852i, u_input.a), firstTrailingBit(abs(u_input.b))), Struct_1(_wgslsmith_div_vec4_u32(select(vec4<u32>(31251u, 36372u, 5740u, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, false, arg_0.x)), vec4<u32>(0u, 22602u, var_1.x, var_1.x)))), 2u)], _wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.b.x, -12975i & u_input.a, _wgslsmith_sub_i32(-3740i, u_input.b.x)), firstLeadingBit(vec3<i32>(1i, u_input.a, -1i))), ~(-abs(vec3<i32>(global3[_wgslsmith_index_u32(var_1.x, 2u)], global3[_wgslsmith_index_u32(var_1.x, 2u)], var_0)))), select(vec2<bool>(arg_0.x, any(select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, true), true))), arg_0.wz, !arg_0.zw));
    global0 = array<vec3<bool>, 17>();
    var var_3 = Struct_1(max(vec4<u32>(19221u, abs(var_1.x ^ 0u), var_1.x, ~func_3(var_2, var_2.b.xy, Struct_1(vec4<u32>(var_1.x, 16471u, var_1.x, var_1.x)))), vec4<u32>(20390u, 0u | var_1.x, 15485u >> (var_1.x % 32u), var_1.x) << (~vec4<u32>(4294967295u, var_1.x, var_1.x, 4294967295u) % vec4<u32>(32u))));
    return select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), abs(vec2<u32>(var_1.x, var_1.x)) >> (var_3.a.yw % vec2<u32>(32u)), vec2<u32>(14873u, 55940u | var_3.a.x)), firstTrailingBit(var_1.yy), arg_0.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = firstTrailingBit(~_wgslsmith_add_vec2_u32(~func_2(vec4<bool>(true, true, true, arg_3.c.x), -655f), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 50910u), firstTrailingBit(vec2<u32>(83082u, 13964u)), select(vec2<u32>(3772u, 71461u), vec2<u32>(45778u, 19396u), arg_3.c))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1076f, _wgslsmith_f_op_f32(697f - 1115f)))))), 404f);
    global3 = array<i32, 2>();
    let var_2 = u_input.b.x <= -38915i;
    var var_3 = Struct_1(vec4<u32>(3837u, var_0.x, _wgslsmith_div_u32(var_0.x, var_0.x), 34221u));
    return arg_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1, arg_1), 36957u, arg_1.x, ~12099u), _wgslsmith_div_vec4_u32(vec4<u32>(407u, 10925u, arg_1.x, arg_1.x) & vec4<u32>(arg_1.x, 15088u, 34702u, arg_1.x), vec4<u32>(4294967295u, 103603u, arg_1.x, 86770u)), firstLeadingBit(vec4<u32>(1u, 39435u, arg_1.x, 1u))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_1.x, 26859u, 53712u, 26628u)), select(max(vec4<u32>(8535u, arg_1.x, 1952u, 31869u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4294967295u)), vec4<u32>(0u, 89037u, 60928u, arg_1.x), any(vec2<bool>(false, true)))), vec4<u32>(1943u, 46245u, 49386u, arg_1.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(arg_0.a);
    global2 = arg_1.x;
    var var_1 = func_4(select(!(!(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), vec4<bool>(true, true, arg_1.x, arg_1.x), arg_1.x), ~abs(~arg_0.a.www));
    let var_2 = vec2<bool>(~_wgslsmith_dot_vec4_u32(var_1.a, select(var_1.a, var_1.a, false)) > ~var_0.a.x, any(select(select(global0[_wgslsmith_index_u32(var_0.a.x, 17u)], vec3<bool>(true, arg_1.x, false), arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x)) != (!any(vec2<bool>(true, arg_1.x)) && select(any(global0[_wgslsmith_index_u32(var_1.a.x, 17u)]), false, arg_1.x && arg_1.x)));
    var var_3 = 0u;
    return Struct_2(firstLeadingBit(u_input.b.x), vec3<i32>(_wgslsmith_dot_vec3_i32(abs(min(vec3<i32>(1i, -959i, 23334i), vec3<i32>(global3[_wgslsmith_index_u32(var_0.a.x, 2u)], global3[_wgslsmith_index_u32(var_1.a.x, 2u)], global3[_wgslsmith_index_u32(var_1.a.x, 2u)]))), reverseBits(abs(vec3<i32>(0i, 51070i, -60900i)))), -u_input.b.x, _wgslsmith_sub_i32(firstLeadingBit(1922i) << (func_2(vec4<bool>(false, true, var_2.x, true), -1358f).x % 32u), _wgslsmith_sub_i32(u_input.b.x, 0i | u_input.a))), !vec2<bool>(!arg_1.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(!vec4<bool>(func_1(vec3<i32>(-18173i, global3[_wgslsmith_index_u32(23883u, 2u)], u_input.a), false, u_input.b.x, Struct_2(1i, vec3<i32>(global3[_wgslsmith_index_u32(64870u, 2u)], 9403i, u_input.b.x), vec2<bool>(true, false))), true, true, any(vec4<bool>(false, false, false, false))), vec3<u32>(abs(14867u), max(~4294967295u, min(0u, 21145u)), _wgslsmith_clamp_u32(~4294967295u, 4294967295u, 1u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(123228u, 15708u, 10149u), vec3<u32>(1u, 1u, 1u)) ^ abs(select(vec3<u32>(0u, 23151u, 0u), vec3<u32>(0u, 0u, 47500u), vec3<bool>(false, false, false))), ~vec3<u32>(1u, ~73680u, 17788u)), 17u)]);
    global0 = array<vec3<bool>, 17>();
    let var_1 = false;
    global2 = true;
    let var_2 = Struct_2(~reverseBits(0i), _wgslsmith_clamp_vec3_i32(var_0.b, reverseBits(var_0.b << (_wgslsmith_mult_vec3_u32(vec3<u32>(31510u, 3992u, 1u), vec3<u32>(1u, 4153u, 4294967295u)) % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(u_input.a, -34344i, -1i)), ~vec3<i32>(u_input.b.x, var_0.a, -28653i)))), vec2<bool>(var_1, any(func_5(func_4(vec4<bool>(var_1, var_0.c.x, true, var_0.c.x), vec3<u32>(4294967295u, 1u, 23416u)), select(vec3<bool>(var_0.c.x, false, false), vec3<bool>(true, var_0.c.x, var_0.c.x), global0[_wgslsmith_index_u32(1u, 17u)])).c)));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(abs(1u), ~26248u), 769f);
}

