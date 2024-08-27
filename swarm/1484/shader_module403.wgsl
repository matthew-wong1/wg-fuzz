struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<bool>(true, false, true, false));

var<private> global1: Struct_2;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: Struct_3;

var<private> global4: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<i32>(29215i, 1i), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(25155i, 1i), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(-1i, -22707i), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(-18281i, 0i), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(0i, -18303i), vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(-54729i, -1i), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(20141i, 30009i), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<bool>(true, false, false, false)), Struct_1(vec2<i32>(2147483647i, -7704i), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(i32(-2147483648), -66103i), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(8509i, 2147483647i), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(-6169i, i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(-59651i, -1i), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(-12443i, -13691i), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(-22272i, -1i), vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(-18054i, -14570i), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(56099i, -1i), vec4<bool>(false, true, false, false)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> i32 {
    let var_0 = ~1u;
    var var_1 = all(global3.a.b.yxx) != false;
    var var_2 = abs(_wgslsmith_sub_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a.x, u_input.b) ^ vec2<i32>(4847i, global3.a.a.x), abs(global1.a.zx), global3.a.a), global0.a >> (_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 42886u), vec2<u32>(15125u, var_0)) % vec2<u32>(32u))), select(reverseBits(global3.a.a), ~global0.a, select(vec2<bool>(global0.b.x, true), select(vec2<bool>(global2.x, global1.c.b.x), vec2<bool>(true, global2.x), vec2<bool>(false, false)), !vec2<bool>(true, arg_1.x)))));
    global1 = Struct_2(firstTrailingBit(countOneBits(reverseBits(select(vec3<i32>(global3.a.a.x, -26107i, 1i), vec3<i32>(var_2.x, 1i, u_input.a), false)))), true, Struct_1(reverseBits(min(vec2<i32>(-1i, 2147483647i), vec2<i32>(var_2.x, var_2.x))) >> (~vec2<u32>(24593u, 4294967295u) % vec2<u32>(32u)), global3.a.b), Struct_1(-(~global1.c.a), !vec4<bool>(false, global1.c.b.x, true, any(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e * global1.e))), -1742f));
    let var_3 = abs(~vec4<i32>(global3.a.a.x, var_2.x, -5389i, 1i));
    return global1.c.a.x;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> bool {
    global1 = arg_1;
    global1 = arg_1;
    let var_0 = vec2<i32>(-func_3(global1.d.b.yww, select(vec4<bool>(global3.a.b.x, false, true, true), select(vec4<bool>(global1.c.b.x, arg_1.b, true, arg_0), global1.c.b, vec4<bool>(false, false, arg_0, false)), global0.b), vec2<f32>(global1.e, -969f)), 2147483647i);
    let var_1 = select(select(vec2<bool>(true | (true && global0.b.x), false), select(select(vec2<bool>(true, true), vec2<bool>(global2.x, true), vec2<bool>(arg_0, true)), !select(vec2<bool>(arg_2, true), vec2<bool>(arg_0, false), true), select(arg_2, true, false) && true), false), vec2<bool>(false, -41107i > ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, arg_1.a.x), vec2<i32>(var_0.x, -28659i))), !(!vec2<bool>(true, global0.b.x)));
    var var_2 = ~(0i & -func_3(global1.c.b.yyz, global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(330f, global1.e) + vec2<f32>(global1.e, 267f))));
    return all(global3.a.b.xxw);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(368f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1008f + -1344f), -264f)));
    var var_1 = Struct_3(global4[_wgslsmith_index_u32(1u, 18u)]);
    let var_2 = _wgslsmith_sub_u32(73877u, abs(select(abs(reverseBits(0u)), 1u, false)));
    global3 = arg_3;
    var var_3 = arg_2;
    return arg_3;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_4(global1.e, _wgslsmith_dot_vec2_i32(-global0.a, arg_0.a.a), false & global1.d.b.x, Struct_3(Struct_1(min(-global0.a, vec2<i32>(arg_0.a.a.x, 0i)), vec4<bool>(global3.a.b.x, any(arg_0.a.b.wwz), global2.x, func_2(true, Struct_2(vec3<i32>(arg_0.a.a.x, 0i, 1i), false, Struct_1(global3.a.a, global3.a.b), global4[_wgslsmith_index_u32(50462u, 18u)], -143f), global2.x)))));
    var var_1 = ~_wgslsmith_sub_vec2_i32((abs(global0.a) ^ abs(vec2<i32>(u_input.a, global0.a.x))) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.x, -2147483647i) << (vec2<u32>(53769u, 0u) % vec2<u32>(32u)), firstLeadingBit(global3.a.a)), ~(~global0.a));
    global2 = vec3<bool>(true, true, all(!vec4<bool>(global3.a.b.x || global3.a.b.x, !var_0.a.b.x, global1.e < global1.e, global0.a.x <= 0i)));
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 2307u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), 1u, 19645u) | ~vec3<u32>(1u, 1u, 1u);
    global2 = vec3<bool>(!global3.a.b.x, true, true);
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global1.e, _wgslsmith_f_op_f32(round(global1.e))))))), ~(~firstLeadingBit(0i)), func_4(1f, global0.a.x, true, func_4(global1.e, global1.d.a.x << (_wgslsmith_add_u32(var_2.x, var_2.x) % 32u), false || !global2.x, Struct_3(func_4(global1.e, 2147483647i, true, Struct_3(Struct_1(vec2<i32>(var_0.a.a.x, 0i), vec4<bool>(false, true, global0.b.x, false)))).a))).a.b.x, Struct_3(Struct_1(~vec2<i32>(2147483647i, 32986i), select(var_0.a.b, select(var_0.a.b, var_0.a.b, vec4<bool>(true, var_0.a.b.x, arg_0.a.b.x, false)), vec4<bool>(global1.c.b.x, false, true, true))))).a;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    var var_0 = vec3<i32>(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.a.x, -46974i, global3.a.a.x), vec3<i32>(0i, global1.a.x, -1i)), ~global1.d.a.x, _wgslsmith_div_i32(global1.c.a.x, 1i)), u_input.a), global0.a.x, 0i);
    let var_1 = arg_0.x;
    global3 = Struct_3(func_4(_wgslsmith_f_op_f32(sign(global1.e)), firstLeadingBit(_wgslsmith_mult_i32(~0i, ~arg_1.a.x)), select(select(arg_2, 5139u, false) >= _wgslsmith_clamp_u32(0u, 20721u, 4323u), true, true), Struct_3(Struct_1(min(vec2<i32>(arg_1.a.x, -1i), vec2<i32>(global3.a.a.x, 474i)), vec4<bool>(global0.b.x, true, global3.a.b.x, global0.b.x)))).a);
    var var_2 = !vec3<bool>(any(global3.a.b), all(global3.a.b.yw), true);
    global2 = func_1(Struct_3(Struct_1(global1.d.a, !(!global0.b)))).b.zzx;
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-1770f * global1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(197f))))), var_1, _wgslsmith_f_op_f32(round(-992f)), _wgslsmith_div_f32(global1.e, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.e, global1.e, 1832f, 521f))))), _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-743f, -132f, -2230f), vec3<f32>(global1.e, global1.e, global1.e))), func_1(Struct_3(Struct_1(vec2<i32>(global3.a.a.x, 34666i), vec4<bool>(true, global0.b.x, global2.x, true)))), 1190u)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_5(vec3<f32>(global1.e, 114f, global1.e), func_4(-756f, -1i, global1.c.b.x, Struct_3(global1.d)).a, _wgslsmith_mult_u32(0u, 0u)))))));
    var var_1 = global1.d;
    let var_2 = ~(~vec3<u32>(~64996u, 17086u, ~0u));
    var_1 = Struct_1(vec2<i32>(global3.a.a.x << (91111u % 32u), firstLeadingBit(-(~global0.a.x))), !(!(!vec4<bool>(global2.x, true, global1.d.b.x, global2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global1.e, var_2.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1661f, -2245f, global1.e) - vec3<f32>(var_0.x, 1000f, var_0.x)), var_0.yyy)))), var_0.yxx)), _wgslsmith_clamp_i32(-2147483647i, countOneBits(u_input.b), global1.d.a.x));
}

