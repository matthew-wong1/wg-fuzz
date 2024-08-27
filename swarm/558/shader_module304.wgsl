struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 0i);

var<private> global1: array<f32, 12> = array<f32, 12>(-1743f, -177f, 470f, 727f, -271f, -636f, 278f, -137f, 892f, -1946f, 711f, -702f);

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<f32>(-1876f, -196f, -1477f), 28750u, vec2<i32>(1i, -24044i), true), Struct_1(vec3<f32>(-828f, -1362f, -599f), 4294967295u, vec2<i32>(5523i, 2147483647i), false), Struct_1(vec3<f32>(-327f, -1319f, -623f), 1u, vec2<i32>(22590i, -6128i), false), Struct_1(vec3<f32>(673f, 209f, 310f), 1u, vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_1(vec3<f32>(1018f, 2076f, 103f), 1u, vec2<i32>(72744i, 1490i), false), Struct_1(vec3<f32>(-1278f, 1336f, -110f), 4294967295u, vec2<i32>(-46411i, -14723i), false), Struct_1(vec3<f32>(-399f, -925f, 1295f), 0u, vec2<i32>(14017i, 2147483647i), false), Struct_1(vec3<f32>(171f, 1883f, -478f), 44256u, vec2<i32>(39270i, -15404i), true), Struct_1(vec3<f32>(-214f, 518f, 1418f), 20042u, vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_1(vec3<f32>(634f, 295f, 923f), 0u, vec2<i32>(22093i, i32(-2147483648)), true), Struct_1(vec3<f32>(1757f, -1000f, -520f), 4294967295u, vec2<i32>(1i, -1i), false), Struct_1(vec3<f32>(-205f, 1507f, 606f), 0u, vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_1(vec3<f32>(207f, 648f, 923f), 31410u, vec2<i32>(0i, 2147483647i), true), Struct_1(vec3<f32>(1205f, 917f, 227f), 0u, vec2<i32>(-1i, 7310i), false), Struct_1(vec3<f32>(-3085f, -819f, 917f), 70117u, vec2<i32>(1i, 1i), false), Struct_1(vec3<f32>(1000f, -1000f, 855f), 0u, vec2<i32>(7178i, 2147483647i), true), Struct_1(vec3<f32>(685f, -928f, 1097f), 36681u, vec2<i32>(1i, 2147483647i), true), Struct_1(vec3<f32>(1910f, 529f, 694f), 72615u, vec2<i32>(-33219i, 2147483647i), false), Struct_1(vec3<f32>(-575f, -1075f, 1344f), 76123u, vec2<i32>(i32(-2147483648), 30804i), false), Struct_1(vec3<f32>(-1141f, -585f, -1047f), 35372u, vec2<i32>(9162i, i32(-2147483648)), true), Struct_1(vec3<f32>(-1376f, 887f, -672f), 4294967295u, vec2<i32>(i32(-2147483648), -1i), false), Struct_1(vec3<f32>(1724f, 502f, 561f), 51390u, vec2<i32>(i32(-2147483648), 22553i), false), Struct_1(vec3<f32>(1279f, -1693f, -465f), 1u, vec2<i32>(-1i, -1i), false), Struct_1(vec3<f32>(-1682f, 555f, 991f), 63338u, vec2<i32>(1i, 2147483647i), true), Struct_1(vec3<f32>(-2076f, -1095f, -1236f), 43731u, vec2<i32>(i32(-2147483648), 44379i), false), Struct_1(vec3<f32>(676f, 771f, -185f), 12323u, vec2<i32>(-1i, -22866i), true), Struct_1(vec3<f32>(-2269f, 1749f, -565f), 96833u, vec2<i32>(-28223i, 34314i), true), Struct_1(vec3<f32>(-1140f, -809f, 456f), 20604u, vec2<i32>(-62944i, 2147483647i), false), Struct_1(vec3<f32>(-626f, 1574f, -747f), 44104u, vec2<i32>(-1i, -45381i), true), Struct_1(vec3<f32>(-273f, 1000f, -258f), 1u, vec2<i32>(0i, i32(-2147483648)), false), Struct_1(vec3<f32>(388f, -690f, 112f), 98416u, vec2<i32>(28290i, -39536i), true), Struct_1(vec3<f32>(1017f, 1640f, -480f), 1u, vec2<i32>(0i, -7118i), false));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = 809f;
    let var_1 = vec2<i32>(global0.x, ~global0.x);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, reverseBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u >> (0u % 32u), 22461u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(86048u, 4294967295u, 4294967295u, 0u), vec4<u32>(25871u, 41151u, 22036u, 0u)), ~57248u)))), 32u)];
    global1 = array<f32, 12>();
    global1 = array<f32, 12>();
    return _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_2.b, _wgslsmith_sub_u32(4294967295u, var_2.b), var_2.b)), ~(~select(vec3<u32>(var_2.b, 40067u, 31437u), vec3<u32>(1u, 0u, 1u), vec3<bool>(false, false, arg_1.x)) >> (firstLeadingBit(~vec3<u32>(var_2.b, 4294967295u, var_2.b)) % vec3<u32>(32u))));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -105f);
    global0 = reverseBits(~reverseBits(-vec2<i32>(-19578i, -2147483647i)));
    global1 = array<f32, 12>();
    global2 = array<Struct_1, 32>();
    global0 = ~vec2<i32>(-42986i & firstLeadingBit(u_input.a), _wgslsmith_sub_i32(~33856i, _wgslsmith_div_i32(u_input.b, u_input.c) >> (~4294967295u % 32u)));
    return ~vec2<u32>(~(~24646u) & _wgslsmith_div_u32(firstTrailingBit(4294967295u), 1u), abs(_wgslsmith_add_u32(_wgslsmith_div_u32(43247u, 7351u), func_3(vec2<f32>(global1[_wgslsmith_index_u32(62562u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(false, false)))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = -9247i;
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, ~4294967295u), vec2<u32>(arg_0, arg_0) & countOneBits(vec2<u32>(1u, 103201u))), vec2<u32>(0u, firstLeadingBit(1u))) << (_wgslsmith_mult_vec2_u32(~(~vec2<u32>(arg_0, 25767u) << ((vec2<u32>(arg_0, arg_0) | vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u))), func_2() ^ ((vec2<u32>(arg_0, arg_0) & vec2<u32>(arg_0, 102373u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    global0 = vec2<i32>(~max(min(min(1i, u_input.a), -u_input.b), -var_0), _wgslsmith_mod_i32(~(-16450i), -2147483647i));
    global2 = array<Struct_1, 32>();
    let var_2 = ~(~34062u);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(49772u, 12u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(59920u, var_2), 12u)]), global1[_wgslsmith_index_u32(46010u, 12u)])), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(var_2), 4294967295u), var_1.x), min(vec2<i32>(global0.x, u_input.a), ~vec2<i32>(_wgslsmith_mod_i32(var_0, -1i), u_input.c)), true);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = max(vec4<i32>(i32(-1i) * -1i, 1i, min(min(global0.x, -22039i), arg_0.c.x), global0.x << (arg_0.b % 32u)) ^ -firstTrailingBit(~vec4<i32>(u_input.a, u_input.a, 2387i, 15066i)), vec4<i32>(~(~_wgslsmith_sub_i32(-16949i, 50147i)), global0.x, firstLeadingBit(~(arg_0.c.x << (arg_0.b % 32u))), 0i));
    global0 = ~arg_0.c;
    var_0 = select(vec4<i32>(~u_input.b, _wgslsmith_div_i32(2147483647i, func_1(select(arg_0.b, 1u, false)).c.x), -_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(var_0.xwz, var_0.yzz)), min(~u_input.b, min(0i, -1i))), -select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.x, u_input.a, var_0.x, 27952i), vec4<i32>(u_input.c, 0i, 0i, u_input.b)), -vec4<i32>(1i, -2147483647i, arg_0.c.x, var_0.x), select(select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, false), vec4<bool>(arg_0.d, arg_0.d, true, true), arg_0.d), vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d))), vec4<bool>(!(!arg_0.d || func_1(44728u).d), true, arg_0.d, true));
    var var_1 = -1i;
    let var_2 = -func_1(arg_0.b).c.x;
    return -37373i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<i32>(_wgslsmith_mod_i32(3127i, global0.x), firstLeadingBit(1i)), vec2<i32>(global0.x, ~abs(0i)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)) & vec2<i32>(-(~global0.x), func_4(func_1(1u), -1132f));
    global2 = array<Struct_1, 32>();
    var var_0 = ~vec2<u32>(1u, 1u) ^ vec2<u32>(~(~(~14308u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(48182u, 1u, 1u), vec3<u32>(52690u, 0u, 1u))), ~func_2().x));
    var var_1 = true;
    let var_2 = true;
    global2 = array<Struct_1, 32>();
    let var_3 = ~(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(1u, var_0.x, 1678u, 1u)) << (abs(select(vec4<u32>(var_0.x, var_0.x, 4294967295u, 496u), vec4<u32>(var_0.x, var_0.x, var_0.x, 16340u), var_2)) % vec4<u32>(32u))) & vec4<u32>(~var_0.x, _wgslsmith_mod_u32(4294967295u, ~16695u >> (var_0.x % 32u)), 13621u | select(4294967295u, 1u, !var_2), ~(abs(var_0.x) << (firstLeadingBit(56477u) % 32u)));
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.x, ~4294967295u ^ abs(var_0.x & 28669u)), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-139f, -594f, global1[_wgslsmith_index_u32(20191u, 12u)], var_4.a.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], var_4.a.x, var_4.a.x, global1[_wgslsmith_index_u32(var_0.x, 12u)]) * vec4<f32>(var_4.a.x, -147f, 599f, global1[_wgslsmith_index_u32(4294967295u, 12u)])))))));
}

