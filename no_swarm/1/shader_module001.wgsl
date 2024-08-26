struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 16>;

var<private> global2: Struct_1 = Struct_1(76843u);

var<private> global3: f32 = -469f;

var<private> global4: Struct_1 = Struct_1(14238u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = arg_2;
    let var_1 = -298f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.c + arg_1.c)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f) - arg_3), 108f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, _wgslsmith_f_op_f32(-arg_3))) * vec2<f32>(arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 + 870f), _wgslsmith_f_op_f32(round(178f))))));
    let var_3 = vec2<bool>(any(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true))), false);
    let var_4 = Struct_1(_wgslsmith_clamp_u32(var_0.a, 0u, abs(4294967295u)));
    return !(var_3.x || true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>) -> u32 {
    var var_0 = arg_0.x;
    var var_1 = 27336i ^ _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstLeadingBit(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 14543i) | vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(-2147483647i, 215i))), _wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(u_input.b, u_input.b, u_input.b)), -(~vec3<i32>(-5005i, -1i, 1i))));
    var var_2 = i32(-1i) * -2750i;
    var var_3 = min(~vec4<u32>(~min(0u, 98137u), select(_wgslsmith_div_u32(u_input.a, u_input.a), firstTrailingBit(20095u), all(vec2<bool>(false, arg_0.x))), ~arg_1.x, ~(global2.a >> (29780u % 32u))), _wgslsmith_div_vec4_u32(~vec4<u32>(28123u, 28347u, 1u, global2.a), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a, 4294967295u, global4.a, global2.a)), abs(vec4<u32>(1u, 0u, 24028u, 1u)), ~vec4<u32>(6634u, 16680u, global4.a, 4294967295u))) >> (min((vec4<u32>(0u, 620u, arg_1.x, global2.a) ^ vec4<u32>(global2.a, 27411u, global0.x, global4.a)) | vec4<u32>(global0.x, 4294967295u, 12965u, 15906u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 783u, 1u, u_input.a), vec4<u32>(global4.a, 49072u, global0.x, 1u), vec4<u32>(global2.a, u_input.a, 744u, global0.x))) % vec4<u32>(32u)));
    var var_4 = vec4<i32>(abs(u_input.b & _wgslsmith_mult_i32(~(-66187i), u_input.b)), min(6851i, -countOneBits(u_input.b)), -1i, select(u_input.b, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-u_input.b, -u_input.b, -2147483647i), max(0i, 1i)), any(!arg_0)));
    return ~select(4294967295u & (_wgslsmith_div_u32(45816u, global0.x) >> (var_3.x % 32u)), 4294967295u, false);
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<bool>(true, 1i <= u_input.b, false);
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec4_i32((select(vec4<i32>(-1i, 2147483647i, -17033i, u_input.b), vec4<i32>(u_input.b, -1121i, u_input.b, u_input.b), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) ^ vec4<i32>(u_input.b, u_input.b, 9078i, u_input.b)) ^ firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, -1i, u_input.b), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b))), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -21940i, -2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(21788u, global2.a, 0u, 8635u), countOneBits(vec4<u32>(48876u, 4294967295u, u_input.a, 1u))) % vec4<u32>(32u))));
    global4 = Struct_1(1u);
    var var_2 = 327f;
    global0 = firstTrailingBit(_wgslsmith_add_vec2_u32(select(vec2<u32>(global0.x, u_input.a), ~vec2<u32>(1u, 1u), vec2<bool>(!var_0.x, var_0.x)), vec2<u32>((global0.x << (u_input.a % 32u)) & ~global0.x, ~(~0u))));
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_4(vec3<bool>(var_0.x, func_3(vec3<u32>(25610u, global4.a, 4294967295u), global1[_wgslsmith_index_u32(4390u, 16u)], Struct_1(1u), 226f), var_0.x), vec2<u32>(global0.x, 4294967295u << (global4.a % 32u))) & _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, global0.x) << (vec2<u32>(u_input.a, global2.a) % vec2<u32>(32u))), ~abs(vec2<u32>(0u, 35422u))), global2.a), 16u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec3_i32(max(~_wgslsmith_mod_vec3_i32(vec3<i32>(-38653i, -6236i, arg_3.d), -vec3<i32>(arg_1.d, arg_0.d, 29021i)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-26966i, -6078i, arg_0.d), vec3<i32>(arg_0.d, arg_0.d, arg_2.d)), vec3<i32>(arg_3.d, -21107i ^ arg_2.d, 6494i))), vec3<i32>(arg_1.d, max(_wgslsmith_div_i32(select(-1i, 18180i, false), -arg_3.d), -u_input.b & (-1i & arg_1.d)), arg_1.d));
    global0 = select(firstTrailingBit(_wgslsmith_div_vec2_u32(select(vec2<u32>(81654u, arg_3.a.a), firstTrailingBit(vec2<u32>(4294967295u, arg_3.a.a)), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(global4.a, global0.x), vec2<u32>(arg_3.a.a, 23349u) ^ vec2<u32>(4294967295u, arg_3.a.a), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 23451u), vec2<u32>(arg_3.a.a, global0.x))))), vec2<u32>(firstTrailingBit(global2.a ^ _wgslsmith_mod_u32(arg_0.a.a, 95136u)), ~44504u), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), func_3(vec3<u32>(arg_2.a.a, global0.x, global0.x), Struct_2(arg_1.a, arg_0.b, vec2<f32>(arg_1.c.x, -289f), 2147483647i), arg_2.a, arg_2.b)), false), vec2<bool>(abs(arg_1.d) <= -18166i, true), vec2<bool>(any(vec2<bool>(true, true)), var_0.x <= -u_input.b)));
    var var_1 = 128f;
    global1 = array<Struct_2, 16>();
    global0 = select(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(0u), arg_0.a.a), firstTrailingBit(~max(vec2<u32>(0u, arg_2.a.a), vec2<u32>(20668u, 13937u))), ~(~(~vec2<u32>(4294967295u, 17690u)))), vec2<u32>(func_4(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), false), ~vec2<u32>(arg_3.a.a, 0u)), global2.a), any(select(vec2<bool>(func_3(vec3<u32>(56375u, 4294967295u, 1u), arg_1, Struct_1(arg_0.a.a), arg_0.b), any(vec4<bool>(true, true, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    return Struct_2(arg_0.a, _wgslsmith_f_op_f32(arg_2.b + -389f), arg_2.c, _wgslsmith_add_i32(~arg_0.d, ~(-1i)));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    var var_0 = ~_wgslsmith_div_i32(countOneBits(arg_0.x), 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(select(-418f, arg_2.c.x, any(vec4<bool>(false, false, arg_3, false))))), _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_div_f32(arg_2.c.x, -392f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), arg_2.c.x) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + _wgslsmith_f_op_f32(arg_2.c.x + 1282f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(381f * -359f) - arg_2.b)), arg_2.b, -2084f));
    var var_2 = func_2().a;
    var var_3 = ~_wgslsmith_mod_vec3_u32(select(abs(~arg_1.wyw), vec3<u32>(1u, ~0u, func_5(Struct_2(arg_2.a, var_1.x, var_1.wz, u_input.b), arg_2, Struct_2(Struct_1(1u), 475f, vec2<f32>(arg_2.c.x, arg_2.c.x), -767i), Struct_2(arg_2.a, -1000f, vec2<f32>(1000f, var_1.x), arg_2.d)).a.a), arg_3), arg_1.xww);
    var_2 = arg_2.a;
    return !vec3<bool>(true, true, arg_3);
}

fn func_1() -> Struct_1 {
    let var_0 = 1u;
    let var_1 = all(!func_6(max(_wgslsmith_mod_vec2_i32(vec2<i32>(9950i, u_input.b), vec2<i32>(u_input.b, -48790i)), firstLeadingBit(vec2<i32>(u_input.b, -17937i))), vec4<u32>(global2.a, countOneBits(4294967295u), _wgslsmith_sub_u32(global2.a, var_0), 1u), func_5(func_2(), Struct_2(Struct_1(1u), -2935f, vec2<f32>(-388f, 922f), u_input.b), func_2(), func_2()), false));
    let var_2 = ~(~vec4<u32>(21780u, 0u, u_input.a, 4294967295u) << (vec4<u32>(_wgslsmith_clamp_u32(global0.x, var_0, 43441u), _wgslsmith_div_u32(u_input.a, 65029u), 73859u, ~global0.x) % vec4<u32>(32u))) | ~(~(vec4<u32>(4294967295u, global4.a, u_input.a, 4294967295u) | vec4<u32>(u_input.a, 19910u, 4294967295u, var_0)) << (min(abs(vec4<u32>(var_0, 0u, 4294967295u, global2.a)), vec4<u32>(10191u, global0.x, u_input.a, global4.a) | vec4<u32>(var_0, var_0, 38946u, u_input.a)) % vec4<u32>(32u)));
    var var_3 = vec2<f32>(1f, _wgslsmith_f_op_f32(floor(1374f)));
    let var_4 = Struct_2(Struct_1(36864u), _wgslsmith_f_op_f32(max(255f, _wgslsmith_f_op_f32(var_3.x - var_3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 596f)) + vec2<f32>(var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(213f - -233f), 1348f)))), u_input.b);
    return func_2().a;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_1.a.a);
    let var_1 = var_0.a;
    var var_2 = func_2();
    var var_3 = global1[_wgslsmith_index_u32(~func_4(vec3<bool>(true, true, true), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), firstTrailingBit(vec2<u32>(15539u, global2.a)))), 16u)];
    var var_4 = func_5(func_2(), func_5(arg_1, Struct_2(Struct_1(~global0.x), func_2().c.x, _wgslsmith_f_op_vec2_f32(-arg_1.c), 7948i), Struct_2(Struct_1(~arg_0.a), -853f, vec2<f32>(_wgslsmith_f_op_f32(abs(815f)), _wgslsmith_f_op_f32(round(arg_1.c.x))), ~(~2147483647i)), Struct_2(func_5(func_5(global1[_wgslsmith_index_u32(10648u, 16u)], Struct_2(var_0, arg_1.c.x, var_3.c, -66434i), Struct_2(Struct_1(arg_1.a.a), var_3.b, var_3.c, 1i), Struct_2(Struct_1(global0.x), 968f, var_3.c, 1i)), Struct_2(var_2.a, var_3.c.x, vec2<f32>(var_3.c.x, var_3.c.x), 30279i), func_2(), func_5(Struct_2(Struct_1(32076u), var_3.b, var_2.c, u_input.b), arg_1, arg_1, Struct_2(var_0, 280f, var_3.c, u_input.b))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - -679f) + _wgslsmith_f_op_f32(min(var_3.c.x, -344f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.c)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.b, var_2.c.x)))), arg_2)), arg_1, Struct_2(func_2().a, 1276f, arg_1.c, -43282i));
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(func_7(func_1(), func_5(global1[_wgslsmith_index_u32(16975u, 16u)], global1[_wgslsmith_index_u32(55907u, 16u)], Struct_2(Struct_1(25346u), -1382f, vec2<f32>(1661f, 341f), -8868i), Struct_2(Struct_1(31872u), 582f, vec2<f32>(-881f, -229f), 1i)), 2147483647i, Struct_1(global0.x)) & (~u_input.a | ~0u)));
    global3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f) * _wgslsmith_f_op_f32(840f + 790f))))));
    global2 = func_5(Struct_2(var_0, 1000f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-673f - 1468f), _wgslsmith_f_op_f32(247f + 1792f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-701f, -178f))), u_input.b), func_2(), global1[_wgslsmith_index_u32(global2.a << (~var_0.a % 32u), 16u)], global1[_wgslsmith_index_u32(0u, 16u)]).a;
    global3 = func_2().b;
    var var_1 = Struct_2(var_0, func_2().b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -194f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-493f, -357f)))) + vec2<f32>(-875f, 1983f)), -2147483647i);
    var var_2 = 27143u;
    var_2 = ~22411u;
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(~firstLeadingBit(firstTrailingBit(var_1.d)), _wgslsmith_mult_i32(countOneBits(var_1.d), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.b, 1i)))), reverseBits(var_1.d), ~0i), ~max(max(min(vec4<i32>(u_input.b, -2147483647i, -2147483647i, 0i), vec4<i32>(u_input.b, -15165i, u_input.b, u_input.b)), vec4<i32>(u_input.b, 0i, u_input.b, var_1.d)), ~min(vec4<i32>(var_1.d, -20225i, 0i, 5228i), vec4<i32>(u_input.b, -1i, 16579i, -62516i))));
    var_1 = Struct_2(func_5(func_2(), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global0.x, 0u), global4.a), 16u)], Struct_2(var_1.a, -876f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.c.x)), abs(7443i)), Struct_2(var_1.a, var_1.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) + _wgslsmith_f_op_vec2_f32(step(var_1.c, var_1.c))), -u_input.b)).a, var_1.c.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(955f, 642f)) * var_1.c), vec2<bool>(true, true))), var_1.c), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(8108u, firstLeadingBit(~u_input.a) ^ ~countOneBits(~global4.a), firstLeadingBit(-reverseBits(_wgslsmith_mod_vec4_i32(var_3, var_3))), var_3.x);
}

