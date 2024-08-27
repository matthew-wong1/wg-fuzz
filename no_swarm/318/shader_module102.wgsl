struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec4<i32>(2147483647i, -1i, 0i, 1i), Struct_1(false, -19715i), Struct_1(false, -5814i), -639f, 23216u), Struct_2(vec4<i32>(48286i, -10345i, 21252i, -6707i), Struct_1(false, 1i), Struct_1(true, 1i), 593f, 46123u), Struct_2(vec4<i32>(-7886i, -29873i, -1i, 6648i), Struct_1(true, 0i), Struct_1(false, 0i), 811f, 1u), Struct_2(vec4<i32>(-1i, 302i, 51420i, 49196i), Struct_1(true, 26881i), Struct_1(false, 5044i), -1729f, 8460u), Struct_2(vec4<i32>(28318i, 1i, 1i, -7129i), Struct_1(false, -1i), Struct_1(true, -5484i), -164f, 10115u), Struct_2(vec4<i32>(1i, -44941i, 14285i, -7925i), Struct_1(false, 1i), Struct_1(true, 2147483647i), 2143f, 4294967295u), Struct_2(vec4<i32>(62506i, 70723i, 81880i, -1i), Struct_1(true, i32(-2147483648)), Struct_1(false, -1i), 1000f, 46166u), Struct_2(vec4<i32>(-1i, 1i, -6485i, 2147483647i), Struct_1(false, -26533i), Struct_1(false, -14463i), -1076f, 0u), Struct_2(vec4<i32>(1i, 68393i, i32(-2147483648), -372i), Struct_1(false, -1i), Struct_1(true, i32(-2147483648)), -1853f, 93781u));

var<private> global1: Struct_1 = Struct_1(false, 19789i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    global1 = Struct_1(global1.a, global1.b);
    var var_0 = Struct_3(Struct_2(firstTrailingBit(u_input.c), Struct_1(false, reverseBits(~(-1i))), Struct_1(any(!vec2<bool>(global1.a, global1.a)), 21767i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f)), _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(1u, 11623u, u_input.d.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 0u, 15755u) & vec3<u32>(u_input.e, u_input.d.x, 10759u), vec3<u32>(5232u, 54262u, 4294967295u)))), Struct_2(_wgslsmith_div_vec4_i32(~(~vec4<i32>(-2147483647i, global1.b, -42546i, 0i)), select(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), select(u_input.c, u_input.c, global1.a), true)), Struct_1(false, ~_wgslsmith_clamp_i32(-1i, u_input.b.x, u_input.c.x)), Struct_1(global1.a, u_input.c.x), -605f, firstTrailingBit(1u)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(966u, 0u, select(_wgslsmith_mod_u32(u_input.e, 1u), 81040u, true)), 9u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1853f), 1299f, _wgslsmith_f_op_f32(abs(-1677f))))))), Struct_1(false, u_input.c.x));
    let var_1 = !(!select(vec3<bool>(all(vec2<bool>(false, var_0.c.b.a)), global1.a, true), vec3<bool>(true, any(vec4<bool>(var_0.e.a, false, global1.a, global1.a)), var_0.e.a || var_0.a.c.a), false));
    var var_2 = Struct_3(var_0.a, global0[_wgslsmith_index_u32(~(~var_0.a.e), 9u)], var_0.a, var_0.d, var_0.e);
    var var_3 = vec3<f32>(-1416f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(782f)) - _wgslsmith_f_op_f32(min(1037f, 641f))))))), -2021f);
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = select(!vec2<bool>(select(global1.b == -2147483647i, func_3(), global1.a), global1.a), select(!vec2<bool>(all(vec4<bool>(global1.a, global1.a, global1.a, global1.a)), global1.a), vec2<bool>(global1.a, !(true == global1.a)), 31203u >= max(~u_input.d.x, 1u)), (-1i <= _wgslsmith_dot_vec2_i32(u_input.c.wz, firstTrailingBit(u_input.c.xy))) != false);
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_2(u_input.c, Struct_1(true, ~(-38870i)), Struct_1(var_0.x | true, -2147483647i), 1012f, firstTrailingBit(2742u)), global0[_wgslsmith_index_u32(u_input.d.x << (4294967295u % 32u), 9u)], vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(278f + 1000f) * -364f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-268f)), _wgslsmith_f_op_f32(ceil(550f))))), -1622f, _wgslsmith_f_op_f32(1028f * _wgslsmith_f_op_f32(round(-1000f)))), Struct_1(global1.a, global1.b));
    let var_2 = vec4<bool>((139540u >= u_input.e) | global1.a, global1.a, func_3(), true);
    var var_3 = var_1;
    var var_4 = ~vec4<u32>(abs(0u), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_3.c.e, 1u), 41245u << (u_input.e % 32u)), (29956u << (0u % 32u)) >> ((var_1.a.e & var_3.a.e) % 32u)), var_1.b.e);
    return var_3.a;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = min(min(_wgslsmith_sub_vec4_i32(~vec4<i32>(-36221i, arg_2, 0i, u_input.b.x), max(vec4<i32>(global1.b, -4776i, 0i, global1.b), arg_1.b.a) ^ vec4<i32>(arg_2, arg_2, -54609i, 8074i)), ~_wgslsmith_add_vec4_i32(arg_1.a.a, vec4<i32>(0i, global1.b, u_input.b.x, u_input.c.x))), vec4<i32>(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, ~global1.b), global1.b), u_input.c.x ^ 0i, select(0i | global1.b, _wgslsmith_sub_i32(-16742i, func_2().a.x), !global1.a)));
    global0 = array<Struct_2, 9>();
    global1 = arg_1.a.c;
    global1 = arg_1.a.c;
    var var_1 = var_0;
    return func_2().c;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    let var_0 = Struct_1(true, 0i);
    var var_1 = Struct_1(!(!(!arg_2.a)), 32758i);
    global0 = array<Struct_2, 9>();
    return func_4(203f, Struct_3(Struct_2(vec4<i32>(-1433i, global1.b, arg_2.b, -2147483647i) & u_input.c, arg_3, Struct_1(var_1.a, -60150i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-639f))), arg_0), func_2(), global0[_wgslsmith_index_u32(firstLeadingBit(~1u << (0u % 32u)), 9u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(624f, -828f, 243f)))), func_2().c), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(max(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7545u, u_input.d.x), vec3<u32>(0u, 14201u, u_input.d.x))), 28786u), 4294967295u), 1u >= (u_input.a.x << (firstTrailingBit(u_input.d.x & 41509u) % 32u)), Struct_1(true, firstTrailingBit(global1.b)), Struct_1(~(u_input.d.x | u_input.a.x) > ((u_input.a.x << (u_input.d.x % 32u)) >> (_wgslsmith_sub_u32(u_input.e, 156158u) % 32u)), ~(~(-4648i))));
    global0 = array<Struct_2, 9>();
    var var_0 = func_2();
    var var_1 = -51403i;
    var var_2 = true;
    let var_3 = false;
    var var_4 = select(!select(!select(vec4<bool>(var_0.b.a, var_0.c.a, false, true), vec4<bool>(true, false, true, var_3), vec4<bool>(true, var_0.b.a, var_3, var_3)), select(!vec4<bool>(var_3, false, true, var_0.c.a), vec4<bool>(var_3, global1.a, var_0.c.a, var_0.c.a), select(vec4<bool>(true, false, var_0.c.a, true), vec4<bool>(var_3, var_0.b.a, true, global1.a), vec4<bool>(false, true, true, var_0.b.a))), any(vec3<bool>(true, global1.a, true)) & true), !select(vec4<bool>(!global1.a, var_3, true, global1.a | var_3), !vec4<bool>(true, var_3, false, var_0.c.a), var_0.b.a), vec4<bool>(_wgslsmith_f_op_f32(-var_0.d) != 539f, (-var_0.a.x | (global1.b >> (u_input.a.x % 32u))) != countOneBits(var_0.a.x), false, !var_0.b.a));
    var_4 = !(!vec4<bool>(func_2().c.a, func_4(_wgslsmith_f_op_f32(floor(-572f)), Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], global0[_wgslsmith_index_u32(116167u, 9u)], Struct_2(vec4<i32>(var_0.c.b, -36095i, -1i, u_input.b.x), Struct_1(true, -8110i), Struct_1(false, global1.b), 759f, var_0.e), vec3<f32>(var_0.d, -1000f, -907f), Struct_1(var_0.c.a, var_0.c.b)), ~26798i).a, func_2().b.a & all(var_4.ww), !(!var_0.b.a)));
    global1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, 674f) * vec2<f32>(var_0.d, var_0.d)) * vec2<f32>(var_0.d, var_0.d)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1303f, -1002f), vec2<f32>(-1120f, 896f))))), var_0.a, -880f);
}

