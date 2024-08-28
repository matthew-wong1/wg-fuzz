struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<i32>(i32(-2147483648), -32518i, -9223i, i32(-2147483648)), 2877f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-1i, 30010i, 1i, 2147483647i), 394f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(19201i, -1i, -71598i, -7788i), -1000f, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-35804i, 31108i, 25649i, -17321i), -125f, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(23899i, i32(-2147483648), 32079i, 0i), 220f, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-21082i, -42154i, 2147483647i, -44568i), 271f, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-1i, -1i, i32(-2147483648), 0i), 775f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, -15440i), -1287f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(37937i, -1i, 52360i, i32(-2147483648)), -924f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(0i, 0i, 2147483647i, i32(-2147483648)), -393f, vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-1i, 17048i, -35980i, -1i), -1308f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-33961i, 13491i, 1i, -23653i), 859f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(1896i, -1i, -37848i, 0i), -833f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-42666i, -28202i, -33868i, -7403i), -233f, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(65073i, 2620i, i32(-2147483648), -23254i), -693f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(53763i, i32(-2147483648), i32(-2147483648), 0i), 1273f, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-34374i, 42032i, 0i, 31722i), 404f, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(1i, 22261i, i32(-2147483648), 36118i), 1000f, vec3<bool>(true, false, false)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    return -1731f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(step(-555f, arg_1.b))), 253f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_0.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-108f - _wgslsmith_f_op_f32(941f + _wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(-241f, var_0.x))), _wgslsmith_f_op_f32(-arg_0.b))));
    let var_1 = 2147483647i;
    return 83194u;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> bool {
    let var_0 = arg_0 << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<bool>(arg_2, false, false)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(44843u, 4294967295u, 47762u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(arg_0, arg_0, 80591u), true), vec3<u32>(arg_0, 13449u, 40045u) | vec3<u32>(arg_0, arg_0, arg_0))), vec3<u32>(~(~86916u), 49988u, select(func_2(arg_1, Struct_1(arg_1.a, 472f, vec3<bool>(false, false, arg_2))), countOneBits(1095u), true))) % 32u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b)));
    let var_2 = ~min(~1u, var_0);
    global0 = array<Struct_1, 18>();
    let var_3 = arg_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (1186i > (u_input.a << (~1u % 32u))) & all(vec2<bool>(func_1(_wgslsmith_div_u32(90514u, 31213u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(40318u, 76013u, 1u, 52197u), vec4<u32>(0u, 4294967295u, 9313u, 29280u)), 18u)], true, vec4<f32>(-638f, -1126f, -1000f, -148f)), all(vec4<bool>(false, false, false, false))));
    var var_1 = Struct_1(~_wgslsmith_sub_vec4_i32(vec4<i32>(86203i, u_input.a, -26406i, 0i) << (~vec4<u32>(60658u, 0u, 18699u, 4294967295u) % vec4<u32>(32u)), abs(vec4<i32>(u_input.a, 1436i, u_input.a, 2147483647i)) & (vec4<i32>(u_input.a, 1i, 21918i, u_input.a) << (vec4<u32>(1u, 1u, 83338u, 3318u) % vec4<u32>(32u)))), 168f, !vec3<bool>(!(-34968i > u_input.a), !func_1(0u, global0[_wgslsmith_index_u32(4294967295u, 18u)], false, vec4<f32>(-557f, 1376f, 501f, 1212f)), var_0));
    var var_2 = Struct_1(~(vec4<i32>(max(var_1.a.x, var_1.a.x), i32(-1i) * -29212i, abs(var_1.a.x), u_input.a) & -firstLeadingBit(var_1.a)), var_1.b, var_1.c);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1437f);
    var_2 = global0[_wgslsmith_index_u32(func_2(Struct_1(var_2.a, _wgslsmith_f_op_f32(-var_1.b), var_1.c), global0[_wgslsmith_index_u32(select(select(~select(39229u, 8020u, false), 1u, true), 1u, true), 18u)]), 18u)];
    let var_4 = _wgslsmith_div_vec3_i32(~_wgslsmith_mult_vec3_i32(-var_2.a.zzz, vec3<i32>(2826i & var_1.a.x, _wgslsmith_mult_i32(2147483647i, var_2.a.x), -var_2.a.x)), -vec3<i32>(abs(i32(-1i) * -41854i), var_1.a.x, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.zzz ^ select(vec3<i32>(-25226i, _wgslsmith_clamp_i32(0i, 2147483647i, var_4.x), -21262i), select(~vec3<i32>(-2147483647i, 1899i, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.x, 15723i, var_1.a.x), vec3<i32>(59268i, var_1.a.x, var_2.a.x)), any(vec2<bool>(true, var_2.c.x))), select(!vec3<bool>(var_1.c.x, true, false), !var_2.c, select(var_1.c, var_2.c, true))));
}

