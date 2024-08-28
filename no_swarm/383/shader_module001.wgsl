struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false, 1u, vec4<i32>(-1i, -27611i, -20324i, -89890i), vec3<bool>(true, false, true), -1i), Struct_1(false, 1u, vec4<i32>(0i, 1i, 2147483647i, 18267i), vec3<bool>(false, true, false), -22961i), Struct_1(true, 6387u, vec4<i32>(-53120i, -42101i, 47899i, i32(-2147483648)), vec3<bool>(false, false, false), 17534i));

var<private> global1: i32;

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false, 1u, vec4<i32>(-53769i, -1i, -7966i, 1i), vec3<bool>(false, false, true), 1i), Struct_1(false, 0u, vec4<i32>(1192i, 1i, 2147483647i, -1i), vec3<bool>(false, false, false), 2147483647i), Struct_1(false, 1u, vec4<i32>(1737i, 1i, 2147483647i, -19689i), vec3<bool>(true, false, false), i32(-2147483648)), Struct_1(true, 4294967295u, vec4<i32>(751i, -33547i, -27299i, 1i), vec3<bool>(true, true, false), 19944i), Struct_1(true, 70458u, vec4<i32>(-1i, -34367i, 1i, 2147483647i), vec3<bool>(true, true, false), -15171i), Struct_1(true, 1u, vec4<i32>(43971i, -3945i, 49615i, -30428i), vec3<bool>(true, false, true), -1i), Struct_1(false, 49130u, vec4<i32>(13603i, 42014i, -1i, -1i), vec3<bool>(false, true, true), -16371i), Struct_1(true, 7563u, vec4<i32>(2147483647i, 40390i, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, false, false), 2147483647i), Struct_1(false, 79481u, vec4<i32>(-39184i, 44539i, -604i, 0i), vec3<bool>(false, false, true), -10945i), Struct_1(false, 28598u, vec4<i32>(-40473i, 31196i, 1i, 0i), vec3<bool>(false, false, false), 2147483647i), Struct_1(false, 37235u, vec4<i32>(24795i, -14648i, 22901i, 1i), vec3<bool>(true, true, false), -61038i), Struct_1(false, 4294967295u, vec4<i32>(i32(-2147483648), -48716i, -1i, 0i), vec3<bool>(false, true, false), 2147483647i), Struct_1(true, 4294967295u, vec4<i32>(-37237i, 35471i, i32(-2147483648), 48920i), vec3<bool>(false, false, true), i32(-2147483648)), Struct_1(false, 1u, vec4<i32>(-15690i, -4693i, -1i, 1i), vec3<bool>(false, true, true), -22472i), Struct_1(false, 1u, vec4<i32>(i32(-2147483648), 14692i, 2147483647i, 1i), vec3<bool>(true, false, true), 29351i), Struct_1(false, 34936u, vec4<i32>(18040i, 2147483647i, -8788i, -1i), vec3<bool>(false, true, false), 2147483647i), Struct_1(true, 1u, vec4<i32>(0i, 59929i, 1i, 28292i), vec3<bool>(true, false, false), -4635i), Struct_1(false, 1u, vec4<i32>(-18804i, 0i, 2147483647i, 0i), vec3<bool>(false, true, false), -17908i), Struct_1(true, 25887u, vec4<i32>(-17724i, i32(-2147483648), 2894i, 52876i), vec3<bool>(true, false, false), 0i), Struct_1(true, 82394u, vec4<i32>(38210i, 5010i, 1i, 0i), vec3<bool>(false, true, true), -31335i), Struct_1(false, 40004u, vec4<i32>(0i, -8240i, -47988i, 1i), vec3<bool>(true, false, false), 0i), Struct_1(true, 0u, vec4<i32>(-52884i, -13396i, i32(-2147483648), 50617i), vec3<bool>(true, true, false), -1707i), Struct_1(false, 0u, vec4<i32>(i32(-2147483648), 0i, 0i, 20988i), vec3<bool>(true, false, false), -18429i), Struct_1(true, 0u, vec4<i32>(13835i, 0i, 18772i, 8485i), vec3<bool>(false, false, false), -69205i), Struct_1(false, 0u, vec4<i32>(0i, -34114i, 0i, 7215i), vec3<bool>(false, false, false), 0i), Struct_1(true, 2017u, vec4<i32>(5257i, -1i, -43596i, -78517i), vec3<bool>(false, true, true), -1352i), Struct_1(true, 1u, vec4<i32>(-5335i, 0i, 34513i, -1i), vec3<bool>(false, false, true), -13345i), Struct_1(false, 1u, vec4<i32>(-26322i, i32(-2147483648), 27034i, 1i), vec3<bool>(true, false, false), 2147483647i), Struct_1(true, 99084u, vec4<i32>(-39931i, 41595i, -12165i, -33140i), vec3<bool>(true, true, true), 26425i), Struct_1(true, 28380u, vec4<i32>(2147483647i, 2147483647i, 0i, 2995i), vec3<bool>(false, false, true), 11904i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: f32) -> i32 {
    global1 = 32852i;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(860f)), arg_3))))));
    let var_1 = global2[_wgslsmith_index_u32(~arg_1, 15u)];
    var var_2 = global2[_wgslsmith_index_u32(3198u, 15u)];
    global0 = array<Struct_1, 3>();
    return _wgslsmith_add_i32(~u_input.b.x, _wgslsmith_add_i32(var_2.c.x, _wgslsmith_dot_vec2_i32(u_input.b, -vec2<i32>(var_1.c.x, 21263i))) << (60871u % 32u));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> i32 {
    let var_0 = 2147483647i;
    global0 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_clamp_i32(70948i, var_0, min(-19995i, 1i)), -firstLeadingBit(var_0), 2147483647i, reverseBits(1i)), vec4<i32>(_wgslsmith_sub_i32(reverseBits(~u_input.b.x), u_input.b.x), var_0, 34857i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, -1i), u_input.b | u_input.b, false), vec2<i32>(u_input.b.x, -u_input.d))));
    let var_2 = Struct_1(false, firstLeadingBit(19421u), vec4<i32>(u_input.b.x, i32(-1i) * -1i, _wgslsmith_mult_i32(u_input.d ^ u_input.d, func_3(vec4<u32>(u_input.a.x, arg_0, arg_0, 1u), 51022u, vec2<u32>(arg_0, u_input.c.x), 700f)), 0i) << (~vec4<u32>(~4294967295u, u_input.c.x ^ 12299u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 34044u, 12103u), u_input.a), firstTrailingBit(30031u)) % vec4<u32>(32u)), select(!vec3<bool>(all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), false, all(vec3<bool>(false, arg_1.x, arg_1.x))), vec3<bool>(true, 4294967295u >= (u_input.a.x ^ 1u), arg_1.x), !vec3<bool>(true, 2147483647i != var_1.x, true)), 0i);
    let var_3 = global3[_wgslsmith_index_u32(u_input.c.x, 30u)];
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    var var_0 = -1145f;
    global1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_0.c.wyw, vec3<i32>(max(u_input.d & u_input.b.x, -18955i), select(func_2(arg_0.b, arg_0.d.yy), 1i & arg_1.x, true), min(1i, ~(-2147483647i)))), u_input.d, ~(-9197i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2078f, -1197f))))) + -333f) >= -515f;
    let var_2 = arg_0.c.yyz;
    var var_3 = ~arg_0.b;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, select(true, false, false), true), vec4<bool>(any(vec3<bool>(false, true, true)), true, any(vec3<bool>(true, false, false)), false))), u_input.c.x, vec4<i32>(1i, u_input.d << (abs(func_1(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], vec2<i32>(u_input.b.x, 27883i))) % 32u), ~u_input.b.x, u_input.d), select(vec3<bool>(any(vec4<bool>(true, true, true, true)), true == all(vec4<bool>(true, false, true, false)), ~u_input.a.x == u_input.c.x), select(vec3<bool>(u_input.b.x < u_input.d, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, false)), true)), false), u_input.b.x);
    var var_1 = _wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.d, abs(9823i)), vec2<i32>(-u_input.b.x, _wgslsmith_sub_i32(var_0.c.x, u_input.b.x)), select(var_0.d.zx, vec2<bool>(var_0.d.x, true), any(vec4<bool>(var_0.a, var_0.d.x, true, var_0.a)))) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(var_0.b, var_0.b), u_input.a.yx), vec2<u32>(8722u, var_0.b) ^ u_input.c.zy) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-u_input.d, _wgslsmith_add_i32(func_2(1u, var_0.d.yx), -1i))));
    let var_2 = Struct_1(false, var_0.b, _wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(var_0.c, _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, -2147483647i, var_1.x, 33079i), vec4<i32>(var_1.x, var_1.x, u_input.b.x, 0i))), var_0.c >> (vec4<u32>(func_1(Struct_1(var_0.a, 4294967295u, var_0.c, vec3<bool>(false, true, true), var_1.x), vec2<i32>(2147483647i, var_0.e)), ~23001u, 0u >> (var_0.b % 32u), ~var_0.b) % vec4<u32>(32u))), select(select(vec3<bool>(21422u <= u_input.a.x, true, var_0.d.x), select(!vec3<bool>(var_0.a, false, var_0.d.x), select(vec3<bool>(var_0.a, false, true), vec3<bool>(false, var_0.a, false), var_0.d), true), !var_0.d), var_0.d, vec3<bool>(all(vec2<bool>(false, true)), !var_0.a, var_0.d.x)), 1i);
    var_1 = _wgslsmith_mod_vec2_i32(var_0.c.yx, var_2.c.xx);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(func_1(var_2, var_3.c.yz), 1u) ^ ~0u, abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_2.c, var_3.c), u_input.b.x, ~u_input.b.x) & (_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e, 1i), vec2<i32>(var_0.c.x, var_2.c.x)) >> (_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(0u, 55064u)) % 32u))), 1304f, vec2<f32>(1f, 1f), vec3<i32>(1i | u_input.d, _wgslsmith_dot_vec4_i32(var_2.c, vec4<i32>(-2147483647i, firstLeadingBit(0i), _wgslsmith_dot_vec3_i32(var_2.c.zww, vec3<i32>(var_2.e, u_input.b.x, 0i)), 5973i)), ~firstTrailingBit(~(-12606i))));
}

