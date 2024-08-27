struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -22545i), vec3<f32>(359f, -1336f, -1313f), vec3<f32>(-1723f, -256f, 1610f), false, vec4<u32>(1u, 5059u, 4294967295u, 19598u)));

var<private> global2: vec2<i32> = vec2<i32>(-15602i, 4719i);

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec3<f32> {
    global1 = Struct_2(global1.a);
    let var_0 = 57038u;
    global2 = _wgslsmith_mod_vec2_i32(vec2<i32>(~(-(~(-39249i))), ~max(-32766i, global2.x & global1.a.a.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(global1.a.a, vec2<i32>(35729i, _wgslsmith_clamp_i32(global1.a.a.x, global2.x, global1.a.a.x))), _wgslsmith_mod_i32(select(global2.x, -1i, false), _wgslsmith_clamp_i32(38045i, -33950i, global2.x)) << (var_0 % 32u)));
    let var_1 = Struct_5(countOneBits(global1.a.e.ywz));
    global3 = select(select(!vec2<bool>(!global3.x, global3.x), select(select(vec2<bool>(global3.x, global1.a.d), !vec2<bool>(global3.x, global3.x), global1.a.d), !vec2<bool>(global3.x, global3.x), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(any(select(!vec2<bool>(global1.a.d, global3.x), vec2<bool>(global1.a.d, false), !vec2<bool>(global3.x, global3.x))), true), true & !any(select(vec2<bool>(global1.a.d, global3.x), vec2<bool>(true, global3.x), global1.a.d)));
    return global1.a.c;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    global2 = vec2<i32>(countOneBits(_wgslsmith_mod_i32(~global1.a.a.x >> (574u % 32u), global2.x)), _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 10441i), vec3<i32>(0i, arg_0.a.x, global1.a.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, 1i), vec3<i32>(arg_0.a.x, 2147483647i, global1.a.a.x))), abs(_wgslsmith_mult_vec2_i32(-vec2<i32>(global1.a.a.x, global1.a.a.x), reverseBits(global1.a.a)))));
    global2 = _wgslsmith_mult_vec2_i32(select(firstLeadingBit(vec2<i32>(50857i, global2.x) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(vec2<u32>(89586u, 1u), arg_0.e.yx) % vec2<u32>(32u)), max(abs(global1.a.a), abs(arg_0.a)), true || !any(vec2<bool>(global3.x, true))), vec2<i32>(abs(arg_0.a.x), 29351i));
    global3 = !vec2<bool>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global2.x, global2.x), _wgslsmith_clamp_i32(-1i, global1.a.a.x, global2.x)) < (_wgslsmith_div_i32(global1.a.a.x, global2.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, 9362i), vec2<i32>(global1.a.a.x, -2147483647i))), true);
    global0 = array<Struct_3, 2>();
    let var_0 = vec3<f32>(-1746f, _wgslsmith_f_op_f32(-global1.a.c.x), arg_0.c.x);
    return !(!select(vec2<bool>(false, global3.x), vec2<bool>(global3.x | false, arg_0.d), true));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> bool {
    global3 = !func_4(Struct_1(global1.a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.c.x, global1.a.b.x, arg_2) * global1.a.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(global2.x, -1i))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, global1.a.b.x, 1336f)))), any(vec2<bool>(true, global1.a.d)), reverseBits(global1.a.e)));
    global2 = countOneBits(global1.a.a);
    global3 = vec2<bool>(!global3.x, true);
    global2 = vec2<i32>(global1.a.a.x, global2.x);
    let var_0 = !vec4<bool>(any(select(select(vec4<bool>(global1.a.d, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(global3.x, false, global3.x, global1.a.d)), !vec4<bool>(global1.a.d, false, global3.x, true), !vec4<bool>(true, false, global1.a.d, global3.x))), true, !(!(global1.a.d == false)), !(any(vec2<bool>(false, false)) | all(vec4<bool>(true, global1.a.d, true, true))));
    return !global1.a.d;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_5) -> Struct_5 {
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    let var_0 = true;
    return arg_3;
}

fn func_1() -> vec2<bool> {
    let var_0 = vec4<i32>(global1.a.a.x, 18848i, ~firstLeadingBit(~(-1i)), global2.x) | min(vec4<i32>(global2.x ^ _wgslsmith_div_i32(global2.x, global1.a.a.x), global1.a.a.x, _wgslsmith_dot_vec2_i32(global1.a.a, global1.a.a) >> (~12971u % 32u), firstTrailingBit(~(-46035i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global1.a.a.x, 6061i, global1.a.a.x), vec4<i32>(0i, -2147483647i, 2147483647i, global2.x)), global2.x | global2.x, global1.a.a.x, 10197i) & -_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global1.a.a.x, -11310i, global1.a.a.x), vec4<i32>(2147483647i, global1.a.a.x, global2.x, 12817i)));
    let var_1 = ~vec4<u32>(1u, 4294967295u, 31862u, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, countOneBits(4294967295u)), reverseBits(_wgslsmith_div_u32(23463u, u_input.a.x))));
    let var_2 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-667f, 944f, 159f, -792f), vec4<f32>(-1070f, global1.a.c.x, global1.a.c.x, -891f)), vec4<f32>(915f, global1.a.b.x, 740f, -744f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b.x, global1.a.c.x, global1.a.c.x, global1.a.c.x))) * vec4<f32>(826f, _wgslsmith_f_op_f32(round(global1.a.c.x)), global1.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -286f)))), vec3<f32>(global1.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2640f, global1.a.b.x))), _wgslsmith_f_op_f32(global1.a.c.x * 158f)), global1.a.c.x), Struct_2(Struct_1(vec2<i32>(1i, ~32128i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-771f, 748f, global1.a.c.x) - _wgslsmith_div_vec3_f32(global1.a.b, global1.a.b)), global1.a.c, func_2(Struct_5(vec3<u32>(0u, 4294967295u, global1.a.e.x)), _wgslsmith_f_op_f32(select(global1.a.b.x, -883f, global3.x)), _wgslsmith_f_op_f32(834f + -565f)), countOneBits(var_1))), Struct_5(var_1.zww));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.b.yz * global1.a.b.xy) * _wgslsmith_div_vec2_f32(vec2<f32>(global1.a.b.x, -1137f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.a.b.yz, global1.a.c.zx)))))));
    global3 = select(vec2<bool>(func_2(func_5(vec4<f32>(-797f, 1399f, global1.a.b.x, 658f), vec3<f32>(318f, -1885f, 1142f), Struct_2(global1.a), var_2), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(309f, 114f)))), all(!vec4<bool>(global1.a.d, global3.x, global1.a.d, global1.a.d)) && false), vec2<bool>(true, !func_2(var_2, 258f, _wgslsmith_f_op_f32(global1.a.b.x - 321f))), global1.a.d);
    return !vec2<bool>(false, global3.x);
}

fn func_6(arg_0: vec2<bool>, arg_1: f32) -> vec4<u32> {
    global3 = !select(vec2<bool>(any(!vec3<bool>(false, global1.a.d, true)), !(true && global1.a.d)), vec2<bool>(global2.x >= _wgslsmith_add_i32(global2.x, global1.a.a.x), select(global1.a.c.x > 464f, true, false)), false);
    global1 = Struct_2(Struct_1(global1.a.a, vec3<f32>(arg_1, -1265f, global1.a.c.x), _wgslsmith_f_op_vec3_f32(-global1.a.c), true, vec4<u32>(1u, 1u, 0u, ~u_input.a.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-881f, -461f, -867f, arg_1) + vec4<f32>(global1.a.c.x, 811f, global1.a.c.x, arg_1)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(126f, arg_1, 153f, -1189f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -716f, arg_1, 3034f) + vec4<f32>(1134f, arg_1, arg_1, -470f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c.x, 819f, arg_1, global1.a.c.x) - vec4<f32>(631f, -562f, arg_1, -2195f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1271f, global1.a.c.x, 580f, -1726f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(916f, arg_1, 1000f, -419f))), vec4<f32>(1479f, global1.a.b.x, -466f, arg_1))))));
    global2 = _wgslsmith_mod_vec2_i32(global1.a.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32((vec2<i32>(-8918i, 28970i) >> (global1.a.e.zw % vec2<u32>(32u))) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), max(_wgslsmith_mult_vec2_i32(global1.a.a, vec2<i32>(-15128i, global2.x)), max(vec2<i32>(2147483647i, -1i), global1.a.a))), _wgslsmith_mod_vec2_i32(min(global1.a.a, ~vec2<i32>(-11258i, 0i)), global1.a.a), ~global1.a.a));
    var var_1 = ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global1.a.e.x, u_input.b, 1u), global1.a.e) << (min(firstLeadingBit(51443u), global1.a.e.x) % 32u)));
    return ~global1.a.e;
}

fn func_7(arg_0: vec4<u32>) -> Struct_2 {
    global2 = _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1120i), vec2<i32>(~(-2147483647i), _wgslsmith_mult_i32(-global2.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(global1.a.a.x, global1.a.a.x, 34248i), global1.a.a.x | -23536i))));
    let var_0 = !select(vec2<bool>(true, any(vec3<bool>(global3.x, true, global3.x))), select(func_1(), func_4(global1.a), global1.a.d), func_1());
    var var_1 = !(!global1.a.d || ((-311f <= _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(1i, global1.a.a.x))).x) | false));
    let var_2 = vec4<bool>(!all(!select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, global1.a.d))), all(!vec3<bool>(false, !global3.x, var_0.x)), global1.a.c.x < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - global1.a.c.x))), global1.a.d != !func_4(global1.a).x);
    global1 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(~global1.a.a, vec2<i32>(max(global1.a.a.x, global1.a.a.x), global2.x), ~vec2<i32>(-2147483647i, -18017i)), global1.a.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.a.b, global1.a.b, var_0.x))))), abs(~1u) >= reverseBits(arg_0.x), ~(~(~vec4<u32>(70281u, global1.a.e.x, 26162u, global1.a.e.x)))));
    return Struct_2(Struct_1(global1.a.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.c.x, -1129f, -133f) + _wgslsmith_f_op_vec3_f32(-global1.a.b)), vec3<f32>(_wgslsmith_f_op_f32(floor(-519f)), 740f, _wgslsmith_f_op_f32(ceil(-551f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(select(global1.a.c.x, global1.a.b.x, global1.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.c.x, -1052f) + _wgslsmith_f_op_f32(sign(global1.a.c.x)))), var_2.x | func_4(global1.a).x, ~((vec4<u32>(87769u, arg_0.x, 56727u, u_input.b) >> (vec4<u32>(66483u, u_input.b, 0u, 39052u) % vec4<u32>(32u))) >> (vec4<u32>(global1.a.e.x, global1.a.e.x, 0u, 4294967295u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(func_6(!select(!vec2<bool>(global3.x, true), func_1(), !vec2<bool>(global3.x, global1.a.d)), 1107f));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(abs(u_input.a) << (_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(global1.a.e.x, 31223u)) % vec2<u32>(32u)))), u_input.a), 2u)];
    global1 = Struct_2(global1.a);
    var var_1 = countOneBits(vec2<i32>(38986i, global1.a.a.x | (_wgslsmith_add_i32(global2.x, global2.x) & var_0.c.a.x)));
    var var_2 = global1.a.c.x;
    let var_3 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.c.x, var_0.e.x, global1.a.b.x, global1.a.b.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, global1.a.c.x, 544f, global1.a.b.x), vec4<f32>(1637f, var_0.b, global1.a.b.x, 130f), vec4<bool>(global1.a.d, true, false, global3.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(var_0.e.x)), var_0.e.x, global1.a.b.x, 425f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 358f, _wgslsmith_f_op_f32(max(var_0.b, -289f)), _wgslsmith_f_op_f32(1209f + var_0.b)))), _wgslsmith_f_op_vec3_f32(global1.a.b + vec3<f32>(var_0.c.c.x, _wgslsmith_div_f32(-292f, global1.a.b.x), global1.a.b.x)), Struct_2(func_7(var_0.c.e).a), Struct_5(var_0.c.e.wwy));
    let var_4 = Struct_4(select(!(!select(vec3<bool>(false, var_0.c.d, false), vec3<bool>(true, false, global1.a.d), var_0.c.d)), vec3<bool>(global1.a.d, func_7(~global1.a.e).a.d, select(45162u, 4294967295u, global1.a.d) == abs(var_3.a.x)), _wgslsmith_add_u32(82490u, ~var_0.c.e.x) < ~max(33145u, var_3.a.x)), var_0.c, countOneBits(var_0.d.x), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_7(global1.a.e).a.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.c.x * -1555f), var_0.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_mult_vec2_u32(vec2<u32>(var_4.b.e.x, max(0u >> (0u % 32u), 1u)), vec2<u32>(_wgslsmith_mod_u32(var_0.a, _wgslsmith_mod_u32(var_3.a.x, var_3.a.x)), firstTrailingBit(global1.a.e.x))), vec4<i32>(~(-2147483647i), ~_wgslsmith_mod_i32(var_4.c, global2.x), -(-15386i << (~var_0.a % 32u)), firstTrailingBit(global1.a.a.x) | (-10640i & _wgslsmith_add_i32(var_1.x, var_4.c))), vec4<u32>(4294967295u, ~(~var_0.a), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, global1.a.e.x) ^ u_input.c, _wgslsmith_mult_u32(var_3.a.x, 47526u) ^ var_4.b.e.x)));
}

