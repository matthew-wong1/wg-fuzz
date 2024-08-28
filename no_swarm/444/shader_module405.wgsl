struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<i32, 32>;

var<private> global2: array<u32, 11> = array<u32, 11>(41753u, 0u, 1u, 18028u, 19463u, 47247u, 28633u, 1u, 40319u, 4294967295u, 19705u);

var<private> global3: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec3<f32> {
    let var_0 = arg_1.c;
    let var_1 = arg_0.c;
    var var_2 = Struct_2(select(select(vec2<bool>(!arg_1.d.c.b, !var_0.c.b), !var_0.a.a, arg_0.d.b), arg_0.a, vec2<bool>(!(!arg_0.d.b), !var_0.b.b)), _wgslsmith_div_vec4_f32(vec4<f32>(-580f, _wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-760f, 523f), _wgslsmith_f_op_f32(-arg_0.b.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.b.a.x, var_0.a.c.a.x)))), arg_1.c.a.b), var_0.c, Struct_1(_wgslsmith_div_vec2_f32(arg_0.d.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1744f, var_1.a.x))), !arg_1.c.b.b, select(var_0.a.d.c, var_0.c.c, !arg_0.a), -u_input.a));
    var var_3 = -2147483647i;
    return arg_0.b.xzy;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_1.zx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1956f, -1000f, 576f, -1683f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, -232f, -688f, -454f) - vec4<f32>(-998f, -819f, 927f, -1522f))), Struct_1(vec2<f32>(1f, 1f), arg_1.x, vec2<i32>(0i, u_input.a) | global3.zz, firstLeadingBit(12614i)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-406f, -1472f), vec2<f32>(-310f, 676f)), true, global3.zw, 0i)), Struct_4(24522u, abs(select(vec2<u32>(1u, 65220u), vec2<u32>(global2[_wgslsmith_index_u32(56495u, 11u)], arg_0), arg_1.zz)), Struct_3(Struct_2(vec2<bool>(arg_1.x, arg_1.x), vec4<f32>(-1229f, -1072f, 1265f, 208f), Struct_1(vec2<f32>(769f, -463f), true, vec2<i32>(global1[_wgslsmith_index_u32(1u, 32u)], -1i), global3.x), Struct_1(vec2<f32>(1000f, 979f), arg_1.x, vec2<i32>(global1[_wgslsmith_index_u32(1u, 32u)], 1i), global3.x)), Struct_1(vec2<f32>(-312f, 144f), arg_1.x, global3.zz, global3.x), Struct_1(vec2<f32>(-1257f, -149f), true, global3.wx, 2147483647i)), Struct_2(vec2<bool>(false, arg_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(103f, 777f, -277f, -1322f) * vec4<f32>(-1192f, 3338f, -819f, -178f)), Struct_1(vec2<f32>(-2039f, 682f), arg_1.x, vec2<i32>(-26010i, u_input.a), global3.x), Struct_1(vec2<f32>(1233f, 1747f), false, global3.yx, 2147483647i))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1407f, -754f, -581f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -842f, 1912f) + vec3<f32>(439f, 575f, -244f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-777f, 865f, 1414f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(544f, -1114f, 369f)))))));
    global1 = array<i32, 32>();
    var var_1 = abs(vec4<u32>(1u, ~global2[_wgslsmith_index_u32(0u, 11u)] & firstTrailingBit(arg_0), firstTrailingBit(1u) & ~85860u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22527u, 11u)], 11u)], 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(arg_0, 11u)]), vec3<u32>(23590u, global2[_wgslsmith_index_u32(arg_0, 11u)], 64831u)), firstLeadingBit(vec3<u32>(arg_0, 0u, arg_0))), 11u)]) >> (firstLeadingBit(~vec4<u32>(global2[_wgslsmith_index_u32(10098u, 11u)], 58088u, global2[_wgslsmith_index_u32(75593u, 11u)], arg_0) | vec4<u32>(1u, 94732u, global2[_wgslsmith_index_u32(66339u, 11u)], 0u)) % vec4<u32>(32u)));
    let var_2 = ~(~4294967295u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.zz, vec2<f32>(-560f, -1203f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, -1000f)), var_0.yx)))), any(select(!vec2<bool>(arg_1.x, false), vec2<bool>(u_input.a >= u_input.a, false), select(!arg_1.zx, select(arg_1.xz, vec2<bool>(arg_1.x, false), true), true))), firstTrailingBit(~(~(-vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global3.x)))), _wgslsmith_clamp_i32(u_input.a, global3.x, global1[_wgslsmith_index_u32(select(16507u, _wgslsmith_mod_u32(47406u, 4294967295u), !arg_1.x), 32u)] >> (~1u % 32u)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_4(min(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~76949u, 15307u) >> (firstTrailingBit(13436u) % 32u), 11u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(29341u, 11u)], 0u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47750u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11328u, 11u)], 11u)])), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 4294967295u))), 11u)]), vec2<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52876u, 11u)], 11u)], 19294u), 11u)], 11u)], global2[_wgslsmith_index_u32(66067u, 11u)]) ^ vec2<u32>(1u, ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(2017u, 11u)], global2[_wgslsmith_index_u32(42669u, 11u)])), Struct_3(Struct_2(arg_2.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.a.x, -701f, arg_2.a.c.a.x, 798f))), func_2(~global2[_wgslsmith_index_u32(1u, 11u)], vec3<bool>(arg_2.a.d.b, false, arg_0)), arg_2.c), arg_2.c, arg_2.a.c), Struct_2(!(!arg_2.a.a), _wgslsmith_f_op_vec4_f32(exp2(arg_2.a.b)), arg_2.c, func_2(113358u, !vec3<bool>(arg_0, false, arg_2.a.c.b))));
    let var_1 = arg_1;
    var var_2 = arg_0;
    var var_3 = ~vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33690u, 11u)], 11u)], 4949u), ~var_0.b.x), var_0.a, 4294967295u);
    var var_4 = -_wgslsmith_mod_vec4_i32(~abs(vec4<i32>(-5081i, -54055i, -1i, 28554i)), _wgslsmith_div_vec4_i32(~abs(vec4<i32>(arg_2.c.c.x, u_input.a, 2147483647i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32069u, 11u)], 32u)])), select(max(vec4<i32>(-63213i, 0i, u_input.a, u_input.a), vec4<i32>(var_0.c.a.c.d, global3.x, -26285i, global3.x)), -vec4<i32>(var_0.d.c.c.x, 0i, arg_2.b.d, 2860i), !vec4<bool>(false, arg_2.c.b, arg_2.b.b, false))));
    return _wgslsmith_mod_u32(28306u, ~var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(vec2<bool>(func_1(false, 306f, Struct_3(Struct_2(vec2<bool>(true, true), vec4<f32>(583f, 786f, -896f, 511f), Struct_1(vec2<f32>(770f, -601f), true, global3.wz, u_input.a), Struct_1(vec2<f32>(-1800f, 1000f), false, vec2<i32>(5144i, u_input.a), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 32u)])), Struct_1(vec2<f32>(309f, 112f), false, vec2<i32>(-27633i, u_input.a), global3.x), Struct_1(vec2<f32>(-291f, 594f), false, global3.yw, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 32u)]))) <= 1u, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1349f, 1478f, 1000f, -983f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2412f, -1504f, 1122f, 1485f) * vec4<f32>(-1012f, 227f, -415f, 1303f)), false)), vec4<f32>(func_2(global2[_wgslsmith_index_u32(1u, 11u)], vec3<bool>(true, false, false)).a.x, -1000f, _wgslsmith_f_op_f32(trunc(174f)), _wgslsmith_div_f32(654f, 668f)), false)), func_2(_wgslsmith_mult_u32(68394u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)]), vec3<bool>(all(vec4<bool>(false, false, true, false)), func_2(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], vec3<bool>(false, true, true)).b, true)), func_2(global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)]), 11u)], select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), true))), func_2(min(global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24429u, 11u)], 11u)], 11u)]), 11u)]), 11u)], ~reverseBits(55376u)), !vec3<bool>(any(vec4<bool>(false, false, true, true)), true, all(vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1203f, -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(606f, -1035f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 265f))), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))))), true, vec2<i32>(global3.x, -1335i) | -vec2<i32>(u_input.a, global3.x), global1[_wgslsmith_index_u32(1u | _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59587u, 11u)], 11u)] | global2[_wgslsmith_index_u32(41404u, 11u)], 11u)], 11u)], 11u)], ~44671u), 32u)]));
    let var_1 = vec4<i32>(0i, firstTrailingBit(1i), var_0.c.c.x, 0i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_0.c.a.x * _wgslsmith_f_op_f32(select(var_0.b.a.x, var_0.c.a.x, (var_0.b.b != true) & !var_0.a.c.b))), var_0.c.a.x, 1834f);
    global0 = array<Struct_3, 20>();
    let var_3 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1107u, max(~_wgslsmith_clamp_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], global2[_wgslsmith_index_u32(20001u, 11u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(9740u, 11u)]), 11u)], 11u)])), 11u)]), 11u)], 11u)];
    global0 = array<Struct_3, 20>();
    let var_4 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(max(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70284u, 11u)], 11u)], 11u)])), 11u)], 11u)]) >> (_wgslsmith_div_u32(~select(4294967295u, global2[_wgslsmith_index_u32(60655u, 11u)], false), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)] ^ min(4294967295u, global2[_wgslsmith_index_u32(17561u, 11u)]), 11u)]) % 32u)), 11u)], 11u)], 20u)];
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1375f, _wgslsmith_f_op_f32(var_2.x * var_0.a.d.a.x))) - var_0.c.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_4.b.a));
}

