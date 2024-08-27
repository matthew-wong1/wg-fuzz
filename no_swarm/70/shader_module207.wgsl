struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_5, 18>;

var<private> global2: array<f32, 15> = array<f32, 15>(107f, -779f, -1182f, -446f, -1285f, -455f, -421f, -958f, 535f, 743f, 843f, -1295f, -1000f, -825f, 941f);

var<private> global3: f32 = 378f;

var<private> global4: array<i32, 29> = array<i32, 29>(6524i, 1i, 2147483647i, -3896i, 2147483647i, 1i, 0i, -35347i, 0i, -21951i, 43547i, -1i, 0i, 0i, 2147483647i, -41433i, -1i, 34421i, 9338i, 29993i, 56507i, -12726i, 0i, -56969i, 21832i, 33540i, -17986i, i32(-2147483648), 0i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_i32(max(_wgslsmith_mod_i32(u_input.a, global4[_wgslsmith_index_u32(u_input.d.x, 29u)]), _wgslsmith_div_i32(u_input.a, arg_0)), ~u_input.b.x), ~arg_1.d.a.c.xx & ~(~vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(1u, 29u)])), arg_1.d.a.c), -4024i, firstTrailingBit(~u_input.d.x), ~reverseBits(~(~u_input.b.zz)), Struct_1(22874i, vec2<i32>(arg_0 >> (~4294967295u % 32u), u_input.a), vec4<i32>(0i, -_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(u_input.d.x, 29u)], global4[_wgslsmith_index_u32(67037u, 29u)]), reverseBits(global4[_wgslsmith_index_u32(4294967295u, 29u)]) | (i32(-1i) * -6652i), 2147483647i)));
    var var_1 = Struct_2(Struct_1(-1i, u_input.b.xw, vec4<i32>(-_wgslsmith_mult_i32(-13029i, 31897i), var_0.e.a, _wgslsmith_mult_i32(select(u_input.a, var_0.a.c.x, arg_1.a), var_0.a.c.x << (var_0.c % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.a.a, -2147483647i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.e.c.x, 12860i, arg_1.d.d.x), vec3<i32>(2147483647i, var_0.e.c.x, 1i))))), _wgslsmith_clamp_i32(i32(-1i) * -min(global4[_wgslsmith_index_u32(arg_1.d.c, 29u)], 29324i), ~_wgslsmith_div_i32(1i, 1216i << (u_input.d.x % 32u)), -43338i), 2290u ^ _wgslsmith_div_u32(38196u, ~(6684u & var_0.c)), countOneBits(abs(u_input.b.zy)), arg_1.d.a);
    var var_2 = _wgslsmith_mod_vec4_u32(select(~vec4<u32>(u_input.c.x << (21267u % 32u), _wgslsmith_div_u32(u_input.c.x, arg_1.d.c), 0u, min(var_0.c, 0u)), u_input.d, false), _wgslsmith_div_vec4_u32(firstTrailingBit(~min(u_input.d, vec4<u32>(14231u, 0u, 0u, 28718u))), firstTrailingBit(u_input.d)));
    let var_3 = var_0.e;
    let var_4 = -823f;
    return var_4;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_i32(-(~(u_input.b | u_input.b)), _wgslsmith_add_vec4_i32(u_input.b | (vec4<i32>(47417i, 0i, -49164i, 2147483647i) << (vec4<u32>(u_input.d.x, u_input.e.x, u_input.e.x, 4294967295u) % vec4<u32>(32u))), -u_input.b)) << (~u_input.e.x % 32u);
    var var_1 = Struct_5(true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(reverseBits(6059u), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.d.x), 15u)]), -466f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(2147483647i, Struct_5(false, vec4<f32>(1444f, global2[_wgslsmith_index_u32(0u, 15u)], 464f, global2[_wgslsmith_index_u32(4294967295u, 15u)]), global4[_wgslsmith_index_u32(46566u, 29u)], Struct_2(Struct_1(-42466i, vec2<i32>(-78870i, global4[_wgslsmith_index_u32(u_input.e.x, 29u)]), u_input.b), global4[_wgslsmith_index_u32(u_input.d.x, 29u)], 15191u, vec2<i32>(global4[_wgslsmith_index_u32(1u, 29u)], 60511i), Struct_1(global4[_wgslsmith_index_u32(28874u, 29u)], u_input.b.ww, u_input.b))), 913f, vec3<bool>(true, false, false))), global2[_wgslsmith_index_u32(~0u, 15u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(250f * -103f)))))), u_input.b.x, Struct_2(Struct_1(u_input.b.x, reverseBits(select(vec2<i32>(global4[_wgslsmith_index_u32(u_input.c.x, 29u)], 23549i), u_input.b.wy, false)), abs(u_input.b)), -_wgslsmith_dot_vec2_i32(-u_input.b.xy, -u_input.b.yx), select(~_wgslsmith_clamp_u32(u_input.c.x, 24426u, 4294967295u), u_input.d.x, true), vec2<i32>(u_input.b.x, ~(~u_input.b.x)), Struct_1(_wgslsmith_sub_i32(u_input.a | global4[_wgslsmith_index_u32(u_input.e.x, 29u)], -u_input.b.x), u_input.b.yz, ~_wgslsmith_div_vec4_i32(u_input.b, u_input.b))));
    let var_2 = var_1.a;
    var var_3 = 9906i;
    let var_4 = select(select(select(vec4<bool>(true & var_1.a, false && var_1.a, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.a, true, var_1.a, var_1.a), var_1.a), vec4<bool>(false, false, var_1.a, true), vec4<bool>(var_1.a, true, false, true)), var_1.a), !select(vec4<bool>(true, false, false, var_1.a), !vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(var_1.a, var_1.a, var_1.a, false)), select(vec4<bool>(var_1.a, var_1.a && var_1.a, all(vec4<bool>(false, true, var_1.a, var_1.a)), true), vec4<bool>(var_1.a, select(var_1.a, var_1.a, var_1.a), any(vec2<bool>(var_1.a, false)), var_1.a || var_1.a), var_1.a)), vec4<bool>(!(!any(vec3<bool>(true, false, var_1.a))), var_1.a, !(-437f < _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(0u, 15u)]))), var_1.a), select(vec4<bool>(false, !all(vec2<bool>(var_1.a, var_1.a)), false, var_1.a), select(vec4<bool>(false, true, true, true), select(select(vec4<bool>(true, true, var_1.a, true), vec4<bool>(true, false, false, var_1.a), var_1.a), !vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, var_1.a, false)), select(!vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, false, true, var_1.a), u_input.d.x > var_1.d.c)), all(vec2<bool>(false, true)) | true));
    return Struct_2(Struct_1(-(~(global4[_wgslsmith_index_u32(65224u, 29u)] & 2147483647i)), vec2<i32>(~(var_1.d.d.x << (var_1.d.c % 32u)), 34992i), vec4<i32>(-var_1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(23319i, u_input.a)), 1i, -39166i)), global4[_wgslsmith_index_u32(0u, 29u)], var_1.d.c, abs(var_1.d.d << (u_input.c % vec2<u32>(32u))), Struct_1(_wgslsmith_clamp_i32(u_input.b.x, max(0i, global4[_wgslsmith_index_u32(var_1.d.c, 29u)]), max(u_input.b.x, -2147483647i)) | global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~var_1.d.c), 29u)], var_1.d.d, -_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(1u, 29u)], var_1.c, 27742i, -16386i), var_1.d.a.c, u_input.b), vec4<i32>(u_input.a, u_input.a, 1i, 0i) ^ vec4<i32>(0i, global4[_wgslsmith_index_u32(1u, 29u)], u_input.a, 2147483647i))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_2 {
    global1 = array<Struct_5, 18>();
    let var_0 = vec3<f32>(arg_2.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(357f))));
    global3 = _wgslsmith_f_op_f32(min(471f, var_0.x));
    global4 = array<i32, 29>();
    global1 = array<Struct_5, 18>();
    return arg_1.b;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -666f), Struct_3(vec4<u32>(u_input.d.x, 43572u, _wgslsmith_dot_vec2_u32(vec2<u32>(31574u, 30922u) & u_input.e, vec2<u32>(35858u, arg_0.x)), ~_wgslsmith_sub_u32(arg_0.x, u_input.d.x)), func_2(), func_2(), Struct_1(-(~u_input.a), firstLeadingBit(vec2<i32>(-18569i, 21463i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.e) % vec2<u32>(32u)), firstTrailingBit(-u_input.b)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.d.x, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, arg_0.x), arg_0.yy, vec2<u32>(13654u, arg_0.x))), ~arg_0.yx)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1687f * -1000f) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~0u, 15u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 15u)]))), _wgslsmith_f_op_f32(step(772f, _wgslsmith_f_op_f32(func_3(~global4[_wgslsmith_index_u32(u_input.e.x, 29u)], global1[_wgslsmith_index_u32(arg_0.x & 4294967295u, 18u)], -1078f, select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 15u)])), vec2<bool>(true & !any(vec3<bool>(false, true, false)), select(arg_0.x != 74811u, false, false) && all(vec3<bool>(true, true, true))));
    let var_1 = u_input.d.zzx;
    let var_2 = Struct_3(reverseBits(~(u_input.d ^ vec4<u32>(var_0.c, var_0.c, 0u, var_0.c)) & u_input.d), var_0, Struct_2(func_2().e, _wgslsmith_sub_i32(_wgslsmith_add_i32(~(-1i), 17333i), 2147483647i), ~1u, -vec2<i32>(0i, u_input.b.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1421f * 416f)), Struct_3(vec4<u32>(arg_0.x, 0u, u_input.d.x, arg_0.x), func_2(), func_2(), func_2().e, _wgslsmith_mod_u32(4294967295u, 39854u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(55852u, 15u)], global2[_wgslsmith_index_u32(var_1.x, 15u)], 903f)))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))).e), func_2().e, _wgslsmith_mult_u32(countOneBits(u_input.d.x), ~var_0.c));
    let var_3 = 0u >= var_0.c;
    var var_4 = Struct_5(any(!select(select(vec2<bool>(true, true), vec2<bool>(false, var_3), vec2<bool>(false, true)), vec2<bool>(false, var_3), !vec2<bool>(var_3, var_3))), vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~0u ^ var_1.x, 15u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-645f, global2[_wgslsmith_index_u32(var_1.x, 15u)])))), global2[_wgslsmith_index_u32(~func_2().c, 15u)], _wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.x, 15u)] + -1000f)))), -var_2.c.b, var_0);
    return Struct_1(global4[_wgslsmith_index_u32(var_2.c.c, 29u)], vec2<i32>(_wgslsmith_sub_i32(~global4[_wgslsmith_index_u32(u_input.c.x, 29u)], _wgslsmith_dot_vec3_i32(u_input.b.wxz & var_4.d.e.c.wwy, reverseBits(var_4.d.a.c.xwz))), var_0.d.x), func_2().e.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_5) -> StorageBuffer {
    let var_0 = !arg_2.a;
    global1 = array<Struct_5, 18>();
    var var_1 = ~u_input.d.yzw;
    global0 = !((true && any(select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(arg_1.a, arg_2.a), vec2<bool>(true, arg_1.a)))) | false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, arg_2.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b.x)))))));
    return StorageBuffer(reverseBits(global4[_wgslsmith_index_u32(~(~0u), 29u)] << (select(arg_2.d.c, abs(var_1.x), select(arg_1.a, var_0, false)) % 32u)), 999f, vec4<u32>(~_wgslsmith_clamp_u32(countOneBits(arg_1.d.c), 21492u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, arg_1.d.c, 49477u), vec4<u32>(var_1.x, 30341u, 12666u, u_input.e.x))), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 0u, 4294967295u), u_input.d.wwx)), max(~(0u << (u_input.e.x % 32u)), _wgslsmith_mult_u32(1u, 30628u)), ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(39520u, 4294967295u, 3542u)), select(u_input.d.xwx, vec3<u32>(1u, arg_1.d.c, 67832u), true))), u_input.d.yyx & max(u_input.d.xzw, firstTrailingBit(vec3<u32>(u_input.d.x, 46537u, 4294967295u)) & vec3<u32>(u_input.d.x, u_input.c.x, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x), 29u)];
    global0 = select(!(false != any(vec2<bool>(true, true))), !(!all(vec4<bool>(true, true, true, true))), u_input.c.x != u_input.c.x);
    var var_1 = u_input.d.x;
    global3 = global2[_wgslsmith_index_u32(u_input.e.x, 15u)];
    let var_2 = -689f;
    let x = u_input.a;
    s_output = func_5(func_1(u_input.d.yxy), Struct_5(!(950f >= _wgslsmith_div_f32(var_2, -608f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2468f, var_2, var_2, -466f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, 1367f, -1424f, -442f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2, -534f, -449f, var_2)))))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -739f), Struct_3(abs(vec4<u32>(0u, 1u, u_input.e.x, 4294967295u)), func_2(), func_2(), Struct_1(u_input.a, vec2<i32>(global4[_wgslsmith_index_u32(1u, 29u)], u_input.a), u_input.b), u_input.e.x & 67209u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 109f, global2[_wgslsmith_index_u32(1u, 15u)]) * vec3<f32>(var_2, global2[_wgslsmith_index_u32(26704u, 15u)], var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], 375f, -882f)), true)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false))).d.x, Struct_2(Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(15355u, u_input.e.x, 9522u), 29u)], u_input.b.xx, _wgslsmith_div_vec4_i32(u_input.b, u_input.b)), global4[_wgslsmith_index_u32(~abs(87124u), 29u)], max(~0u, u_input.d.x), ~vec2<i32>(u_input.a, 32631i), func_2().a)), Struct_5(false | all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], var_2, -774f, 752f))))), -28124i, func_4(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 15u)]), Struct_3(u_input.d & vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 1u), func_4(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], Struct_3(u_input.d, Struct_2(Struct_1(2147483647i, u_input.b.xy, vec4<i32>(51705i, -6179i, -6002i, global4[_wgslsmith_index_u32(u_input.c.x, 29u)])), u_input.a, 44339u, u_input.b.yz, Struct_1(2147483647i, vec2<i32>(0i, u_input.b.x), u_input.b)), Struct_2(Struct_1(u_input.a, u_input.b.xz, vec4<i32>(-35738i, u_input.b.x, -2147483647i, u_input.a)), global4[_wgslsmith_index_u32(u_input.c.x, 29u)], u_input.e.x, vec2<i32>(global4[_wgslsmith_index_u32(u_input.c.x, 29u)], -2147483647i), Struct_1(global4[_wgslsmith_index_u32(1u, 29u)], u_input.b.yy, vec4<i32>(31696i, u_input.a, u_input.a, 0i))), Struct_1(2147483647i, vec2<i32>(-1i, -2147483647i), u_input.b), u_input.e.x), vec3<f32>(var_2, var_2, -137f), vec2<bool>(true, false)), func_2(), func_2().e, ~u_input.d.x), vec3<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 15u)], -123f)), var_2, _wgslsmith_div_f32(-807f, -1204f)), vec2<bool>(true, true))));
}

