struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(1673i, i32(-2147483648), 0i), vec3<i32>(1i, 44983i, 2147483647i), vec3<i32>(2147483647i, -1i, 54729i), vec3<i32>(-1i, 44859i, i32(-2147483648)), vec3<i32>(-25467i, -1i, i32(-2147483648)), vec3<i32>(21114i, -3992i, -1i), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(1i, -37228i, 33566i), vec3<i32>(15292i, i32(-2147483648), -15500i), vec3<i32>(0i, 2147483647i, 22543i), vec3<i32>(2345i, 2147483647i, 4991i), vec3<i32>(2147483647i, 33767i, 0i), vec3<i32>(2147483647i, 1i, 1i));

var<private> global1: array<i32, 5>;

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    return _wgslsmith_add_u32(~118315u, 2918u);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec2<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(458f)), select(select(!select(vec4<bool>(global2.x, arg_1, global2.x, global2.x), vec4<bool>(true, true, false, true), true), !vec4<bool>(false, false, true, arg_1), !vec4<bool>(false, global2.x, arg_1, global2.x)), vec4<bool>(any(!global2.zx), all(global2.xz), true, global2.x), vec4<bool>(global2.x && (38547i <= u_input.a), !global2.x, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2361f, 309f, 1085f)))))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, 45283i, -39045i, -6178i) | vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 5u)], -44018i, global1[_wgslsmith_index_u32(1u, 5u)])), ~vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 5u)], -6303i, 0i, global1[_wgslsmith_index_u32(4294967295u, 5u)]) << ((vec4<u32>(58334u, u_input.d, 1u, 0u) | vec4<u32>(u_input.d, arg_0.x, arg_0.x, arg_0.x)) % vec4<u32>(32u))), (global1[_wgslsmith_index_u32(~8072u, 5u)] & (i32(-1i) * -49124i)) | _wgslsmith_clamp_i32(max(global1[_wgslsmith_index_u32(0u, 5u)], 2147483647i), global1[_wgslsmith_index_u32(arg_0.x, 5u)], ~global1[_wgslsmith_index_u32(10625u, 5u)])), Struct_2(Struct_1(firstLeadingBit(~vec4<u32>(arg_0.x, arg_0.x, u_input.d, u_input.d)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(871f, -174f, 376f, 316f) + vec4<f32>(421f, 1153f, 1366f, 1036f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2436f, 814f)), _wgslsmith_f_op_f32(-1942f + 389f))), true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u | (14747u ^ u_input.d), func_3(), 1u), 13u)]));
    var var_1 = firstTrailingBit(var_0.e.a.a.x);
    global1 = array<i32, 5>();
    var var_2 = vec4<u32>(1u & ~firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.e.a.a.yxx, vec3<u32>(4294967295u, 87826u, var_0.e.a.a.x))), 4294967295u, arg_0.x, ~40668u);
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(max(~var_0.e.a.a << (~vec4<u32>(u_input.d, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u)), vec4<u32>(11754u, ~1u, ~41623u, max(arg_0.x, var_2.x))), vec4<u32>(u_input.d, var_2.x, 4294967295u << (~4294967295u % 32u), var_2.x), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(var_2.x, 0u, var_2.x)), var_0.e.a.a.x, ~u_input.d), 43911u, select(4294967295u, var_0.e.a.a.x, all(global2.zy)), ~u_input.d | u_input.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e.a.b) + vec4<f32>(-826f, var_0.e.a.c, -998f, var_0.e.a.b.x)))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(542f + 798f))), _wgslsmith_f_op_f32(-1577f * _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(293f))), -607f)), -1000f);
    return (_wgslsmith_mod_vec2_i32(max(u_input.b.zx, var_0.e.c.yx >> (var_3.a.yx % vec2<u32>(32u))), ~vec2<i32>(-33029i, global1[_wgslsmith_index_u32(arg_0.x, 5u)]) & (vec2<i32>(-6379i, var_0.d) << (arg_0.yy % vec2<u32>(32u)))) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(14274u, u_input.d), var_3.a.yx) % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(select(_wgslsmith_clamp_vec2_i32(~var_0.e.c.yz, -vec2<i32>(var_0.e.c.x, var_0.e.c.x), var_0.e.c.zy), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(93571u, 5u)])), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.e.c.x, global1[_wgslsmith_index_u32(u_input.d, 5u)]), vec2<i32>(1343i, -23107i))), arg_1), ~(vec2<i32>(-1i) * -var_0.e.c.xy));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_5) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-895f, arg_1.a.c), arg_1.d.c.x, true)), -405f, select(!arg_1.c, true, true))), 1005f, _wgslsmith_f_op_f32(-arg_1.a.b.x)) + arg_1.a.b.wwy);
    let var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.a.b.x, var_0.x))));
    global1 = array<i32, 5>();
    global0 = array<vec3<i32>, 13>();
    return 1055f;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_i32(func_2(vec3<u32>(u_input.d, 12416u, u_input.d), false), vec2<i32>(2147483647i, 3527i)), Struct_5(Struct_1(vec4<u32>(u_input.d, u_input.d, u_input.d, 42839u), vec4<f32>(253f, 1000f, -1000f, -444f), -1285f), _wgslsmith_add_u32(1u, u_input.d), global2.x, Struct_4(-953f, vec4<bool>(false, true, false, global2.x), vec3<f32>(1264f, 302f, -1312f), 5103i, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 0u, u_input.d), vec4<f32>(-210f, -204f, -196f, -1478f), 250f), true, vec3<i32>(global1[_wgslsmith_index_u32(1u, 5u)], -23926i, global1[_wgslsmith_index_u32(57235u, 5u)]))), Struct_1(vec4<u32>(1u, 4294967295u, u_input.d, 17565u), vec4<f32>(-1000f, -492f, -209f, 1000f), 350f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f)) + -444f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(883f, -119f)))))));
    global2 = vec4<bool>(all(select(select(select(global2.yz, vec2<bool>(true, true), true), !vec2<bool>(global2.x, false), true), vec2<bool>(global2.x, true | global2.x), global2.x)), !global2.x, true, any(select(vec2<bool>(global2.x, any(global2.wyy)), select(vec2<bool>(global2.x, true), !global2.xx, global2.yw), select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x), global2.wz), vec2<bool>(false, global2.x)))));
    global2 = !select(!(!(!vec4<bool>(false, global2.x, global2.x, true))), vec4<bool>(!global2.x, false, !global2.x, false), select(select(!vec4<bool>(global2.x, false, true, global2.x), !vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x)), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), false));
    var var_1 = Struct_5(Struct_1(_wgslsmith_div_vec4_u32(max(vec4<u32>(69032u, 1u, 18214u, u_input.d), firstTrailingBit(vec4<u32>(4541u, u_input.d, u_input.d, 0u))), ~vec4<u32>(1u, u_input.d, 1u, u_input.d) | firstLeadingBit(vec4<u32>(0u, u_input.d, 95609u, 1u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-755f, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, 1324f, 1000f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(485f, var_0.x, -862f, var_0.x)))))), -1602f), min(~(~u_input.d), 44612u), all(select(!(!global2.wy), vec2<bool>(!global2.x, all(vec4<bool>(false, global2.x, global2.x, global2.x))), true)), Struct_4(_wgslsmith_f_op_f32(var_0.x + var_0.x), !vec4<bool>(true, !global2.x, global2.x, global2.x), vec3<f32>(-378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f) + _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x)), -_wgslsmith_sub_i32(firstTrailingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1877i, u_input.a, global1[_wgslsmith_index_u32(0u, 5u)], u_input.e), vec4<i32>(u_input.b.x, u_input.c, 9777i, 3731i))), Struct_2(Struct_1(vec4<u32>(0u, u_input.d, u_input.d, u_input.d) >> (vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)), vec4<f32>(var_0.x, -400f, var_0.x, -1003f), 205f), select(-38894i, 0i, false) < func_2(vec3<u32>(42631u, u_input.d, u_input.d), global2.x).x, u_input.b)), Struct_1(~abs(vec4<u32>(u_input.d, u_input.d, 98560u, u_input.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, var_0.x, var_0.x)) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(160f))))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 5u)], global1[_wgslsmith_index_u32(35493u, 5u)]), Struct_5(Struct_1(vec4<u32>(u_input.d, 0u, var_1.b, var_1.d.e.a.a.x), var_1.e.b, var_1.d.e.a.c), u_input.d, true, var_1.d, Struct_1(var_1.e.a, vec4<f32>(-1478f, 1264f, -2202f, -196f), var_0.x))))))), !(!var_1.d.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.d.e.a.c, var_1.a.c, var_0.x), vec3<f32>(-1199f, 2712f, 978f))) + vec3<f32>(-1136f, var_0.x, var_1.a.c))))), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.d, 5u)], -7293i << (firstLeadingBit(var_1.b) % 32u), max(9388i, var_1.d.e.c.x)), var_1.d.e);
    return vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(var_1.a.a.wx, var_1.e.a.wz), ~countOneBits(30586u)), 5u)] > -(~countOneBits(u_input.c)), select(global2.x, var_2.e.b || var_2.e.b, false && (any(var_1.d.b.zzz) && all(vec2<bool>(false, global2.x)))), true, !select(global2.x, any(vec3<bool>(true, var_1.d.b.x, var_1.c)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 5>();
    let var_0 = any(!func_1());
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_div_f32(1167f, 358f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1068f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1335f)), _wgslsmith_div_f32(-639f, 1032f), false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f * -295f)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-446f * -1945f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(288f, 1000f)))))), vec4<bool>(select(global2.x, false, false), !select(var_0, !var_0, var_0), true, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1286f, -557f, 1658f)) * vec3<f32>(213f, -244f, -1763f)) - vec3<f32>(-857f, 1000f, _wgslsmith_f_op_f32(floor(852f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-147f, -388f, 1034f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1997f, 818f, -310f))))))), ~37829i, Struct_2(Struct_1(abs(vec4<u32>(4779u, 63787u, 25438u, u_input.d)) | select(vec4<u32>(0u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, 41526u, 0u, 33295u), vec4<bool>(global2.x, global2.x, global2.x, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(111f, -869f, 510f, -1965f)))), -1538f), !(!var_0), global0[_wgslsmith_index_u32(u_input.d, 13u)]));
    var var_3 = min(firstTrailingBit(-(-vec4<i32>(19624i, 28991i, -2147483647i, 0i) << (var_2.e.a.a % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 5u)], 16281i, -21213i, 2147483647i), vec4<i32>(u_input.c, -91181i, global1[_wgslsmith_index_u32(60603u, 5u)], 44188i), vec4<i32>(-1i, 1i, u_input.e, u_input.a)), ~vec4<i32>(27805i, -27459i, global1[_wgslsmith_index_u32(var_2.e.a.a.x, 5u)], global1[_wgslsmith_index_u32(u_input.d, 5u)])), reverseBits(abs(vec4<i32>(var_2.e.c.x, global1[_wgslsmith_index_u32(58118u, 5u)], -2147483647i, -24851i)) & ~vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 5u)], var_2.e.c.x, 18081i, var_2.d))));
    var var_4 = vec2<bool>((_wgslsmith_clamp_i32(-84873i, 98566i, ~var_2.d) << (~var_2.e.a.a.x % 32u)) != u_input.e, !(!var_2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.zy, _wgslsmith_div_vec3_u32(var_2.e.a.a.xyz, _wgslsmith_mod_vec3_u32(max(var_2.e.a.a.yxx, var_2.e.a.a.zyx), reverseBits(vec3<u32>(4294967295u, 37471u, var_2.e.a.a.x)))));
}

