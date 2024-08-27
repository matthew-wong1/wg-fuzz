struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: array<Struct_2, 28>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-969f, -1643f, -1000f, -208f), vec4<f32>(870f, -374f, 668f, 425f), 73162u, 43017i, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<f32> {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a.x)) - _wgslsmith_f_op_f32(max(global2.a.x, -1677f))), global2.b.x)), global2.a.x, -865f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f)))), _wgslsmith_f_op_vec4_f32(global2.b + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global2.b - _wgslsmith_f_op_vec4_f32(exp2(global2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a))))), countOneBits(max(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global2.c, 25050u, 34519u)), vec3<u32>(4294967295u, 1u, 8271u)), ~u_input.d >> (~85961u % 32u))), countOneBits(_wgslsmith_mult_i32(0i, 15797i | -global2.d)), global2.e);
    global0 = array<vec4<u32>, 31>();
    var var_1 = 26164i;
    var var_2 = global1[_wgslsmith_index_u32(global2.c, 28u)];
    var var_3 = vec3<bool>(true, true, var_0.d != abs(0i));
    return _wgslsmith_f_op_vec3_f32(global2.b.yxy * global2.b.zzy);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> bool {
    global2 = arg_0.d;
    global2 = arg_0.c;
    var var_0 = arg_0.d.d;
    var_0 = firstTrailingBit(countOneBits(u_input.c)) << (~(arg_0.b >> (~1u % 32u)) % 32u);
    let var_1 = _wgslsmith_mult_i32(global2.d, -2147483647i);
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(select(global0[_wgslsmith_index_u32(1u, 31u)], select(global0[_wgslsmith_index_u32(~4294967295u, 31u)], ~(~global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), !any(vec4<bool>(false, true, global2.e, global2.e))), !select(select(vec4<bool>(true, global2.e, true, global2.e), vec4<bool>(global2.e, true, global2.e, global2.e), false), !vec4<bool>(global2.e, true, false, true), false)));
    var var_1 = firstTrailingBit(-min(~(vec3<i32>(global2.d, 57267i, global2.d) << (var_0.yzy % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c, 1i, global2.d), -vec3<i32>(u_input.c, global2.d, -2147483647i))));
    global1 = array<Struct_2, 28>();
    let var_2 = Struct_1(vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1446f + 159f), _wgslsmith_f_op_f32(-1121f - global2.a.x)))), _wgslsmith_div_f32(-169f, -285f), global2.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), global2.c, var_1.x, func_4(Struct_2(-135f, 4294967295u, Struct_1(_wgslsmith_f_op_vec4_f32(-global2.b), _wgslsmith_f_op_vec4_f32(-global2.a), 1u, firstTrailingBit(14411i), global2.b.x < global2.a.x), Struct_1(_wgslsmith_div_vec4_f32(global2.a, vec4<f32>(264f, -361f, -824f, -1319f)), _wgslsmith_div_vec4_f32(global2.b, vec4<f32>(-1837f, 342f, -765f, 1125f)), ~u_input.b.x, abs(var_1.x), global2.e)), _wgslsmith_f_op_vec3_f32(func_3(19542i, firstTrailingBit(u_input.c))), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b.zyx) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(1i, _wgslsmith_clamp_i32(global2.d, u_input.a, -13202i) | (-24214i << (global2.c % 32u)))))));
    return var_2;
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1205f, global2.a.x, 201f, global2.b.x))))) * global2.b), vec4<f32>(func_2().b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 788f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), global2.a.x)), _wgslsmith_f_op_vec3_f32(func_3(-3601i, ~1i)).x)), arg_0), u_input.d, -(~(-var_0.d) | abs(firstTrailingBit(-70048i))), !var_0.e);
    let var_1 = any(!vec2<bool>(true, select(true, true, any(vec2<bool>(false, global2.e)))));
    let var_2 = _wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(select(reverseBits(vec4<i32>(global2.d, var_0.d, 26465i, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.c, var_0.d, u_input.c), vec4<i32>(u_input.a, 0i, 41909i, var_0.d)), true), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(8640i, global2.d, var_0.d, -28303i), vec4<i32>(global2.d, -2147483647i, -39596i, 0i), vec4<i32>(-2147483647i, -22679i, global2.d, -13366i))), -(~(~(~vec4<i32>(var_0.d, 68171i, var_0.d, -33375i)))));
    global0 = array<vec4<u32>, 31>();
    return func_2();
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~(~vec3<u32>(46465u, 8444u, 0u));
    let var_1 = _wgslsmith_mult_i32(arg_0.c.d, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, _wgslsmith_mod_i32(countOneBits(1i), arg_0.c.d)), global2.d));
    global1 = array<Struct_2, 28>();
    var var_2 = func_1(global2.a.x, arg_0.d.e || global2.e);
    let var_3 = reverseBits(_wgslsmith_dot_vec4_i32(max(max(vec4<i32>(-8509i, 1i, var_1, -41246i), vec4<i32>(21150i, var_1, -28767i, 17515i)), vec4<i32>(global2.d, 2147483647i, -37577i, global2.d) & vec4<i32>(global2.d, -40197i, var_2.d, 1i)) ^ -vec4<i32>(var_2.d, -8200i, arg_0.d.d, var_2.d), -abs(firstTrailingBit(vec4<i32>(global2.d, 2147483647i, var_2.d, -2147483647i)))));
    return Struct_2(_wgslsmith_f_op_f32(global2.a.x - global2.a.x), 4294967295u, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-486f, 777f, global2.b.x, _wgslsmith_f_op_f32(ceil(arg_0.a))) * _wgslsmith_f_op_vec4_f32(global2.b - vec4<f32>(arg_0.a, 193f, 474f, global2.a.x))), global2.a, _wgslsmith_sub_u32(abs(~var_0.x), global2.c), func_2().d, global2.e & true), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(global2.d, -global2.d, false);
    var var_1 = global2.a.x;
    let var_2 = func_5(Struct_2(_wgslsmith_div_f32(-361f, global2.b.x), ~reverseBits(1u), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)), true), Struct_1(global2.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global2.b))), ~u_input.b.x, 1i, true)));
    let var_3 = -306f;
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(u_input.b, select(vec2<u32>(9860u, u_input.b.x), ~select(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(4294967295u, u_input.b.x), global2.e), global2.e)), max(min(~vec2<u32>(0u, u_input.b.x), countOneBits(vec2<u32>(28990u, 91718u))) ^ u_input.b, _wgslsmith_mod_vec2_u32(~u_input.b, ~(u_input.b | vec2<u32>(23724u, 0u))))), 28u)];
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f - _wgslsmith_f_op_f32(1063f + 1815f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.a.x + 738f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(941f, func_5(Struct_2(var_3, var_4.b, var_2.c, var_2.c)).a) + var_4.a))));
    var var_6 = func_5(Struct_2(_wgslsmith_div_f32(-506f, var_5), _wgslsmith_sub_u32(var_4.b, abs(~var_4.c.c)), var_4.d, Struct_1(vec4<f32>(1078f, _wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(step(var_4.d.b.x, 836f)), func_1(-1329f, var_2.d.e).b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.c.a - vec4<f32>(942f, -406f, 1170f, var_3)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1480f, global2.a.x, var_4.a, 784f))), var_4.b, ~0i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, global2.b);
}

