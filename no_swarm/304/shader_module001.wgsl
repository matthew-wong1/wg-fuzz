struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: vec3<i32> = vec3<i32>(-8244i, 2147483647i, 1i);

var<private> global1: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(1696f, 1133f), vec2<f32>(1264f, 1327f), vec2<f32>(778f, 665f), vec2<f32>(374f, -402f), vec2<f32>(1016f, 1491f), vec2<f32>(-2457f, -1156f), vec2<f32>(1000f, 996f), vec2<f32>(-747f, -101f));

var<private> global2: array<bool, 23>;

var<private> global3: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-2613i, 1i, 1i), vec3<i32>(-782i, -11252i, 1i), vec3<i32>(-1i, -1i, 36074i), vec3<i32>(-27375i, -33170i, -40662i), vec3<i32>(-47243i, -24027i, 0i), vec3<i32>(-61123i, 25729i, 21957i), vec3<i32>(21205i, i32(-2147483648), 36619i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(26526i, -17319i, i32(-2147483648)), vec3<i32>(-49557i, -14173i, i32(-2147483648)), vec3<i32>(-20515i, 16282i, -15140i), vec3<i32>(5828i, -62003i, 1i), vec3<i32>(i32(-2147483648), -13617i, -32378i), vec3<i32>(i32(-2147483648), -1i, -35668i), vec3<i32>(2147483647i, -25091i, 0i), vec3<i32>(15641i, i32(-2147483648), 38416i), vec3<i32>(-70i, i32(-2147483648), 27156i), vec3<i32>(-17668i, 0i, 1i), vec3<i32>(-17721i, 1i, 0i), vec3<i32>(-1i, 2147483647i, -2908i), vec3<i32>(35764i, 0i, -1i), vec3<i32>(15470i, -31103i, 2147483647i), vec3<i32>(20300i, -10717i, -14717i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = 0u;
    global1 = array<vec2<f32>, 8>();
    global0 = countOneBits(vec3<i32>(_wgslsmith_mod_i32(-(~global0.x), _wgslsmith_add_i32(~global0.x, abs(u_input.c))), _wgslsmith_mult_i32(i32(-1i) * -1i, u_input.c), (global0.x | -global0.x) | abs(0i)));
    let var_1 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 31212u, 81238u, 138775u), abs(vec4<u32>(14426u, 26547u, 1u, 52321u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(48817u, 75643u, 52001u, 17561u), vec4<u32>(1u, 6024u, 0u, 1940u), vec4<u32>(1u, 75513u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], false)))));
    var var_2 = Struct_2(24370u);
    return _wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(countOneBits(~(i32(-1i) * -1i)), -16294i, -_wgslsmith_add_i32(2147483647i, -2147483647i)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global3 = array<vec3<i32>, 23>();
    let var_0 = select(!select(vec2<bool>(true, true), select(!vec2<bool>(global2[_wgslsmith_index_u32(79854u, 23u)], true), select(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 23u)]), vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(11256u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)])), global2[_wgslsmith_index_u32(4294967295u, 23u)]), !global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], true), false);
    let var_1 = Struct_3(var_0, Struct_2(_wgslsmith_clamp_u32(1u, 17235u, ~(~0u))), -vec2<i32>(abs(func_3()), _wgslsmith_clamp_i32(u_input.a, 1i, u_input.a >> (6022u % 32u))), Struct_2(~max(_wgslsmith_div_u32(1u, 15164u), abs(1u))), false);
    global1 = array<vec2<f32>, 8>();
    let var_2 = 1u;
    return Struct_1(!(var_0.x & false), _wgslsmith_f_op_f32(-278f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(ceil(632f)), true))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> vec3<bool> {
    global3 = array<vec3<i32>, 23>();
    global0 = -firstLeadingBit(countOneBits(~vec3<i32>(arg_1.c.x, 48380i, -12109i))) >> ((vec3<u32>(arg_1.b.a, max(19078u, _wgslsmith_add_u32(1u, 26247u)), 0u) >> (abs(firstTrailingBit(~vec3<u32>(arg_1.d.a, 14590u, 134443u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_0 = select(~abs(_wgslsmith_sub_vec4_u32(max(vec4<u32>(arg_1.b.a, 42997u, arg_1.d.a, 69633u), vec4<u32>(arg_1.b.a, 8853u, arg_1.d.a, arg_1.d.a)), ~vec4<u32>(arg_1.b.a, 1u, arg_1.d.a, arg_1.d.a))), abs(~vec4<u32>(0u, 4294967295u, arg_1.b.a, arg_1.d.a) >> (~vec4<u32>(arg_1.d.a, arg_1.b.a, 0u, 0u) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(19091u, 0u, arg_1.b.a, 19820u) >> (firstLeadingBit(vec4<u32>(0u, 0u, arg_1.b.a, arg_1.d.a)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, arg_1.d.a, 15678u), ~vec4<u32>(1u, 18996u, 1u, 64867u)), ~vec4<u32>(arg_1.d.a, arg_1.d.a, arg_1.d.a, arg_1.b.a)), !all(arg_1.a));
    var var_1 = all(!select(vec3<bool>(true, !arg_0.a, !arg_0.a), select(!vec3<bool>(arg_1.e, arg_0.a, arg_0.a), vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 23u)], true), true), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 23u)], false), vec3<bool>(arg_0.a, true, false), vec3<bool>(arg_1.a.x, false, false))));
    var var_2 = Struct_5(vec4<i32>(firstTrailingBit(~arg_2), ~u_input.a, u_input.c, 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(countOneBits(vec2<i32>(global0.x, 55634i))), select(abs(vec2<i32>(-29706i, -2147483647i)), abs(vec2<i32>(2147483647i, 0i)), arg_1.d.a <= arg_1.b.a)), ~(-abs(u_input.b.zx))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(vec4<f32>(-1333f, arg_0.b, arg_0.b, 1358f)).b, _wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.b) + _wgslsmith_f_op_f32(abs(1747f))))));
    return vec3<bool>(false, true, !all(vec2<bool>(global2[_wgslsmith_index_u32(select(var_0.x, 30547u, false), 23u)], true)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = vec3<i32>(-4503i, global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(7780i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, u_input.c), vec4<i32>(-1i, -30006i, -9901i, u_input.b.x)), _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(4294967295u, 23u)], vec3<i32>(global0.x, 1i, u_input.a))), global3[_wgslsmith_index_u32(1u, 23u)])) << (_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), min(select(vec3<u32>(4294967295u, 0u, 1u), ~vec3<u32>(50126u, 490u, 1343u), vec3<bool>(true, true, true)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 27670u, 65406u), vec3<u32>(1u, 1u, 1u)))) % vec3<u32>(32u));
    let var_0 = !func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-851f, 1025f, -503f, 708f)) * vec4<f32>(-148f, -480f, 119f, 2034f))), Struct_3(vec2<bool>(true, global0.x < 18054i), Struct_2(~4294967295u), _wgslsmith_mod_vec2_i32(u_input.b.zy, abs(vec2<i32>(global0.x, u_input.b.x))), Struct_2(1u), false), u_input.a);
    return Struct_1(!var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1162f, -480f)), _wgslsmith_div_f32(-713f, 1318f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -949f), 986f)) - 901f)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> i32 {
    global3 = array<vec3<i32>, 23>();
    global3 = array<vec3<i32>, 23>();
    global2 = array<bool, 23>();
    let var_0 = select(select(select(!vec2<bool>(arg_3, arg_3), !vec2<bool>(arg_1.a, true), global2[_wgslsmith_index_u32(arg_2, 23u)]), !select(vec2<bool>(global2[_wgslsmith_index_u32(arg_2, 23u)], arg_3), func_4(Struct_1(global2[_wgslsmith_index_u32(1u, 23u)], -120f), Struct_3(vec2<bool>(true, false), Struct_2(arg_2), vec2<i32>(-55886i, 2147483647i), Struct_2(arg_2), true), 1i).xy, func_4(Struct_1(true, 319f), Struct_3(vec2<bool>(arg_1.a, arg_1.a), Struct_2(arg_2), global0.xz, Struct_2(102240u), false), u_input.c).xx), select(func_4(arg_1, Struct_3(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 23u)]), Struct_2(arg_2), arg_0.a.zw, Struct_2(43263u), global2[_wgslsmith_index_u32(4294967295u, 23u)]), -36274i).zy, vec2<bool>(select(true, global2[_wgslsmith_index_u32(1u, 23u)], arg_3), arg_1.a), func_1(!global2[_wgslsmith_index_u32(0u, 23u)]).a)), !vec2<bool>(arg_3, !any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], arg_1.a, global2[_wgslsmith_index_u32(arg_2, 23u)], false))), vec2<bool>(false, !(true != all(vec2<bool>(false, arg_3)))));
    return -(~(-21477i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 23>();
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>((i32(-1i) * -22507i) ^ _wgslsmith_mult_i32(reverseBits(global0.x), _wgslsmith_add_i32(-72396i, -22051i)), _wgslsmith_sub_i32(countOneBits(1i), abs(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 0i, 2147483647i, 4285i)))), ~func_5(Struct_5(vec4<i32>(-37936i, 45372i, u_input.a, u_input.c), u_input.a, vec3<f32>(1706f, -396f, 112f)), func_1(global2[_wgslsmith_index_u32(14998u, 23u)]), 4294967295u >> (1u % 32u), false), countOneBits(_wgslsmith_mult_i32(-6301i, global0.x)) >> (74442u % 32u)), max(u_input.b, u_input.b & firstLeadingBit(vec4<i32>(-16659i, u_input.c, u_input.a, u_input.a))));
    let var_1 = vec3<u32>(reverseBits(4294967295u) << (firstTrailingBit(_wgslsmith_mod_u32(~0u, 1u)) % 32u), (_wgslsmith_dot_vec4_u32(vec4<u32>(55079u, 0u, 26692u, 1u), ~vec4<u32>(2379u, 0u, 44273u, 48873u)) ^ 44666u) << (~0u % 32u), 5492u);
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.x, 5017u, var_1.x, var_1.x)) >> ((vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x) | vec4<u32>(65828u, 12915u, 84682u, var_1.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 25661u, 40154u, 21639u), ~vec4<u32>(var_1.x, var_1.x, 4504u, 3128u))), var_1.x), 37694u);
    var var_3 = ~(-(~vec3<i32>(reverseBits(u_input.c), -37656i, _wgslsmith_add_i32(21238i, -1i))));
    var var_4 = Struct_2(_wgslsmith_clamp_u32(~var_1.x << (1u % 32u), ~30476u >> (min(var_1.x, var_1.x) % 32u), 4294967295u) >> (1u % 32u));
    global3 = array<vec3<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(false).b) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1255f, 1487f)))));
}

