struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = abs(vec2<u32>(firstTrailingBit(12314u), ~4294967295u));
    let var_1 = !any(!select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)));
    let var_2 = countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~22355u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x), vec3<u32>(58890u, var_0.x, var_0.x)), var_0.x), ~(21264u >> (var_0.x % 32u)), var_0.x), firstTrailingBit(select(vec4<u32>(var_0.x, var_0.x, var_0.x, 82523u), vec4<u32>(4294967295u, var_0.x, 1u, var_0.x) << (vec4<u32>(4294967295u, 4294967295u, 0u, var_0.x) % vec4<u32>(32u)), false))));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(581f, 148f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1248f, 1128f), vec2<f32>(1685f, -1000f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-892f, -240f) * vec2<f32>(-899f, 384f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1133f, 119f), vec2<f32>(-212f, 468f)))))))));
    var var_4 = Struct_3(Struct_2(Struct_1(-(~38747i), vec4<u32>(_wgslsmith_clamp_u32(var_0.x, var_0.x, 80474u), _wgslsmith_add_u32(1u, 0u), var_2, ~31449u), true, vec2<f32>(-854f, -777f), ~1i)), Struct_2(Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(-39271i, u_input.b.x, u_input.a, -25555i), vec4<i32>(16038i, u_input.b.x, u_input.c.x, 1i)), vec4<u32>(~69690u, 23653u, abs(937u), ~0u), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1251f)) * var_3), u_input.a)), ~(-4718i), Struct_2(Struct_1((1i ^ u_input.a) & _wgslsmith_dot_vec4_i32(vec4<i32>(-6210i, u_input.b.x, -40264i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.a, 1i, 12179i)), vec4<u32>(_wgslsmith_div_u32(23740u, var_2), var_2, ~var_0.x, var_2 | 0u), var_1, vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, -324f)), _wgslsmith_div_f32(293f, var_3.x)), (i32(-1i) * -1i) & (u_input.b.x & u_input.c.x))));
    return var_4.b.a.b.x;
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = select(firstLeadingBit(~vec2<i32>(u_input.b.x, u_input.a) ^ ~u_input.b), vec2<i32>(-(~0i), abs(select(u_input.b.x, 1i, arg_0))), !select(select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_0), vec2<bool>(true, arg_0), true)) << (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, func_3()), abs(59625u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), firstLeadingBit(vec2<u32>(1u, 48694u))))) % vec2<u32>(32u));
    global0 = array<vec4<bool>, 1>();
    global0 = array<vec4<bool>, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 240f, 881f, 753f), vec4<f32>(-1101f, 629f, -123f, 171f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2502f, 1073f, 680f, 1369f) - vec4<f32>(536f, -1332f, -1524f, -471f)), !arg_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-298f, -1801f, 1399f, 259f), vec4<f32>(-830f, 946f, -1378f, -973f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1432f, 429f, 1420f, -268f) * vec4<f32>(-665f, -1000f, 412f, -1117f)), arg_0))))));
    let var_2 = Struct_2(Struct_1(var_0.x, select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(64388u, func_3(), _wgslsmith_mod_u32(31540u, 16049u), ~5492u), !vec4<bool>(false, false, arg_0, arg_0)), !arg_0, _wgslsmith_f_op_vec2_f32(var_1.yz * var_1.xz), -firstTrailingBit(var_0.x >> (1u % 32u))));
    return Struct_4(all(vec2<bool>(false, true)), Struct_2(var_2.a), var_2, var_2.a, Struct_1(var_0.x & ~countOneBits(-28993i), vec4<u32>(var_2.a.b.x, var_2.a.b.x, var_2.a.b.x, max(var_2.a.b.x, 59897u) >> ((var_2.a.b.x ^ 35715u) % 32u)), arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1069f) + vec2<f32>(-919f, var_2.a.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.a.d, var_1.wz))), -2147483647i));
}

fn func_1() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 1u)];
    let var_1 = func_2(true);
    let var_2 = Struct_4(u_input.c.x > ~_wgslsmith_div_i32(20784i, u_input.b.x), func_2(var_1.d.b.x >= _wgslsmith_add_u32(~4294967295u, var_1.d.b.x ^ 6049u)).c, func_2(true).c, var_1.e, var_1.d);
    var var_3 = var_2.e.b.ww;
    var var_4 = Struct_3(func_2(false).c, var_2.b, select(1i, firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -47894i), vec3<i32>(0i, -24145i, var_2.e.e))), !(var_0.x || var_0.x) & false), var_2.b);
    return Struct_1(1i, _wgslsmith_div_vec4_u32(var_4.b.a.b, ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, 2803u, 110110u, var_1.c.a.b.x), vec4<u32>(var_1.c.a.b.x, var_3.x, var_3.x, 39846u))) ^ vec4<u32>(~_wgslsmith_mult_u32(4605u, 27261u), 1u << (select(16411u, 0u, var_1.e.c) % 32u), var_4.a.a.b.x, firstTrailingBit(~83092u)), true, func_2(var_4.a.a.c).c.a.d, ~var_2.c.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global0 = array<vec4<bool>, 1>();
    let var_1 = func_1();
    let var_2 = var_1.c;
    var var_3 = var_1;
    global0 = array<vec4<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~13172u, _wgslsmith_div_vec4_i32(-vec4<i32>(~var_3.e, var_1.a, 14004i, 19061i), vec4<i32>(-1i) * -abs(vec4<i32>(var_3.e, u_input.a, var_3.e, var_3.e))), 673f, -819f);
}

