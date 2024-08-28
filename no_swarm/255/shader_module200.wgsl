struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = firstTrailingBit(min(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(global1.x, global1.x)) ^ -vec2<i32>(global1.x, -2274i), countOneBits(~vec2<i32>(global1.x, 22371i))), ~abs(vec2<i32>(global1.x, -20128i))));
    var var_1 = ~(-vec3<i32>(-select(var_0.x, -3668i, arg_1), var_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 21566i, global1.x, var_0.x), vec4<i32>(0i, global1.x, var_0.x, 14713i), vec4<i32>(var_0.x, global1.x, global1.x, 0i)), vec4<i32>(global1.x, var_0.x, 31199i, global1.x) << (u_input.b % vec4<u32>(32u)))));
    global2 = array<Struct_1, 25>();
    global1 = _wgslsmith_mult_vec2_i32(~(~var_1.xy), -(reverseBits(-var_1.yz) & min(select(vec2<i32>(-2147483647i, var_1.x), var_0, vec2<bool>(false, true)), max(var_0, var_0))));
    var var_2 = ~(~vec3<u32>(~global0.c.x, 0u, ~(4294967295u | global0.c.x)));
    return ~arg_0;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = Struct_2(vec4<f32>(-1510f, _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(603f - -443f) + _wgslsmith_f_op_f32(round(global0.a.x)))), _wgslsmith_f_op_f32(global0.b.a * _wgslsmith_f_op_f32(min(1061f, 1758f))), global0.b.a), global0.b, ~func_3(~vec3<u32>(0u, arg_0, u_input.b.x), true, ~global0.c), global2[_wgslsmith_index_u32(17348u ^ max(select(1u, 18715u, global0.b.b.x), u_input.b.x), 25u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -456f))), var_0.d.a) * var_0.b.a), vec2<bool>(false, global0.b.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1968f, _wgslsmith_f_op_f32(select(-374f, var_0.d.a, select(!var_0.d.b.x, global0.b.b.x, select(false, var_1.b.x, true)))), 655f, -813f));
    let var_3 = min(global0.c, abs(~u_input.b.zwy) | ~(~_wgslsmith_add_vec3_u32(var_0.c, var_0.c)));
    var_0 = Struct_2(global0.a, Struct_1(_wgslsmith_f_op_f32(-var_0.b.a), !var_1.b), var_0.c, global2[_wgslsmith_index_u32(~(~var_0.c.x) >> (74467u % 32u), 25u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d.a))) - 319f);
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = ~u_input.b;
    global2 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(579f + _wgslsmith_f_op_f32(func_2(85287u | global0.c.x))));
    var var_2 = -global1.x;
    var var_3 = global2[_wgslsmith_index_u32(min(min(1u, countOneBits(0u)), u_input.a.x), 25u)];
    return Struct_4(Struct_3(global2[_wgslsmith_index_u32(~u_input.b.x, 25u)], 1f));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4, arg_3: u32) -> vec2<i32> {
    global1 = vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_1 >> (global0.c.x % 32u), reverseBits(-9286i), -631i ^ global1.x), -304i), -abs(arg_1));
    global2 = array<Struct_1, 25>();
    let var_0 = !global0.b.b.x;
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b - 1000f), -1645f, arg_2.a.a.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-929f, arg_0.a.b))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(global0.d.a, 922f, 1034f, 2021f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1500f, arg_0.a.b, 1000f, arg_2.a.a.a), vec4<f32>(-452f, arg_2.a.a.a, arg_0.a.a.a, 584f))), _wgslsmith_f_op_vec4_f32(round(global0.a))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.d.a)) + arg_2.a.b)), vec2<bool>(global0.b.b.x & func_1(vec3<bool>(false, true, arg_0.a.a.b.x)).a.a.b.x, func_1(select(vec3<bool>(global0.b.b.x, var_0, true), vec3<bool>(true, true, arg_0.a.a.b.x), false)).a.a.b.x)), reverseBits(vec3<u32>(select(u_input.a.x, u_input.b.x ^ 4294967295u, all(vec4<bool>(true, true, false, var_0))), (global0.c.x | global0.c.x) ^ ~10977u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, 88162u), ~vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.a.x)))), global0.d);
    global0 = Struct_2(global0.a, Struct_1(arg_0.a.b, vec2<bool>(arg_0.a.a.b.x, true)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(global0.c.x, 1u, arg_3), u_input.b.xyw & vec3<u32>(80101u, 30393u, u_input.a.x))), Struct_1(arg_0.a.b, vec2<bool>(true, true)));
    return vec2<i32>(i32(-1i) * -firstLeadingBit(arg_1), global1.x | _wgslsmith_div_i32(-15237i, -arg_1 | _wgslsmith_div_i32(0i, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(select(~global1.x, select(global1.x, global1.x, select(any(vec3<bool>(global0.b.b.x, global0.d.b.x, false)), true, true)), any(!global0.d.b)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, firstLeadingBit(33246i))), func_4(func_1(select(vec3<bool>(true, true, false), vec3<bool>(global0.d.b.x, false, global0.b.b.x), vec3<bool>(false, global0.b.b.x, global0.b.b.x))), _wgslsmith_mod_i32(global1.x, ~global1.x), Struct_4(func_1(vec3<bool>(true, global0.d.b.x, global0.b.b.x)).a), ~u_input.a.x)));
    let var_0 = Struct_4(func_1(vec3<bool>(!global0.b.b.x, !any(global0.b.b), false & !global0.d.b.x)).a);
    let var_1 = !all(select(select(select(vec3<bool>(true, global0.d.b.x, false), vec3<bool>(var_0.a.a.b.x, var_0.a.a.b.x, global0.d.b.x), vec3<bool>(var_0.a.a.b.x, false, var_0.a.a.b.x)), select(vec3<bool>(global0.d.b.x, var_0.a.a.b.x, true), vec3<bool>(var_0.a.a.b.x, global0.b.b.x, global0.d.b.x), var_0.a.a.b.x), select(vec3<bool>(var_0.a.a.b.x, true, var_0.a.a.b.x), vec3<bool>(var_0.a.a.b.x, var_0.a.a.b.x, false), global0.d.b.x)), !select(vec3<bool>(global0.b.b.x, global0.d.b.x, global0.d.b.x), vec3<bool>(var_0.a.a.b.x, true, global0.d.b.x), vec3<bool>(false, var_0.a.a.b.x, false)), all(vec2<bool>(global0.b.b.x, false))));
    var var_2 = select(~min(firstLeadingBit(vec2<i32>(3029i, -4546i)), _wgslsmith_sub_vec2_i32(vec2<i32>(48751i, global1.x), vec2<i32>(57006i, -21694i))) ^ countOneBits(select(func_4(var_0, 0i, Struct_4(Struct_3(global0.d, 615f)), u_input.a.x), vec2<i32>(global1.x, -1i), global0.d.b)), vec2<i32>(_wgslsmith_mod_i32(~global1.x ^ abs(44476i), min(~(-1i), countOneBits(global1.x))), -global1.x), global0.b.b);
    let var_3 = !(!(!all(var_0.a.a.b)));
    let var_4 = vec4<u32>(global0.c.x, ~global0.c.x, min(_wgslsmith_mod_u32(~u_input.a.x, 1u), reverseBits(global0.c.x)) ^ ~(~(37062u | global0.c.x)), abs(21981u));
    let var_5 = Struct_4(func_1(vec3<bool>(false, var_0.a.b >= 2528f, true)).a);
    let var_6 = !(!vec3<bool>(true, var_5.a.a.b.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(27170i, -2709i, -46813i, var_2.x), vec4<i32>(0i, -1i, global1.x, var_2.x)), ~_wgslsmith_add_vec4_i32(vec4<i32>(34215i, -38174i, 4847i, global1.x), vec4<i32>(var_2.x, var_2.x, global1.x, 2147483647i))), max(min(reverseBits(vec4<i32>(var_2.x, -32634i, 0i, var_2.x)), abs(vec4<i32>(0i, var_2.x, -1i, -38831i))), vec4<i32>(global1.x, -55256i, -1i, 67683i) << (~vec4<u32>(var_4.x, 4294967295u, var_4.x, 46624u) % vec4<u32>(32u)))), firstLeadingBit(reverseBits(~vec4<u32>(44512u, 1701u, var_4.x, global0.c.x))), abs(0i));
}

