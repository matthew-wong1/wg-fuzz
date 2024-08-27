struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_2;

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = vec2<bool>(global1.a, select(global1.b.x, !any(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.a)) | all(select(vec4<bool>(true, arg_1.a, true, false), vec4<bool>(false, true, arg_1.a, global1.b.x), false)), !global1.a));
    global0 = array<Struct_1, 14>();
    global1 = Struct_2(!(!arg_1.b.x), !vec4<bool>(~23406u != _wgslsmith_add_u32(global1.d.a.x, arg_0.a.x), select(any(vec3<bool>(var_0.x, arg_1.a, false)), select(global1.b.x, arg_1.a, var_0.x), arg_1.b.x), select(false, var_0.x, arg_1.a), true), -332f, arg_2, vec2<i32>(abs(23108i), -8099i) ^ max(arg_1.e, ~vec2<i32>(1i, 1i)));
    var var_1 = Struct_1(abs(global1.d.a), firstLeadingBit(~arg_2.a), vec3<f32>(-478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + -649f) - -256f)), 118f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(arg_1.c, global1.c), any(vec3<bool>(global1.a, arg_1.a, global1.b.x)))) - 686f) * _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.c.x))))));
    var var_2 = _wgslsmith_f_op_f32(-386f * -618f);
    return ((countOneBits(max(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, arg_1.e.x, arg_1.e.x))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, var_1.b.x, arg_1.d.b.x, arg_0.b.x), abs(vec4<u32>(0u, 4294967295u, 1u, 46110u)), vec4<u32>(arg_1.d.b.x, global1.d.b.x, u_input.b, global2.b.x)) % vec4<u32>(32u))) << (abs(firstLeadingBit(firstLeadingBit(vec4<u32>(var_1.a.x, 45149u, 22797u, 74883u)))) % vec4<u32>(32u))) << (~countOneBits(vec4<u32>(1u, global1.d.a.x, arg_1.d.b.x, var_1.b.x) << (vec4<u32>(1u, 0u, 4294967295u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = firstLeadingBit(max(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(2147483647i, global1.e.x, u_input.a)), arg_0.x, u_input.a, _wgslsmith_add_i32(_wgslsmith_sub_i32(19620i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.e.x, 4478i, global1.e.x), vec4<i32>(u_input.a, global1.e.x, u_input.a, global1.e.x)))), firstLeadingBit(abs(vec4<i32>(-24536i, 2147483647i, arg_0.x, global1.e.x))) & func_3(Struct_1(global2.b, vec3<u32>(global1.d.b.x, 1u, global2.b.x), vec3<f32>(-1000f, -341f, global1.c), arg_1.x), Struct_2(false, global1.b, 892f, Struct_1(global2.a, vec3<u32>(1u, global1.d.b.x, global2.b.x), global2.c, arg_1.x), global1.e), Struct_1(global1.d.a, vec3<u32>(global1.d.a.x, u_input.c, u_input.c), global1.d.c, 358f))));
    global1 = Struct_2(global1.a, select(global1.b, !global1.b, vec4<bool>(select(global2.b.x >= u_input.b, false, true), global2.d != _wgslsmith_f_op_f32(-global1.d.c.x), any(vec2<bool>(global1.a, false)) == global1.b.x, !(var_0.x <= var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(868f, 1807f))), global0[_wgslsmith_index_u32(global2.b.x, 14u)], max(select(abs(vec2<i32>(var_0.x, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_0.x), vec2<i32>(global1.e.x, 1872i), arg_0.yx), global1.d.c.x <= -527f), arg_0.zy) >> (select((global2.a.xz ^ vec2<u32>(4294967295u, 1u)) & global1.d.a.xz, vec2<u32>(u_input.b, ~global1.d.a.x), all(vec3<bool>(true, global1.a, true))) % vec2<u32>(32u)));
    global2 = global0[_wgslsmith_index_u32(0u, 14u)];
    global1 = Struct_2(all(global1.b), !global1.b, _wgslsmith_f_op_f32(-global1.c), Struct_1(select(~global1.d.a >> (~vec3<u32>(1u, global2.b.x, global2.b.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~global1.d.a, vec3<u32>(global2.b.x, 1u, global2.b.x)), !(!global1.b.zww)), ~(countOneBits(vec3<u32>(4294967295u, global2.a.x, u_input.c)) << (max(vec3<u32>(u_input.c, global1.d.b.x, u_input.b), vec3<u32>(26908u, 20199u, 56958u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, arg_1.x, arg_1.x) - global1.d.c)))), arg_1.x), func_3(global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(~u_input.c, global1.d.a.x), 23848u), 14u)], Struct_2(!select(global1.b.x, global1.b.x, false), global1.b, 322f, global0[_wgslsmith_index_u32(43091u << (~global2.b.x % 32u), 14u)], global1.e), Struct_1(abs(firstTrailingBit(vec3<u32>(1u, 4294967295u, 1u))), ~(vec3<u32>(4294967295u, global2.b.x, 4294967295u) ^ vec3<u32>(u_input.c, global2.a.x, global1.d.b.x)), global1.d.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(690f, global1.c))))).wx);
    let var_1 = global1.d.a.xy;
    return Struct_2(global1.a, vec4<bool>(true, false | (~global1.e.x <= _wgslsmith_mod_i32(global1.e.x, arg_0.x)), !(true && !global1.b.x), arg_1.x >= _wgslsmith_f_op_f32(global1.d.c.x * global2.c.x)), _wgslsmith_f_op_f32(-1f), global1.d, select(arg_0.yx, var_0.wx, select(select(!global1.b.zx, global1.b.zx, !global1.b.yz), !select(vec2<bool>(global1.b.x, global1.a), global1.b.zw, true), select(select(vec2<bool>(false, false), global1.b.ww, vec2<bool>(false, global1.b.x)), global1.b.wz, global1.b.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<i32> {
    let var_0 = arg_1;
    global1 = func_2(abs(abs(-vec3<i32>(18139i, arg_1.e.x, 1i))) & _wgslsmith_div_vec3_i32(abs(vec3<i32>(-13117i, var_0.e.x, var_0.e.x) << (global2.b % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.e.x, global1.e.x, -31072i), max(vec3<i32>(0i, -1238i, global1.e.x), vec3<i32>(global1.e.x, 2147483647i, -52756i)))), vec4<f32>(var_0.d.d, global2.c.x, global2.c.x, 2137f));
    var var_1 = global1.b;
    var var_2 = var_0;
    var_2 = var_0;
    return vec4<i32>(-global1.e.x, 1i, ~u_input.a << (u_input.b % 32u), abs(abs(var_2.e.x) & 0i));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = ~func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(step(578f, global2.c.x))))), func_2(vec3<i32>(~8977i, 2147483647i >> (u_input.c % 32u), max(u_input.a, 2147483647i)), arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(411f, arg_1.x) + vec2<f32>(arg_1.x, global2.d)))));
    let var_1 = countOneBits(abs(93143u));
    global2 = func_2(~abs(var_0.wzy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(210f, 625f), global2.d, -1539f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.d.d))))))).d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global1.c, global2.d)))) * global1.c) + func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.e.x, global1.e.x, u_input.a), max(var_0.zzw, vec3<i32>(u_input.a, 0i, 61390i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) - _wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, global2.d, 525f, global2.d), arg_1))).d.d) + -1000f);
    global0 = array<Struct_1, 14>();
    return Struct_2(false, global1.b, var_2, Struct_1(reverseBits(~(~global1.d.b)), ~(~vec3<u32>(947u, arg_0.x, global2.a.x)) >> (vec3<u32>(u_input.b, max(73579u, 4294967295u), 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1183f, global2.d) * vec3<f32>(var_2, global1.c, global1.d.c.x)) + _wgslsmith_f_op_vec3_f32(-global2.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d.c - vec3<f32>(908f, arg_1.x, global2.d)) * vec3<f32>(503f, 1087f, arg_1.x))), _wgslsmith_f_op_f32(-353f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global2.d, -1520f)), -1223f)))), _wgslsmith_sub_vec2_i32(~global1.e, reverseBits(vec2<i32>(-global1.e.x, -864i))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: vec2<u32>) -> Struct_1 {
    global1 = func_1(global2.a, vec4<f32>(arg_0.d.c.x, -1960f, global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.d.c.x)) - -1454f)));
    let var_0 = Struct_2(any(select(arg_0.b.zx, func_1(vec3<u32>(15145u, u_input.c, 28902u), vec4<f32>(arg_0.d.c.x, -480f, arg_0.c, -2093f)).b.yw, !vec2<bool>(false, arg_0.b.x))), func_1(~(~vec3<u32>(4294967295u, arg_1.x, 4035u)), _wgslsmith_f_op_vec4_f32(-arg_2)).b, _wgslsmith_f_op_f32(f32(-1f) * -159f), arg_0.d, arg_0.e);
    global1 = func_1(vec3<u32>(_wgslsmith_mod_u32(43155u, 71324u << (u_input.b % 32u)), global2.a.x, firstLeadingBit(64621u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1175f, global2.d, _wgslsmith_f_op_f32(min(-587f, 171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(800f - -147f))))));
    var var_1 = _wgslsmith_mult_vec2_i32(~arg_0.e, ~(~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.e, vec2<i32>(arg_0.e.x, -311i)), ~vec2<i32>(21008i, var_0.e.x))));
    var var_2 = select(global1.a, true, func_2(vec3<i32>(2147483647i & ~global1.e.x, 0i, 1i), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, -378f, global1.c, global2.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 629f, arg_0.d.d, -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -206f, -185f, 756f), vec4<f32>(-1129f, 756f, arg_2.x, 1726f)))).b.x);
    return func_2(vec3<i32>(-(u_input.a ^ select(u_input.a, 1i, false)), -2147483647i, global1.e.x), arg_2).d;
}

fn func_6(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    global1 = func_2(_wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_1, func_1(func_5(Struct_2(false, arg_0, -2259f, Struct_1(vec3<u32>(global2.b.x, u_input.b, global2.a.x), global1.d.a, vec3<f32>(638f, arg_2.d, -355f), global1.c), global1.e), vec4<u32>(31158u, 9667u, 1u, global2.a.x), vec4<f32>(1788f, 1008f, arg_2.d, -1916f), arg_2.b.xz).b, _wgslsmith_f_op_vec4_f32(vec4<f32>(319f, 1027f, global2.d, global1.d.c.x) * vec4<f32>(arg_2.d, global1.c, 179f, 793f))).e.x), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(global1.e.x, u_input.a, u_input.a)), vec3<i32>(u_input.a, -2661i, 16659i) & vec3<i32>(u_input.a, global1.e.x, 0i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, -2147483647i, -2147483647i), vec3<i32>(-2509i, global1.e.x, 21078i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.c.x, -740f, arg_2.d, global1.d.d))))))));
    global0 = array<Struct_1, 14>();
    var var_0 = vec4<i32>(-1i) * -select(abs(vec4<i32>(u_input.a, 76737i, arg_1, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(arg_1, 40902i, global1.e.x, 1i), !vec4<bool>(arg_0.x, arg_0.x, false, global1.a));
    var var_1 = arg_2.d;
    var_0 = ~(vec4<i32>(-arg_1, _wgslsmith_mod_i32(u_input.a, -1408i), arg_1, 7527i) & reverseBits(select(vec4<i32>(38999i, arg_1, global1.e.x, arg_1), vec4<i32>(var_0.x, 2147483647i, u_input.a, 2147483647i), global1.b.x))) | _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a >> (arg_2.a.x % 32u), -1i, func_3(Struct_1(vec3<u32>(u_input.b, 34240u, global1.d.a.x), vec3<u32>(1578u, 1u, 47247u), global2.c, global2.d), Struct_2(false, global1.b, -205f, Struct_1(arg_2.b, vec3<u32>(u_input.c, 4294967295u, 4611u), global1.d.c, arg_2.c.x), vec2<i32>(arg_1, -2147483647i)), Struct_1(arg_2.a, arg_2.a, global1.d.c, arg_2.c.x)).x, 1i), vec4<i32>(_wgslsmith_clamp_i32(func_3(global0[_wgslsmith_index_u32(global2.a.x, 14u)], Struct_2(false, global1.b, 1000f, global1.d, var_0.wy), global0[_wgslsmith_index_u32(global2.a.x, 14u)]).x, _wgslsmith_sub_i32(-4520i, -3793i), _wgslsmith_mod_i32(-2147483647i, -160i)), -2147483647i, var_0.x << (~u_input.b % 32u), firstTrailingBit(-25619i)));
    return vec3<u32>(45688u, firstLeadingBit(arg_2.a.x & 0u) ^ ~global2.b.x, 0u) ^ global1.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global2.b.x, 9388u, 1u)), ~_wgslsmith_add_vec3_u32(firstLeadingBit(global1.d.a), vec3<u32>(0u, u_input.b, 522u) >> (vec3<u32>(global1.d.b.x, 98752u, 10350u) % vec3<u32>(32u)))), func_6(select(!(!global1.b), global1.b, u_input.a <= u_input.a), _wgslsmith_sub_i32(-29105i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -20148i, global1.e.x, u_input.a), vec4<i32>(-17399i, global1.e.x, u_input.a, global1.e.x))), func_5(func_1(vec3<u32>(11937u, global1.d.b.x, global2.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1115f, global2.c.x, global1.c, -136f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, global2.b.x, global2.b.x), vec4<u32>(u_input.c, global2.b.x, global1.d.a.x, global2.b.x), vec4<u32>(global1.d.a.x, u_input.c, 0u, global2.a.x)) << (~vec4<u32>(u_input.b, u_input.c, global2.b.x, u_input.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.d, global1.c, 618f, -404f))), func_2(-vec3<i32>(global1.e.x, 2147483647i, global1.e.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(737f, -316f, global1.c, global2.c.x), vec4<f32>(-1994f, global1.d.c.x, 872f, global2.d), false))).d.a.zx)));
    global1 = func_2(vec3<i32>(14335i, 0i, (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, global1.e.x), vec3<i32>(global1.e.x, global1.e.x, global1.e.x)) >> (~var_0.x % 32u)) << (_wgslsmith_div_u32(34672u << (u_input.c % 32u), 9463u << (var_0.x % 32u)) % 32u)), vec4<f32>(global1.d.d, _wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1246f + _wgslsmith_f_op_f32(trunc(global1.d.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x))));
    global0 = array<Struct_1, 14>();
    var var_1 = vec3<u32>(1u, countOneBits(func_5(func_2(vec3<i32>(18884i, 0i, global1.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-224f, -925f, global2.c.x, -654f))), vec4<u32>(_wgslsmith_mult_u32(u_input.b, 19559u), func_2(vec3<i32>(global1.e.x, 9861i, global1.e.x), vec4<f32>(global2.c.x, -1672f, 452f, -234f)).d.a.x, 17338u, u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 977f, global2.d, global2.d) * vec4<f32>(925f, global1.c, -621f, -1647f)), vec2<u32>(global1.d.b.x, var_0.x ^ 21846u)).a.x), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global1.d.a.x, 9483u, 8752u, 0u), vec4<u32>(0u, 0u, u_input.c, 804u)) << (vec4<u32>(global1.d.b.x, ~1u, _wgslsmith_mult_u32(global1.d.a.x, 16u), ~global2.a.x) % vec4<u32>(32u)), ~(~select(vec4<u32>(0u, 71762u, 32407u, global1.d.b.x), vec4<u32>(var_0.x, var_0.x, 28118u, global1.d.b.x), false))));
    global2 = Struct_1(abs(func_1(global1.d.b & (vec3<u32>(global2.b.x, u_input.b, 4294967295u) << (vec3<u32>(u_input.b, 69697u, global2.b.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, global1.c, global2.c.x, global2.d)))).d.b), global2.a, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1912f))))), global1.c, _wgslsmith_f_op_f32(-global2.d)), global2.d);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.d.d, -1016f, -1419f))), global2.c)) * _wgslsmith_f_op_vec3_f32(sign(global1.d.c))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-815f, global1.c, -185f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-firstTrailingBit(-vec4<i32>(global1.e.x, -1i, -1i, -37461i)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a), vec3<i32>(-1i, 34884i, 23939i)), ~global1.e.x, firstTrailingBit(-1475i)) | (~vec4<i32>(10868i, 45273i, -2147483647i, -2147483647i) & min(vec4<i32>(2147483647i, global1.e.x, u_input.a, 2147483647i), vec4<i32>(global1.e.x, u_input.a, u_input.a, global1.e.x)))), 1i, abs(max(u_input.a, -global1.e.x) | ~u_input.a));
}

