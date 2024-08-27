struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 0i, 1i, 11965i);

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(109444u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 27140u, 1u, 27967u), vec4<u32>(2419u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 29954u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(106222u, 65049u, 7062u, 4294967295u), vec4<u32>(69744u, 10507u, 11798u, 1u), vec4<u32>(47373u, 25844u, 20553u, 32712u), vec4<u32>(1u, 97779u, 46796u, 31833u), vec4<u32>(45068u, 1u, 28140u, 1u), vec4<u32>(1u, 0u, 45884u, 22326u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(1u, 0u, 12903u, 4294967295u), vec4<u32>(15499u, 8977u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 35636u), vec4<u32>(4294967295u, 35731u, 35150u, 0u), vec4<u32>(4294967295u, 35066u, 89514u, 1u), vec4<u32>(1785u, 46857u, 1u, 38492u), vec4<u32>(14934u, 1u, 0u, 90255u), vec4<u32>(1u, 96628u, 4294967295u, 1u), vec4<u32>(4294967295u, 39326u, 41463u, 84742u), vec4<u32>(7412u, 0u, 0u, 17650u));

var<private> global3: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    let var_0 = -1347f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1750f), _wgslsmith_f_op_f32(global3.a.x - -289f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1356f, 959f, false))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))))));
    global2 = array<vec4<u32>, 22>();
    let var_2 = (global3.e.a ^ ~u_input.d) > (~(-1i) | ~(~(~u_input.d)));
    let var_3 = Struct_1(44325i, true, vec4<i32>(countOneBits(~global0.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-5443i, arg_0.d.a), global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(49175i, 10605i, 1024i, -3485i), global3.c), _wgslsmith_mod_i32(u_input.c, countOneBits(-2147483647i))) << (firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(3169u, arg_0.e.d), ~1125u, 1u & u_input.b.x, firstTrailingBit(global3.e.e.x))) % vec4<u32>(32u)), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(~4294967295u, 22u)], ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.wwx, arg_1.xyx) << (0u % 32u), 22u)]), _wgslsmith_sub_vec3_u32(~abs(arg_1.xwy), arg_0.c.e) << (vec3<u32>(_wgslsmith_add_u32(global3.d, ~u_input.b.x), arg_1.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, u_input.b.x), global3.d)) % vec3<u32>(32u)));
    return _wgslsmith_div_i32(global3.c.x, -(~(i32(-1i) * -arg_0.d.c.x)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    global1 = arg_1;
    var var_0 = u_input.a;
    global0 = vec4<i32>(min(-1i ^ -(~u_input.d), -1i), ~func_3(Struct_2(global3.e.e, global3.e, global3.e, global3.e, Struct_1(arg_3.x, false, vec4<i32>(-1i, global3.c.x, global3.e.c.x, -1i), 36157u, global3.e.e)), vec4<u32>(u_input.b.x >> (4294967295u % 32u), 4294967295u, global3.e.e.x, 4294967295u | u_input.b.x), arg_3.x), global3.e.c.x, 30432i);
    global1 = global3.e.b;
    global3 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1115f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(204f, arg_0) + arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))))), global3.b, reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-8332i, 39232i, -1i, abs(-24652i)), countOneBits(vec4<i32>(arg_3.x, u_input.d, global3.c.x, global3.c.x)) & abs(arg_3))), ~0u, global3.e);
    return ~u_input.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    let var_0 = ~global3.c.x;
    var var_1 = ~u_input.b.x;
    let var_2 = -15183i;
    var var_3 = _wgslsmith_mod_vec2_u32(~vec2<u32>(func_2(-1934f, arg_0.b, global3.b.a, vec4<i32>(2147483647i, arg_1.c.x, arg_1.c.x, global3.e.c.x)) << (~12645u % 32u), _wgslsmith_div_u32(firstLeadingBit(0u), _wgslsmith_div_u32(global3.d, 1u))), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mult_u32(~u_input.b.x, 1u | arg_0.e.x)), _wgslsmith_div_vec2_u32(select(vec2<u32>(3306u, 10892u), vec2<u32>(49358u, 4294967295u), vec2<bool>(false, global3.e.b)), _wgslsmith_mult_vec2_u32(global3.e.e.yz, vec2<u32>(31318u, arg_1.d))) >> (_wgslsmith_add_vec2_u32(firstLeadingBit(u_input.b), ~global3.e.e.yz) % vec2<u32>(32u))));
    let var_4 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~arg_1.e.c.xzy & -global0.xyw, _wgslsmith_mult_vec3_i32(-vec3<i32>(global0.x, var_2, global0.x), firstLeadingBit(vec3<i32>(-32209i, var_0, arg_0.a)))), firstLeadingBit(arg_0.c.zzx & arg_1.e.c.wyx)), !(!((u_input.b.x < u_input.b.x) && global3.e.b)), vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(max(global0.yz, vec2<i32>(-21979i, global3.e.a)), vec2<i32>(2147483647i, var_0) | global0.xy) ^ arg_0.a, arg_1.e.c.x, _wgslsmith_div_i32(func_3(Struct_2(arg_0.e, Struct_1(-44646i, false, arg_1.e.c, var_3.x, vec3<u32>(global3.d, 24140u, u_input.b.x)), Struct_1(-2147483647i, true, vec4<i32>(1i, -1i, var_2, arg_0.c.x), 17551u, vec3<u32>(global3.e.e.x, u_input.b.x, 25694u)), global3.e, arg_1.e), vec4<u32>(arg_1.d, arg_1.d, u_input.b.x, u_input.b.x), -1i), global0.x)), abs((_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_0.e.x, arg_1.d)) | global3.e.d) << (4294967295u % 32u)), global3.e.e);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global3.a.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_div_f32(arg_1, arg_1))))), Struct_3(global3.b.a), vec4<i32>(-(reverseBits(-1i) << (u_input.b.x % 32u)), u_input.c, 0i, ~_wgslsmith_div_i32(_wgslsmith_mult_i32(global3.e.c.x, global3.e.c.x), global3.e.c.x)), _wgslsmith_dot_vec3_u32(global3.e.e, reverseBits(max(abs(global3.e.e), global3.e.e))), global3.e);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    global0 = _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(1i, abs(-19967i & u_input.c), _wgslsmith_sub_i32(53165i, -1i) | ~arg_0, -global3.e.c.x)), ~global3.e.c);
    global2 = array<vec4<u32>, 22>();
    global1 = false;
    var var_0 = Struct_5(-683f, func_4(countOneBits(vec2<u32>(arg_1.e.e.x, u_input.b.x)) | ~(~vec2<u32>(u_input.b.x, u_input.b.x)), global3.a.x).b);
    var var_1 = global3.e.d;
    return global3.e;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = 50225i;
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(465f, -1187f, -807f) * _wgslsmith_f_op_vec3_f32(min(global3.a, _wgslsmith_f_op_vec3_f32(max(global3.a, _wgslsmith_f_op_vec3_f32(global3.a - global3.a)))))), global3.b, reverseBits(select(-vec4<i32>(-2147483647i, arg_2.a, -8525i, arg_2.c.x), vec4<i32>(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1527i, global3.e.c.x, u_input.c), vec4<i32>(u_input.c, -1i, 0i, 60509i)), ~(-30464i), -4837i), !arg_1)), _wgslsmith_add_u32(arg_2.d, 1u & ~func_2(global3.a.x, arg_1.x, true, vec4<i32>(arg_2.c.x, -1317i, -1i, -1i))), arg_2);
    global3 = func_4(arg_2.e.zy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.x * -1000f), _wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x))) * _wgslsmith_f_op_f32(abs(-951f))))));
    var_0 = arg_2.c.x;
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -1341f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.a.x)))) * var_1.a), func_4(arg_2.e.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-485f - 964f) * _wgslsmith_f_op_f32(var_1.a.x - -195f))).b, var_1.e.c, select(1u, var_1.e.d, true), Struct_1(1i, false, _wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.c, var_1.e.a, global3.e.c.x, u_input.c), var_1.c), reverseBits(vec4<i32>(global3.e.c.x, u_input.c, 48247i, 2147483647i))), global3.e.e.x, max(global3.e.e, _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.e.x, 43778u, arg_2.e.x) << (vec3<u32>(27816u, 4294967295u, global3.d) % vec3<u32>(32u)), arg_2.e))));
    return -_wgslsmith_div_vec4_i32(vec4<i32>(func_5(global3.e.c.x, Struct_4(vec3<f32>(var_1.a.x, -1053f, global3.a.x), Struct_3(true), var_1.c, arg_2.e.x, global3.e), vec2<bool>(false, true), Struct_3(arg_0.x)).c.x, countOneBits(arg_2.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.x, 7005i), global0.xw), global0.x ^ global0.x) | _wgslsmith_add_vec4_i32(abs(global3.e.c), arg_2.c << (vec4<u32>(arg_2.e.x, 1u, 15556u, var_1.e.d) % vec4<u32>(32u))), vec4<i32>(2147483647i, countOneBits(i32(-1i) * -44544i), 6993i, _wgslsmith_mult_i32(countOneBits(arg_2.c.x), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.e.b;
    global3 = Struct_4(global3.a, global3.b, ~vec4<i32>(global0.x << (1u % 32u), ~u_input.d, -6772i, global0.x) & -select(global3.e.c, firstLeadingBit(vec4<i32>(2147483647i, -1i, 13864i, global3.e.a)), !vec4<bool>(true, global3.e.b, true, global3.e.b)), ~_wgslsmith_mod_u32(0u, 1u), Struct_1(44665i, false, global3.e.c, 4294967295u, global3.e.e));
    global1 = global3.b.a;
    let var_0 = true;
    global0 = _wgslsmith_add_vec4_i32(-global3.e.c, ~_wgslsmith_add_vec4_i32(-global3.e.c, firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.e.a, u_input.c, global3.e.a, 0i), vec4<i32>(1i, 63823i, global3.e.c.x, u_input.d), global3.e.c))));
    global0 = vec4<i32>(2147483647i, _wgslsmith_clamp_i32(min(global0.x, global3.e.a), 1i, i32(-1i) * -1i) << (global3.d % 32u), global3.c.x, 41586i) ^ func_6(!select(select(vec3<bool>(global3.b.a, true, var_0), vec3<bool>(global3.b.a, global3.e.b, var_0), true), select(vec3<bool>(false, true, global3.b.a), vec3<bool>(false, false, var_0), var_0), !var_0), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0, true, var_0, global3.e.b), select(vec4<bool>(global3.b.a, global3.e.b, var_0, false), !vec4<bool>(global3.b.a, true, global3.e.b, var_0), global3.e.b)), func_5(global0.x, func_4(firstTrailingBit(vec2<u32>(1u, u_input.b.x)), _wgslsmith_f_op_f32(func_1(Struct_1(-44175i, global3.e.b, global3.e.c, 4294967295u, global3.e.e), Struct_4(global3.a, global3.b, global3.e.c, global3.e.e.x, Struct_1(-2147483647i, false, vec4<i32>(u_input.c, 0i, 0i, 29602i), 4294967295u, global3.e.e))))), !vec2<bool>(true, var_0), global3.b));
    global2 = array<vec4<u32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b | global3.e.e.yz);
}

