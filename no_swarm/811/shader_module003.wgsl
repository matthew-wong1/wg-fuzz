struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5>;

var<private> global1: array<f32, 13>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<bool>) -> vec2<u32> {
    global2 = vec4<bool>(!arg_1.a.x, any(!(!(!vec3<bool>(global2.x, global2.x, true)))), true, true);
    var var_0 = false;
    global2 = arg_2;
    var var_1 = arg_2.x;
    var_0 = all(!vec4<bool>(true, !arg_2.x, true, any(select(arg_2.yzy, vec3<bool>(global2.x, true, global2.x), arg_2.x))));
    return select(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(29327u, 5963u)), countOneBits(~arg_0.zx)), ~(~select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zy, vec2<bool>(global2.x, arg_1.a.x))), true) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~abs(vec2<u32>(u_input.c.x, u_input.b.x)), (arg_0.zy ^ u_input.b.zx) << (u_input.c % vec2<u32>(32u))), vec2<u32>(~4294967295u >> (u_input.b.x % 32u), ~u_input.b.x | ~u_input.b.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: f32, arg_3: f32) -> vec4<u32> {
    var var_0 = func_3(vec3<u32>(4294967295u, u_input.a.x, arg_1.c.a.a.x), arg_1.b, vec4<bool>(arg_1.a.c || !all(global2.yz), true, true, (~u_input.c.x > _wgslsmith_add_u32(u_input.a.x, 1u)) && true));
    var var_1 = var_0.x;
    var var_2 = global0[_wgslsmith_index_u32(19595u, 5u)];
    global0 = array<Struct_5, 5>();
    let var_3 = u_input.b.yz;
    return u_input.b;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = select(_wgslsmith_clamp_vec4_u32(select(func_2(u_input.a, global0[_wgslsmith_index_u32(7848u, 5u)], 248f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 13u)], 1423f)), reverseBits(u_input.a), !arg_1), abs(u_input.b >> (vec4<u32>(167661u, 92728u, u_input.b.x, u_input.a.x) % vec4<u32>(32u))) | vec4<u32>(u_input.a.x, _wgslsmith_add_u32(48846u, u_input.b.x), 22871u, firstLeadingBit(u_input.c.x)), vec4<u32>(u_input.a.x, 0u, (u_input.c.x >> (0u % 32u)) ^ abs(u_input.c.x), ~func_3(u_input.a.zyz, Struct_3(vec2<bool>(true, arg_1)), vec4<bool>(true, global2.x, arg_1, false)).x)), ~vec4<u32>(1u, ~u_input.b.x, u_input.a.x, 9999u) ^ vec4<u32>(4294967295u, func_3(vec3<u32>(u_input.c.x, 15523u, u_input.c.x), Struct_3(vec2<bool>(arg_1, arg_0)), vec4<bool>(false, arg_0, false, false)).x, u_input.a.x, 0u), false);
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 5u)];
    global0 = array<Struct_5, 5>();
    global0 = array<Struct_5, 5>();
    var_0 = vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(1u, ~25032u), 0u), ~var_1.c.a.a.x, u_input.b.x, func_3(vec3<u32>(select(5131u, 1u, false), 37375u, 19780u) >> (var_0.wwx % vec3<u32>(32u)), Struct_3(!vec2<bool>(false, global2.x)), !vec4<bool>(arg_0, true, false, false)).x);
    return Struct_1(_wgslsmith_mod_vec2_u32(var_0.wz | vec2<u32>(abs(34672u), ~83905u), ~(var_0.yx << (countOneBits(u_input.a.zz) % vec2<u32>(32u)))), u_input.d.x, true);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = select(!global2.zwx, !global2.zzx, true);
    return Struct_3(vec2<bool>(!all(vec3<bool>(false, false, var_0.x)), any(!vec4<bool>(arg_0.c, false, var_0.x, false))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(func_1(false | select(select(global2.x, global2.x, false), global2.x || true, !arg_3.a.x), any(select(arg_0.a, vec2<bool>(arg_3.a.x, arg_2), global2.yy))), _wgslsmith_mod_i32(min(arg_1.x, ~(-9427i)), u_input.d.x) != -(~0i), ~u_input.b.zzx, Struct_1(vec2<u32>(u_input.a.x & u_input.c.x, abs(60449u)), 19649i, !(-1095f > global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.b.x), 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(52702u, 13u)]))))));
    var var_1 = Struct_2(Struct_1(vec2<u32>(~func_2(u_input.b, global0[_wgslsmith_index_u32(1u, 5u)], 920f, -356f).x, u_input.c.x), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(u_input.d.x, -2147483647i, 2147483647i, arg_1.x) << (vec4<u32>(61906u, var_0.a.a.x, 0u, 7412u) % vec4<u32>(32u))), arg_2), arg_0.a.x, vec3<u32>(~(~u_input.b.x), _wgslsmith_add_u32(u_input.c.x, select(4294967295u, 1u, false)), ~func_1(true, !global2.x).a.x), Struct_1(~reverseBits(_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(0u, 3581u))), ~4380i, false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(300f, -185f, select(var_0.d.c, arg_1.x >= 1i, !arg_0.a.x))))));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 5>();
    let var_0 = Struct_5(func_5(Struct_3(select(vec2<bool>(global2.x, global2.x), global2.wy, global2.wz)), ~(-abs(vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.d.x))), !(any(global2.zx) | (global2.x & true)), func_4(func_1(0u < u_input.a.x, true))), func_4(Struct_1(~firstLeadingBit(u_input.c), -15236i, (u_input.b.x & u_input.b.x) == ~11966u)), Struct_2(func_5(func_4(func_5(Struct_3(global2.ww), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), global2.x, Struct_3(global2.zw))), vec4<i32>(-31557i << (u_input.a.x % 32u), ~1i, 35902i >> (0u % 32u), u_input.d.x), !global2.x, func_4(func_1(true, global2.x))), false, countOneBits(u_input.b.xzy), func_1(func_4(func_5(Struct_3(global2.zy), vec4<i32>(1i, u_input.d.x, -33332i, -45286i), false, Struct_3(vec2<bool>(false, global2.x)))).a.x, !global2.x), -804f));
    global0 = array<Struct_5, 5>();
    var var_1 = Struct_4(Struct_1(max(~(~vec2<u32>(0u, var_0.a.a.x)), u_input.a.zz), 1i, true), var_0.b, -firstLeadingBit(~firstTrailingBit(vec3<i32>(u_input.d.x, u_input.d.x, 14157i))));
    var var_2 = select(var_1.c, firstLeadingBit(vec3<i32>(firstTrailingBit(1i), reverseBits(var_0.a.b), _wgslsmith_sub_i32(func_5(var_1.b, vec4<i32>(var_0.a.b, var_0.a.b, var_1.a.b, u_input.d.x), false, Struct_3(vec2<bool>(true, true))).b, reverseBits(6999i)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a.x, ~(var_1.a.a.x << (~var_0.a.a.x % 32u))), var_0.c.d.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-860f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 13u)]))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c.e, 474f), vec2<f32>(-883f, -622f))), vec2<f32>(1090f, var_0.c.e)), select(var_0.b.a, vec2<bool>(var_1.b.a.x, var_1.a.c), true)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_0.c.a.a.x, 13u)], global1[_wgslsmith_index_u32(40996u, 13u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1903f, global1[_wgslsmith_index_u32(var_0.c.d.a.x, 13u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], var_0.c.e))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(631f, -100f), vec2<f32>(1179f, 601f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1086f, global1[_wgslsmith_index_u32(14089u, 13u)]) * vec2<f32>(899f, 2849f))), var_1.b.a)), vec2<f32>(var_0.c.e, var_0.c.e))), ~u_input.b);
}

