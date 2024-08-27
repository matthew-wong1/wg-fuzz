struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(0u, vec4<bool>(false, false, false, true), vec4<f32>(1000f, 1746f, -340f, 730f), -1201f), Struct_1(5169u, vec4<bool>(false, true, true, false), vec4<f32>(367f, 1129f, 799f, -467f), -1434f), Struct_1(26598u, vec4<bool>(true, true, true, true), vec4<f32>(-1653f, 1774f, -388f, 768f), 1810f), Struct_1(0u, vec4<bool>(false, true, true, false), vec4<f32>(1185f, -323f, 2327f, 585f), -351f), Struct_1(52247u, vec4<bool>(false, true, true, true), vec4<f32>(-1011f, -1749f, -1000f, 301f), 556f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<f32>) -> vec4<bool> {
    return select(select(vec4<bool>(!(u_input.b < 0u), all(select(vec2<bool>(arg_0.x, false), arg_0.xy, arg_0.yx)), arg_0.x, arg_0.x & !arg_0.x), !select(select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, true, arg_0.x, true), true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), !vec4<bool>(arg_0.x, false, false && arg_0.x, arg_0.x)), vec4<bool>(select(arg_0.x, any(vec4<bool>(true, true, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(select(arg_2.x, -1129f, true)) != _wgslsmith_f_op_f32(min(arg_1.x, 513f))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-567f)), arg_2.x) >= _wgslsmith_f_op_f32(f32(-1f) * -1092f), false), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-15293i, select(0i, -1i, true)), 22717i) < firstLeadingBit(_wgslsmith_sub_i32(1i, ~(-1i))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_div_u32(min(abs(u_input.a.x), ~62989u), ~98098u), 1u), 5u)];
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 5u)];
    var_1 = Struct_1(countOneBits(~(~_wgslsmith_add_u32(var_0.a, 33376u))), select(vec4<bool>(1319f <= var_1.d, true, true, var_0.b.x), var_0.b, select(select(func_3(vec3<bool>(var_0.b.x, true, true), vec4<f32>(var_0.c.x, var_0.d, var_1.c.x, -436f), var_0.c.wyx), select(var_1.b, vec4<bool>(var_0.b.x, var_1.b.x, true, var_0.b.x), var_1.b), vec4<bool>(true, true, var_0.b.x, var_1.b.x)), !(!vec4<bool>(false, true, var_1.b.x, false)), !(!vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d), var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-332f, var_1.d)))), _wgslsmith_f_op_f32(exp2(var_0.c.x))), 1294f);
    var var_2 = 35967u;
    return global0[_wgslsmith_index_u32(1u, 5u)];
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = u_input.b;
    global0 = array<Struct_1, 5>();
    var var_1 = vec2<f32>(-1435f, 273f);
    return func_2(firstTrailingBit((vec4<i32>(-1i) * -vec4<i32>(-24713i, 27388i, -19764i, 2147483647i)) & _wgslsmith_add_vec4_i32(vec4<i32>(-22775i, 31436i, 1401i, 13718i), select(vec4<i32>(23932i, -10806i, 74447i, 33555i), vec4<i32>(1i, 35771i, 34084i, 0i), vec4<bool>(true, false, true, true)))), select(1i, ~6058i, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true))));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    return func_2(~(vec4<i32>(i32(-1i) * -47217i, ~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 27340i, 2147483647i), vec3<i32>(1i, -23875i, -13659i)), -2147483647i) & vec4<i32>(1i, 1i, 1i, 1i)), select(-1i, -(~(-35251i)), arg_2.b.x));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x));
    var var_1 = select(vec4<bool>(!((arg_2.d != 1000f) & any(vec3<bool>(arg_1.b.x, false, arg_2.b.x))), !all(!vec2<bool>(arg_2.b.x, true)), true, true), func_1().b, !(!((true && arg_1.b.x) & !arg_1.b.x)));
    var_1 = !arg_1.b;
    let var_2 = Struct_1(u_input.b << (1u % 32u), vec4<bool>(!arg_2.b.x, true, func_2(min(vec4<i32>(13813i, 20101i, -13554i, -42749i), vec4<i32>(-1i, 74242i, -16643i, 2147483647i) << (vec4<u32>(u_input.a.x, 0u, 0u, 43645u) % vec4<u32>(32u))), 5268i).b.x, true), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_1.d), arg_2.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c.x - -926f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c.x)))), arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d))));
    var var_3 = any(func_1().b.zwy);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, 1i, i32(-1i) * -37629i) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(108580u, u_input.a.x, 0u, 4294967295u), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 4294967295u)), abs(vec4<u32>(0u, u_input.b, u_input.b, u_input.a.x)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_2 = 1i;
    global0 = array<Struct_1, 5>();
    var_0 = (any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))) | func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-773f)) - -1055f), func_4(1u, abs(vec2<u32>(1u, 0u)), func_1()), func_4(~u_input.b, ~vec2<u32>(114007u, 4294967295u), Struct_1(u_input.a.x, vec4<bool>(true, false, false, true), vec4<f32>(1295f, 1442f, 320f, -1655f), -254f)))) | false;
    let var_3 = func_1();
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, var_2);
}

