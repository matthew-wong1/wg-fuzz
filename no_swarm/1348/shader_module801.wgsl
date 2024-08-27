struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-2089f, vec4<u32>(34068u, 42882u, 72579u, 44551u)), vec4<bool>(true, false, true, true), vec3<i32>(1i, 43668i, i32(-2147483648)), -501f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(floor(1000f)))))));
    global1 = global0[_wgslsmith_index_u32(global1.a.b.x, 29u)];
    let var_1 = !select(select(select(!vec3<bool>(false, global1.b.x, false), select(global1.b.zyx, global1.b.xwx, global1.b.xzw), var_0 <= -314f), vec3<bool>(global1.b.x, all(vec3<bool>(global1.b.x, false, global1.b.x)), !global1.b.x), vec3<bool>(global1.a.b.x != 0u, !global1.b.x, true)), vec3<bool>(select(true, global1.a.a >= 2263f, true), 1i > u_input.a, true), select(!vec3<bool>(global1.b.x, false, global1.b.x), select(vec3<bool>(global1.b.x, true, global1.b.x), global1.b.yxy, global1.b.wzy), !select(global1.b.zzy, global1.b.yxw, global1.b.x)));
    let var_2 = global1.b.x;
    let var_3 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(1u), u_input.b.x, abs(global1.a.b.x)), vec3<u32>(min(1u, global1.a.b.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(26971u, global1.a.b.x, 4793u, 0u), vec4<u32>(0u, global1.a.b.x, 1u, 1u)), abs(~global1.a.b.x)));
    return false;
}

fn func_4(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = global1.c.x;
    var var_1 = countOneBits(-28388i);
    global1 = global0[_wgslsmith_index_u32(53149u, 29u)];
    global0 = array<Struct_2, 29>();
    let var_2 = ~(0u >> (min(1u, firstLeadingBit(~21566u)) % 32u));
    return 1i;
}

fn func_2() -> vec4<f32> {
    global0 = array<Struct_2, 29>();
    var var_0 = func_4(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(global1.a.b.x, global1.a.b.x)), select(vec2<u32>(92790u, global1.a.b.x) >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)), ~vec2<u32>(u_input.b.x, 0u), func_3())), global1.d);
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~global1.a.b.zx, vec2<u32>(1u, global1.a.b.x)), 29u)];
    global0 = array<Struct_2, 29>();
    let var_1 = 2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.b.x ^ 4294967295u, 0u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global1.a.b.x, global1.a.b.x, 19608u), global1.a.b.x, firstTrailingBit(25675u)), global1.a.b.x), u_input.b) % 32u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a, 441f, -1570f, global1.d) * vec4<f32>(global1.d, -1045f, -1528f, global1.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a, global1.d, -966f, global1.d))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, global1.d, -437f, -2262f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-436f, 512f, 1134f, global1.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2064f, global1.a.a, -583f, global1.d))), false))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a.a, global1.d, -439f, global1.a.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.d, global1.a.a, 154f, global1.a.a), vec4<f32>(-631f, global1.d, -504f, 1189f)))))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~global1.a.b.x, 0u >> ((1u ^ global1.a.b.x) % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a.b.x, 33642u, 10316u), arg_1.xwx), arg_3.a.b.x >> (51342u % 32u)), u_input.b.x), firstTrailingBit(abs(min(~u_input.b, arg_1 | global1.a.b)))), 29u)];
    let var_1 = reverseBits(~vec3<u32>(1u, ~10526u, ~global1.a.b.x));
    var var_2 = var_0.a.a;
    global1 = Struct_2(Struct_1(1002f, _wgslsmith_clamp_vec4_u32(vec4<u32>(~16354u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(28651u, var_1.x, var_1.x, var_1.x), u_input.b), 62962u), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 0u, global1.a.b.x, 14536u), arg_1, global1.a.b), _wgslsmith_clamp_vec4_u32(global1.a.b, arg_3.a.b, vec4<u32>(arg_3.a.b.x, 33901u, 0u, 77641u))), ~(~arg_3.a.b))), arg_3.b, -min(vec3<i32>(abs(global1.c.x), -15056i, ~(-10359i)), global1.c), var_0.a.a);
    let var_3 = ~var_0.a.b.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1275f, var_0.a.a)))))), arg_3.a.b);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global0 = array<Struct_2, 29>();
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-590f, _wgslsmith_f_op_f32(-global1.a.a), arg_0.b.x && true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f * -2072f)))))));
    global0 = array<Struct_2, 29>();
    let var_1 = Struct_2(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 288f, 504f, arg_0.a.a))))), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.a.b.x, 61671u, arg_1), vec4<u32>(44860u, arg_0.a.b.x, arg_1, arg_2.a.b.x)), 1u & ~arg_1, ~global1.a.b.x), min(~1i, -11794i), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(427f, -954f)), _wgslsmith_sub_vec4_u32(arg_0.a.b, global1.a.b)), vec4<bool>(true, true, arg_0.b.x, any(vec4<bool>(arg_0.b.x, arg_2.b.x, arg_0.b.x, arg_0.b.x))), -vec3<i32>(arg_0.c.x, arg_0.c.x, u_input.a), -278f)), arg_2.b, global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1280f, 578f, arg_2.d, 733f))), reverseBits(vec4<u32>(global1.a.b.x, 83191u, 1u, 0u)), -5097i << (u_input.b.x % 32u), Struct_2(Struct_1(global1.a.a, vec4<u32>(global1.a.b.x, 4294967295u, arg_2.a.b.x, 28968u)), vec4<bool>(false, arg_2.b.x, false, global1.b.x), vec3<i32>(48714i, u_input.a, 48227i), arg_0.a.a)).a) - _wgslsmith_f_op_f32(-arg_0.a.a)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.d, -207f), vec2<f32>(452f, 672f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1271f, arg_0.a.a), vec2<f32>(var_0.x, var_1.a.a)))) + vec2<f32>(1f, 1f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec4_f32(func_2()).wy, vec2<f32>(global1.d, _wgslsmith_f_op_f32(floor(-507f))))));
    return Struct_2(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a, arg_0.a.a, 1223f, var_1.d) + vec4<f32>(-1568f, var_1.d, arg_0.d, 272f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a, 173f, -281f, var_1.d))), vec4<u32>(arg_2.a.b.x, firstTrailingBit(u_input.b.x), ~(~arg_0.a.b.x), 80365u), global1.c.x, Struct_2(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1281f, 390f, -371f, 1000f)), u_input.b, _wgslsmith_mod_i32(global1.c.x, -8744i), Struct_2(arg_0.a, vec4<bool>(arg_2.b.x, false, true, arg_0.b.x), arg_2.c, -1088f)), select(!vec4<bool>(false, arg_0.b.x, true, false), arg_0.b, true), var_1.c >> ((vec3<u32>(42160u, arg_2.a.b.x, 1u) & arg_0.a.b.wzw) % vec3<u32>(32u)), -375f)), vec4<bool>(!(!arg_0.b.x), all(!vec4<bool>(arg_0.b.x, false, var_1.b.x, true)), any(!(!var_1.b.zwy)), 21838u >= global1.a.b.x), vec3<i32>(29981i, max(1i, 1i), arg_2.c.x) >> ((_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(arg_1, 7504u, arg_1)), ~arg_2.a.b.xxy) >> (firstLeadingBit(vec3<u32>(arg_2.a.b.x, 62961u, var_1.a.b.x) >> (u_input.b.www % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, global1.a.a))) - _wgslsmith_f_op_f32(-467f - 885f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    let var_1 = func_1(global0[_wgslsmith_index_u32(45855u, 29u)], _wgslsmith_sub_u32(countOneBits(68941u) << ((_wgslsmith_mult_u32(1u, global1.a.b.x) ^ _wgslsmith_mult_u32(14715u, global1.a.b.x)) % 32u), _wgslsmith_sub_u32(abs(~var_0.b.x), 9626u)), Struct_2(global1.a, !global1.b, -global1.c & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -35131i) ^ global1.c, global1.c << (u_input.b.yyz % vec3<u32>(32u))), _wgslsmith_f_op_f32(-var_0.a)));
    global0 = array<Struct_2, 29>();
    var var_2 = Struct_1(1435f, ~var_0.b);
    global1 = Struct_2(func_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-761f, 1360f, var_0.a, var_1.a.a) * vec4<f32>(var_1.d, 689f, 2213f, -385f)))))), _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, var_1.a.b.x, 4294967295u, var_0.b.x), u_input.b, var_2.b), ~select(global1.a.b, vec4<u32>(global1.a.b.x, 39040u, var_1.a.b.x, global1.a.b.x), var_1.b)), -24796i, Struct_2(func_1(var_1, 35881u, func_1(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], var_2.b.x, Struct_2(Struct_1(global1.d, global1.a.b), global1.b, var_1.c, var_1.a.a))).a, vec4<bool>(true, var_0.a > -599f, func_1(Struct_2(var_1.a, vec4<bool>(var_1.b.x, false, var_1.b.x, global1.b.x), var_1.c, -1000f), 4294967295u, Struct_2(var_1.a, vec4<bool>(false, true, true, var_1.b.x), vec3<i32>(36921i, global1.c.x, 2147483647i), global1.a.a)).b.x, var_1.b.x), select(var_1.c >> (vec3<u32>(17873u, u_input.b.x, global1.a.b.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(global1.c, vec3<i32>(-2147483647i, global1.c.x, var_1.c.x)), global1.b.x), -211f)), vec4<bool>(any(vec2<bool>(true, true)), any(!global1.b.xyy), true, !var_1.b.x), _wgslsmith_mult_vec3_i32(var_1.c, -(countOneBits(vec3<i32>(-31529i, u_input.a, -32749i)) ^ countOneBits(global1.c))), -2700f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(697f, 1303f, var_0.a, var_1.d))), vec4<f32>(var_2.a, 2250f, -991f, -510f), !global1.b.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -668f), 865f, _wgslsmith_f_op_vec4_f32(func_2()).x)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(456f, 112f, var_0.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(946f, var_0.a, -1236f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 1082f, -1843f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.d, var_0.a, -1000f))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1175f, -1000f, var_0.a), vec3<f32>(2056f, -658f, var_0.a)), _wgslsmith_f_op_vec4_f32(func_2()).xww))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(902f))), func_5(vec4<f32>(1368f, var_2.a, 1038f, var_1.d), abs(var_2.b), -global1.c.x, func_1(var_1, 130486u, global0[_wgslsmith_index_u32(var_1.a.b.x, 29u)])).a, var_2.a) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.d, _wgslsmith_f_op_f32(abs(var_1.a.a)), _wgslsmith_f_op_f32(trunc(607f)))))), var_1.a.b.x, var_1.a.a);
}

