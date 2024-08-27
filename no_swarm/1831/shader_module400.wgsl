struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(-4285i, 2147483647i, -1i, -45038i, i32(-2147483648), 51260i, 1i, 12974i, 63541i, -1i, 2147483647i, -55928i, -1i, 0i, i32(-2147483648), 49953i, -31538i, 1i, 47743i, -1392i, -56946i, 35665i, -1i, 8730i, 0i, -18573i, 1i, i32(-2147483648), -1i, i32(-2147483648), 2047i);

var<private> global1: array<vec3<bool>, 1>;

var<private> global2: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(2147483647i, 17802i, -22078i), vec3<i32>(2147483647i, -42989i, 0i), vec3<i32>(-56497i, 17436i, -8115i), vec3<i32>(13442i, -41389i, -1i), vec3<i32>(i32(-2147483648), 1i, -1i));

var<private> global3: vec3<f32> = vec3<f32>(1748f, 1776f, 1053f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    global2 = array<vec3<i32>, 5>();
    let var_0 = abs(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.b), 31u)], i32(-1i) * -26237i), vec2<i32>(global0[_wgslsmith_index_u32(74651u, 31u)], global0[_wgslsmith_index_u32(30233u, 31u)]) << (~vec2<u32>(25961u, u_input.b) % vec2<u32>(32u)))) >> (vec2<u32>(select(~u_input.a, u_input.b, any(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), countOneBits(1u)) % vec2<u32>(32u));
    let var_1 = vec3<i32>(-1i >> (u_input.b % 32u), -1945i, 34095i);
    let var_2 = Struct_3(~(~0u), Struct_1(max(min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.b, 29125u)), firstLeadingBit(vec2<u32>(15454u, u_input.a))), vec2<u32>(abs(u_input.a), reverseBits(u_input.a))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(20211u, 4294967295u, u_input.d))), max(vec3<u32>(6354u, u_input.a, 6513u) | vec3<u32>(u_input.d, u_input.a, u_input.d), vec3<u32>(102763u, 0u, u_input.a)), ~select(vec3<u32>(u_input.d, 21121u, u_input.a), vec3<u32>(4294967295u, u_input.d, 0u), global1[_wgslsmith_index_u32(86210u, 1u)]))));
    var var_3 = Struct_2(!(_wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(4294967295u, 31u)], max(var_1.x, var_0.x)) <= min(26665i, max(1i, 0i))), var_2.b, _wgslsmith_dot_vec4_i32(firstTrailingBit(~(~vec4<i32>(41255i, 29464i, u_input.e.x, global0[_wgslsmith_index_u32(u_input.a, 31u)]))), max(~(vec4<i32>(var_1.x, 8260i, -62051i, var_0.x) >> (vec4<u32>(23503u, 0u, var_2.b.b.x, 1u) % vec4<u32>(32u))), -abs(vec4<i32>(var_1.x, 38109i, 18216i, global0[_wgslsmith_index_u32(4294967295u, 31u)])))), Struct_1(vec2<u32>(_wgslsmith_mod_u32(0u, 4294967295u), u_input.b), firstLeadingBit(vec3<u32>(var_2.a, 4294967295u, u_input.a)) >> (~abs(var_2.b.b) % vec3<u32>(32u))));
    return _wgslsmith_add_i32(8562i, ~(-1i));
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    return firstTrailingBit(select(~vec3<i32>(25590i, u_input.c, u_input.c), global2[_wgslsmith_index_u32(~arg_0.d.b.x ^ abs(u_input.b), 5u)], 367f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1615f + -1100f) + global3.x)));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    global1 = array<vec3<bool>, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-363f, global3.x, global3.x) + vec3<f32>(1088f, global3.x, 996f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, global3.x, global3.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(ceil(-2056f)), _wgslsmith_f_op_f32(1116f - -1738f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-411f, global3.x, -1209f), vec3<f32>(global3.x, -738f, -775f))), vec3<f32>(global3.x, -260f, global3.x), vec3<bool>(false, true, true)))), true))));
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !(!vec2<bool>(select(true, false, false), all(global1[_wgslsmith_index_u32(31832u, 1u)]))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true))));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(arg_1, u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.a), vec2<u32>(0u, arg_1), vec2<u32>(arg_1, arg_1))), vec2<u32>(1u, 1u)) & vec2<u32>(select(_wgslsmith_div_u32(u_input.d, arg_1), 1u, var_0.x <= 1451f), ~firstLeadingBit(0u)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(u_input.b, arg_1)), 1u), _wgslsmith_div_u32(0u, 31979u), ~arg_1));
    let var_3 = Struct_2((select(~u_input.a, 4294967295u, !var_1.x) > _wgslsmith_div_u32(0u, abs(var_2.b.x))) == true, Struct_1(~_wgslsmith_clamp_vec2_u32(var_2.a, countOneBits(var_2.a), ~var_2.a), vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.a, ~var_2.a), _wgslsmith_div_u32(var_2.b.x & var_2.a.x, _wgslsmith_clamp_u32(arg_1, var_2.b.x, u_input.b)), 83784u)), firstTrailingBit(arg_0.x), Struct_1(~(~var_2.a), vec3<u32>(33349u, firstLeadingBit(1u), u_input.a) ^ abs(var_2.b >> (vec3<u32>(11980u, 33310u, 0u) % vec3<u32>(32u)))));
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, firstTrailingBit(~68351i), global0[_wgslsmith_index_u32(~1u, 31u)] >> (~var_2.a.x % 32u), -1i), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, arg_0.x, global0[_wgslsmith_index_u32(44770u, 31u)], var_3.c), _wgslsmith_add_vec4_i32(vec4<i32>(52214i, -2147483647i, global0[_wgslsmith_index_u32(36764u, 31u)], global0[_wgslsmith_index_u32(var_2.b.x, 31u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], 1i, -1i, -1i))), firstTrailingBit(vec4<i32>(var_3.c, u_input.c, arg_0.x, global0[_wgslsmith_index_u32(var_3.b.a.x, 31u)]))), ~select(-vec4<i32>(51172i, global0[_wgslsmith_index_u32(29210u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], arg_0.x), vec4<i32>(-1i, 75249i, arg_0.x, var_3.c), !vec4<bool>(var_3.a, false, false, var_1.x))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(round(global3.x));
    var var_1 = false;
    let var_2 = func_5(func_4(Struct_2(false, Struct_1(~vec2<u32>(44314u, arg_1.a.x), vec3<u32>(28697u, 41038u, u_input.d)), _wgslsmith_mod_i32(func_3(), 62171i & arg_2), arg_1)), 4294967295u);
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(308f - 470f), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -715f))) + vec3<f32>(1266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1439f))), global3.x))));
    let var_4 = reverseBits(~_wgslsmith_mod_u32(~1u, 4294967295u));
    return vec2<i32>(-(_wgslsmith_sub_i32(func_3(), -arg_2) >> (_wgslsmith_dot_vec2_u32(arg_3.xz << (arg_0.b.a % vec2<u32>(32u)), min(vec2<u32>(122580u, 63579u), arg_3.zx)) % 32u)), _wgslsmith_sub_i32(1i, global0[_wgslsmith_index_u32(~(~reverseBits(17089u)), 31u)]));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = ~(_wgslsmith_mod_u32(63578u, 66927u) & select(~1u, min(~u_input.b, u_input.d), true || !arg_1.x));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.xyx * _wgslsmith_f_op_vec3_f32(max(arg_0.yxw, arg_0.yzz))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -974f, arg_0.x)) + vec3<f32>(global3.x, global3.x, 267f)), vec3<f32>(_wgslsmith_f_op_f32(1000f + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(arg_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, arg_0.x)), _wgslsmith_f_op_f32(floor(arg_0.x)))));
    global0 = array<i32, 31>();
    var_0 = ~1u;
    var var_1 = Struct_2(true, Struct_1(~max(vec2<u32>(u_input.d, u_input.a) >> (vec2<u32>(u_input.a, 99202u) % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.d)), countOneBits(~(vec3<u32>(10375u, 1u, u_input.b) ^ vec3<u32>(u_input.d, u_input.a, 49403u)))), _wgslsmith_mod_i32(u_input.c, min(_wgslsmith_div_i32(-19305i, -1i), 0i >> (u_input.b % 32u))) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(52351u, 4362u) | vec2<u32>(0u, u_input.b)) % 32u), Struct_1(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 11008u), vec2<u32>(u_input.b, u_input.b))) >> (~(~vec2<u32>(u_input.d, 0u)) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.d), vec3<u32>(u_input.b, 129663u, 0u)))));
    return Struct_3(u_input.b ^ (var_1.b.b.x << (var_1.b.b.x % 32u)), Struct_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 27984u, 4318u, 0u), vec4<u32>(var_1.d.a.x, 4294967295u, u_input.d, 4294967295u)), _wgslsmith_mod_u32(16182u, var_1.b.b.x)), var_1.d.b));
}

fn func_7(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    return Struct_2(any(select(!(!vec4<bool>(arg_1, arg_1, false, true)), select(select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, false, false, arg_1), arg_1), !vec4<bool>(arg_1, arg_1, true, arg_1), !vec4<bool>(arg_1, arg_1, arg_1, false)), vec4<bool>(arg_1 & false, true, true, arg_1))), func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1580f - global3.x), global3.x, _wgslsmith_f_op_f32(trunc(1061f)), _wgslsmith_f_op_f32(abs(-1110f)))), global1[_wgslsmith_index_u32(firstLeadingBit(5197u), 1u)], u_input.e).b, ~50763i, func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-740f, 908f, 686f, 572f)), _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 358f, -383f, global3.x), vec4<f32>(-1172f, global3.x, 465f, global3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1329f, global3.x, global3.x, global3.x) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, -1000f, -363f, 885f)))), !(!vec4<bool>(true, false, arg_1, arg_1)))), !select(!global1[_wgslsmith_index_u32(arg_0.b.b.x, 1u)], global1[_wgslsmith_index_u32(reverseBits(18424u), 1u)], global1[_wgslsmith_index_u32(arg_0.b.b.x, 1u)]), func_2(func_6(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-614f, global3.x, 1642f, 1716f))), select(global1[_wgslsmith_index_u32(16405u, 1u)], global1[_wgslsmith_index_u32(27192u, 1u)], false), vec2<i32>(33301i, u_input.c)), Struct_1(arg_0.b.b.xx, ~arg_0.b.b), -(~(-2147483647i)), func_6(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, global3.x, global3.x, global3.x))), vec3<bool>(arg_1, arg_1, arg_1), select(u_input.e, vec2<i32>(-48163i, 30559i), vec2<bool>(arg_1, arg_1))).b.b)).b);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_7(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, global3.x, global3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, global3.x, -1421f, 116f)), u_input.d <= 79756u))), vec3<bool>(true, true, true), func_2(Struct_3(~2331u, Struct_1(vec2<u32>(1u, u_input.b), vec3<u32>(17984u, 1u, u_input.b))), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, u_input.d), vec2<u32>(u_input.a, 4294967295u)), ~vec3<u32>(u_input.a, 4294967295u, 4294967295u)), _wgslsmith_mult_i32(-9965i, u_input.e.x) << (~60398u % 32u), vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.d), u_input.d, select(4294967295u, 71335u, false)))), true);
    global1 = array<vec3<bool>, 1>();
    global3 = vec3<f32>(2087f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.x + -627f), -113f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -232f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1200f)) * _wgslsmith_f_op_f32(-global3.x))))));
    let var_1 = Struct_1(vec2<u32>(35634u ^ var_0.b.a.x, ~0u), var_0.d.b);
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(global3.x - -1236f)))) < 870f, all(global1[_wgslsmith_index_u32(var_1.b.x, 1u)]), true, (true & var_0.a) == var_0.a);
    return StorageBuffer(17095u, ~_wgslsmith_mult_vec4_i32(-(vec4<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 31u)], -1i, var_0.c, -9414i) | vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b, 31u)], var_0.c, -1i)), select(firstTrailingBit(vec4<i32>(0i, 1i, -10425i, -13777i)), select(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 1i, var_0.c, -21946i), vec4<i32>(u_input.e.x, 1i, u_input.c, global0[_wgslsmith_index_u32(var_1.b.x, 31u)]), vec4<bool>(false, false, true, true)), !vec4<bool>(var_2.x, var_2.x, var_2.x, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), global3.x), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x - -1705f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(trunc(global3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, global3.x)) + _wgslsmith_f_op_f32(step(222f, global3.x))), _wgslsmith_f_op_f32(trunc(-190f))))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<i32, 31>();
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(abs(u_input.d), firstLeadingBit(_wgslsmith_add_u32(1u, var_0))), var_0, 1820u);
    var var_2 = -479f;
    let var_3 = !(!vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true, true, false));
    var var_4 = abs(16734u >> (select(4294967295u, 0u, any(!vec4<bool>(var_3.x, true, false, false))) % 32u));
    let x = u_input.a;
    s_output = func_1();
}

