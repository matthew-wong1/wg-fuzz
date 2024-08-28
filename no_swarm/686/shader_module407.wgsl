struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12>;

var<private> global1: array<vec4<u32>, 15>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-6362i, 30917i), 49156i, -27533i, vec2<u32>(17725u, 59281u));

var<private> global3: array<Struct_1, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~reverseBits(vec2<i32>(-1i, global2.a.x)), _wgslsmith_clamp_vec2_i32(-global2.a, vec2<i32>(1218i, -40826i), vec2<i32>(37482i, -872i))), global2.a), -global2.a.x | max(-1i, ~(-9127i) ^ (global2.b ^ -45450i)), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(13603i, global2.a.x, global2.c) ^ 35477i, ~abs(-49891i & global2.a.x)), ~(~(~global2.d)) << (u_input.a % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(max(674f, _wgslsmith_f_op_f32(sign(104f)))), -733f)));
    var var_2 = Struct_1(firstLeadingBit(select(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.b, global2.b), vec2<i32>(global2.a.x, 1i)), vec2<i32>(-12515i, var_0.c), u_input.c.x >= 22451u)) << ((vec2<u32>(_wgslsmith_div_u32(1u, 1u), _wgslsmith_mult_u32(5546u, 57220u)) | var_0.d) % vec2<u32>(32u)), 1i, _wgslsmith_div_i32(var_0.a.x, global2.c), (vec2<u32>(_wgslsmith_sub_u32(11295u, u_input.b.x), min(4294967295u, 61566u)) << ((~var_0.d | (vec2<u32>(u_input.c.x, var_0.d.x) ^ vec2<u32>(global2.d.x, u_input.b.x))) % vec2<u32>(32u))) & u_input.d);
    var_0 = global3[_wgslsmith_index_u32(4294967295u, 21u)];
    global3 = array<Struct_1, 21>();
    return !(1u < u_input.a.x);
}

fn func_2() -> vec4<bool> {
    global2 = global3[_wgslsmith_index_u32(0u, 21u)];
    var var_0 = u_input.c.zxw;
    var var_1 = Struct_1(~vec2<i32>(_wgslsmith_clamp_i32(-global2.b, min(-1i, 2147483647i), _wgslsmith_div_i32(-1i, global2.a.x)), -abs(-1i)), global2.b, _wgslsmith_add_i32((-global2.a.x << (reverseBits(u_input.a.x) % 32u)) & 0i, global2.b), select(abs(var_0.zz), _wgslsmith_mult_vec2_u32(~u_input.d, var_0.zz), all(vec4<bool>(true, true, true, true))));
    var_0 = ~(~firstTrailingBit(u_input.b.zyw));
    global2 = global3[_wgslsmith_index_u32(0u, 21u)];
    return !vec4<bool>((i32(-1i) * -21912i) < reverseBits(global2.a.x), true, true, func_3());
}

fn func_4(arg_0: vec4<bool>) -> u32 {
    global3 = array<Struct_1, 21>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1791f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-366f))))));
    global3 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 790f, -773f, var_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-1897f, 862f, 1000f, -845f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, -1329f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, -439f))))))));
    global0 = array<vec2<bool>, 12>();
    return 1u;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(~(~1u));
    global1 = array<vec4<u32>, 15>();
    let var_1 = true;
    return global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~global2.d.x, 4294967295u, abs(arg_1.d.x) << (1u % 32u)), 21u)];
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<f32>(-869f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1817f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(298f + 1541f)))))));
    global1 = array<vec4<u32>, 15>();
    global0 = array<vec2<bool>, 12>();
    global2 = global3[_wgslsmith_index_u32(760u, 21u)];
    let var_1 = global2.d;
    return func_5(firstLeadingBit(func_4(!func_2())), global3[_wgslsmith_index_u32(global2.d.x, 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -42841i;
    var_0 = _wgslsmith_mod_i32(-2147483647i, -select(countOneBits(1i), _wgslsmith_div_i32(-global2.c, firstLeadingBit(global2.a.x)), all(vec3<bool>(false, true, false))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-800f, -1167f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(434f, -1872f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(418f, -2419f)), vec2<f32>(989f, -990f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-942f, 560f) + vec2<f32>(-120f, -132f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(239f, 1000f), vec2<f32>(-1494f, -758f), true))), false))) - vec2<f32>(1000f, _wgslsmith_f_op_f32(1f + 639f)));
    let var_3 = abs(_wgslsmith_add_u32(_wgslsmith_add_u32(66209u, 76957u), _wgslsmith_sub_u32(~1u, firstTrailingBit(~u_input.d.x))));
    var var_4 = func_1();
    let var_5 = ~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(var_3, global2.d.x), _wgslsmith_div_u32(global2.d.x, var_4.d.x))), global2.d >> (vec2<u32>(15841u, max(55182u, 30932u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(-(vec3<i32>(-21467i, global2.b, 47858i) | select(vec3<i32>(0i, -1i, var_4.b), vec3<i32>(var_4.a.x, global2.b, global2.c), true)), vec3<i32>(1i, global2.c, var_4.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -683f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1786f)), _wgslsmith_div_f32(var_2.x, var_2.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-160f, 215f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-281f, var_2.x)))), _wgslsmith_f_op_f32(-var_2.x))), global2.c, -_wgslsmith_add_vec3_i32(-vec3<i32>(var_4.c, var_4.a.x, 19778i), -vec3<i32>(-2147483647i, 0i, -37364i)) ^ vec3<i32>(select(~var_4.b, 1i, true), -2147483647i, select(~global2.c, ~var_4.c, any(vec4<bool>(true, false, true, true)))), min(_wgslsmith_div_i32(~var_4.a.x, abs(-1i)) ^ -func_5(var_3, global3[_wgslsmith_index_u32(var_4.d.x, 21u)]).b, -48912i));
}

