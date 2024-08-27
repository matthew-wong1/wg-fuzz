struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-1375f, 1002f, -577f, -194f, -162f, -963f, 1058f, -689f, -474f, 1037f, -1170f, -379f, -1220f, -1000f, 431f, 1121f, -1000f, 752f, -1084f, 681f, 1047f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec3<i32> {
    global0 = array<f32, 21>();
    let var_0 = firstLeadingBit(u_input.a.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, 4197u), 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 21u)]) - global0[_wgslsmith_index_u32(max(4294967295u, arg_1.x), 21u)])))), _wgslsmith_f_op_f32(ceil(1417f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 21u)])), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(max(arg_0, arg_1.x), 21u)])), 862f <= global0[_wgslsmith_index_u32(~58614u, 21u)])))));
    global0 = array<f32, 21>();
    let var_2 = Struct_4(Struct_3(Struct_2(_wgslsmith_add_i32(u_input.a.x, ~0i), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-147i, var_0, var_0)), ~vec3<i32>(-1i, 1i, 18723i)), vec3<bool>(all(vec4<bool>(false, false, false, false)), true, var_0 >= var_0), abs(u_input.a.x | u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(52409u, 21u)]))), Struct_2(var_0, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), -3667i, var_0), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true), reverseBits(_wgslsmith_mult_i32(0i, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1289f, 748f)))), -countOneBits(54347i));
    return vec3<i32>(~min(~(u_input.a.x >> (arg_0 % 32u)), -22740i), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.b << (arg_0 % 32u), firstTrailingBit(-2147483647i), abs(-14679i)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, -1i), 0i & var_0, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -1i, 1i), min(vec3<i32>(u_input.a.x, var_2.a.b.d, var_0), var_2.a.b.b), ~var_2.a.b.b))), 16392i);
}

fn func_2() -> Struct_2 {
    let var_0 = -(~(u_input.a.x | 2147483647i)) & ~(-3031i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 53372u), vec3<u32>(67941u, 68421u, 0u)), 21u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~12114u, _wgslsmith_clamp_u32(18941u, 0u, 73264u)), 21u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 549f)))));
    global0 = array<f32, 21>();
    let var_2 = Struct_4(Struct_3(Struct_2(0i, -func_3(4294967295u, vec3<u32>(19275u, 4294967295u, 4294967295u)), vec3<bool>(true, true, true), abs(var_0), 289f), Struct_2(2147483647i, vec3<i32>(_wgslsmith_div_i32(-1i, var_0), _wgslsmith_sub_i32(var_0, -60232i), abs(-22531i)), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), true), ~u_input.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(678f, global0[_wgslsmith_index_u32(22443u, 21u)], false)))))), countOneBits(func_3(36344u, select(select(vec3<u32>(8530u, 4294967295u, 0u), vec3<u32>(92700u, 30149u, 0u), false), vec3<u32>(1u, 72u, 1u), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))).x));
    let var_3 = Struct_3(var_2.a.b, var_2.a.b);
    return var_3.b;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = func_2();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), true), var_0 && true)));
    let var_2 = func_1(vec4<u32>(~4294967295u, 4294967295u, 4294967295u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 29617u, 8809u, 4294967295u), vec4<u32>(0u, 7596u, 1u, 1u)), 0u)) << (vec4<u32>(_wgslsmith_mod_u32(1u, ~0u), 1u, ~(~0u), ~(~32142u)) % vec4<u32>(32u)));
    global0 = array<f32, 21>();
    let var_3 = Struct_3(Struct_2(u_input.a.x, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(func_2().b, select(vec3<i32>(-43710i, 2147483647i, var_2.a), vec3<i32>(1i, u_input.a.x, u_input.a.x), true)), vec3<i32>(1i, u_input.a.x >> (4294967295u % 32u), abs(var_2.b.x))), vec3<bool>(false, all(var_2.c), !var_2.c.x), 1i, -321f), Struct_2(6547i, ~vec3<i32>(var_2.d, max(var_2.a, -40729i), _wgslsmith_mod_i32(38088i, -21913i)), select(!var_2.c, !(!vec3<bool>(var_0, var_2.c.x, true)), select(!var_2.c.x, true, !var_0)), var_2.d, func_1(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 100035u, 1u, 52980u), vec4<u32>(0u, 290u, 1u, 0u), vec4<u32>(8763u, 4294967295u, 4294967295u, 44563u)), vec4<u32>(35943u, 61991u, 4294967295u, 15539u))).e));
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let var_4 = ~(~vec3<u32>(1u, 1u, 1u) >> (~vec3<u32>(_wgslsmith_mult_u32(34532u, 0u), 4294967295u >> (0u % 32u), firstTrailingBit(50555u)) % vec3<u32>(32u)));
    let var_5 = vec2<f32>(_wgslsmith_div_f32(1112f, 623f), _wgslsmith_f_op_f32(var_2.e + _wgslsmith_f_op_f32(1336f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-764f + -359f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a, var_5);
}

