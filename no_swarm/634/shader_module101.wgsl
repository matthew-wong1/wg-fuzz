struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<bool, 7> = array<bool, 7>(true, false, true, true, false, false, false);

var<private> global2: f32;

var<private> global3: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(4294967295u, 82467u, 3527u, 4294967295u), vec4<u32>(25549u, 33304u, 73836u, 1u), vec4<u32>(4294967295u, 4294967295u, 31283u, 6251u), vec4<u32>(0u, 1u, 60717u, 4294967295u), vec4<u32>(1429u, 0u, 4294967295u, 4294967295u), vec4<u32>(54469u, 21806u, 120665u, 1u), vec4<u32>(0u, 70716u, 19279u, 4294967295u), vec4<u32>(4294967295u, 65745u, 84813u, 81229u), vec4<u32>(4294967295u, 62016u, 3151u, 524u), vec4<u32>(0u, 38390u, 59521u, 61863u), vec4<u32>(35743u, 36458u, 0u, 0u));

var<private> global4: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec2<bool>(false, true), vec2<f32>(-405f, -1444f), vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false), vec2<f32>(126f, -406f), vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true), vec2<f32>(1902f, 120f), vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false), vec2<f32>(866f, -249f), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true), vec2<f32>(1027f, 679f), vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false), vec2<f32>(-1455f, 980f), vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true), vec2<f32>(-1000f, -350f), vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false), vec2<f32>(-718f, -1218f), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true), vec2<f32>(-114f, -453f), vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false), vec2<f32>(431f, -1161f), vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false), vec2<f32>(-1090f, 367f), vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false), vec2<f32>(1186f, 115f), vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true), vec2<f32>(513f, -1183f), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true), vec2<f32>(-1211f, -743f), vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false), vec2<f32>(-558f, 716f), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false), vec2<f32>(752f, 1087f), vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false), vec2<f32>(-162f, -225f), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true), vec2<f32>(176f, -1445f), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true), vec2<f32>(-1617f, 362f), vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false), vec2<f32>(319f, 637f), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false), vec2<f32>(-710f, 488f), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false), vec2<f32>(1074f, 689f), vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true), vec2<f32>(238f, 928f), vec2<bool>(true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool) -> u32 {
    global0 = array<Struct_1, 6>();
    global3 = array<vec4<u32>, 11>();
    let var_0 = ~(~1u);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(572f)), _wgslsmith_f_op_f32(f32(-1f) * -409f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-428f)), _wgslsmith_f_op_f32(-206f * -736f)))))));
    let var_2 = true;
    return u_input.a;
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    global2 = -1858f;
    var var_0 = all(vec3<bool>(-1000f == arg_0.b.x, global1[_wgslsmith_index_u32(u_input.a, 7u)], false));
    let var_1 = 0i >> (u_input.a % 32u);
    let var_2 = !all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 7u)]), !select(arg_0.a, arg_0.c, arg_0.a), !select(arg_0.a, vec2<bool>(true, false), true)));
    let var_3 = Struct_1(~_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b));
    return u_input.b.yz;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    global1 = array<bool, 7>();
    let var_0 = !vec2<bool>(true, arg_0);
    global0 = array<Struct_1, 6>();
    let var_1 = Struct_2(vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-356f, -731f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f + 1105f))), _wgslsmith_f_op_f32(-441f + _wgslsmith_f_op_f32(abs(-1791f)))), var_0);
    let var_2 = min(firstLeadingBit(func_3(global4[_wgslsmith_index_u32(~abs(arg_1.a), 23u)])), firstTrailingBit(u_input.c));
    return _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~0i, -1i), arg_2.x >> (u_input.c.x % 32u), -2147483647i), _wgslsmith_div_i32(~(-arg_2.x & -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, -7622i, _wgslsmith_div_i32(arg_2.x, arg_2.x), arg_2.x), vec4<i32>(29539i << (var_2.x % 32u), _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(arg_2.x, 0i)), ~arg_2.x, min(arg_2.x, 0i)))), _wgslsmith_clamp_i32(max(arg_2.x, abs(_wgslsmith_mod_i32(1i, -30584i))), select(-1i, 2147483647i << (var_2.x % 32u), true), _wgslsmith_add_i32(_wgslsmith_div_i32(abs(arg_2.x), i32(-1i) * -26588i), ~countOneBits(arg_2.x))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    global0 = array<Struct_1, 6>();
    global3 = array<vec4<u32>, 11>();
    global2 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_0 = ~4294967295u;
    let var_1 = arg_1 >> (_wgslsmith_div_u32(4829u, reverseBits(u_input.a) & 13941u) % 32u);
    return Struct_2(select(select(!arg_0.c, arg_0.a, select(!vec2<bool>(arg_0.a.x, global1[_wgslsmith_index_u32(u_input.a, 7u)]), arg_0.c, vec2<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(12861u, 7u)]))), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(24657u, 7u)], false))), !arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.x * 2228f), arg_0.b.x), select(vec2<bool>(arg_0.a.x, true), !arg_0.a, !arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~4294967295u, 23u)];
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, ~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, 0u), firstLeadingBit(37194u))), ~(~(~10151u)));
    global3 = array<vec4<u32>, 11>();
    var var_2 = func_4(global4[_wgslsmith_index_u32(~(func_1(true) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 35677u, 69734u), ~u_input.b) % 32u)), 23u)], func_2(global1[_wgslsmith_index_u32(2683u, 7u)], global0[_wgslsmith_index_u32(24246u, 6u)], select(~min(vec2<i32>(-1i, -2147483647i), vec2<i32>(-54135i, 45031i)), _wgslsmith_sub_vec2_i32(vec2<i32>(3313i, 1012i), vec2<i32>(1i, 1i)), true), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, _wgslsmith_div_u32(84272u, var_1)), 6u)]), vec4<i32>(-(-1i >> (1u % 32u)), -1i, _wgslsmith_mod_i32(~_wgslsmith_add_i32(-1i, -2147483647i), -(2147483647i << (var_1 % 32u))), _wgslsmith_mult_i32(func_2(all(var_0.c), global0[_wgslsmith_index_u32(20726u, 6u)], max(vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 2147483647i)), global0[_wgslsmith_index_u32(abs(1u), 6u)]), 37291i)));
    var var_3 = -(select(-1i, abs(-2147483647i), _wgslsmith_f_op_f32(min(var_2.b.x, var_0.b.x)) != -429f) | firstTrailingBit(-abs(1i)));
    var var_4 = global4[_wgslsmith_index_u32(func_1(-(~(-31771i)) >= _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, -1i, 4732i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 8928i), vec3<i32>(1i, -2147483647i, 17498i))), -(~15503i))), 23u)];
    global2 = -278f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-502f, var_0.b.x))) - _wgslsmith_f_op_f32(-var_0.b.x)));
}

