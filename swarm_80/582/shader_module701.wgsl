struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: vec3<i32> = vec3<i32>(-46705i, 1i, -11655i);

var<private> global2: Struct_2 = Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), vec3<u32>(1u, 7089u, 37804u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(31790u, 29033u, _wgslsmith_add_u32(arg_2.b.x, 0u) & reverseBits(arg_3.d))), ~arg_2.b.x | ~16913u, min(abs(global2.b.x ^ countOneBits(global2.b.x)), reverseBits(arg_2.b.x) | 52204u));
    global2 = Struct_2(vec2<i32>(~global2.a.x, i32(-1i) * -_wgslsmith_sub_i32(global2.a.x, arg_1.x)), max(global2.b, ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 0u) << (arg_2.b % vec3<u32>(32u)), vec3<u32>(10677u, global2.b.x, 23637u))));
    global2 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(407f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -174f), -1093f), _wgslsmith_f_op_vec4_f32(floor(arg_3.a)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)))), _wgslsmith_f_op_f32(-1110f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1064f), arg_0)))), global2.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(countOneBits(vec4<u32>(arg_3.d, 4294967295u, arg_2.b.x, 37944u))), ~reverseBits(vec4<u32>(166384u, 22944u, 0u, arg_3.d))), ~arg_3.d & ~(~arg_2.b.x), countOneBits(4294967295u)));
    let var_2 = arg_2;
    return var_1.c;
}

fn func_2() -> f32 {
    var var_0 = -282f;
    let var_1 = true & !select(true, 1i > ~global1.x, true);
    let var_2 = Struct_2(vec2<i32>(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(555f)), _wgslsmith_f_op_f32(-1378f * -429f)), vec2<i32>(global1.x, global2.a.x), Struct_2(_wgslsmith_mult_vec2_i32(global2.a, vec2<i32>(16427i, -2147483647i)), global2.b), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 415f, 750f, -369f)), -851f, _wgslsmith_dot_vec3_i32(vec3<i32>(62576i, u_input.b.x, 23771i), vec3<i32>(2147483647i, 0i, 24083i)), global2.b.x)), global1.x), firstLeadingBit(global2.b));
    let var_3 = false;
    let var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(~firstTrailingBit(var_2.a.x), _wgslsmith_div_i32(func_3(113f, var_2.a, var_2, Struct_1(vec4<f32>(-107f, 795f, -861f, -943f), 573f, var_2.a.x, 0u)), ~u_input.b.x)) >> (~(~vec2<u32>(1u, global2.b.x)) % vec2<u32>(32u)), max(u_input.b, vec2<i32>(28245i, 2147483647i)));
    return 1f;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec2<f32>, 31>();
    let var_0 = 28428i != _wgslsmith_add_i32(arg_1.x, -abs(_wgslsmith_div_i32(arg_1.x, 57180i)));
    global1 = arg_1;
    var var_1 = i32(-1i) * -(~(global2.a.x ^ (-1i << (arg_2.x % 32u))));
    var var_2 = !vec4<bool>(false, var_0, var_0, true);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-916f, arg_0.x, arg_0.x, -550f), vec4<f32>(-589f, 113f, -1045f, arg_0.x), vec4<bool>(var_2.x, var_0, var_2.x, false))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, arg_0.x, -739f, 211f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.x)))), 187f)), -select(-1i, abs(55544i << (global2.b.x % 32u)), false), 0u | (global2.b.x >> (arg_2.x % 32u)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~7850u, 4294967295u, reverseBits(arg_1.d << (1u % 32u)) & _wgslsmith_add_u32(arg_2.d, select(76757u, arg_2.d, false))), vec3<u32>(arg_3.x, arg_1.d, min(countOneBits(~9396u), ~4294967295u)));
    global1 = ~vec3<i32>(~_wgslsmith_add_i32(arg_2.c, firstLeadingBit(global2.a.x)), -countOneBits(-29831i), -6432i >> (global2.b.x % 32u));
    global2 = Struct_2(vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, _wgslsmith_add_i32(1i, u_input.b.x)), abs(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(global2.b, vec3<u32>(arg_1.d, var_0, arg_1.d)), global2.b)));
    var var_1 = firstTrailingBit(-(arg_1.c << (select(~global2.b.x, 0u, true) % 32u)));
    let var_2 = select(-20612i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~select(vec3<i32>(-6598i, global2.a.x, 1i), vec3<i32>(arg_1.c, 27962i, 1i), vec3<bool>(false, false, true))), false) & ~global1.x;
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(step(907f, -2005f)), _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x - -1178f), arg_1.b)))), func_4(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(func_2())), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 17743i, arg_0.c) | select(vec3<i32>(-2147483647i, 0i, -2147483647i), vec3<i32>(global1.x, -19700i, 1i), arg_2), firstTrailingBit(~vec3<i32>(-1i, global2.a.x, 1i))), ~select(~vec4<u32>(816u, global2.b.x, 5573u, 0u), vec4<u32>(21961u, 8783u, arg_0.d, 0u), false)), arg_0, firstTrailingBit(~global2.b));
    global0 = array<vec2<f32>, 31>();
    var var_1 = Struct_2(abs(_wgslsmith_sub_vec2_i32(global1.xy, vec2<i32>(u_input.b.x, 10376i) << (~global2.b.zx % vec2<u32>(32u)))), select(vec3<u32>(arg_0.d, arg_1.d, 1u), min(global2.b, global2.b), vec3<bool>(var_0.b < _wgslsmith_f_op_f32(step(-867f, arg_0.b)), false, true)));
    let var_2 = Struct_2(vec2<i32>(countOneBits(global1.x) | min(-u_input.a, ~arg_1.c), ~countOneBits(arg_1.c)), max(vec3<u32>(global2.b.x, firstTrailingBit(1u), _wgslsmith_clamp_u32(arg_3.x, select(arg_1.d, global2.b.x, false), var_1.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(84828u, var_0.d, global2.b.x), vec3<u32>(1u, arg_1.d, global2.b.x)) | select(firstTrailingBit(vec3<u32>(global2.b.x, 51687u, 55107u)), var_1.b, arg_2)));
    var var_3 = select(vec3<bool>(any(vec2<bool>(arg_2, false | arg_2)), arg_2, !any(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2), arg_2))), vec3<bool>(!(_wgslsmith_mult_u32(global2.b.x, var_2.b.x) != _wgslsmith_mult_u32(29603u, 10911u)), arg_2, arg_2 & false), any(!select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), true), select(vec2<bool>(true, arg_2), vec2<bool>(false, arg_2), true), any(vec3<bool>(false, false, false)))));
    return var_2;
}

fn func_6(arg_0: Struct_2) -> vec4<u32> {
    global1 = min(select(_wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.x, u_input.a, 2147483647i), vec3<i32>(u_input.b.x, arg_0.a.x, 15473i))), firstLeadingBit(vec3<i32>(-1i, arg_0.a.x, global1.x)) | -vec3<i32>(18609i, 50098i, 27585i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, arg_0.a.x, 2147483647i) >> (vec3<u32>(arg_0.b.x, 13925u, global2.b.x) % vec3<u32>(32u)), reverseBits(vec3<i32>(arg_0.a.x, 0i, arg_0.a.x)), vec3<i32>(global1.x, -1i, 2147483647i)), vec3<bool>(false, false, false)), -abs(~select(vec3<i32>(arg_0.a.x, u_input.b.x, 1i), vec3<i32>(global1.x, 19197i, u_input.a), false)));
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-735f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(981f, 1306f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), -119f)))))));
    var var_2 = func_1(Struct_1(func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, var_1, var_1, var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1071f, 926f, 393f, -499f))), func_4(func_4(vec2<f32>(var_1, var_1), vec3<i32>(-1i, -11091i, u_input.b.x), vec4<u32>(arg_0.b.x, 4294967295u, arg_0.b.x, global2.b.x)).a.yx, vec3<i32>(u_input.a, arg_0.a.x, u_input.a), vec4<u32>(arg_0.b.x, 0u, arg_0.b.x, 1660u) | vec4<u32>(4294967295u, 1u, global2.b.x, arg_0.b.x)), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_1), vec2<f32>(411f, var_1)), vec3<i32>(0i, u_input.b.x, global2.a.x), max(vec4<u32>(arg_0.b.x, 1u, 1u, 47723u), vec4<u32>(3433u, 1u, 15988u, 4294967295u))), vec3<u32>(_wgslsmith_div_u32(1u, arg_0.b.x), arg_0.b.x, 4820u)).a, _wgslsmith_f_op_f32(abs(var_1)), countOneBits(_wgslsmith_div_i32(-37182i, global1.x)), _wgslsmith_mult_u32(26014u, 15733u)), Struct_1(vec4<f32>(-544f, _wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, var_1))), 405f), _wgslsmith_f_op_f32(-func_4(global0[_wgslsmith_index_u32(arg_0.b.x, 31u)], vec3<i32>(30847i, u_input.b.x, -2147483647i), _wgslsmith_sub_vec4_u32(vec4<u32>(17571u, global2.b.x, 4294967295u, arg_0.b.x), vec4<u32>(49055u, 1u, arg_0.b.x, global2.b.x))).a.x), global1.x ^ _wgslsmith_div_i32(-14760i, -u_input.a), arg_0.b.x), !all(vec2<bool>(true, true)), select(vec2<u32>(abs(_wgslsmith_div_u32(0u, arg_0.b.x)), max(4294967295u, global2.b.x)), global2.b.yz, select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, true), !all(vec3<bool>(false, false, false)))));
    let var_3 = Struct_2(-(func_1(Struct_1(vec4<f32>(var_1, var_1, 439f, -318f), -1161f, global2.a.x, arg_0.b.x), Struct_1(vec4<f32>(-1791f, var_1, var_1, -287f), 307f, -17892i, 12072u), false, arg_0.b.zx).a ^ -global2.a) >> ((~_wgslsmith_div_vec2_u32(var_2.b.zz, vec2<u32>(4294967295u, var_2.b.x)) | var_2.b.zz) % vec2<u32>(32u)), vec3<u32>(~_wgslsmith_mod_u32(global2.b.x, var_2.b.x), 1u, reverseBits(min(_wgslsmith_add_u32(42686u, arg_0.b.x), ~global2.b.x))));
    return ~(~(~(~(vec4<u32>(64266u, arg_0.b.x, var_3.b.x, arg_0.b.x) | vec4<u32>(3533u, 51051u, global2.b.x, var_3.b.x)))));
}

fn func_7(arg_0: vec4<u32>) -> i32 {
    var var_0 = !(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(true, false, false))), vec2<bool>(true, true)));
    let var_1 = !select(vec3<bool>(!any(vec2<bool>(false, var_0.x)), true, global2.a.x >= -2147483647i), !(!vec3<bool>(false, var_0.x, var_0.x)), !any(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, false, false))));
    global0 = array<vec2<f32>, 31>();
    var_0 = var_1.yz;
    global2 = Struct_2(global2.a, min(~abs(vec3<u32>(0u, 63450u, global2.b.x)), func_6(Struct_2(global1.zx, vec3<u32>(20776u, 14788u, global2.b.x))).ywx));
    return abs(-_wgslsmith_sub_i32(1i, global2.a.x) ^ -firstTrailingBit(0i)) >> (_wgslsmith_mult_u32(~func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-162f, -1369f, -1000f, 1000f) - vec4<f32>(1198f, 1316f, -1214f, -1000f)), Struct_1(vec4<f32>(-508f, -513f, 353f, -1240f), -934f, -1i, global2.b.x), Struct_1(vec4<f32>(1845f, 1000f, 353f, -2202f), -1047f, 19541i, arg_0.x), global2.b).d, 24169u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(any(vec4<bool>(true, true, true, true)), select(all(vec4<bool>(true, true, true, false)), true, true), true), vec3<bool>(true, (global2.b.x >= 1u) && (global2.b.x > global2.b.x), ~global1.x < global2.a.x), true);
    global1 = vec3<i32>(select(func_7(func_6(func_1(Struct_1(vec4<f32>(-1632f, 695f, -1331f, -711f), -1000f, 2147483647i, 4294967295u), Struct_1(vec4<f32>(-1634f, -648f, 119f, 731f), -1042f, 1i, 36279u), true, vec2<u32>(4294967295u, global2.b.x)))), -1i, false), ~(func_1(Struct_1(vec4<f32>(366f, 236f, 1664f, 1000f), -1828f, 2147483647i, 19730u), Struct_1(vec4<f32>(-1114f, -461f, -1881f, -440f), -946f, global2.a.x, 8463u), all(vec3<bool>(true, var_0.x, var_0.x)), global2.b.xz).a.x << (~global2.b.x % 32u)), _wgslsmith_sub_i32(-7936i, global2.a.x));
    global1 = -vec3<i32>(1i | (select(u_input.a, u_input.b.x, var_0.x) | -global2.a.x), func_7(min(min(vec4<u32>(29377u, global2.b.x, global2.b.x, global2.b.x), vec4<u32>(18969u, 25887u, 1u, global2.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 10453u, global2.b.x, 47175u), vec4<u32>(global2.b.x, 41525u, global2.b.x, global2.b.x)))), u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-141f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1614f - -195f) - _wgslsmith_f_op_f32(-109f * 437f)), 702f))));
    global1 = _wgslsmith_add_vec3_i32(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(-647i, global2.a.x, 0i), vec3<i32>(12140i, -2147483647i, 94056i) >> (global2.b % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_div_i32(u_input.a, -(1i ^ global2.a.x)), _wgslsmith_sub_i32(abs(u_input.a), func_3(_wgslsmith_f_op_f32(f32(-1f) * -261f), u_input.b, Struct_2(vec2<i32>(global2.a.x, -37768i), global2.b), Struct_1(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x, u_input.b.x, global2.b.x))), _wgslsmith_div_i32(func_4(global0[_wgslsmith_index_u32(4988u << (global2.b.x % 32u), 31u)], vec3<i32>(global2.a.x, u_input.a, global2.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 151982u, 11028u, global2.b.x), vec4<u32>(global2.b.x, global2.b.x, 4294967295u, 65691u))).c, -_wgslsmith_dot_vec2_i32(u_input.b, global1.yy))));
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-func_5(vec4<f32>(var_1.x, var_1.x, var_1.x, -1786f), Struct_1(vec4<f32>(var_1.x, var_1.x, 640f, -140f), 964f, -2147483647i, 1u), Struct_1(vec4<f32>(1051f, var_1.x, var_1.x, var_1.x), -293f, 0i, global2.b.x), vec3<u32>(global2.b.x, global2.b.x, global2.b.x)).a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-917f, -2260f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-959f, var_1.x, 1297f, 935f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(538f - 1965f), -935f, 1007f, _wgslsmith_f_op_f32(352f - 207f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 300f, var_1.x) - vec4<f32>(var_1.x, -1746f, -1023f, -368f)))))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 2425f, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, -1101f, -1354f), vec4<f32>(var_1.x, 655f, -488f, var_1.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true))) * vec4<f32>(var_1.x, -590f, var_1.x, var_1.x))), var_1.x, _wgslsmith_add_i32(-13703i, abs(global1.x) << (global2.b.x % 32u)), ~(~func_6(Struct_2(global1.xz, vec3<u32>(global2.b.x, 4294967295u, global2.b.x))).x)), func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 452f, var_1.x, -2217f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1672f, var_1.x, var_1.x, var_1.x), vec4<f32>(1599f, 1110f, var_1.x, -760f)))), vec4<f32>(var_1.x, -263f, var_1.x, _wgslsmith_f_op_f32(-var_1.x))), func_4(_wgslsmith_f_op_vec2_f32(max(var_1.zz, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-541f, var_1.x))))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, u_input.b.x, 2147483647i), vec3<i32>(global2.a.x, 1i, global1.x), vec3<i32>(-24698i, global1.x, 4712i)), -vec3<i32>(-25924i, global2.a.x, global2.a.x)), func_6(Struct_2(vec2<i32>(u_input.b.x, 1i), vec3<u32>(4294967295u, 1u, global2.b.x)))), func_4(var_1.yz, vec3<i32>(max(u_input.b.x, global2.a.x), u_input.a, reverseBits(-40561i)), ~select(vec4<u32>(4294967295u, 36431u, global2.b.x, 125720u), vec4<u32>(global2.b.x, global2.b.x, 20616u, 0u), true)), ~(~(~global2.b))), global2.b);
    let var_3 = vec3<i32>(~func_7(_wgslsmith_mult_vec4_u32(~vec4<u32>(global2.b.x, 80665u, var_2.d, 49533u), vec4<u32>(var_2.d, var_2.d, var_2.d, 53383u))), var_2.c | -_wgslsmith_clamp_i32(global2.a.x, ~global1.x, min(-15966i, var_2.c)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(global2.b.x, 4294967295u) >> (global2.b.xx % vec2<u32>(32u)), ~vec2<u32>(0u, var_2.d)), ~vec2<u32>(66865u, 23590u), global2.b.xx), ~var_2.d);
}

