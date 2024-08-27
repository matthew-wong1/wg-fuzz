struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_2 = Struct_2(vec3<bool>(true, false, true), vec4<i32>(0i, 33926i, 33478i, 1i), vec3<i32>(0i, 1i, i32(-2147483648)), Struct_1(1u), Struct_1(2933u));

var<private> global3: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(1054u, 4294967295u, 35109u), vec3<u32>(1u, 1u, 90801u), vec3<u32>(6763u, 44522u, 4294967295u), vec3<u32>(17688u, 4294967295u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(34730u, 22627u, 0u), vec3<u32>(50619u, 62450u, 34277u), vec3<u32>(4294967295u, 10343u, 48365u), vec3<u32>(0u, 39704u, 53837u), vec3<u32>(20692u, 82755u, 0u), vec3<u32>(4205u, 29449u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(42887u, 55446u, 12890u), vec3<u32>(21301u, 4294967295u, 1930u), vec3<u32>(48592u, 0u, 100313u), vec3<u32>(58858u, 4294967295u, 4294967295u), vec3<u32>(0u, 34653u, 1u), vec3<u32>(4294967295u, 0u, 14845u), vec3<u32>(18153u, 1u, 45980u), vec3<u32>(23317u, 77950u, 52922u), vec3<u32>(12170u, 2068u, 12268u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 44450u, 4294967295u), vec3<u32>(1u, 35238u, 4294967295u), vec3<u32>(1u, 6633u, 1u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = global2.a.x;
    let var_1 = Struct_4(-global2.b.zzw);
    var var_2 = Struct_2(vec3<bool>(any(global2.a.yx), global2.a.x, true), global2.b, var_1.a, global2.d, Struct_1(1u));
    global1 = array<Struct_1, 8>();
    return var_2.c.x;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = 8442i;
    global2 = Struct_2(arg_1, _wgslsmith_mult_vec4_i32(global2.b, vec4<i32>(~var_1, var_1, -func_3(), func_3())), vec3<i32>(-1i & (i32(-1i) * -var_1), -12474i, 1i), global2.e, global2.d);
    var var_2 = Struct_4(global2.c);
    global0 = array<Struct_1, 27>();
    return Struct_2(select(select(global2.a, arg_1, select(global2.a, !vec3<bool>(false, global2.a.x, false), !global2.a.x)), select(arg_1, select(select(global2.a, global2.a, global2.a.x), vec3<bool>(arg_1.x, true, true), !arg_1.x), !vec3<bool>(arg_1.x, true, global2.a.x)), !arg_1.x), _wgslsmith_div_vec4_i32(global2.b, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.c.x, global2.b.x, global2.b.x, var_2.a.x), vec4<i32>(var_2.a.x, global2.b.x, -17068i, var_1), vec4<i32>(77703i, global2.c.x, var_2.a.x, var_2.a.x)), vec4<i32>(14750i, 0i, global2.c.x, global2.b.x)), ~(~global2.b))), global2.c, Struct_1(~(~(~arg_3.x))), Struct_1(4294967295u));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = arg_0.c.x;
    var_0 = 2147483647i ^ global2.c.x;
    var_0 = _wgslsmith_dot_vec4_i32(global2.b, arg_0.b);
    global3 = array<vec3<u32>, 29>();
    var var_1 = Struct_4(-vec3<i32>(_wgslsmith_mult_i32(global2.b.x, 2147483647i), arg_0.b.x, -1i));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f))))), -1105f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-2192f)))))));
}

fn func_5(arg_0: vec3<f32>) -> Struct_4 {
    global1 = array<Struct_1, 8>();
    let var_0 = ~select(vec4<u32>(global2.d.a, ~global2.e.a << (32125u % 32u), 0u, 1u), (min(vec4<u32>(u_input.b, u_input.a, global2.d.a, global2.e.a), vec4<u32>(0u, global2.e.a, global2.e.a, 9011u)) >> (abs(vec4<u32>(96854u, global2.e.a, 72292u, global2.e.a)) % vec4<u32>(32u))) << (vec4<u32>(27891u ^ u_input.b, ~global2.e.a, 1u, max(u_input.b, global2.e.a)) % vec4<u32>(32u)), func_2(~u_input.a, vec3<bool>(true, global2.a.x, false & global2.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1255f, arg_0.x, 354f), arg_0, global2.a.x))), firstTrailingBit(vec2<u32>(24781u, 3375u) >> (vec2<u32>(41604u, global2.e.a) % vec2<u32>(32u)))).a.x);
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global2.c.xx >> ((var_0.zz ^ ~vec2<u32>(2671u, 4294967295u)) % vec2<u32>(32u)), -abs(~global2.c.zx)), firstLeadingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(1i, -1i), global2.c.xz)));
    var var_2 = Struct_3(func_2(u_input.b, !(!select(global2.a, global2.a, global2.a)), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(-581f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(4294967295u, global2.e.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(global2.d.a, global2.e.a)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), var_0.wx))));
    let var_3 = global1[_wgslsmith_index_u32(reverseBits(4294967295u), 8u)];
    return Struct_4(_wgslsmith_clamp_vec3_i32(abs(global2.c), ~countOneBits(vec3<i32>(2147483647i, 24372i, var_2.a.c.x)), ~global2.b.zyx | var_2.a.b.zyy));
}

fn func_1(arg_0: vec4<bool>) -> vec3<u32> {
    var var_0 = true;
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-723f, 245f, -565f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(234f, 178f, -1835f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(472f, -902f, 1394f) * vec3<f32>(-231f, -1824f, -531f)))) * _wgslsmith_f_op_vec3_f32(func_4(func_2(39481u, arg_0.wwz, vec3<f32>(-124f, 1553f, -654f), vec2<u32>(1u, u_input.a) ^ vec2<u32>(global2.d.a, u_input.c)), any(vec2<bool>(false, global2.a.x)), global2.e))));
    var var_2 = false;
    var var_3 = -_wgslsmith_div_i32(abs(1i), var_1.a.x);
    let var_4 = Struct_3(Struct_2(!func_2(min(global2.e.a, u_input.b), func_2(94989u, global2.a, vec3<f32>(1000f, -661f, 949f), vec2<u32>(19776u, u_input.a)).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-938f, 154f, 1059f)), vec2<u32>(4294967295u, 1u) << (vec2<u32>(global2.d.a, 22807u) % vec2<u32>(32u))).a, vec4<i32>(i32(-1i) * -var_1.a.x, func_3(), global2.c.x | global2.c.x, -(i32(-1i) * -1i)), global2.c, global1[_wgslsmith_index_u32(4294967295u, 8u)], func_2(~_wgslsmith_div_u32(global2.d.a, 55961u), global2.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1490f, 395f, -180f) + vec3<f32>(794f, 328f, 308f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-766f, 488f, -250f))), firstLeadingBit(firstLeadingBit(vec2<u32>(4294967295u, global2.d.a)))).d));
    return vec3<u32>(_wgslsmith_mult_u32(u_input.a, abs(global2.e.a)), ~max(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(var_4.a.e.a, 29u)], global3[_wgslsmith_index_u32(var_4.a.e.a, 29u)]) >> (global2.e.a % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a.d.a, global2.d.a), vec2<u32>(global2.d.a, 30316u))), 55004u);
}

fn func_6(arg_0: vec3<u32>, arg_1: i32, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = vec4<f32>(945f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -889f)), -875f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-706f + -1031f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-298f + -462f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1010f)))), 1712f);
    let var_1 = var_0.x;
    let var_2 = vec4<u32>(arg_0.x, ~45790u, reverseBits(countOneBits(~(10912u & arg_0.x))), countOneBits(arg_0.x & 1u));
    var var_3 = func_2(var_2.x, !(!(!global2.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), var_0.x, -1309f), firstLeadingBit(vec2<u32>(arg_3 & arg_2, _wgslsmith_mult_u32(4294967295u, u_input.c)) ^ ~reverseBits(vec2<u32>(1u, 49822u))));
    let var_4 = Struct_3(func_2(~abs(4294967295u), vec3<bool>(false, var_3.b.x >= -arg_1, func_2(~u_input.c, vec3<bool>(false, false, var_3.a.x), _wgslsmith_f_op_vec3_f32(min(var_0.zyw, vec3<f32>(563f, 1726f, 1000f))), var_2.xw).a.x), var_0.xzy, arg_0.zx));
    return var_4.a;
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_4 {
    var var_0 = arg_0;
    let var_1 = -218f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-471f, -989f)), _wgslsmith_f_op_f32(abs(1108f)))))));
    global3 = array<vec3<u32>, 29>();
    var var_2 = Struct_3(Struct_2(!vec3<bool>(arg_0.a.x, arg_0.a.x | global2.a.x, global2.a.x), -vec4<i32>(17767i, var_0.c.x, var_0.b.x, arg_0.c.x) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 1u, var_0.d.a, 53036u), vec4<u32>(45244u, u_input.b, arg_2.a, arg_3.a)) % vec4<u32>(32u)), arg_0.b.wxz, Struct_1(min(0u, _wgslsmith_div_u32(13622u, 4294967295u))), func_2(1u, vec3<bool>(!global2.a.x, all(var_0.a), any(vec4<bool>(var_1, global2.a.x, var_0.a.x, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-396f, 1053f, 746f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-886f, -702f, 288f)))), max(vec2<u32>(0u, 40023u), vec2<u32>(arg_3.a, arg_2.a))).d));
    global2 = arg_0;
    return Struct_4(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.c.x << (1u % 32u), ~0i, 0i), vec3<i32>(~arg_0.c.x, ~global2.c.x, 0i)), vec3<i32>(abs(~var_2.a.b.x), global2.c.x, countOneBits(-global2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_1(!select(vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x), vec4<bool>(global2.a.x, true, global2.a.x, false), vec4<bool>(true, true, false, true))), ~(global2.b.x ^ -43003i), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 48739u, u_input.c, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global2.e.a, 6163u, u_input.a), vec4<u32>(u_input.b, 1u, 51545u, global2.d.a))), ~(~(~1u))), 0u | abs(func_2(~global2.e.a, vec3<bool>(true, global2.a.x, true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1769f, 491f, 604f), vec3<f32>(108f, 1000f, 1114f))), firstLeadingBit(vec2<u32>(133u, u_input.a))).e.a), global0[_wgslsmith_index_u32(3032u, 27u)], Struct_1(~firstTrailingBit(u_input.c << (global2.d.a % 32u))));
    var var_1 = Struct_3(func_2(~(~1u), vec3<bool>(true & global2.a.x, global2.a.x, ~4294967295u > _wgslsmith_clamp_u32(u_input.c, u_input.c, 46121u)), vec3<f32>(1f, 1f, 1f), firstLeadingBit(~(~vec2<u32>(1u, u_input.b)))));
    var var_2 = vec3<u32>(func_1(select(select(select(vec4<bool>(var_1.a.a.x, false, var_1.a.a.x, true), vec4<bool>(false, false, global2.a.x, var_1.a.a.x), var_1.a.a.x), vec4<bool>(var_1.a.a.x, false, var_1.a.a.x, true), !vec4<bool>(false, true, var_1.a.a.x, global2.a.x)), select(select(vec4<bool>(var_1.a.a.x, false, var_1.a.a.x, var_1.a.a.x), vec4<bool>(var_1.a.a.x, global2.a.x, var_1.a.a.x, true), true), !vec4<bool>(var_1.a.a.x, false, true, global2.a.x), false), !select(vec4<bool>(global2.a.x, global2.a.x, var_1.a.a.x, var_1.a.a.x), vec4<bool>(var_1.a.a.x, true, false, var_1.a.a.x), false))).x, ~u_input.a, func_6(~abs(global3[_wgslsmith_index_u32(var_1.a.d.a, 29u)] ^ vec3<u32>(39160u, u_input.c, var_1.a.d.a)), -6385i, countOneBits(~(~81357u)), 4294967295u).e.a);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-424f - 901f), _wgslsmith_f_op_f32(-771f + 434f)) + 1000f))), _wgslsmith_f_op_f32(trunc(-1473f)));
    let var_4 = true;
    let var_5 = Struct_1(0u);
    var var_6 = func_5(_wgslsmith_div_vec3_f32(vec3<f32>(-407f, 1380f, var_3.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.x, var_3.x, -564f)))));
    var var_7 = 1i;
    var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a.d.a, 10799u, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), var_2.zz), ~1u << (select(var_5.a, 36859u, var_4) % 32u), ~func_1(vec4<bool>(var_4, false, var_1.a.a.x, false)).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(var_2.x << (func_1(vec4<bool>(false, var_1.a.a.x, false, false)).x % 32u)), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11822u, 29299u, 34995u), vec4<u32>(0u, 115405u, var_5.a, 62144u)), ~var_5.a)), ~(~0u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(func_6(global3[_wgslsmith_index_u32(0u, 29u)] >> (global3[_wgslsmith_index_u32(global2.d.a, 29u)] % vec3<u32>(32u)), ~global2.c.x, _wgslsmith_div_u32(26209u, var_1.a.e.a), u_input.c), global2.a.x, Struct_1(global2.d.a))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 38816u, func_2(1u, vec3<bool>(true, true, var_1.a.a.x), vec3<f32>(var_3.x, var_3.x, var_3.x), vec2<u32>(var_5.a, var_2.x)).d.a, var_1.a.d.a << (63209u % 32u)), ~(~vec4<u32>(0u, var_2.x, u_input.b, var_1.a.e.a))));
}

