struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 1i, 0i, 50211i);

var<private> global1: array<Struct_3, 1>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec4<u32>(41129u, 77512u, 88704u, 22543u), true);

var<private> global3: u32 = 19119u;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = Struct_3(arg_0.a, !(!vec3<bool>(arg_0.a.a.c, -1097f <= arg_0.a.d.x, all(vec4<bool>(global2.c, global2.c, arg_0.b.x, false)))), vec3<u32>(~(~arg_0.c.x & ~1u), abs(arg_0.a.c.b.x), arg_0.a.c.b.x));
    let var_1 = !(!var_0.b.zy);
    global2 = Struct_1(var_0.a.a.a ^ abs(-u_input.a), var_0.a.a.b, select(all(vec2<bool>(true, true)), var_0.b.x, true));
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.c.b.x, _wgslsmith_dot_vec2_u32(max(vec2<u32>(global2.b.x, arg_0.a.a.b.x), firstLeadingBit(vec2<u32>(global2.b.x, var_0.c.x))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(101738u, var_0.a.a.b.x), vec2<u32>(4294967295u, 1u)), select(vec2<u32>(global2.b.x, 1u), vec2<u32>(11343u, 107013u), false))), 16139u, 86152u), _wgslsmith_add_vec4_u32(global2.b, max(vec4<u32>(arg_0.a.a.b.x, 16436u, var_0.a.a.b.x, 1u), vec4<u32>(1u, var_0.a.c.b.x, var_0.a.c.b.x, arg_0.a.a.b.x) >> (global2.b % vec4<u32>(32u))) >> (abs(vec4<u32>(var_0.c.x, var_0.a.a.b.x, 21521u, global2.b.x)) % vec4<u32>(32u))), global2.b);
    let var_3 = Struct_2(Struct_1(-(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, global0.x), vec3<i32>(u_input.b.x, 0i, -1i)) | global2.a), var_0.a.c.b, true), -abs(_wgslsmith_div_vec3_i32(-global2.a, global0.zzw | vec3<i32>(1i, u_input.a.x, 1i))), Struct_1(abs(global0.zyy | vec3<i32>(0i, arg_0.a.c.a.x, 21868i)), _wgslsmith_clamp_vec4_u32(var_2, vec4<u32>(_wgslsmith_div_u32(0u, arg_0.a.c.b.x), ~68851u, _wgslsmith_div_u32(var_0.a.c.b.x, global2.b.x), ~53269u), var_0.a.c.b), arg_0.a.a.b.x > select(0u, global2.b.x, arg_0.a.c.c & true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d.x, 1f) + -1106f), _wgslsmith_f_op_f32(f32(-1f) * -1839f)));
    return arg_0.b.yz;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = func_3(Struct_3(Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -33314i, global2.a.x), vec3<i32>(2147483647i, 29106i, 1i)), _wgslsmith_mult_vec4_u32(arg_0.b, arg_0.b), arg_2 == arg_2), -vec3<i32>(u_input.a.x, 53521i, arg_0.a.x), Struct_1(vec3<i32>(arg_0.a.x, 1848i, 0i), arg_0.b & vec4<u32>(1u, 1u, 4294967295u, 0u), all(vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-515f, arg_2), vec2<f32>(arg_2, arg_2))) * _wgslsmith_div_vec2_f32(vec2<f32>(2163f, arg_2), vec2<f32>(1420f, arg_2)))), !vec3<bool>(global2.c, arg_0.c, false), global2.b.xwz));
    var var_1 = Struct_2(arg_0, vec3<i32>(-(~_wgslsmith_mod_i32(global2.a.x, 6131i)), countOneBits(0i), _wgslsmith_mod_i32(161i, global2.a.x)), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(298f, arg_2) * vec2<f32>(439f, arg_2))), vec2<f32>(arg_2, _wgslsmith_f_op_f32(286f + arg_2))))));
    global2 = Struct_1(u_input.b.xyw, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~var_1.c.b.x, var_1.c.b.x | 0u), global2.b.x, global2.b.x, 4294967295u), vec4<u32>(arg_0.b.x, 52236u, arg_0.b.x, 61593u)), !(!any(!vec4<bool>(true, true, arg_1, false))));
    var var_2 = Struct_2(arg_0, vec3<i32>(global2.a.x & 1i, u_input.b.x, max(_wgslsmith_mult_i32(-18608i, global2.a.x), countOneBits(-2147483647i))) >> (global2.b.xyx % vec3<u32>(32u)), arg_0, vec2<f32>(-539f, 1274f));
    global3 = var_2.a.b.x;
    return Struct_2(var_1.c, vec3<i32>(-41667i, -7557i, i32(-1i) * -2147483647i), arg_0, vec2<f32>(var_1.d.x, 656f));
}

fn func_1(arg_0: i32) -> Struct_3 {
    return Struct_3(func_2(Struct_1(~(~vec3<i32>(global0.x, global2.a.x, arg_0)), _wgslsmith_div_vec4_u32(global2.b, _wgslsmith_mod_vec4_u32(vec4<u32>(8499u, 4294967295u, 0u, global2.b.x), vec4<u32>(global2.b.x, 0u, global2.b.x, global2.b.x))), any(vec2<bool>(global2.c, false))), false, _wgslsmith_f_op_f32(f32(-1f) * -1767f)), vec3<bool>(!(!global2.c), global2.c, func_3(Struct_3(Struct_2(Struct_1(u_input.a, global2.b, global2.c), vec3<i32>(arg_0, u_input.b.x, -2147483647i), Struct_1(vec3<i32>(arg_0, 58899i, global2.a.x), vec4<u32>(8943u, global2.b.x, 1u, 0u), false), vec2<f32>(130f, -314f)), select(vec3<bool>(true, false, true), vec3<bool>(global2.c, global2.c, true), vec3<bool>(false, false, global2.c)), vec3<u32>(82764u, global2.b.x, 0u))).x), vec3<u32>(_wgslsmith_clamp_u32(0u, global2.b.x, 22905u), 26213u, ~select(75171u, 1u, !global2.c)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    let var_0 = ~u_input.a.x;
    var var_1 = (1u ^ arg_1.c.x) ^ global2.b.x;
    let var_2 = 14225i;
    var_1 = global2.b.x;
    let var_3 = Struct_3(arg_1.a, select(!(!vec3<bool>(arg_0, true, true)), !vec3<bool>(all(arg_1.b), true, arg_1.a.c.c), func_1(1257i).a.a.c), func_2(Struct_1((vec3<i32>(global2.a.x, var_0, u_input.b.x) ^ vec3<i32>(2147483647i, global0.x, 21618i)) >> (min(vec3<u32>(arg_1.a.c.b.x, 4294967295u, 61039u), vec3<u32>(38115u, arg_1.c.x, 33497u)) % vec3<u32>(32u)), vec4<u32>(1u, 5504u, global2.b.x, 1u) >> ((vec4<u32>(34849u, arg_1.c.x, arg_1.c.x, 10415u) << (global2.b % vec4<u32>(32u))) % vec4<u32>(32u)), all(vec4<bool>(arg_0, global2.c, true, true))), var_0 >= ~var_2, arg_1.a.d.x).c.b.wxw);
    return var_3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(i32(-1i) * -39413i, _wgslsmith_div_i32(u_input.a.x, i32(-1i) * -2147483647i) | (u_input.a.x & global0.x));
    let var_1 = func_4(true && !global2.c, func_1(1i), 159f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2427f - 709f), 1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1206f)), _wgslsmith_f_op_f32(662f - 864f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1011f, 1255f, any(vec2<bool>(true, global2.c)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1106f) + _wgslsmith_f_op_f32(select(-547f, -517f, true))))), firstLeadingBit(16372i), vec2<i32>(37976i, -(~(-global2.a.x))), -1i << (1u % 32u));
}

