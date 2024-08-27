struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_2;

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<bool>, 32>;

var<private> global4: array<vec2<u32>, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    global3 = array<vec3<bool>, 32>();
    global4 = array<vec2<u32>, 3>();
    var var_0 = -41847i ^ u_input.b;
    var var_1 = vec2<i32>(reverseBits(-2147483647i), _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, u_input.a, -4620i), vec3<i32>(0i, -11413i, u_input.a) | vec3<i32>(u_input.b, u_input.a, u_input.b)), (vec3<i32>(-1i, u_input.b, 1i) ^ vec3<i32>(u_input.a, u_input.a, u_input.b)) >> ((global2.xzw ^ _wgslsmith_clamp_vec3_u32(global2.xwz, global2.zxx, vec3<u32>(4294967295u, global2.x, u_input.c))) % vec3<u32>(32u))));
    return -578f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: i32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(global1.a.yx)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(func_3()))));
    var var_1 = Struct_5(Struct_2(vec4<f32>(341f, var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-682f * _wgslsmith_f_op_f32(trunc(global1.a.x)))), true));
    var var_2 = true;
    global1 = Struct_2(global1.a, var_1.a.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(global1.a.xxy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, global1.a.x)))))))));
    return Struct_5(var_1.a);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_5) -> i32 {
    let var_0 = !(!select(vec4<bool>(true, func_2(4294967295u, u_input.c, arg_1.x, -23096i).a.b, any(vec2<bool>(arg_1.x, true)), arg_1.x), vec4<bool>(all(vec4<bool>(arg_3.a.b, arg_3.a.b, true, false)), global1.b, arg_1.x, arg_1.x), vec4<bool>(false, global1.b, arg_1.x, !global0.x)));
    let var_1 = arg_3.a;
    var var_2 = Struct_1(!arg_3.a.b, global0.xy, abs(arg_2.x), arg_3.a.a.x);
    global2 = vec4<u32>(1u, u_input.c, 126011u, countOneBits(_wgslsmith_add_u32(~global2.x, 4294967295u << (u_input.c % 32u)))) | _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(global2.x, global2.x, 36433u, global2.x)), vec4<u32>(u_input.c, firstLeadingBit(u_input.c), global2.x, _wgslsmith_mult_u32(u_input.c, 2275u))), ~vec4<u32>(1u, min(45462u, 85328u), 25500u, u_input.c));
    var var_3 = u_input.c;
    return -1i;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_4(select(vec4<u32>(u_input.c, ~1u, ~1u, abs(u_input.c)), ~vec4<u32>(u_input.c, u_input.c, 0u, 0u) >> (min(vec4<u32>(u_input.c, 4294967295u, 34231u, u_input.c), vec4<u32>(u_input.c, global2.x, global2.x, 30639u)) % vec4<u32>(32u)), !select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global1.b, global0.x, arg_1.x, true))) << ((_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.c, 1u, u_input.c), firstTrailingBit(vec4<u32>(8419u, 13280u, u_input.c, global2.x))) & min(~vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u), ~vec4<u32>(global2.x, u_input.c, global2.x, u_input.c))) % vec4<u32>(32u)), ~firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, 2147483647i), vec4<i32>(0i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(2147483647i, u_input.b, -26121i, 2147483647i))), 4294967295u, arg_0.a.a, _wgslsmith_div_i32(u_input.b, firstLeadingBit(func_4(func_2(25319u, 0u, true, 0i), vec3<bool>(true, true, true), abs(vec2<i32>(-13896i, -1i)), Struct_5(Struct_2(global1.a, true))))));
    let var_1 = Struct_3((true & !all(vec4<bool>(false, true, global1.b, global1.b))) && true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(global1.a.x * 658f)), _wgslsmith_f_op_f32(step(global1.a.x, -1913f))))));
    var var_2 = Struct_4(var_0.a, var_0.b, max(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(min(var_0.a.yzy, var_0.a.yzw), vec3<u32>(0u, u_input.c, 0u) << (vec3<u32>(global2.x, var_0.a.x, 0u) % vec3<u32>(32u)), global2.zyy), global2.xwz), countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 4294967295u), vec2<u32>(4294967295u, global2.x)), ~vec2<u32>(48903u, var_0.c)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.x, -1106f, 410f, global1.a.x))) - vec4<f32>(global1.a.x, 1000f, global1.a.x, -1000f)))))), countOneBits(_wgslsmith_mult_i32(0i, i32(-1i) * -2147483647i) >> (~select(39362u, u_input.c, true) % 32u)));
    let var_3 = var_2.a.yzx;
    var_2 = Struct_4(var_0.a, vec4<i32>(-1i) * -(min(vec4<i32>(u_input.b, 2147483647i, 2147483647i, u_input.b), vec4<i32>(-2147483647i, 2147483647i, 17997i, u_input.a)) >> (vec4<u32>(34148u, 52204u, var_3.x, 47189u) % vec4<u32>(32u))), var_0.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(817f, arg_0.a.a.x, 943f, var_1.b.x) + var_0.d))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(565f, var_1.b.x, var_0.d.x, var_2.d.x) + var_2.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_2.d, vec4<f32>(-132f, var_2.d.x, global1.a.x, 1485f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, 761f, var_2.d.x, 1890f)), !global0.x)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(398f, -1430f, -171f, 834f)), vec4<f32>(673f, -2555f, var_2.d.x, arg_0.a.a.x)))))), 1i & u_input.b);
    return !(!global0.zz);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global3 = array<vec3<bool>, 32>();
    global2 = ~(~(~(~vec4<u32>(2414u, 54246u, global2.x, u_input.c))) & vec4<u32>(49025u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, u_input.c, u_input.c, 4294967295u), vec4<u32>(29815u, u_input.c, global2.x, 4294967295u))), ~(u_input.c >> (5026u % 32u)), u_input.c));
    var var_0 = vec2<bool>(true, true);
    let var_1 = func_2(u_input.c, ~global2.x, global1.b, abs(func_4(Struct_5(func_2(99695u, global2.x, false, 24389i).a), !(!vec3<bool>(arg_1.a, arg_1.b.x, false)), ~select(vec2<i32>(-40220i, arg_1.c), arg_0.yz, arg_1.b), func_2(~u_input.c, ~1u, global2.x < 0u, max(arg_1.c, -2278i))))).a;
    let var_2 = _wgslsmith_f_op_f32(-1184f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -617f), arg_1.d)) * _wgslsmith_f_op_f32(max(-1863f, var_1.a.x)))) < -238f;
    return Struct_1(false, arg_1.b, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_div_i32(countOneBits(u_input.a), countOneBits(arg_1.c))), u_input.b), 727f);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> StorageBuffer {
    let var_0 = Struct_1(any(select(select(!vec4<bool>(arg_0.a, global1.b, true, global0.x), !vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), true), !vec4<bool>(global1.b, arg_0.a, global1.b, global0.x), any(vec4<bool>(false, global0.x, global0.x, global0.x)))), select(arg_0.b, vec2<bool>(func_2(arg_1.x, ~arg_1.x, global0.x, -2147483647i).a.b, global1.b | true), !(arg_0.d < _wgslsmith_f_op_f32(ceil(248f)))), 0i, func_2(~8050u, select((17083u | global2.x) & u_input.c, ~_wgslsmith_mod_u32(global2.x, 55825u), false), global0.x, -7999i).a.a.x);
    let var_1 = var_0.d;
    var var_2 = vec2<i32>(-1i | (~1i << (max(arg_1.x, arg_1.x) % 32u)), _wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(var_0.c, u_input.b)) >> (global4[_wgslsmith_index_u32(countOneBits(arg_1.x), 3u)] % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(~0i, u_input.b), -5114i)));
    var var_3 = Struct_3(global1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2031f))), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(select(-702f, -1450f, global1.a.x > 545f))), -2014f));
    let var_4 = Struct_4(~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(15435u, u_input.c, 4294967295u, 54033u), vec4<u32>(4294967295u, arg_1.x, 0u, 35830u))) | vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(global2.x, 1u)), countOneBits(~arg_1.x), global2.x, _wgslsmith_mod_u32(arg_1.x & arg_1.x, 58447u)), vec4<i32>(var_2.x, _wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(arg_0.c, -2147483647i), var_0.c), var_2.x, _wgslsmith_sub_i32(var_0.c, _wgslsmith_div_i32(func_4(Struct_5(Struct_2(vec4<f32>(var_3.b.x, -133f, -307f, global1.a.x), true)), vec3<bool>(arg_0.b.x, true, false), vec2<i32>(var_2.x, -1i), Struct_5(Struct_2(global1.a, global0.x))), 5294i & var_0.c))), arg_1.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) - _wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1195f * global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1122f + global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * -1106f))) * global1.a), -5647i);
    return StorageBuffer(var_4.a.xzz, vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_4.a, var_4.a), u_input.c), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_4.a, abs(vec4<u32>(arg_1.x, u_input.c, global2.x, 0u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.x, 0u, 16687u, var_4.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_4.a.x, 80448u, u_input.c), vec4<u32>(arg_1.x, 0u, var_4.a.x, 4294967295u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1094f - arg_0.d) * _wgslsmith_f_op_f32(var_3.b.x * 1129f)), 374f)) * var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(~(~global2.x), 32u)];
    var var_0 = global1.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) - global1.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f), -1400f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) + global1.a.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(689f, 1932f, global1.a.x))), global1.a.zww))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.zxz - vec3<f32>(var_1.x, 165f, 581f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.zyx)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(988f, var_1.x, -1024f), vec3<f32>(var_1.x, global1.a.x, global1.a.x)))))));
    let var_3 = -1i;
    let x = u_input.a;
    s_output = func_6(func_5(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-7066i, -35014i, var_3, 19932i), ~vec4<i32>(-2147483647i, 1i, u_input.b, var_3)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(4955i, 2147483647i, -1i, 31938i), vec4<i32>(var_3, 1i, 2147483647i, u_input.a))), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(1i, -2147483647i, u_input.a, 38424i)), ~vec4<i32>(1i, var_3, 1i, u_input.b))), Struct_1(true, func_1(Struct_5(Struct_2(global1.a, global1.b)), select(vec3<bool>(global1.b, false, true), global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(40141u, 32u)])), u_input.b >> (44420u % 32u), global1.a.x)), firstLeadingBit(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(~u_input.c, 33392u, all(vec2<bool>(global0.x, global1.b))), 1u), 3u)]));
}

