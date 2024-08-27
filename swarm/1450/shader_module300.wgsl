struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-143f, 979f, 2061f), vec3<f32>(1512f, 792f, 1000f), vec3<f32>(-450f, -2716f, 127f), vec3<f32>(804f, -404f, -2673f), vec3<f32>(-736f, -361f, 645f), vec3<f32>(128f, 1098f, 1620f), vec3<f32>(-485f, 2170f, 739f), vec3<f32>(-199f, -1008f, 150f), vec3<f32>(437f, -1936f, 665f), vec3<f32>(-1488f, 633f, 1265f), vec3<f32>(-2257f, 1000f, 265f), vec3<f32>(-1054f, 1974f, -1243f));

var<private> global1: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(1i, -14669i, -1i), vec3<i32>(23373i, -55276i, i32(-2147483648)), vec3<i32>(-31235i, i32(-2147483648), -38130i), vec3<i32>(2147483647i, -15201i, 1i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(45348i, i32(-2147483648), 0i), vec3<i32>(2147483647i, -48107i, 2147483647i), vec3<i32>(10407i, 2147483647i, 35171i), vec3<i32>(0i, -44669i, -1i), vec3<i32>(42739i, -35143i, -32616i), vec3<i32>(1i, -1i, 0i), vec3<i32>(33599i, 10306i, 1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    global0 = array<vec3<f32>, 12>();
    global0 = array<vec3<f32>, 12>();
    var var_0 = Struct_2(u_input.b, vec3<bool>(true, true, true), firstTrailingBit(~0i));
    let var_1 = !select(!select(!vec2<bool>(var_0.b.x, var_0.b.x), !vec2<bool>(false, var_0.b.x), true), vec2<bool>(all(vec4<bool>(true, true, true, var_0.b.x)), var_0.b.x), var_0.b.yy);
    let var_2 = var_0.a < 26268u;
    return _wgslsmith_f_op_f32(trunc(-2552f));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32, arg_3: vec2<i32>) -> bool {
    global0 = array<vec3<f32>, 12>();
    let var_0 = Struct_4(min(-2147483647i, -arg_1.c), Struct_1(u_input.c, 1i > _wgslsmith_div_i32(_wgslsmith_mult_i32(1692i, -24885i), _wgslsmith_mod_i32(-2147483647i, u_input.e.x)), -1323f, all(vec4<bool>(true, any(arg_0.b.e.zw), true, true)), !select(!arg_0.b.e, vec4<bool>(false, false, true, false), arg_1.b.x)), Struct_3(arg_0.c.a, Struct_2(abs(~4294967295u), select(!arg_0.d.b.b, !vec3<bool>(arg_0.c.a.d, arg_0.b.e.x, arg_1.b.x), false), -(~arg_1.c))), arg_0.d, _wgslsmith_f_op_f32(step(635f, arg_0.e)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(67981i, -8408i, arg_3.x, -2147483647i), vec4<i32>(arg_0.d.b.c, var_0.c.a.a.x, arg_0.d.b.c, 1i))), vec4<i32>(~arg_1.c, 14826i, arg_0.b.a.x, var_0.d.b.c << (52110u % 32u))), _wgslsmith_add_u32(~0u, arg_2) <= ~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.a.c * var_0.b.c) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1172f, -197f)))), true, select(vec4<bool>(true, true, true, any(arg_0.d.a.e)), !select(vec4<bool>(arg_0.d.b.b.x, arg_0.c.a.d, false, arg_1.b.x), arg_0.d.a.e, true), !(!var_0.d.a.e))), Struct_2(4294967295u, arg_0.c.b.b, abs(abs(_wgslsmith_dot_vec2_i32(var_0.c.a.a.yx, arg_3)))));
    let var_2 = 5677i;
    global0 = array<vec3<f32>, 12>();
    return !select(select(any(vec2<bool>(true, true)), true, var_0.c.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c)) > var_0.b.c, any(select(select(var_0.c.b.b.zx, vec2<bool>(true, var_1.b.b.x), arg_1.b.x), var_1.b.b.zz, var_0.b.d)));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: bool) -> Struct_3 {
    global1 = array<vec3<i32>, 13>();
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(~arg_0.x, u_input.b), 1u, abs(1u), max(_wgslsmith_div_u32(_wgslsmith_sub_u32(61267u, arg_0.x), 35203u), u_input.b)) >> (vec4<u32>(~u_input.b, 1u, arg_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(27155u, arg_0.x), u_input.d.xz, firstLeadingBit(u_input.d.yx)), _wgslsmith_add_vec2_u32(~u_input.d.xx, vec2<u32>(0u, arg_0.x)))) % vec4<u32>(32u));
    global0 = array<vec3<f32>, 12>();
    var var_1 = Struct_4(u_input.c.x, Struct_1(~firstLeadingBit(u_input.c), true, -893f, arg_3, vec4<bool>(arg_3, true, false, true)), Struct_3(Struct_1(u_input.c, _wgslsmith_f_op_f32(-1000f * arg_1) >= arg_1, arg_2.x, !select(arg_3, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_3, false, false), !vec4<bool>(arg_3, arg_3, true, false))), Struct_2(65407u, !(!vec3<bool>(true, arg_3, arg_3)), u_input.a.x)), Struct_3(Struct_1(-vec4<i32>(14802i, -11034i, 1i, u_input.a.x) >> ((vec4<u32>(4294967295u, u_input.d.x, var_0.x, 29576u) << (vec4<u32>(1u, 63088u, 1u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), !any(vec2<bool>(false, arg_3)), -812f, true, vec4<bool>(arg_3, true, any(vec3<bool>(arg_3, true, arg_3)), select(false, false, arg_3))), Struct_2(var_0.x, select(!vec3<bool>(false, arg_3, true), !vec3<bool>(arg_3, arg_3, arg_3), select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, true, arg_3), vec3<bool>(false, true, arg_3))), _wgslsmith_div_i32(u_input.a.x, -19817i))), _wgslsmith_f_op_f32(arg_2.x - -1294f));
    var_0 = _wgslsmith_mult_vec4_u32(~abs(~vec4<u32>(4294967295u, arg_0.x, 40234u, var_0.x) >> (vec4<u32>(var_1.c.b.a, 1u, 19356u, 0u) % vec4<u32>(32u))), ~(~max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_1.d.b.a, var_1.c.b.a, u_input.d.x), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.d.x)), ~vec4<u32>(var_1.c.b.a, 10549u, 1u, 4294967295u))));
    return Struct_3(Struct_1(var_1.d.a.a, var_1.d.a.b, -453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, arg_1))) != _wgslsmith_f_op_f32(select(arg_1, 933f, arg_0.x <= 25596u)), !var_1.d.a.e), Struct_2(var_1.c.b.a & ~u_input.b, var_1.c.a.e.wxy, var_1.d.b.c));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(~u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2235f) + 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(325f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1377f, 912f, -168f, 1542f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 511f, 1486f, -102f)))), vec4<f32>(1f, 1f, 1f, 1f))) - vec4<f32>(-906f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2()))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1394f)))), any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true)) & func_3(Struct_4(u_input.e.x, Struct_1(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x), true, 1468f, false, vec4<bool>(true, false, false, true)), Struct_3(Struct_1(u_input.c, true, 1532f, true, vec4<bool>(true, false, true, false)), Struct_2(4294967295u, vec3<bool>(true, true, true), u_input.e.x)), Struct_3(Struct_1(u_input.c, false, -898f, false, vec4<bool>(false, false, false, false)), Struct_2(u_input.d.x, vec3<bool>(true, false, true), u_input.a.x)), -741f), Struct_2(u_input.d.x, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), -2147483647i), 1u, select(vec2<i32>(5140i, u_input.e.x), vec2<i32>(1i, 12336i), false) >> (vec2<u32>(45911u, 1u) % vec2<u32>(32u))));
    var var_1 = vec4<bool>(any(!select(select(vec2<bool>(var_0.a.b, var_0.a.d), vec2<bool>(var_0.b.b.x, true), var_0.b.b.x), !vec2<bool>(var_0.b.b.x, false), true)), !(!(!var_0.b.b.x)) && var_0.b.b.x, true, var_0.a.d);
    global1 = array<vec3<i32>, 13>();
    return StorageBuffer(var_0.a.a, var_0.a.a.zx, func_4(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, var_0.a.c, 1584f, 634f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1131f, var_0.a.c, var_0.a.c, var_0.a.c), vec4<f32>(1880f, -539f, 190f, 1887f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, var_0.a.c, 1679f, var_0.a.c))))), any(vec2<bool>(var_0.b.b.x, 425f <= var_0.a.c))).a.c, ~abs(abs(17996i) ^ func_4(vec3<u32>(1u, var_0.b.a, u_input.b), var_0.a.c, vec4<f32>(var_0.a.c, 799f, var_0.a.c, -1000f), var_0.b.b.x).b.c));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

