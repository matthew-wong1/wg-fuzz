struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_4) -> i32 {
    let var_0 = select(select(!select(select(vec4<bool>(arg_2.a, false, true, arg_3.a), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], false), false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 5u)], false, arg_2.a, global0[_wgslsmith_index_u32(arg_0, 5u)]), global0[_wgslsmith_index_u32(abs(0u), 5u)]), vec4<bool>(true, any(select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(false, false), vec2<bool>(arg_2.a, arg_3.a))), arg_3.a, !any(vec4<bool>(arg_3.a, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false, global0[_wgslsmith_index_u32(1u, 5u)]))), ~1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.b.b, 52632u) & vec3<u32>(61059u, 97640u, 0u), vec3<u32>(u_input.a.x, 11500u, arg_2.b.b) << (u_input.a % vec3<u32>(32u)))), !(!(!(!vec4<bool>(arg_2.a, arg_2.a, false, false)))), select(!(!vec4<bool>(false, false, arg_2.a, arg_2.a)), !select(select(vec4<bool>(false, false, arg_3.a, global0[_wgslsmith_index_u32(57152u, 5u)]), vec4<bool>(false, arg_2.a, global0[_wgslsmith_index_u32(arg_2.b.c.x, 5u)], false), vec4<bool>(arg_2.a, arg_2.a, true, false)), select(vec4<bool>(arg_2.a, arg_2.a, true, false), vec4<bool>(arg_2.a, true, global0[_wgslsmith_index_u32(arg_3.b.c.x, 5u)], false), arg_2.a), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_3.b.b, 5u)], arg_2.a, arg_2.a), vec4<bool>(arg_3.a, true, false, false), false)), select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(arg_3.b.b, 5u)])), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], true, false), !(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)])))));
    global0 = array<bool, 5>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(261f + 1000f))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c, _wgslsmith_f_op_f32(arg_2.c + arg_3.c)) - _wgslsmith_f_op_f32(f32(-1f) * -1170f))));
    global0 = array<bool, 5>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1396f, -781f))))), firstLeadingBit(~0u), vec3<u32>(~92537u, arg_3.b.c.x, ~_wgslsmith_clamp_u32(arg_0, 19688u, 61277u))));
    return max(countOneBits(firstLeadingBit(0i)), -1i);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(arg_0.x, arg_3.a, arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-3087f, arg_3.a.a.x, 1000f, arg_3.a.a.x), vec4<f32>(arg_3.a.a.x, 989f, 266f, arg_1)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(271f, arg_1, arg_3.a.a.x, -1925f) * vec4<f32>(arg_1, 640f, -1031f, arg_3.a.a.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, 1064f, 3008f, -664f))), any(arg_2))))));
    var var_1 = arg_3;
    let var_2 = Struct_3(Struct_2(var_1.a), Struct_2(Struct_1(var_0.d.yy, var_0.b.b, abs(var_0.b.c))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xy, var_0.b.c.xx), u_input.a.x) << (max(max(_wgslsmith_mod_u32(84271u, 4294967295u), firstLeadingBit(var_1.a.b)), ~(~1u)) % 32u));
    let var_3 = _wgslsmith_clamp_i32(func_3(53066u, countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.a.b, 49883u, 44877u, 1u), ~vec4<u32>(var_1.a.b, 0u, 24124u, 1u))), Struct_4(_wgslsmith_f_op_f32(var_1.a.a.x - -390f) != var_1.a.a.x, arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(528f, -1492f, 1000f, -215f)), _wgslsmith_div_vec4_f32(vec4<f32>(-199f, -534f, var_1.a.a.x, -752f), vec4<f32>(var_1.a.a.x, 478f, var_2.b.a.a.x, var_2.b.a.a.x)))), Struct_4(!arg_0.x, Struct_1(vec2<f32>(arg_3.a.a.x, -1641f), ~0u, countOneBits(vec3<u32>(u_input.a.x, 64528u, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.a.a.x, -1653f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a.a.x, var_0.b.a.x, -366f, 210f) * vec4<f32>(arg_3.a.a.x, 464f, -353f, arg_3.a.a.x)) - vec4<f32>(arg_3.a.a.x, var_0.d.x, arg_1, arg_3.a.a.x)))), 0i, -2147483647i);
    let var_4 = !arg_2.x;
    return Struct_3(var_2.b, arg_3, _wgslsmith_div_u32(countOneBits(var_2.b.a.c.x), 43915u ^ var_2.c) | u_input.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: i32) -> vec2<bool> {
    global0 = array<bool, 5>();
    let var_0 = _wgslsmith_div_u32(4294967295u, func_2(vec3<bool>(false, select(true, !global0[_wgslsmith_index_u32(arg_0.a.a.b, 5u)], all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false, true))), false), arg_0.b.a.a.x, !select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b.a.b, 5u)], true, global0[_wgslsmith_index_u32(60597u, 5u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(arg_0.c, 5u)]), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false))), func_2(select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.a.b, 5u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(26743u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(54217u, 5u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.b.a.c.x, 5u)])), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(arg_0.b.a.b, 5u)], false), true), -1229f, vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)] && global0[_wgslsmith_index_u32(61023u, 5u)], true), Struct_2(func_2(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false), -896f, vec3<bool>(false, true, true), Struct_2(arg_0.b.a)).b.a)).b).b.a.b);
    let var_1 = Struct_4(false, func_2(!vec3<bool>(all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.a.a.b, 5u)])), global0[_wgslsmith_index_u32(abs(64052u), 5u)], !global0[_wgslsmith_index_u32(4294967295u, 5u)]), -168f, select(select(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c, 5u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], false)), vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(70570u, 5u)], false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(var_0, 5u)])), !vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c, 5u)], global0[_wgslsmith_index_u32(arg_0.a.a.c.x, 5u)], true), true), func_2(select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_0, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), global0[_wgslsmith_index_u32(arg_0.b.a.c.x, 5u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.c, 5u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(85706u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(var_0, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), false)), _wgslsmith_f_op_f32(1564f + 1265f), select(!vec3<bool>(global0[_wgslsmith_index_u32(12580u, 5u)], true, global0[_wgslsmith_index_u32(var_0, 5u)]), select(vec3<bool>(false, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 5u)], true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), true), Struct_2(arg_0.b.a)).a).a.a, 1727f, vec4<f32>(_wgslsmith_f_op_f32(414f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f), -278f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 1429f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_0.b.a.a.x, global0[_wgslsmith_index_u32(var_0, 5u)]))), arg_0.b.a.a.x));
    var var_2 = select(vec3<bool>(all(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], var_1.a)) && (all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)])) | true), false, true), !vec3<bool>(global0[_wgslsmith_index_u32(countOneBits(var_0), 5u)], any(vec2<bool>(true, global0[_wgslsmith_index_u32(68142u, 5u)])) | true, all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.b, 5u)], false, true, global0[_wgslsmith_index_u32(29924u, 5u)]))), false);
    var var_3 = func_2(!select(vec3<bool>(!global0[_wgslsmith_index_u32(12500u, 5u)], var_2.x, !global0[_wgslsmith_index_u32(81575u, 5u)]), vec3<bool>(true, true, true), vec3<bool>(true, arg_2 < arg_2, any(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 5u)], false, global0[_wgslsmith_index_u32(var_0, 5u)], var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(1131f + 2105f)))), !vec3<bool>(var_2.x, true, var_1.a), func_2(vec3<bool>(any(!vec4<bool>(global0[_wgslsmith_index_u32(var_0, 5u)], false, false, true)), !(!global0[_wgslsmith_index_u32(var_0, 5u)]), ~var_1.b.b >= select(0u, 17663u, var_2.x)), -886f, select(select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_2.x, false, global0[_wgslsmith_index_u32(0u, 5u)]), vec3<bool>(false, false, false)), !vec3<bool>(false, false, var_1.a), (var_1.a || false) || true), Struct_2(func_2(!vec3<bool>(false, var_1.a, false), arg_0.a.a.a.x, select(vec3<bool>(var_1.a, global0[_wgslsmith_index_u32(19884u, 5u)], false), vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.b, 5u)], var_1.a, true), vec3<bool>(true, true, var_1.a)), arg_0.a).b.a)).a);
    return select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 5u)]), select(!var_2.zy, !var_2.xz, !all(var_2.zx)), !(!select(var_2.yx, vec2<bool>(false, true), false))), !var_2.yz, var_2.zy);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = ~(u_input.a.x >> (74342u % 32u));
    var_0 = _wgslsmith_sub_u32(select(u_input.a.x, 18650u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7856u, 70892u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 41592u, 4294967295u, u_input.a.x)), 5u)]), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(6222u, 11423u), vec2<u32>(52473u, u_input.a.x)))) >> (((u_input.a.x & (firstTrailingBit(0u) >> (~72451u % 32u))) << (0u % 32u)) % 32u);
    global0 = array<bool, 5>();
    return func_2(vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(65283u), 5u)], true, true | any(!vec3<bool>(arg_1.x, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(966f)), -1777f)), -631f), !(!select(vec3<bool>(arg_0.x, false, arg_1.x), select(arg_2.zzz, arg_0.zyz, arg_2.xxx), !arg_0.yyz)), Struct_2(func_2(!select(vec3<bool>(true, arg_0.x, arg_1.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], arg_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1909f) - -1521f), vec3<bool>(u_input.a.x <= 27797u, true, true), Struct_2(Struct_1(vec2<f32>(798f, -958f), 1873u, u_input.a))).b.a)).b;
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 5>();
    var var_0 = func_5(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(52475u, u_input.a.x, u_input.a.x))), 5u)], any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(58043u, 5u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false, true), global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), !(0u >= u_input.a.x)), select(!select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(8057u, 5u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], false)), true, !global0[_wgslsmith_index_u32(90590u, 5u)], true), true && any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]))), false), select(vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a.x), 5u)], false), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), global0[_wgslsmith_index_u32(4294967295u, 5u)]), !select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(39111u, 5u)]), true), func_4(func_2(vec3<bool>(true, true, false), -890f, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], false), Struct_2(Struct_1(vec2<f32>(969f, -1059f), u_input.a.x, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1287f, -1000f) * vec3<f32>(-1027f, -314f, -726f)), abs(-13058i))), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(~2415u, 5u)]), vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(32400u, 5u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], true)), !global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), !select(vec2<bool>(true, false), vec2<bool>(true, true), true))), select(select(vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(58958u, 5u)])), false, !global0[_wgslsmith_index_u32(u_input.a.x, 5u)], all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]))), select(vec4<bool>(global0[_wgslsmith_index_u32(48816u, 5u)], global0[_wgslsmith_index_u32(60588u, 5u)], true, false), vec4<bool>(true, false, false, false), true), all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], true, true, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), vec4<bool>(true, any(!vec4<bool>(global0[_wgslsmith_index_u32(98115u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], false, false)), !any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(10919u, 5u)], false)), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], true, true, global0[_wgslsmith_index_u32(0u, 5u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(89075u, 5u)], global0[_wgslsmith_index_u32(40029u, 5u)], false))));
    let var_1 = 39565u;
    var var_2 = Struct_5(select(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-4054i, 1i, 5966i) << (vec3<u32>(0u, var_0.a.c.x, 1u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-27629i, 1i, 43974i), vec3<i32>(0i, 18206i, 5440i), vec3<i32>(-8783i, 0i, 3402i)), ~vec3<i32>(5607i, -192i, 30306i))), -(firstLeadingBit(vec3<i32>(-2147483647i, 0i, -1i)) | (vec3<i32>(1i, -2147483647i, -2147483647i) << (vec3<u32>(u_input.a.x, var_0.a.b, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(258f)) - var_0.a.a.x)), select(vec3<u32>(_wgslsmith_div_u32(reverseBits(27017u), u_input.a.x & var_0.a.b), 0u | ~var_0.a.c.x, _wgslsmith_clamp_u32(min(var_1, var_0.a.b), 4294967295u, reverseBits(4294967295u))), _wgslsmith_div_vec3_u32(var_0.a.c ^ firstLeadingBit(var_0.a.c), _wgslsmith_mult_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, var_0.a.c))), !(!global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 5u)])), Struct_2(func_2(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_1, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1, 5u)], true, false), global0[_wgslsmith_index_u32(44496u, 5u)]), func_2(select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false), false), _wgslsmith_f_op_f32(f32(-1f) * -174f), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], true), Struct_2(var_0.a)).b.a.a.x, select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], true), func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(1201f, -523f), var_0.a.c.x, var_0.a.c)), Struct_2(Struct_1(vec2<f32>(var_0.a.a.x, 678f), 1u, u_input.a)), u_input.a.x), vec3<f32>(1466f, -203f, var_0.a.a.x), 1i).x), func_2(vec3<bool>(global0[_wgslsmith_index_u32(99523u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(var_0.a.b, 5u)]), -1373f, select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.b, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(var_0.a.b, 5u)]), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(var_1, 5u)]), Struct_2(var_0.a)).b).a.a), -962f);
    var_2 = Struct_5(vec3<i32>(~(-1i) << (_wgslsmith_add_u32(max(var_0.a.b, var_2.c.a.b), firstTrailingBit(21961u)) % 32u), var_2.a.x, min(abs(_wgslsmith_mult_i32(var_2.a.x, 1i)), i32(-1i) * -1i)), u_input.a & (var_0.a.c ^ var_0.a.c), Struct_2(var_2.c.a), _wgslsmith_f_op_f32(-var_0.a.a.x));
    return var_2.c;
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_5(vec3<i32>(-40757i, -(~(-7098i)), _wgslsmith_div_i32(abs(~30243i), min(-5080i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, 1i), vec3<i32>(1i, 0i, 27351i))))), ~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.c.x, 64339u, arg_1.a.c.x) << (u_input.a % vec3<u32>(32u)), ~arg_1.a.c) | vec3<u32>(u_input.a.x, abs(arg_1.a.b), 1u)), func_5(select(vec4<bool>(all(vec3<bool>(false, true, arg_2.x)), !arg_2.x, true, true), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], arg_2.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(22527u, 5u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(12106u, 5u)], false, global0[_wgslsmith_index_u32(arg_1.a.c.x, 5u)], global0[_wgslsmith_index_u32(7057u, 5u)])), vec4<bool>(false, global0[_wgslsmith_index_u32(10958u, 5u)], false, true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false, global0[_wgslsmith_index_u32(56221u, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(arg_1.a.c.x, 5u)], true, false), vec4<bool>(false, false, arg_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]))), !select(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(arg_1.a.c.x, 5u)], global0[_wgslsmith_index_u32(arg_1.a.b, 5u)])), select(!arg_2.xz, arg_2.zz, vec2<bool>(arg_2.x, true)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.a.x >= 5183u, false, true), vec4<bool>(all(arg_2.yx), global0[_wgslsmith_index_u32(arg_1.a.b, 5u)], !arg_2.x, !global0[_wgslsmith_index_u32(arg_1.a.c.x, 5u)]), arg_2.x)), func_1().a.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c.a.a.x, var_0.d, arg_0, 873f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1971f, _wgslsmith_div_f32(117f, func_5(vec4<bool>(false, false, false, arg_2.x), vec2<bool>(false, false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0.c.a.c.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)])).a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * _wgslsmith_f_op_f32(-arg_0)), -905f)))));
    let var_2 = ~15705i;
    let var_3 = vec2<bool>(true, arg_2.x);
    var_0 = Struct_5(vec3<i32>(_wgslsmith_add_i32(abs(var_0.a.x), 15217i), var_2 | -37416i, 1i), var_0.c.a.c, func_5(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(26453u, u_input.a.x), 5u)] != select(false, global0[_wgslsmith_index_u32(var_0.c.a.b, 5u)], true), all(vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(1i, -31011i) >= _wgslsmith_mult_i32(-14536i, var_0.a.x), var_3.x), arg_2.xz, select(select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(46516u, 5u)], var_3.x), vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(5467u, 5u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.c.x, 5u)], false, false, false)), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], true, false, arg_2.x), func_4(Struct_3(var_0.c, arg_1, 77736u), vec3<f32>(arg_0, -1660f, var_1.x), var_0.a.x).x), select(!vec4<bool>(true, arg_2.x, var_3.x, var_3.x), !vec4<bool>(true, arg_2.x, global0[_wgslsmith_index_u32(93467u, 5u)], false), !vec4<bool>(arg_2.x, false, var_3.x, false)), true)), arg_1.a.a.x);
    return Struct_5(_wgslsmith_div_vec3_i32(-(~max(vec3<i32>(0i, 10932i, var_2), vec3<i32>(var_0.a.x, 15570i, -21668i))), vec3<i32>(-13205i, firstLeadingBit(_wgslsmith_add_i32(0i, var_2)), _wgslsmith_mult_i32(var_0.a.x, var_2) << (~arg_1.a.b % 32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(func_5(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(13995u, 5u)]), var_3, vec4<bool>(false, false, false, true)).a.c.zy, u_input.a.zx) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.b, arg_1.a.b, var_0.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, var_0.c.a.b), var_0.b)) % 32u), arg_1.a.b, ~3395u), var_0.c, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f * _wgslsmith_f_op_f32(sign(-457f)))), func_1(), !select(select(!vec3<bool>(true, false, var_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false, var_0), var_0), select(!vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, var_0), true), vec3<bool>(true, true, true)));
    var var_2 = -957f;
    var_1 = func_6(308f, func_2(vec3<bool>(true, !(global0[_wgslsmith_index_u32(var_1.b.x, 5u)] | var_0), true || var_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-419f, -1573f)))), !vec3<bool>(true, !global0[_wgslsmith_index_u32(var_1.c.a.b, 5u)], true), Struct_2(var_1.c.a)).b, select(select(vec3<bool>(false, true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false))), vec3<bool>(global0[_wgslsmith_index_u32(8987u, 5u)], false, true), !(!global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), !(!(!vec3<bool>(false, var_0, global0[_wgslsmith_index_u32(var_1.b.x, 5u)]))), vec3<bool>(global0[_wgslsmith_index_u32(min(~u_input.a.x, 1u), 5u)], func_1().a.a.x >= _wgslsmith_f_op_f32(trunc(var_1.d)), !any(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 5u)], false, global0[_wgslsmith_index_u32(57878u, 5u)])))));
    global0 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_1.d)), _wgslsmith_div_vec2_f32(var_1.c.a.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.a.a.x, 1358f))), vec2<f32>(var_1.d, _wgslsmith_f_op_f32(-var_1.d))))));
}

