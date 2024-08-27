struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(4294967295u, vec3<u32>(1u, 27574u, 31686u), vec2<bool>(false, true), vec3<u32>(7757u, 76447u, 68528u)));

var<private> global1: Struct_2;

var<private> global2: array<vec3<u32>, 31>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = arg_3;
    let var_1 = vec3<bool>(all(global0.a.c), all(vec3<bool>(all(vec4<bool>(arg_3.a.c.x, true, false, false)), true, false)), _wgslsmith_f_op_f32(max(-387f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.e * arg_3.d), _wgslsmith_f_op_f32(sign(511f)))))) > arg_2.d);
    var var_2 = -663f;
    let var_3 = 1149f;
    let var_4 = arg_3.b.c;
    return !vec2<bool>(!select(false, global1.a.c.x, false), var_0.c.c.x);
}

fn func_2() -> i32 {
    let var_0 = -((vec3<i32>(1i, 1i, 1i) >> (global2[_wgslsmith_index_u32(84577u, 31u)] % vec3<u32>(32u))) & _wgslsmith_div_vec3_i32(~(~vec3<i32>(-1i, 1i, -9884i)), ~(vec3<i32>(u_input.a, 0i, 0i) ^ vec3<i32>(u_input.a, -1i, u_input.a))));
    global0 = Struct_2(Struct_1(46519u, global0.a.d, global0.a.c, ~firstTrailingBit(~vec3<u32>(20292u, u_input.b, u_input.b))));
    var var_1 = Struct_3(Struct_1(~_wgslsmith_mult_u32(global1.a.b.x >> (4294967295u % 32u), ~global1.a.b.x), firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 31u)] & vec3<u32>(1u, global1.a.d.x, 4294967295u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, global1.a.d.x, 24257u), vec3<u32>(global1.a.b.x, 34729u, global0.a.b.x)), !vec2<bool>(any(global1.a.c), all(vec3<bool>(true, true, false))), ~vec3<u32>(198u, 76890u, ~1u)), Struct_1(~(global0.a.d.x & global1.a.b.x), firstTrailingBit(vec3<u32>(global1.a.d.x, ~1u, ~global0.a.b.x)), select(select(global0.a.c, func_3(vec3<i32>(1i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, u_input.a, -19595i), Struct_3(Struct_1(19332u, vec3<u32>(global0.a.d.x, u_input.b, 1u), vec2<bool>(true, global1.a.c.x), global2[_wgslsmith_index_u32(global1.a.a, 31u)]), Struct_1(global1.a.a, vec3<u32>(global0.a.b.x, 0u, global0.a.d.x), vec2<bool>(global0.a.c.x, global1.a.c.x), vec3<u32>(19131u, global0.a.a, 30317u)), global0.a, 1949f, 476f), Struct_3(Struct_1(u_input.b, global2[_wgslsmith_index_u32(4294967295u, 31u)], vec2<bool>(global1.a.c.x, true), vec3<u32>(u_input.b, u_input.b, global0.a.b.x)), global1.a, Struct_1(global1.a.a, vec3<u32>(0u, 1u, 0u), vec2<bool>(true, global0.a.c.x), global1.a.b), 1218f, 985f)), vec2<bool>(true, global0.a.c.x)), select(!global1.a.c, global0.a.c, true && global0.a.c.x), global1.a.c), abs(abs(global1.a.d)) >> (vec3<u32>(~global0.a.d.x, ~global1.a.b.x, global0.a.b.x) % vec3<u32>(32u))), global0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -570f))), 1f);
    var var_2 = _wgslsmith_dot_vec3_u32(~(~firstLeadingBit(global0.a.b)), vec3<u32>(_wgslsmith_div_u32(reverseBits(~u_input.b), _wgslsmith_mult_u32(81136u, 0u)), abs(~(~1u)), 4294967295u));
    var var_3 = Struct_3(var_1.c, Struct_1(countOneBits(32889u), abs(min(global2[_wgslsmith_index_u32(~81929u, 31u)], vec3<u32>(1u, 4294967295u, global0.a.b.x))), var_1.c.c, ~firstLeadingBit(vec3<u32>(1u, global0.a.a, 0u))), Struct_1(firstLeadingBit(_wgslsmith_sub_u32(reverseBits(global0.a.b.x), _wgslsmith_sub_u32(global1.a.a, 12337u))), _wgslsmith_div_vec3_u32(vec3<u32>(3938u, _wgslsmith_mod_u32(var_1.b.d.x, 0u), 200u), vec3<u32>(max(8754u, var_1.c.b.x), 1u, 23062u)), !func_3(vec3<i32>(2147483647i, u_input.a, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 19223i, 6158i, -2147483647i), vec4<i32>(var_0.x, u_input.a, var_0.x, u_input.a)), Struct_3(var_1.c, global0.a, Struct_1(var_1.c.d.x, vec3<u32>(27130u, global1.a.d.x, var_1.a.b.x), global0.a.c, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), -342f, var_1.e), Struct_3(var_1.a, Struct_1(global0.a.d.x, vec3<u32>(1u, 4294967295u, 15757u), vec2<bool>(global1.a.c.x, false), var_1.c.b), global1.a, var_1.e, var_1.d)), vec3<u32>(~global1.a.d.x, _wgslsmith_dot_vec2_u32(var_1.c.b.xx, ~vec2<u32>(85535u, global0.a.a)), countOneBits(u_input.b))), 2468f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-338f + _wgslsmith_f_op_f32(round(488f))))), var_1.e)));
    return u_input.a;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(902f, 555f, 418f, 739f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -338f), -602f, _wgslsmith_div_f32(-1000f, -1128f), _wgslsmith_f_op_f32(-1018f + 514f))) - vec4<f32>(-192f, 395f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2057f)) - 966f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1662f), -826f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1199f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-2608f, 693f), 741f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1365f, 167f, 155f, 630f))))));
    let var_1 = Struct_3(Struct_1(u_input.b, vec3<u32>(abs(global1.a.d.x), u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.d.x, global1.a.d.x, global1.a.a, arg_3.b.x), vec4<u32>(4294967295u, u_input.b, 1u, global1.a.d.x))), arg_3.c, arg_3.d), global0.a, Struct_1(_wgslsmith_mult_u32(global0.a.d.x, ~firstLeadingBit(0u)), ~(~global1.a.b), func_3(~abs(vec3<i32>(2147483647i, arg_1.x, u_input.a)), ~(vec4<i32>(u_input.a, -1i, -55847i, u_input.a) >> (vec4<u32>(1u, u_input.b, u_input.b, 21541u) % vec4<u32>(32u))), Struct_3(global0.a, arg_3, global1.a, _wgslsmith_f_op_f32(round(var_0.x)), 1005f), Struct_3(global0.a, Struct_1(global0.a.a, vec3<u32>(global0.a.d.x, u_input.b, 4294967295u), vec2<bool>(true, global1.a.c.x), arg_3.d), global0.a, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -159f))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.a, global0.a.d.x, arg_3.b.x), arg_3.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1138f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = Struct_2(Struct_1(global1.a.d.x, vec3<u32>(0u, arg_3.d.x, ~1u), vec2<bool>(abs(arg_1.x) < _wgslsmith_add_i32(-17297i, arg_0), true), select(vec3<u32>(4294967295u, abs(25074u), arg_3.b.x & arg_3.a), ~(global0.a.b ^ var_1.a.d), var_1.a.c.x)));
    var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.b, 10813u), global1.a.b.zy, global0.a.c), vec2<u32>(23851u >> (0u % 32u), ~global0.a.a)), vec3<u32>(22183u, 1403u, ~(~0u)), arg_3.c, countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_3.b, vec3<u32>(4294967295u, 0u, 1u)), 1u, ~7404u))));
    var var_3 = Struct_1(firstTrailingBit(~max(10102u, 33056u)), ~firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(4294967295u, var_1.a.a), countOneBits(global1.a.b.x), ~var_2.a.a)), select(func_3(vec3<i32>(-3762i, arg_1.x, -43110i), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-22951i, arg_0, arg_0, arg_2.x), arg_2, vec4<i32>(arg_2.x, u_input.a, -9968i, 35140i)), select(vec4<i32>(30112i, arg_0, -1i, 0i), arg_2, true), true), Struct_3(Struct_1(var_2.a.b.x, global1.a.d, global1.a.c, vec3<u32>(0u, u_input.b, var_1.b.a)), Struct_1(680u, global2[_wgslsmith_index_u32(50031u, 31u)], vec2<bool>(global1.a.c.x, var_2.a.c.x), vec3<u32>(66954u, var_1.b.b.x, 2992u)), global0.a, _wgslsmith_f_op_f32(-1925f + var_1.d), var_0.x), var_1), global0.a.c, select(!vec2<bool>(var_1.a.c.x, var_2.a.c.x), vec2<bool>(false, u_input.a <= arg_0), !global0.a.c.x | all(vec2<bool>(true, false)))), select(abs(max(var_1.b.d & global1.a.d, countOneBits(vec3<u32>(var_2.a.a, 0u, 35065u)))), min(vec3<u32>(11907u, 1u, 79010u) | vec3<u32>(arg_3.a, arg_3.a, 2004u), (vec3<u32>(var_1.b.b.x, global0.a.a, arg_3.a) >> (vec3<u32>(1u, 45487u, 4294967295u) % vec3<u32>(32u))) << (abs(arg_3.b) % vec3<u32>(32u))), vec3<bool>(global1.a.c.x, global1.a.c.x, !(true || var_1.b.c.x))));
    return select(!select(!vec3<bool>(var_3.c.x, false, false), select(vec3<bool>(true, global1.a.c.x, global0.a.c.x), select(vec3<bool>(false, false, global0.a.c.x), vec3<bool>(global1.a.c.x, global0.a.c.x, var_3.c.x), vec3<bool>(global0.a.c.x, var_1.b.c.x, false)), true != global0.a.c.x), !var_3.c.x), select(select(vec3<bool>(true, any(vec4<bool>(true, false, global0.a.c.x, true)), true), select(vec3<bool>(true, var_2.a.c.x, var_3.c.x), select(vec3<bool>(var_2.a.c.x, false, false), vec3<bool>(global1.a.c.x, global0.a.c.x, var_2.a.c.x), false), false), (12757i < arg_1.x) && true), vec3<bool>(var_2.a.c.x, all(vec3<bool>(global1.a.c.x, var_2.a.c.x, false)) | any(arg_3.c), !(arg_1.x < u_input.a)), global1.a.c.x), vec3<bool>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(120569u, 81857u, arg_3.b.x), _wgslsmith_dot_vec3_u32(arg_3.d, vec3<u32>(u_input.b, global1.a.a, global1.a.a))) == 45135u, var_0.x >= 104f, true));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = max(vec2<i32>(~(-abs(35517i)), abs(-36152i)), vec2<i32>(-1i) * -vec2<i32>(35942i, 2147483647i));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -133f);
    let var_2 = !vec4<bool>(false && select(true, !arg_2.c.c.x, true), true, all(func_4(reverseBits(arg_1), countOneBits(vec3<i32>(u_input.a, 3569i, arg_1)), vec4<i32>(28571i, 16984i, 1i, arg_1), Struct_1(arg_2.b.b.x, vec3<u32>(u_input.b, u_input.b, 0u), arg_0.zy, vec3<u32>(4294967295u, u_input.b, u_input.b))).zy), !(_wgslsmith_mod_i32(var_0.x, u_input.a) > -1i));
    var_1 = 1000f;
    var_1 = -843f;
    return arg_2;
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(func_4(select(-27221i, func_2() ^ select(u_input.a, u_input.a, false), true), -vec3<i32>(1i, i32(-1i) * -2147483647i, _wgslsmith_div_i32(1i, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, -11716i), select(vec4<i32>(1i, 20989i, u_input.a, -12885i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, global1.a.c.x, false, true))) ^ vec4<i32>(2147483647i >> (u_input.b % 32u), u_input.a, u_input.a, -1i), global1.a), u_input.a, Struct_3(global0.a, Struct_1(u_input.b, global1.a.b, vec2<bool>(true, true), ~(~global0.a.b)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 33993u, global0.a.d.x, u_input.b), ~vec4<u32>(global0.a.b.x, global0.a.b.x, 0u, 62607u)), global0.a.b, func_3(abs(vec3<i32>(37510i, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-42530i, u_input.a, 1i, u_input.a), vec4<i32>(2147483647i, u_input.a, -2147483647i, -31469i)), Struct_3(Struct_1(u_input.b, vec3<u32>(global1.a.d.x, 4294967295u, 59810u), global0.a.c, vec3<u32>(36949u, global0.a.d.x, 0u)), Struct_1(9365u, global2[_wgslsmith_index_u32(u_input.b, 31u)], vec2<bool>(true, true), vec3<u32>(u_input.b, 1u, global0.a.b.x)), global1.a, -702f, -1434f), Struct_3(global1.a, Struct_1(global0.a.b.x, vec3<u32>(50520u, 50647u, u_input.b), vec2<bool>(false, global1.a.c.x), global0.a.d), global1.a, 1225f, 969f)), global1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-655f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-853f + 971f)))))));
    global0 = Struct_2(func_5(vec3<bool>(true, false, func_3(abs(vec3<i32>(-2147483647i, -1i, u_input.a)), vec4<i32>(u_input.a, -32241i, u_input.a, -1i), var_0, var_0).x), 54434i & _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(-19453i, 31705i, u_input.a, 2147483647i)), abs(vec4<i32>(41298i, u_input.a, u_input.a, -68782i))), Struct_3(global1.a, Struct_1(4294967295u, firstLeadingBit(vec3<u32>(u_input.b, var_0.a.b.x, var_0.a.d.x)), select(global0.a.c, vec2<bool>(false, var_0.a.c.x), vec2<bool>(var_0.c.c.x, true)), reverseBits(vec3<u32>(global1.a.a, u_input.b, global0.a.a))), func_5(vec3<bool>(false, global0.a.c.x, global1.a.c.x), -20766i, func_5(vec3<bool>(true, true, var_0.a.c.x), -4667i, var_0)).b, 357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1183f - -1108f)))).a);
    let var_1 = -vec2<i32>(_wgslsmith_div_i32(-_wgslsmith_div_i32(1i, u_input.a), abs(_wgslsmith_div_i32(u_input.a, -11639i))), -2147483647i);
    let var_2 = Struct_1(_wgslsmith_add_u32(func_5(select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.c.c.x, var_0.b.c.x), !vec3<bool>(global1.a.c.x, var_0.a.c.x, global1.a.c.x)), abs(abs(var_1.x)), Struct_3(global1.a, Struct_1(0u, global2[_wgslsmith_index_u32(global0.a.a, 31u)], vec2<bool>(false, false), vec3<u32>(0u, var_0.b.b.x, var_0.c.d.x)), var_0.c, 963f, _wgslsmith_f_op_f32(sign(var_0.e)))).c.b.x, global0.a.d.x), vec3<u32>(_wgslsmith_clamp_u32(abs(39018u), ~4294967295u, 1u), 0u, global1.a.a) ^ ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global1.a.b, global1.a.d), ~vec3<u32>(var_0.c.b.x, global1.a.d.x, 11644u)), func_5(!func_4(_wgslsmith_div_i32(0i, var_1.x), vec3<i32>(u_input.a, u_input.a, -2147483647i), abs(vec4<i32>(var_1.x, -13620i, u_input.a, u_input.a)), Struct_1(0u, global0.a.b, vec2<bool>(global0.a.c.x, global1.a.c.x), global1.a.d)), u_input.a, Struct_3(Struct_1(1u, select(vec3<u32>(33015u, u_input.b, 4294967295u), global1.a.b, false), var_0.b.c, ~vec3<u32>(0u, u_input.b, 1u)), Struct_1(var_0.b.d.x | global1.a.d.x, var_0.b.b, global1.a.c, ~var_0.b.d), func_5(select(vec3<bool>(true, global1.a.c.x, false), vec3<bool>(false, true, true), vec3<bool>(true, global1.a.c.x, true)), -u_input.a, var_0).c, var_0.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(340f)))))).c.c, vec3<u32>(global1.a.b.x, var_0.b.b.x, firstTrailingBit(_wgslsmith_mod_u32(~u_input.b, ~global1.a.d.x))));
    global1 = Struct_2(Struct_1(_wgslsmith_clamp_u32(~var_2.d.x ^ _wgslsmith_dot_vec3_u32(global0.a.b, global1.a.b), ~var_0.c.a, _wgslsmith_mod_u32(select(0u, 26530u, false), var_0.b.b.x)), global1.a.d, global0.a.c, ~(~global1.a.d)));
    return func_5(!vec3<bool>(func_4(_wgslsmith_mod_i32(var_1.x, 1i), ~vec3<i32>(2147483647i, u_input.a, u_input.a), ~vec4<i32>(-46193i, -2147483647i, -59875i, var_1.x), global0.a).x, var_0.e == _wgslsmith_f_op_f32(-var_0.e), true), ~var_1.x, func_5(vec3<bool>(!any(vec4<bool>(var_2.c.x, false, true, global0.a.c.x)), -var_1.x < u_input.a, global0.a.c.x), 0i, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 31>();
    var var_0 = global1.a.a;
    var var_1 = countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(~global0.a.a, 0u, 24431u), global0.a.b)) | abs(vec3<u32>((global1.a.b.x & 26271u) ^ firstTrailingBit(global0.a.a), ~(~179u), firstTrailingBit(~4294967295u)));
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, var_2.e, var_2.e, var_2.e)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, -1059f, var_2.d, 1106f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1396f, 766f, var_2.e, -876f))))), vec4<f32>(func_5(vec3<bool>(true, true, u_input.a == u_input.a), u_input.a, Struct_3(Struct_1(var_1.x, vec3<u32>(global0.a.d.x, 14725u, global1.a.d.x), vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, global1.a.a)), func_5(vec3<bool>(true, true, true), u_input.a, Struct_3(global0.a, Struct_1(0u, vec3<u32>(12337u, 56040u, 75432u), global0.a.c, global0.a.b), global1.a, -1447f, 759f)).b, global1.a, -1000f, -445f)).e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(trunc(var_2.d))) * -1205f), -145f, var_2.d)));
    var_2 = func_5(select(func_4(28584i, -vec3<i32>(u_input.a, u_input.a, u_input.a) | (vec3<i32>(u_input.a, u_input.a, -2147483647i) | vec3<i32>(1i, -13713i, 2147483647i)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-1i, 2512i, u_input.a, u_input.a)), vec4<i32>(-1i, u_input.a, u_input.a, -28181i)), func_1().b), vec3<bool>(func_5(vec3<bool>(true, true, true), firstLeadingBit(u_input.a), Struct_3(global0.a, global1.a, global1.a, var_3.x, var_3.x)).b.c.x, global0.a.c.x, true), false), -1i, Struct_3(func_5(vec3<bool>(true & global1.a.c.x, true, all(vec4<bool>(var_2.a.c.x, true, true, global0.a.c.x))), 3724i, func_5(select(vec3<bool>(global1.a.c.x, false, false), vec3<bool>(false, true, true), vec3<bool>(false, global0.a.c.x, true)), min(0i, -2147483647i), func_5(vec3<bool>(var_2.a.c.x, true, global1.a.c.x), 17973i, Struct_3(var_2.b, Struct_1(19441u, vec3<u32>(var_2.c.b.x, 0u, global1.a.a), vec2<bool>(true, true), global0.a.b), Struct_1(18789u, vec3<u32>(4294967295u, var_1.x, var_2.c.d.x), vec2<bool>(false, true), var_2.a.d), var_3.x, var_3.x)))).a, global1.a, global0.a, -835f, -225f));
    global1 = Struct_2(Struct_1(var_2.c.d.x, firstLeadingBit(vec3<u32>(global1.a.b.x, global1.a.b.x, 0u)), vec2<bool>(true, true), ~global1.a.d >> (firstLeadingBit(vec3<u32>(4294967295u, var_1.x, 44826u) & vec3<u32>(5260u, 288u, global1.a.d.x)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xy, abs(1u));
}

