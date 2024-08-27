struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_3,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(0i, 15492i, 21503i, 12976i), vec3<f32>(1000f, -782f, 297f)), Struct_1(vec2<u32>(10198u, 4294967295u), vec4<i32>(8922i, -54785i, -30200i, -1i), vec3<f32>(1977f, 294f, -991f)), Struct_1(vec2<u32>(4294967295u, 30374u), vec4<i32>(-29921i, -31850i, 47154i, 2147483647i), vec3<f32>(2333f, -1044f, 1065f)), Struct_1(vec2<u32>(14028u, 4294967295u), vec4<i32>(0i, 2147483647i, 34089i, -421i), vec3<f32>(-1882f, -1194f, 263f)), Struct_1(vec2<u32>(0u, 0u), vec4<i32>(2147483647i, 2147483647i, 43997i, 16839i), vec3<f32>(1345f, 244f, 1000f)), Struct_1(vec2<u32>(20173u, 4294967295u), vec4<i32>(0i, 1i, -1i, i32(-2147483648)), vec3<f32>(2853f, -691f, 1095f)), Struct_1(vec2<u32>(12981u, 32269u), vec4<i32>(1i, 0i, -27369i, 1i), vec3<f32>(116f, 2118f, 1397f)), Struct_1(vec2<u32>(4294967295u, 100454u), vec4<i32>(1i, -27611i, -22951i, 11842i), vec3<f32>(526f, -988f, -808f)), Struct_1(vec2<u32>(25562u, 0u), vec4<i32>(0i, i32(-2147483648), 15593i, -1i), vec3<f32>(-1371f, -1000f, -567f)), Struct_1(vec2<u32>(13240u, 34064u), vec4<i32>(-48322i, -1i, 20237i, i32(-2147483648)), vec3<f32>(-223f, -153f, -460f)), Struct_1(vec2<u32>(28748u, 59670u), vec4<i32>(-19431i, 0i, 0i, 11311i), vec3<f32>(1202f, 2587f, -527f)), Struct_1(vec2<u32>(16238u, 57348u), vec4<i32>(-22639i, -1i, i32(-2147483648), 1i), vec3<f32>(-155f, -266f, 1475f)), Struct_1(vec2<u32>(22584u, 61533u), vec4<i32>(1i, 0i, -4604i, -9856i), vec3<f32>(443f, 1000f, 1000f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(global0[_wgslsmith_index_u32(43946u, 28u)], 4294967295u)), vec2<u32>(11988u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)] << (66003u % 32u), 28u)])), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 4849u));
    global0 = array<u32, 28>();
    global1 = array<Struct_1, 13>();
    var var_1 = vec3<f32>(-560f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(857f)) + _wgslsmith_f_op_f32(f32(-1f) * -650f)), -426f)), 783f);
    let var_2 = ~_wgslsmith_mult_vec2_i32(~(u_input.a.zx >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 28u)], 0u), vec2<u32>(4294967295u, var_0.x)) % vec2<u32>(32u))), -_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -38824i), u_input.a.yx), _wgslsmith_mult_vec2_i32(vec2<i32>(-56013i, u_input.a.x), u_input.a.zy)));
    return Struct_2(var_0.x);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    let var_0 = !(!vec4<bool>(!(arg_1 >= -1306f), true, all(vec4<bool>(true, true, true, true)), -u_input.a.x < (u_input.a.x & u_input.a.x)));
    var var_1 = select(vec2<u32>(~arg_0.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 28u)]), global0[_wgslsmith_index_u32(arg_0.a, 28u)]), 28u)], 28u)]), select(firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(42236u), 28u)], min(global0[_wgslsmith_index_u32(0u, 28u)], 4294967295u))), ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(0u, 1u))), select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), !var_0.x)), (arg_0.a != 21478u) || var_0.x);
    let var_2 = global1[_wgslsmith_index_u32(~((select(1u, 0u, all(var_0.xzy)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(518u, 1u), ~vec2<u32>(0u, var_1.x))) ^ min(global0[_wgslsmith_index_u32(~9534u, 28u)], arg_0.a)), 13u)];
    var var_3 = ~abs(max(~(~var_2.a.x), global0[_wgslsmith_index_u32(var_2.a.x, 28u)]));
    var var_4 = 0u;
    return Struct_2(131440u);
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = func_3(func_2(_wgslsmith_mod_i32(4537i, arg_0.a.b.x)), arg_0.a.c.x);
    var var_1 = 14705u;
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_0.a, global0[_wgslsmith_index_u32(var_0.a, 28u)]), firstLeadingBit(arg_0.a.a), vec2<bool>(true, true)), min(vec2<u32>(~4294967295u, global0[_wgslsmith_index_u32(0u, 28u)] ^ 50084u), vec2<u32>(var_0.a ^ 59453u, 0u))), ~_wgslsmith_dot_vec2_u32(~arg_0.a.a, reverseBits(~arg_0.a.a))), 28u)];
    let var_2 = _wgslsmith_mult_i32(6699i, 0i) & arg_0.a.b.x;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -790f) * 2047f)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = vec4<i32>(-u_input.a.x, -(~(-3993i)) | (abs(u_input.a.x) << (select(~23242u, global0[_wgslsmith_index_u32(~69449u, 28u)], true) % 32u)), _wgslsmith_sub_i32(u_input.a.x, 1i), countOneBits(-_wgslsmith_div_i32(-18823i, ~u_input.a.x)));
    let var_2 = func_1(Struct_3(global1[_wgslsmith_index_u32(abs(~reverseBits(0u)), 13u)], abs(firstTrailingBit(0u))));
    let var_3 = -598f;
    var_1 = -vec4<i32>(~firstLeadingBit(1i), 25162i, -10276i, i32(-1i) * -firstLeadingBit(-1i));
    let var_4 = _wgslsmith_div_vec2_i32(~u_input.a.zz, vec2<i32>(select(16899i, -1i, true) >> (4866u % 32u), 1i >> (global0[_wgslsmith_index_u32(abs(4294967295u), 28u)] % 32u))) << (_wgslsmith_div_vec2_u32(~(~(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(22922u, 28u)]))), max(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 47259u), _wgslsmith_sub_vec2_u32(vec2<u32>(13345u, global0[_wgslsmith_index_u32(0u, 28u)]), vec2<u32>(28867u, 36371u))), vec2<u32>(global0[_wgslsmith_index_u32(35177u, 28u)], 0u) & ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1405u, 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39655u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)]))) % vec2<u32>(32u));
    let var_5 = Struct_5(!vec3<bool>(var_2, true, var_2), func_3(func_3(func_3(func_2(var_4.x), _wgslsmith_f_op_f32(-796f + var_3)), 304f), var_3), _wgslsmith_add_i32(var_1.x, var_1.x), Struct_3(Struct_1(max(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 28u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 32824u) ^ vec2<u32>(1u, global0[_wgslsmith_index_u32(4647u, 28u)])), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, var_1.x, var_1.x, var_4.x), vec4<i32>(var_1.x, -31058i, 2147483647i, u_input.a.x)), vec4<i32>(u_input.a.x, -1i, var_1.x, var_1.x) | vec4<i32>(-1i, var_4.x, 40406i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-451f, var_3, 1122f)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(6967u, 1u, 0u), global0[_wgslsmith_index_u32(37630u, 28u)] ^ 0u), 28u)]), select(!vec3<bool>(all(vec2<bool>(var_2, false)), any(vec4<bool>(false, var_2, true, false)), true), select(vec3<bool>(any(vec4<bool>(var_2, var_2, false, var_2)), all(vec3<bool>(var_2, true, var_2)), global0[_wgslsmith_index_u32(4294967295u, 28u)] < global0[_wgslsmith_index_u32(4294967295u, 28u)]), select(!vec3<bool>(false, var_2, var_2), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !var_2), !(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 0u, 100064u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 26426u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50354u, 28u)], 28u)])), 28u)] == func_2(-43351i).a)));
    var var_6 = min(firstTrailingBit(-var_4.x), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~max(~(~vec3<u32>(0u, 0u, var_5.b.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 1u, var_5.b.a), vec3<u32>(58966u, 4294967295u, global0[_wgslsmith_index_u32(79079u, 28u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(65431u, 28u)], 1u, var_5.d.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_3)), var_5.d.a.c.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(max(_wgslsmith_add_u32(0u, var_5.d.a.a.x), 22174u), 19482u), 26177u, ~44557u), vec2<i32>(0i, var_1.x));
}

