struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: array<Struct_1, 15>;

var<private> global2: Struct_1 = Struct_1(false);

var<private> global3: array<u32, 28> = array<u32, 28>(20865u, 18048u, 0u, 0u, 4294967295u, 0u, 35557u, 12684u, 1u, 52481u, 0u, 0u, 0u, 4294967295u, 4294967295u, 0u, 0u, 4294967295u, 1u, 43136u, 4294967295u, 4294967295u, 32131u, 81126u, 8999u, 0u, 0u, 4294967295u);

var<private> global4: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-703f, 1668f, 1000f), vec3<f32>(607f, 774f, -270f), vec3<f32>(844f, 814f, -1026f), vec3<f32>(723f, 358f, 276f), vec3<f32>(330f, 276f, 344f), vec3<f32>(498f, 1580f, 1023f), vec3<f32>(1608f, -819f, -956f), vec3<f32>(570f, 222f, -599f), vec3<f32>(907f, 1000f, 1370f), vec3<f32>(-1169f, -1090f, -1000f), vec3<f32>(-2126f, 1659f, 1000f), vec3<f32>(1160f, 1705f, -591f), vec3<f32>(309f, 602f, 427f), vec3<f32>(-191f, -568f, 286f), vec3<f32>(2512f, 1067f, 1771f), vec3<f32>(986f, -690f, -154f), vec3<f32>(1000f, -344f, -592f), vec3<f32>(-347f, -1068f, 1280f), vec3<f32>(-1000f, 156f, 1000f), vec3<f32>(-1032f, 1685f, 1560f), vec3<f32>(632f, -1681f, -885f), vec3<f32>(196f, 926f, 302f), vec3<f32>(165f, -279f, -626f), vec3<f32>(100f, -2185f, -1786f), vec3<f32>(739f, -626f, 1103f), vec3<f32>(1342f, 372f, -205f), vec3<f32>(1969f, 546f, -754f), vec3<f32>(-980f, -2284f, 1071f), vec3<f32>(-1320f, 956f, -646f), vec3<f32>(-1262f, 341f, 847f), vec3<f32>(506f, 336f, 217f));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = -arg_1.x;
    global2 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    let var_1 = vec3<u32>(~1u, ~27638u ^ (_wgslsmith_mult_u32(12519u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 28u)], 28u)]) >> (max(_wgslsmith_sub_u32(u_input.a, 25497u), u_input.b.x & 4294967295u) % 32u)), u_input.b.x);
    global3 = array<u32, 28>();
    let var_2 = global1[_wgslsmith_index_u32(var_1.x, 15u)];
    return Struct_1(global2.a);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = ~(-_wgslsmith_add_vec3_i32(-(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i) ^ vec3<i32>(4384i, 0i, 6199i)), -(~vec3<i32>(-3550i, 68373i, u_input.c.x))));
    var var_1 = ~firstTrailingBit(-firstTrailingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, -17247i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-427f, -467f) - vec2<f32>(-560f, -516f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1429f, -2111f))))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1512f, -1509f))), arg_0.a.yx))))));
    let var_3 = Struct_3(arg_0, arg_0.b, firstTrailingBit(u_input.a), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-743f * -470f) + var_2.x)), abs(max(firstLeadingBit(var_1.xww), vec3<i32>(-1i, 5601i, 2147483647i)))).a, Struct_2(arg_0.a, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(356f, var_2.x, global0.a)) + -631f), _wgslsmith_div_vec3_i32(-var_1.yyx, vec3<i32>(-2147483647i, var_0.x, var_1.x)))));
    global0 = Struct_1(var_3.e.b.a);
    return false;
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = vec4<bool>(global2.a && false, func_3(Struct_2(select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(false, global0.a, global0.a), vec3<bool>(global2.a, false, global2.a)), func_2(-686f, vec3<i32>(u_input.c.x, arg_0.x, 1i)))) | (!any(vec4<bool>(global2.a, global2.a, global0.a, global2.a)) | global0.a), global2.a, !global2.a);
    let var_1 = ~firstLeadingBit(vec3<i32>(u_input.c.x, arg_0.x, ~_wgslsmith_sub_i32(-53662i, -315i)));
    global4 = array<vec3<f32>, 31>();
    var var_2 = global1[_wgslsmith_index_u32(1u >> (~(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], 28u)], 8974u)), ~u_input.b)) % 32u), 15u)];
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, u_input.a), 15u)];
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, true));
    let var_1 = Struct_2(!vec3<bool>(global0.a, func_1(vec2<i32>(51525i, u_input.c.x) >> (vec2<u32>(39994u, 42202u) % vec2<u32>(32u))), global2.a), global1[_wgslsmith_index_u32(28688u & u_input.b.x, 15u)]);
    global2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1764f, _wgslsmith_f_op_f32(abs(232f)))))), select(max(~vec3<i32>(u_input.c.x, u_input.c.x, -1i), firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.c.x, -1i, -1i)))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 0i), u_input.c), abs(reverseBits(-19408i)), 1i), var_1.a));
    global3 = array<u32, 28>();
    var var_2 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(countOneBits(~0u), 28u)], reverseBits(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(23915u, 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)]))), 26546u), 0u, _wgslsmith_dot_vec2_u32(select(firstTrailingBit(u_input.b.xz), ~_wgslsmith_mod_vec2_u32(u_input.b.zy, u_input.b.xz), true), _wgslsmith_clamp_vec2_u32(u_input.b.yx, vec2<u32>(1u, 32216u), u_input.b.yy)), u_input.a);
    let var_3 = Struct_3(Struct_2(select(vec3<bool>(u_input.c.x == 0i, true, u_input.c.x >= -2147483647i), var_1.a, vec3<bool>(true, global0.a, global2.a)), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-583f)))), firstLeadingBit(vec3<i32>(-4260i, u_input.c.x, u_input.c.x) >> (vec3<u32>(54883u, var_2.x, 4294967295u) % vec3<u32>(32u))))), var_1.b, 0u, global0.a, Struct_2(vec3<bool>(true, all(!var_1.a), any(select(vec4<bool>(global0.a, global2.a, global2.a, var_1.a.x), vec4<bool>(false, false, false, global2.a), true))), func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(122f)))), -vec3<i32>(-74695i, -1i, u_input.c.x))));
    global2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(-1087f + -155f))) * -692f), max(vec3<i32>(select(u_input.c.x, -u_input.c.x, func_1(vec2<i32>(34071i, u_input.c.x))), -31275i ^ (u_input.c.x | 0i), -1i), _wgslsmith_mult_vec3_i32(select(firstLeadingBit(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec3<bool>(var_3.b.a, true, false)), ~(-vec3<i32>(-2147483647i, u_input.c.x, 2147483647i)))));
    let var_4 = 57423u;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-817f, -1125f))), false))), vec3<i32>(u_input.c.x, 40879i, -u_input.c.x), select(vec2<i32>(u_input.c.x, max(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), u_input.c.x)), vec2<i32>(_wgslsmith_mult_i32(-25600i, i32(-1i) * -22081i), -_wgslsmith_add_i32(-15666i, u_input.c.x)), vec2<bool>(select(!var_3.d, all(vec3<bool>(false, global0.a, false)), global0.a && true), var_3.a.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c.x, -18480i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)), firstTrailingBit(vec4<i32>(0i, 2147483647i, u_input.c.x, -17610i))) & -704i);
}

