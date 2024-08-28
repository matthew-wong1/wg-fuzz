struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<vec3<f32>, 30>;

var<private> global2: array<vec2<bool>, 29>;

var<private> global3: array<bool, 28> = array<bool, 28>(true, true, false, false, false, false, true, true, true, true, false, true, false, true, false, false, false, true, true, false, false, true, false, false, true, true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(max(~arg_0.x, _wgslsmith_add_i32(~(-1i), arg_0.x & arg_0.x))), arg_0.x);
    global1 = array<vec3<f32>, 30>();
    let var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(350f, _wgslsmith_f_op_f32(f32(-1f) * -778f))));
    var var_2 = _wgslsmith_mod_vec4_i32(-(_wgslsmith_mult_vec4_i32(~vec4<i32>(33865i, 7889i, var_0.a.a, 22456i), -vec4<i32>(-2147483647i, 32410i, var_0.b, arg_0.x)) << (~vec4<u32>(1u, 42086u, 4294967295u, 0u) % vec4<u32>(32u))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(~0i, max(2147483647i, -1i), _wgslsmith_clamp_i32(var_0.a.a, 0i, arg_0.x), 0i), -_wgslsmith_div_vec4_i32(vec4<i32>(55615i, arg_0.x, arg_0.x, 36244i), vec4<i32>(-9145i, -1i, var_0.b, arg_0.x)), max(min(vec4<i32>(1i, arg_0.x, 0i, var_0.b), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), countOneBits(vec4<i32>(arg_0.x, arg_0.x, 30607i, 1i)))));
    let var_3 = Struct_1(~vec3<u32>(~(~u_input.a.x), u_input.a.x, max(1u, ~u_input.a.x)), global1[_wgslsmith_index_u32(~30124u, 30u)]);
    return var_0.a;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = -44886i;
    let var_1 = true;
    var var_2 = func_2(select(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 16355i, arg_3.a.a, arg_2.x), vec4<i32>(0i, 1i, arg_3.a.a, -2147483647i)), var_0), i32(-1i) * -1i, ~(~var_0)), vec3<i32>(-65114i, -29320i, -1i), var_1), vec2<bool>(var_1, global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), select(vec3<bool>(false, _wgslsmith_f_op_f32(floor(-1000f)) >= arg_1, global3[_wgslsmith_index_u32(~u_input.a.x, 28u)]), vec3<bool>(false || var_1, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 51742u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)]), 28u)], !global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), !vec3<bool>(true, all(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)], 29u)]), true)));
    let var_3 = func_2(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, arg_3.b, 3236i), arg_2) >> (1u % 32u), i32(-1i) * -1i, var_0), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)] == _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 43749u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], u_input.a.x)), true), select(vec3<bool>(false, 607f == _wgslsmith_f_op_f32(arg_0 * arg_1), global3[_wgslsmith_index_u32(~1u, 28u)]), vec3<bool>(!global3[_wgslsmith_index_u32(17928u << (u_input.a.x % 32u), 28u)], true, !(var_2.a != 75253i)), all(!select(vec2<bool>(global3[_wgslsmith_index_u32(20491u, 28u)], true), global2[_wgslsmith_index_u32(84902u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)]))));
    var var_4 = _wgslsmith_add_i32(2147483647i, var_0);
    return Struct_1(_wgslsmith_mod_vec3_u32(u_input.b.xxz, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 1u, 24160u), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 0u, 86359u)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(64575u, 23u)], 86040u, u_input.a.x)), u_input.a | vec3<u32>(95212u, u_input.b.x, u_input.b.x)))), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 30u)]);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> Struct_3 {
    let var_0 = func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-540f, -628f))))), -357f, -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -6091i), min(vec4<i32>(2147483647i, arg_0, 2147483647i, arg_0), vec4<i32>(arg_0, arg_0, arg_0, arg_0))), vec4<i32>(arg_0 & arg_0, _wgslsmith_div_i32(arg_0, arg_0), -18344i, 22673i)), Struct_3(func_2(-vec3<i32>(1i, arg_0, arg_0), select(!vec2<bool>(false, arg_1.x), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], global3[_wgslsmith_index_u32(0u, 28u)]), vec2<bool>(false, arg_1.x), global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), global3[_wgslsmith_index_u32(u_input.a.x, 28u)]), arg_1), 1i));
    global3 = array<bool, 28>();
    var var_1 = Struct_3(func_2(vec3<i32>((arg_0 & arg_0) & _wgslsmith_sub_i32(49099i, arg_0), _wgslsmith_add_i32(41423i, -arg_0), _wgslsmith_sub_i32(select(arg_0, arg_0, false), arg_0)), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 31218u, 11834u, 0u), u_input.b, false), ~u_input.b)), 29u)], !arg_1), 40665i);
    let var_2 = global2[_wgslsmith_index_u32(~4294967295u, 29u)];
    var var_3 = select(select(select(!vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(true, false & var_2.x, arg_1.x & global3[_wgslsmith_index_u32(62844u, 28u)], arg_1.x | arg_1.x), max(1u, global0[_wgslsmith_index_u32(4294967295u, 23u)]) <= var_0.a.x), vec4<bool>((arg_0 | -6361i) > 9006i, any(!arg_1.xx), var_2.x, all(vec4<bool>(var_2.x, var_2.x, false, true))), global3[_wgslsmith_index_u32(0u, 28u)]), vec4<bool>(true, arg_2 < 173f, false, any(!arg_1)), false);
    return Struct_3(var_1.a, -14132i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 29>();
    global3 = array<bool, 28>();
    let var_0 = func_1(firstTrailingBit(~1i), !(!(!(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(44029u, 28u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(340f, 670f)))) * -1090f));
    global0 = array<u32, 23>();
    let var_1 = 1191f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~firstTrailingBit(vec4<i32>(i32(-1i) * -47544i, -20294i, var_0.a.a, -var_0.a.a)), abs(_wgslsmith_dot_vec2_u32(u_input.b.yy << (u_input.a.yx % vec2<u32>(32u)), u_input.b.yw)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b, -54678i) ^ vec2<i32>(var_0.b, var_0.b), -vec2<i32>(0i, 26558i), vec2<i32>(var_0.a.a, 2147483647i) >> (u_input.b.xx % vec2<u32>(32u))) >> (func_3(var_1, var_1, -vec4<i32>(var_0.b, var_0.a.a, 47647i, var_0.b), func_1(-1i, vec3<bool>(false, global3[_wgslsmith_index_u32(1562u, 28u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 28u)]), var_1)).a.xy % vec2<u32>(32u)), select(vec2<i32>(var_0.b, -1i), ~vec2<i32>(81289i, -5390i), !global2[_wgslsmith_index_u32(6973u, 29u)]) << (abs(u_input.a.xx) % vec2<u32>(32u))), 107f);
}

