struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(56033u, 1u, 0u, 58846u), 320f);

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<Struct_4, 24>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(f32(-1f) * -1478f)), global1[_wgslsmith_index_u32(countOneBits(arg_0), 6u)], (7654u >= _wgslsmith_mult_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, 4294967295u, arg_0))) || !(_wgslsmith_mult_u32(0u, 4294967295u) < u_input.a), (vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i)), 42753i, 1i) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global0.a, global0.a), vec4<u32>(u_input.a, 0u, 4294967295u, arg_0)) % vec4<u32>(32u))) ^ ~u_input.b, ~8351u);
    var var_1 = min(0u, abs(~global0.a.x) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.b.a.x, arg_0), vec3<u32>(arg_0, u_input.a, 75168u)) % 32u));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) * _wgslsmith_f_op_f32(f32(-1f) * -199f)), Struct_1(vec4<u32>(_wgslsmith_div_u32(reverseBits(var_0.b.a.x), max(var_0.b.a.x, 32233u)), arg_0, 0u, 4294967295u), -1858f), var_0.c, -u_input.b, abs(12407u) ^ var_0.b.a.x);
    var var_2 = select(!(!vec3<bool>(true, var_0.c, 484f > global0.b)), select(vec3<bool>(all(vec2<bool>(false, var_0.c)) == false, var_0.c, var_0.c || all(vec3<bool>(var_0.c, true, false))), vec3<bool>(false, !var_0.c, true), !all(vec2<bool>(true, var_0.c))), false);
    let var_3 = var_0.b;
    return !(!all(vec4<bool>(true, true, true, true)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec2<u32>((_wgslsmith_dot_vec2_u32(vec2<u32>(38538u, 103102u) >> (arg_1.b.a.wx % vec2<u32>(32u)), vec2<u32>(u_input.a, arg_1.b.a.x)) | ~u_input.a) & 34070u, _wgslsmith_dot_vec4_u32(arg_2.a, arg_3.b.a));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-757f - arg_1.b.b), arg_3.b.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1072f))), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(112602u, arg_1.e, 4294967295u, 1u) | arg_3.b.a, arg_3.b.a), ~(1u & var_0.x), select(1u, 1u, false & arg_0.x), ~(~37611u)), _wgslsmith_f_op_f32(1176f * -450f)), _wgslsmith_div_vec2_u32(arg_3.b.a.yz, vec2<u32>(~160u, var_0.x)) >> (abs(global0.a.yz) % vec2<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, global0.a.x, ~40360u, 0u), ~arg_1.b.a), arg_1.b.a));
    global2 = array<Struct_4, 24>();
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(853f, arg_1.a, var_1.a))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(459f, 678f, -391f)) - vec3<f32>(arg_1.b.b, -406f, global0.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b, 391f, arg_3.b.b) - vec3<f32>(866f, 966f, global0.b)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, 375f, -726f), vec3<f32>(213f, 595f, 1165f), false)))))));
    let var_3 = global0.a.yyw;
    return Struct_2(1000f, global1[_wgslsmith_index_u32(10300u, 6u)], arg_3.c, -(~(u_input.b & -vec4<i32>(u_input.b.x, arg_3.d.x, arg_1.d.x, 62829i))), ~arg_3.e);
}

fn func_4(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(23769u, ~global0.a.x & _wgslsmith_dot_vec4_u32(arg_0.b.a, vec4<u32>(26913u, global0.a.x, u_input.a, 4294967295u))), ~(~(~10301u)), global0.a.x), 12114u);
    let var_1 = func_3(vec3<bool>(true, arg_0.c, arg_0.c), func_3(vec3<bool>(arg_0.c, all(!vec2<bool>(arg_0.c, true)), true), func_3(select(select(vec3<bool>(false, false, arg_0.c), vec3<bool>(true, false, arg_0.c), false), !vec3<bool>(arg_0.c, arg_0.c, arg_0.c), !vec3<bool>(arg_0.c, arg_0.c, true)), arg_0, Struct_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(43344u, u_input.a, 41142u, arg_0.b.a.x), arg_0.b.a, vec4<u32>(arg_0.b.a.x, arg_0.e, 67526u, u_input.a))), arg_0), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(39695u, 49605u), arg_0.e) >> (_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 0u, arg_0.e), vec3<u32>(4294967295u, 1u, global0.a.x)), global0.a.zxy) % 32u), 24u)], Struct_2(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-290f - arg_0.b.b)), func_3(select(vec3<bool>(true, arg_0.c, false), vec3<bool>(true, arg_0.c, arg_0.c), vec3<bool>(true, arg_0.c, arg_0.c)), Struct_2(872f, global1[_wgslsmith_index_u32(48450u, 6u)], arg_0.c, vec4<i32>(0i, arg_0.d.x, -22549i, 1i), 19345u), Struct_4(vec4<u32>(arg_0.b.a.x, 0u, 1u, 14841u)), func_3(vec3<bool>(arg_0.c, arg_0.c, false), arg_0, global2[_wgslsmith_index_u32(arg_0.b.a.x, 24u)], Struct_2(global0.b, arg_0.b, arg_0.c, vec4<i32>(957i, -57244i, 23156i, 31831i), 30036u))).b, arg_0.c, _wgslsmith_sub_vec4_i32(max(arg_0.d, u_input.b), ~vec4<i32>(-2974i, 36702i, 1i, 0i)), 1u)), Struct_4(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 4294967295u) ^ vec4<u32>(32692u, u_input.a, 1u, arg_0.e), reverseBits(global0.a)))), Struct_2(-128f, arg_0.b, !any(vec4<bool>(false, true, arg_0.c, arg_0.c)) && arg_0.c, ~min(_wgslsmith_sub_vec4_i32(arg_0.d, u_input.b), arg_0.d), ~13404u));
    let var_2 = Struct_4(max(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, 38896u, 18720u, var_1.e), vec4<u32>(1u, u_input.a, 4294967295u, u_input.a)) ^ global0.a, abs(vec4<u32>(global0.a.x, arg_0.e, arg_0.b.a.x, 48210u))) << ((~(~vec4<u32>(1u, 4294967295u, var_1.e, 4294967295u)) << (firstLeadingBit(var_1.b.a) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global2 = array<Struct_4, 24>();
    let var_3 = -vec3<i32>(i32(-1i) * -47320i, 0i, _wgslsmith_mult_i32(~var_1.d.x, i32(-1i) * -1i)) & vec3<i32>(_wgslsmith_div_i32(-1i, ~var_1.d.x) >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.b.a.x, arg_0.b.a.x, global0.a.x), ~4294967295u) % 32u), _wgslsmith_mult_i32(reverseBits(u_input.b.x) & abs(var_1.d.x), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(4981i, -1i, var_1.d.x, 0i), u_input.b))), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_clamp_i32(15760i, 23530i, arg_0.d.x) | -1i, ~1i));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.b)), -903f))), vec2<f32>(arg_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-675f)))), !all(vec2<bool>(arg_0.c, arg_0.c)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    var var_0 = max(arg_0.e, global0.a.x);
    let var_1 = Struct_4(~abs(_wgslsmith_div_vec4_u32(global0.a, vec4<u32>(arg_0.b.a.x, u_input.a, u_input.a, 0u))));
    let var_2 = arg_0.b.a;
    let var_3 = ~max(vec4<i32>(arg_2, u_input.b.x, max(arg_2, 51029i), 2147483647i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0.a.x, var_1.a.x, u_input.a), ~var_2) % vec4<u32>(32u)), -select(arg_0.d, vec4<i32>(1i, 43318i, 1i, 46500i) << (vec4<u32>(4294967295u, var_2.x, u_input.a, var_2.x) % vec4<u32>(32u)), vec4<bool>(true, true, true, false)));
    let var_4 = firstTrailingBit(_wgslsmith_mult_vec4_i32(firstTrailingBit(-(~vec4<i32>(-1i, u_input.b.x, var_3.x, 85360i))), var_3));
    return global0.b;
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * 1000f), Struct_1(global0.a, _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(exp2(global0.b))))), true, vec4<i32>(u_input.b.x, ~_wgslsmith_div_i32(0i, -1i), i32(-1i) * -2147483647i, abs(u_input.b.x & -42263i)), 4294967295u), _wgslsmith_f_op_vec2_f32(func_4(func_3(vec3<bool>(true, func_2(global0.a.x), func_2(u_input.a)), Struct_2(_wgslsmith_f_op_f32(global0.b + 1335f), global1[_wgslsmith_index_u32(~1u, 6u)], select(false, true, false), ~u_input.b, u_input.a), Struct_4(vec4<u32>(0u, 0u, 16314u, u_input.a)), Struct_2(_wgslsmith_f_op_f32(global0.b - -710f), Struct_1(vec4<u32>(global0.a.x, u_input.a, u_input.a, 1u), global0.b), u_input.b.x >= u_input.b.x, ~vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 1i), ~u_input.a)))), u_input.b.x ^ u_input.b.x));
    var_0 = -933f;
    let var_1 = global0.b;
    let var_2 = global1[_wgslsmith_index_u32(global0.a.x, 6u)];
    let var_3 = vec3<bool>(false, ((_wgslsmith_mult_u32(1u, u_input.a) >= ~12600u) && true) | false, all(vec2<bool>(true, true)));
    return _wgslsmith_add_vec3_i32(~reverseBits(u_input.b.wyz | vec3<i32>(u_input.b.x, -11813i, u_input.b.x)), firstTrailingBit(-(u_input.b.yyz ^ abs(u_input.b.yyy))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32) -> vec3<bool> {
    let var_0 = func_3(!vec3<bool>(true, true, !all(vec2<bool>(true, true))), func_3(vec3<bool>(true, true, true), func_3(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true), Struct_2(_wgslsmith_f_op_f32(2447f - 884f), Struct_1(global0.a, -726f), true, _wgslsmith_mod_vec4_i32(u_input.b, u_input.b), 1u), global2[_wgslsmith_index_u32(min(_wgslsmith_div_u32(u_input.a, global0.a.x), 0u), 24u)], Struct_2(_wgslsmith_f_op_f32(round(-381f)), Struct_1(vec4<u32>(global0.a.x, u_input.a, u_input.a, 0u), arg_0.x), false, u_input.b, 46530u)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, 0u), 24u)], func_3(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), func_3(vec3<bool>(true, true, true), Struct_2(1814f, global1[_wgslsmith_index_u32(u_input.a, 6u)], false, u_input.b, 4294967295u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.a.wx, global0.a.zw), 24u)], Struct_2(global0.b, global1[_wgslsmith_index_u32(u_input.a, 6u)], false, u_input.b, 4294967295u)), global2[_wgslsmith_index_u32(global0.a.x, 24u)], Struct_2(-1073f, func_3(vec3<bool>(true, true, false), Struct_2(arg_2, Struct_1(global0.a, arg_0.x), false, vec4<i32>(u_input.b.x, 0i, u_input.b.x, arg_1.x), 1u), global2[_wgslsmith_index_u32(0u, 24u)], Struct_2(global0.b, Struct_1(vec4<u32>(global0.a.x, 0u, global0.a.x, 59064u), -616f), true, vec4<i32>(-6064i, 42678i, 1i, u_input.b.x), global0.a.x)).b, arg_1.x <= arg_1.x, vec4<i32>(u_input.b.x, 9800i, arg_1.x, -57022i), _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(global0.a.x, u_input.a, 0u, 0u))))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a | 21448u, u_input.a), 24u)], func_3(vec3<bool>(select(true, all(vec2<bool>(true, true)), false), func_2(u_input.a >> (21041u % 32u)), !(-487f < global0.b)), Struct_2(func_3(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), func_3(vec3<bool>(false, false, false), Struct_2(-1422f, Struct_1(global0.a, 713f), true, u_input.b, u_input.a), Struct_4(global0.a), Struct_2(arg_0.x, global1[_wgslsmith_index_u32(1u, 6u)], false, vec4<i32>(-2147483647i, u_input.b.x, 16775i, -23975i), 1u)), Struct_4(global0.a), Struct_2(2210f, global1[_wgslsmith_index_u32(u_input.a, 6u)], false, vec4<i32>(arg_1.x, 0i, -41871i, -39151i), u_input.a)).a, global1[_wgslsmith_index_u32(4294967295u, 6u)], any(vec3<bool>(true, true, true)), _wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(arg_1.x, arg_1.x, 23353i, u_input.b.x), vec4<i32>(u_input.b.x, -10957i, -2147483647i, -1i))), abs(u_input.a)), Struct_4(firstTrailingBit(vec4<u32>(15973u, global0.a.x, global0.a.x, 13595u))), Struct_2(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(arg_2, global1[_wgslsmith_index_u32(88108u, 6u)], true, vec4<i32>(arg_1.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.a))).x, Struct_1(vec4<u32>(u_input.a, 1u, 34212u, u_input.a) << (global0.a % vec4<u32>(32u)), 1f), 471f < arg_2, (u_input.b & vec4<i32>(-1i, arg_1.x, -2147483647i, 2147483647i)) >> (vec4<u32>(global0.a.x, 22521u, 1u, 1u) % vec4<u32>(32u)), ~14466u))).b;
    global1 = array<Struct_1, 6>();
    var var_1 = vec2<u32>(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, global0.a.x, global0.a.x, global0.a.x), var_0.a), global0.a)), _wgslsmith_mod_u32(var_0.a.x, u_input.a) >> (1u % 32u));
    var var_2 = ~arg_1.x >> (u_input.a % 32u);
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(func_3(vec3<bool>(true, true, true), func_3(vec3<bool>(true, true, true), func_3(vec3<bool>(false, true, true), Struct_2(1076f, Struct_1(global0.a, 571f), true, u_input.b, 1u), global2[_wgslsmith_index_u32(1u, 24u)], Struct_2(334f, global1[_wgslsmith_index_u32(var_1.x, 6u)], true, vec4<i32>(arg_1.x, -51658i, 26974i, arg_1.x), 0u)), global2[_wgslsmith_index_u32(~16798u, 24u)], Struct_2(1000f, global1[_wgslsmith_index_u32(72602u, 6u)], false, u_input.b, 21473u)), global2[_wgslsmith_index_u32(~13644u, 24u)], func_3(vec3<bool>(true, true, true), Struct_2(var_0.b, global1[_wgslsmith_index_u32(1u, 6u)], false, vec4<i32>(14144i, arg_1.x, arg_1.x, arg_1.x), 62098u), Struct_4(vec4<u32>(u_input.a, 194u, var_1.x, var_0.a.x)), Struct_2(-1549f, var_0, true, vec4<i32>(7970i, u_input.b.x, arg_1.x, -1i), global0.a.x))).b.a.x, var_1.x), ~_wgslsmith_mod_u32(var_0.a.x, 56934u)), 6u)];
    return vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, -2009f))), -1681f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_0.x)))), all(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !all(vec4<bool>(true, false, true, false)), true, true || any(vec4<bool>(false, false, false, false)))), !(_wgslsmith_add_u32(4294967295u, select(var_0.a.x, u_input.a, false)) < ~(~var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 6>();
    var var_0 = select(!select(vec3<bool>(all(vec4<bool>(true, true, false, false)), all(vec4<bool>(true, true, true, true)), 1u == global0.a.x), vec3<bool>(all(vec2<bool>(true, false)), true, all(vec2<bool>(false, false))), true), vec3<bool>(global0.b >= global0.b, false, true), vec3<bool>(false, false, all(func_6(vec4<f32>(616f, 1000f, 1617f, global0.b), func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1991f)))));
    var var_1 = -_wgslsmith_div_i32(u_input.b.x, -func_3(func_6(vec4<f32>(-441f, global0.b, global0.b, global0.b), vec3<i32>(u_input.b.x, u_input.b.x, 0i), global0.b), Struct_2(global0.b, Struct_1(vec4<u32>(39031u, global0.a.x, 0u, u_input.a), global0.b), false, vec4<i32>(-46534i, 31199i, 2147483647i, 24643i), u_input.a), Struct_4(global0.a), func_3(vec3<bool>(true, true, var_0.x), Struct_2(global0.b, global1[_wgslsmith_index_u32(global0.a.x, 6u)], true, vec4<i32>(u_input.b.x, u_input.b.x, -7110i, u_input.b.x), u_input.a), Struct_4(global0.a), Struct_2(809f, Struct_1(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), global0.b), var_0.x, u_input.b, 1u))).d.x);
    global1 = array<Struct_1, 6>();
    var_0 = vec3<bool>((_wgslsmith_dot_vec4_i32(~vec4<i32>(30584i, 17661i, u_input.b.x, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, -45637i, 1i)) >> (countOneBits(global0.a.x) % 32u)) < 35292i, func_3(select(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), vec3<bool>(var_0.x, func_6(vec4<f32>(global0.b, 1953f, -318f, global0.b), u_input.b.wxy, 191f).x, true), false), func_3(vec3<bool>(select(false, var_0.x, var_0.x), true, !var_0.x), func_3(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, true), false), func_3(vec3<bool>(var_0.x, var_0.x, true), Struct_2(global0.b, global1[_wgslsmith_index_u32(78010u, 6u)], true, vec4<i32>(2147483647i, u_input.b.x, 2147483647i, u_input.b.x), 47192u), global2[_wgslsmith_index_u32(1u, 24u)], Struct_2(global0.b, Struct_1(global0.a, -1177f), true, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.a)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(11580u, global0.a.x), 24u)], func_3(vec3<bool>(true, false, false), Struct_2(-453f, global1[_wgslsmith_index_u32(1u, 6u)], false, vec4<i32>(5011i, -67826i, 1i, -66136i), u_input.a), global2[_wgslsmith_index_u32(6170u, 24u)], Struct_2(-174f, Struct_1(global0.a, global0.b), false, vec4<i32>(-2147483647i, u_input.b.x, 0i, u_input.b.x), 46607u))), global2[_wgslsmith_index_u32(abs(4294967295u), 24u)], func_3(vec3<bool>(true, var_0.x, var_0.x), Struct_2(global0.b, Struct_1(vec4<u32>(global0.a.x, 2688u, 4294967295u, u_input.a), global0.b), true, vec4<i32>(-60574i, u_input.b.x, 15644i, u_input.b.x), u_input.a), global2[_wgslsmith_index_u32(4703u, 24u)], Struct_2(global0.b, Struct_1(global0.a, 764f), var_0.x, vec4<i32>(0i, u_input.b.x, 2147483647i, u_input.b.x), 1u))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global0.a.yyz, global0.a.zyx) | global0.a.x, 24u)], Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(1799f, global1[_wgslsmith_index_u32(global0.a.x, 6u)], var_0.x, u_input.b, 46445u))).x)), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 48524u, u_input.a, 4294967295u), vec4<u32>(u_input.a, global0.a.x, 4294967295u, 4294967295u)), -488f), true, vec4<i32>(u_input.b.x, ~1i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), max(6541i, u_input.b.x)), u_input.a)).c, !((17230u < select(u_input.a, global0.a.x, var_0.x)) & ((global0.b < global0.b) & true)));
    var var_2 = select(vec3<bool>(var_0.x, var_0.x, all(!vec3<bool>(var_0.x, var_0.x, false))), vec3<bool>(true || var_0.x, !all(func_6(vec4<f32>(-1583f, -312f, 183f, 1000f), u_input.b.zxz, -495f)), true), !vec3<bool>(var_0.x, var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstLeadingBit(~(func_3(vec3<bool>(false, var_2.x, var_0.x), Struct_2(-226f, global1[_wgslsmith_index_u32(4294967295u, 6u)], true, u_input.b, 1u), Struct_4(global0.a), Struct_2(1000f, global1[_wgslsmith_index_u32(u_input.a, 6u)], false, u_input.b, global0.a.x)).d.xxy & -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), vec2<i32>(-55779i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, u_input.b.x), -2147483647i)));
}

