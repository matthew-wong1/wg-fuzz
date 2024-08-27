struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(109076u, 57834u, 4294967295u, 62393u, 102182u, 0u, 3817u, 4294967295u);

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: bool) -> f32 {
    global2 = array<vec2<bool>, 18>();
    let var_0 = Struct_4(u_input.b, Struct_2(Struct_1(vec2<i32>(0i, min(u_input.e, u_input.e)), ~global0[_wgslsmith_index_u32(u_input.d.x, 8u)] & u_input.d.x), !select(true, global1.x, all(vec2<bool>(arg_0, true))), Struct_1(_wgslsmith_mult_vec2_i32(firstLeadingBit(u_input.c.xx), vec2<i32>(1i, 1i)), global0[_wgslsmith_index_u32(~u_input.a, 8u)] & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 46463u, global0[_wgslsmith_index_u32(10138u, 8u)]))), _wgslsmith_mod_u32(1u, 4294967295u), ~countOneBits(1770u)));
    global2 = array<vec2<bool>, 18>();
    let var_1 = ~(~vec4<i32>(-40413i, countOneBits(_wgslsmith_mult_i32(u_input.b, var_0.b.a.a.x)), -(i32(-1i) * -1i), i32(-1i) * -1i));
    var var_2 = ~max(_wgslsmith_mod_vec2_u32(~u_input.d, ~select(u_input.d, vec2<u32>(global0[_wgslsmith_index_u32(var_0.b.c.b, 8u)], var_0.b.e), global1.x)), vec2<u32>(~(global0[_wgslsmith_index_u32(var_0.b.a.b, 8u)] | 4294967295u), select(21557u, u_input.d.x | var_0.b.c.b, all(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 18u)]))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570f * -1759f)) - -161f));
}

fn func_2() -> i32 {
    global2 = array<vec2<bool>, 18>();
    global0 = array<u32, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -170f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(494f + 686f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(174f, -317f)) * _wgslsmith_f_op_f32(floor(742f)))), _wgslsmith_f_op_f32(func_3(true, false))));
    var var_1 = select(~vec3<i32>(u_input.b, 1i, u_input.e) << (~vec3<u32>(u_input.d.x, 4294967295u, 10475u) % vec3<u32>(32u)), u_input.c.yyx << (~firstTrailingBit(vec3<u32>(u_input.a, 39601u, u_input.d.x)) % vec3<u32>(32u)), vec3<bool>(false, select(all(global2[_wgslsmith_index_u32(u_input.d.x, 18u)]), true, select(global1.x, global1.x, global1.x)), true)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d.x, u_input.a, u_input.a) & ~vec3<u32>(u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], 8u)], 6628u), vec3<u32>(1u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], u_input.a, 1u), vec4<u32>(1u, u_input.a, 1u, global0[_wgslsmith_index_u32(u_input.a, 8u)])), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(31296u, 8u)], 8u)])), firstLeadingBit(~max(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], u_input.a), vec3<u32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], 8u)])))) % vec3<u32>(32u));
    var var_2 = Struct_5(~u_input.d, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~countOneBits(40416u), 4294967295u), ~u_input.d.x), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 304f))))));
    return u_input.c.x;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = abs(countOneBits(firstTrailingBit(arg_3 << (vec4<u32>(u_input.d.x, u_input.a, u_input.a, global0[_wgslsmith_index_u32(13483u, 8u)]) % vec4<u32>(32u)))) & arg_3);
    let var_1 = ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(41351u, 8u)])), (vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(48590u, 8u)], 1u) >> (vec3<u32>(19183u, u_input.a, 15832u) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(21326u, 1u, 12298u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 8u)], 16451u)) % vec3<u32>(32u))), ~(~countOneBits(vec3<u32>(u_input.d.x, u_input.a, u_input.a))));
    let var_2 = Struct_2(Struct_1(~(vec2<i32>(1i, arg_2.x) | select(vec2<i32>(arg_3.x, arg_2.x), vec2<i32>(u_input.b, -52742i), global1.zx)), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.d.x, 68054u, global0[_wgslsmith_index_u32(1u, 8u)], 26103u)), min(max(vec4<u32>(var_1.x, 1u, u_input.d.x, 0u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 8u)], var_1.x, global0[_wgslsmith_index_u32(u_input.d.x, 8u)])), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], 4294967295u, 19743u, 21462u)))), any(!(!global1.zw)), Struct_1(vec2<i32>(-_wgslsmith_mult_i32(23975i, arg_2.x), -arg_3.x), ~(~(~4294967295u))), 0u, u_input.d.x);
    let var_3 = abs(u_input.c);
    let var_4 = all(select(select(!vec4<bool>(false, var_2.b, arg_1.b.x, false), !vec4<bool>(false, var_2.b, true, true), global1.x), vec4<bool>(var_2.b, global1.x, !(-21984i >= arg_3.x), arg_1.b.x), select(select(!vec4<bool>(false, true, global1.x, arg_1.b.x), select(vec4<bool>(global1.x, var_2.b, global1.x, false), vec4<bool>(arg_1.b.x, true, true, true), vec4<bool>(var_2.b, global1.x, arg_1.b.x, global1.x)), select(vec4<bool>(false, true, global1.x, var_2.b), vec4<bool>(true, var_2.b, true, global1.x), arg_1.b.x)), !select(vec4<bool>(false, arg_1.b.x, var_2.b, global1.x), vec4<bool>(false, false, arg_1.b.x, true), false), false || var_2.b)));
    return Struct_2(Struct_1(var_2.c.a & min(~vec2<i32>(arg_2.x, var_3.x), _wgslsmith_div_vec2_i32(arg_2.zy, arg_3.xx)), 52093u), true, Struct_1(abs(vec2<i32>(firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_0.x, u_input.b, 41925i, 2147483647i)))), 1u), global0[_wgslsmith_index_u32(4294967295u, 8u)], ~1u);
}

fn func_1() -> i32 {
    var var_0 = global1.zz;
    let var_1 = Struct_4(_wgslsmith_sub_i32(abs(-28554i), u_input.c.x), func_4(u_input.c.x, Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-253f, 615f)), select(vec2<bool>(var_0.x, true), !vec2<bool>(global1.x, global1.x), global2[_wgslsmith_index_u32(6188u, 18u)])), vec3<i32>(-_wgslsmith_add_i32(u_input.b, u_input.c.x), func_2(), u_input.b), select(reverseBits(vec4<i32>(-45034i, 0i, -10797i, u_input.c.x)), _wgslsmith_sub_vec4_i32(-u_input.c, vec4<i32>(2147483647i, -42783i, u_input.e, u_input.b)), global1.x)));
    var_0 = select(!select(!select(global2[_wgslsmith_index_u32(var_1.b.d, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], false), select(global1.wz, select(global1.zw, global1.zz, false), !global1.zx), any(global2[_wgslsmith_index_u32(45861u, 18u)])), vec2<bool>(any(!(!vec3<bool>(global1.x, true, false))), true), !(!(!vec2<bool>(var_0.x, false))));
    let var_2 = -2147483647i;
    var_0 = select(vec2<bool>(!var_0.x, var_0.x), !(!vec2<bool>(var_1.b.b, all(vec3<bool>(global1.x, var_1.b.b, global1.x)))), select(select(select(select(global1.zz, global2[_wgslsmith_index_u32(81248u, 18u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b.d, 8u)], 18u)]), global1.wy, func_4(-27991i, Struct_3(vec2<f32>(-242f, 292f), global1.zy), u_input.c.wxx, u_input.c).b), global2[_wgslsmith_index_u32(select(0u, _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(90364u, 8u)]), true), 18u)], !vec2<bool>(var_1.b.b, var_1.b.b)), !global1.yx, true));
    return -2147483647i;
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: bool, arg_3: f32) -> Struct_2 {
    global2 = array<vec2<bool>, 18>();
    global1 = select(vec4<bool>(true, all(vec2<bool>(all(vec4<bool>(global1.x, true, true, arg_2)), all(vec4<bool>(true, false, false, false)))), arg_0.b.b, select(arg_0.b.b, false, arg_2)), !select(!(!vec4<bool>(true, false, false, global1.x)), vec4<bool>(true, all(global1.xyx), false, false), any(global1.wy) || true), true);
    var var_0 = ~abs(vec3<u32>(select(~538u, abs(42030u), true || global1.x), ~arg_0.b.e, 1u));
    let var_1 = ~1u;
    var var_2 = -1275f;
    return arg_0.b;
}

fn func_6(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = global1.yww;
    var var_1 = -1000f;
    var var_2 = 1065f;
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(func_4(-6474i, Struct_3(vec2<f32>(-971f, -363f), vec2<bool>(var_0.x, true)), abs(u_input.c.yxy), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, arg_0, arg_1.x, arg_1.x), u_input.c)).c.b, u_input.d.x) >> (1u % 32u), _wgslsmith_sub_u32(6428u, func_4(arg_0, Struct_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1131f, 618f))), vec2<bool>(global1.x, global1.x)), vec3<i32>(countOneBits(-12580i), 2147483647i, reverseBits(u_input.b)), -u_input.c).c.b), 71858u, abs(~96392u) & ~(~abs(u_input.a)));
    var var_4 = vec3<u32>(~(~(~62418u)) & _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~69821u, arg_2.c.b & global0[_wgslsmith_index_u32(59048u, 8u)], _wgslsmith_sub_u32(49358u, var_3.x)), 87928u), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(arg_2.e ^ arg_2.c.b, ~1u), ~global0[_wgslsmith_index_u32(min(1u, arg_2.e), 8u)] | firstTrailingBit(32067u)), 4294967295u);
    return Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-682f, 1954f))), 623f))), select(select(vec2<bool>(func_5(Struct_4(-1i, arg_2), u_input.c.wzy, arg_2.b, 1814f).b, !global1.x), select(select(var_0.zx, vec2<bool>(arg_2.b, global1.x), var_0.xz), vec2<bool>(true, true), any(vec4<bool>(arg_2.b, true, arg_2.b, true))), !func_5(Struct_4(0i, Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), var_4.x), arg_2.b, Struct_1(vec2<i32>(28565i, u_input.e), 46841u), arg_2.e, var_3.x)), u_input.c.xwx, false, 1230f).b), !global2[_wgslsmith_index_u32(u_input.d.x, 18u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 65776u, 50849u, u_input.a), vec4<u32>(1u, var_4.x, 97517u, u_input.d.x)) >= var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(min(countOneBits(-7037i), -21969i), -vec3<i32>(0i, -1i, _wgslsmith_sub_i32(u_input.b, u_input.c.x)) << (_wgslsmith_sub_vec3_u32(min(vec3<u32>(13206u, u_input.d.x, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(22920u, 8u)], 4294967295u, 4294967295u)) | reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.d.x, 25754u)), ~vec3<u32>(0u, 1u, u_input.d.x) ^ (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 1u, 4294967295u) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18595u, 8u)], 8u)], 8u)], 1u, global0[_wgslsmith_index_u32(1u, 8u)]) % vec3<u32>(32u)))) % vec3<u32>(32u)), func_5(Struct_4(func_1(), Struct_2(func_4(-2147483647i, Struct_3(vec2<f32>(964f, 1109f), global1.yw), vec3<i32>(-2147483647i, -1i, 15189i), vec4<i32>(10312i, u_input.c.x, 2147483647i, 30904i)).c, true, func_4(1i, Struct_3(vec2<f32>(782f, -246f), vec2<bool>(true, true)), vec3<i32>(2147483647i, u_input.b, 9727i), u_input.c).a, u_input.a, u_input.a)), -vec3<i32>(abs(12522i), _wgslsmith_div_i32(u_input.c.x, -2147483647i), 1i), false & select(all(vec3<bool>(true, true, global1.x)), true, global1.x), -582f));
    global1 = vec4<bool>(-1400f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1661f, var_0.a.x) + var_0.a.x)), global1.x, 10346u <= ~(~(42665u & u_input.a)), func_4(u_input.e, Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(287f, 247f))), !func_6(u_input.e, vec3<i32>(u_input.b, -1i, u_input.c.x), Struct_2(Struct_1(u_input.c.wz, 69883u), true, Struct_1(vec2<i32>(u_input.e, u_input.b), u_input.a), 4294967295u, 4294967295u)).b), _wgslsmith_div_vec3_i32(u_input.c.wzx, u_input.c.zxw | ~u_input.c.www), firstTrailingBit(~(-u_input.c))).b);
    let var_1 = vec2<bool>(true, true);
    let var_2 = global1.xxz;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1315f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-740f * var_0.a.x))))));
    var var_4 = reverseBits(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.e), ~firstLeadingBit(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x)) & 1i, (abs(u_input.c.yyy & vec3<i32>(u_input.c.x, -1i, 1i)) | u_input.c.yww) | vec3<i32>(-52880i, -2147483647i, min(reverseBits(u_input.e), ~u_input.e)));
}

