struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-291f, vec3<u32>(4294967295u, 4294967295u, 81111u), vec2<bool>(true, true), 1u), Struct_1(141f, vec3<u32>(1u, 0u, 0u), vec2<bool>(true, false), 0u), Struct_1(-1442f, vec3<u32>(0u, 17625u, 24910u), vec2<bool>(false, false), 16996u), Struct_1(-2709f, vec3<u32>(0u, 1u, 4294967295u), vec2<bool>(true, true), 4294967295u), Struct_1(546f, vec3<u32>(1u, 1u, 16581u), vec2<bool>(false, false), 4294967295u), Struct_1(342f, vec3<u32>(4294967295u, 0u, 3386u), vec2<bool>(true, false), 4294967295u), Struct_1(1176f, vec3<u32>(131917u, 1u, 0u), vec2<bool>(true, false), 26654u), Struct_1(1000f, vec3<u32>(2960u, 40488u, 13536u), vec2<bool>(false, false), 52417u), Struct_1(2316f, vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(false, true), 25611u), Struct_1(-1628f, vec3<u32>(35675u, 9557u, 13905u), vec2<bool>(false, false), 1u), Struct_1(766f, vec3<u32>(1u, 4294967295u, 36894u), vec2<bool>(true, false), 0u), Struct_1(-401f, vec3<u32>(31355u, 1u, 1u), vec2<bool>(true, true), 4294967295u), Struct_1(-555f, vec3<u32>(48116u, 0u, 16793u), vec2<bool>(true, false), 28732u), Struct_1(-958f, vec3<u32>(1u, 14119u, 0u), vec2<bool>(true, true), 10822u), Struct_1(-1818f, vec3<u32>(4294967295u, 1268u, 13756u), vec2<bool>(false, false), 0u), Struct_1(1000f, vec3<u32>(4294967295u, 35185u, 15916u), vec2<bool>(true, false), 1u), Struct_1(862f, vec3<u32>(17604u, 4294967295u, 4294967295u), vec2<bool>(false, true), 0u), Struct_1(-328f, vec3<u32>(1u, 4294967295u, 1u), vec2<bool>(false, true), 50185u), Struct_1(-1659f, vec3<u32>(1u, 52351u, 4294967295u), vec2<bool>(true, false), 1u), Struct_1(710f, vec3<u32>(42538u, 57095u, 4294967295u), vec2<bool>(false, true), 1u), Struct_1(-1067f, vec3<u32>(1u, 20965u, 0u), vec2<bool>(true, true), 0u), Struct_1(160f, vec3<u32>(7740u, 4294967295u, 1u), vec2<bool>(false, true), 41176u), Struct_1(721f, vec3<u32>(0u, 6219u, 1u), vec2<bool>(true, false), 0u), Struct_1(-455f, vec3<u32>(4294967295u, 22931u, 1u), vec2<bool>(true, true), 6668u), Struct_1(-1348f, vec3<u32>(8357u, 4294967295u, 1u), vec2<bool>(true, false), 1u), Struct_1(791f, vec3<u32>(1u, 1u, 4294967295u), vec2<bool>(true, true), 36924u), Struct_1(-499f, vec3<u32>(0u, 1u, 6461u), vec2<bool>(true, true), 35409u), Struct_1(-589f, vec3<u32>(1079u, 56996u, 4294967295u), vec2<bool>(false, false), 4294967295u), Struct_1(190f, vec3<u32>(0u, 4294967295u, 1526u), vec2<bool>(true, true), 1u), Struct_1(-407f, vec3<u32>(1u, 4294967295u, 0u), vec2<bool>(false, false), 64795u), Struct_1(-2128f, vec3<u32>(3829u, 4294967295u, 42236u), vec2<bool>(false, true), 66013u));

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec4<i32>;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    global2 = array<Struct_1, 1>();
    global0 = vec4<bool>(false && !(arg_0.a == -623f), any(vec4<bool>(any(!global0.zxw), arg_0.c.x, all(vec3<bool>(false, true, true)), !any(global0.wzy))), false, var_0.c.x);
    var var_1 = select(vec4<bool>(any(vec3<bool>(true, true, global0.x)), any(select(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), global0.zyy, arg_0.c.x)) & true, _wgslsmith_f_op_f32(exp2(var_0.a)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(886f + -295f)), any(arg_0.c)), select(!select(select(vec4<bool>(arg_0.c.x, true, arg_0.c.x, false), vec4<bool>(true, var_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(true, var_0.c.x, var_0.c.x, true)), vec4<bool>(var_0.c.x, var_0.c.x, true, true), all(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, reverseBits(arg_0.b.x) > arg_0.d, any(vec4<bool>(var_0.c.x, arg_0.c.x, true, true)) | select(global0.x, global0.x, arg_0.c.x)), select(select(select(vec4<bool>(false, global0.x, arg_0.c.x, arg_0.c.x), vec4<bool>(false, false, arg_0.c.x, arg_0.c.x), arg_0.c.x), select(vec4<bool>(global0.x, var_0.c.x, var_0.c.x, false), vec4<bool>(global0.x, true, arg_0.c.x, false), true), !arg_0.c.x), vec4<bool>(true, true, true, true), true)), vec4<bool>(select(_wgslsmith_f_op_f32(-1059f + var_0.a) > arg_0.a, false, (var_0.d << (0u % 32u)) <= firstLeadingBit(23722u)), select(!(!arg_0.c.x), false, true), firstLeadingBit(u_input.c) < _wgslsmith_mod_i32(max(u_input.c, u_input.a.x), -14970i), !(!(var_0.c.x && false))));
    let var_2 = !select(vec4<bool>(select(var_0.c.x, all(vec3<bool>(false, true, false)), all(vec4<bool>(var_0.c.x, arg_0.c.x, arg_0.c.x, global0.x))), arg_0.c.x, _wgslsmith_f_op_f32(arg_0.a + arg_0.a) <= arg_0.a, arg_0.c.x), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, var_1.x, false, false)), !vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), var_1.x), !vec4<bool>(var_0.c.x, var_0.c.x, false, true), !(!vec4<bool>(var_1.x, arg_0.c.x, global0.x, arg_0.c.x))), arg_0.c.x);
    return _wgslsmith_f_op_f32(1f - 116f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_u32(arg_0.b, reverseBits(abs(firstTrailingBit(~arg_1.b))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-global3.x, ~0i, -2147483647i) ^ ~vec3<i32>(1i << (arg_1.d % 32u), global3.x >> (0u % 32u), u_input.b), firstTrailingBit(firstTrailingBit(~global3.wyy)) >> (arg_0.b % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, 3135f, 832f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, arg_0.a, var_1.a)))));
    let var_4 = true;
    return !vec4<bool>(var_4, true, all(select(arg_1.c, vec2<bool>(false, false), vec2<bool>(arg_0.c.x, arg_0.c.x))) | false, arg_1.a != _wgslsmith_f_op_f32(-508f * _wgslsmith_f_op_f32(-var_1.a)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(844f)), countOneBits(~arg_2.b), !arg_0.c, 30451u);
    global0 = func_4(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, vec3<u32>(4853u, 4294967295u, arg_2.d), select(vec2<bool>(false, true), arg_2.c, arg_0.c.x), 4294967295u))), vec3<u32>(0u, _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.d, arg_0.d, var_0.b.x), vec4<u32>(868u, 83431u, var_0.b.x, 29194u)), 0u), 0u), !(!(!var_0.c)), arg_2.d), global4[_wgslsmith_index_u32(abs(countOneBits(~29460u)), 24u)]);
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -137f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-955f)))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1332f + -1060f)) + var_0.a))));
    return ~(select(abs(vec4<i32>(global3.x, -5740i, var_1, -21106i)) >> (firstLeadingBit(vec4<u32>(var_0.b.x, 1u, 0u, arg_0.b.x)) % vec4<u32>(32u)), ~(vec4<i32>(-2020i, 52387i, 1i, 2147483647i) | vec4<i32>(-2147483647i, var_1, -1i, u_input.b)), false) | vec4<i32>(-(u_input.b << (0u % 32u)), ~(~global3.x), -27653i, ~global3.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    global3 = -_wgslsmith_mod_vec4_i32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_3.b.x, 52672u, 1u), vec4<u32>(27326u, 0u, 57281u, 35203u)), vec4<u32>(arg_3.d, 1u, 1u, arg_0.b.x) ^ vec4<u32>(35515u, 19160u, arg_3.b.x, arg_0.b.x)), 31u)], false, arg_1), _wgslsmith_div_vec4_i32(~abs(vec4<i32>(-22177i, 2147483647i, global3.x, u_input.b)), vec4<i32>(~u_input.b, global3.x, global3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-33829i, 2147483647i), vec2<i32>(u_input.a.x, global3.x)))));
    let var_0 = arg_1;
    let var_1 = any(func_4(Struct_1(1f, min(arg_3.b, min(var_0.b, arg_0.b)), !(!arg_3.c), ~20460u), global1[_wgslsmith_index_u32(1u, 31u)]).wx);
    global1 = array<Struct_1, 31>();
    global3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global3.x, 1i), reverseBits(116207i), ~(-1i), 1i) ^ vec4<i32>(_wgslsmith_div_i32(0i, global3.x), -1i, u_input.c, func_2(Struct_1(arg_1.a, arg_2.b, arg_1.c, arg_1.b.x), true, Struct_1(552f, arg_3.b, vec2<bool>(arg_0.c.x, true), 29007u)).x), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, -23860i) & vec4<i32>(global3.x, 2147483647i, u_input.b, 46010i), min(vec4<i32>(global3.x, u_input.a.x, u_input.c, 0i), vec4<i32>(global3.x, 0i, global3.x, global3.x))), vec4<i32>(select(0i, global3.x, false), -global3.x, -u_input.a.x, global3.x))), vec4<i32>(func_2(Struct_1(arg_3.a, arg_1.b, vec2<bool>(true, arg_1.c.x), 1u), 4294967295u <= arg_1.d, Struct_1(2184f, arg_1.b, vec2<bool>(false, true), 16167u)).x >> (4294967295u % 32u), _wgslsmith_clamp_i32(-u_input.c, min(40044i, 1i), global3.x), 1i, 1i));
    return vec4<i32>(global3.x, -19712i << (~(~var_0.b.x & 4294967295u) % 32u), firstLeadingBit(_wgslsmith_mod_i32(~global3.x, -1i & u_input.c)), min(select(global3.x, global3.x, all(global0.wwz)), (i32(-1i) * -21950i) >> (arg_3.d % 32u)) << (arg_2.d % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = min(select(countOneBits(vec4<i32>(-9420i, global3.x, -32235i, global3.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(8091i, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(-2147483647i, global3.x, 2147483647i, -10265i)) ^ -vec4<i32>(-1i, 1i, global3.x, u_input.b), !all(vec2<bool>(global0.x, true))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, -23578i, u_input.c) << (vec4<u32>(18300u, 14611u, 0u, 1u) % vec4<u32>(32u)), -vec4<i32>(-12260i, global3.x, global3.x, global3.x))) & ~_wgslsmith_div_vec4_i32(reverseBits(func_1(global4[_wgslsmith_index_u32(78839u, 24u)], Struct_1(-362f, vec3<u32>(74021u, 26373u, 42663u), global0.zw, 11843u), Struct_1(-1029f, vec3<u32>(10828u, 4294967295u, 4294967295u), global0.wy, 142805u), global2[_wgslsmith_index_u32(4788u, 1u)])), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, u_input.a.x, u_input.a.x, -50996i), vec4<i32>(7312i, 2147483647i, u_input.b, -1i), vec4<i32>(global3.x, -1i, u_input.b, 28726i)));
    var var_0 = true;
    global2 = array<Struct_1, 1>();
    let var_1 = min(u_input.a, vec3<i32>(0i, -select(global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global3.x, global3.x, global3.x), vec4<i32>(u_input.a.x, 1i, -2147483647i, u_input.c)), select(global0.x, global0.x, false)), u_input.b));
    var var_2 = global0.x;
    let var_3 = !global0.x;
    global1 = array<Struct_1, 31>();
    global0 = select(!(!(!(!vec4<bool>(true, global0.x, true, global0.x)))), vec4<bool>(false, var_3, var_1.x >= 36296i, all(select(vec4<bool>(true, global0.x, true, false), func_4(Struct_1(-638f, vec3<u32>(0u, 37223u, 0u), global0.xx, 8605u), global4[_wgslsmith_index_u32(0u, 24u)]), var_3 || true))), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.x, abs(2147483647i), -reverseBits(_wgslsmith_clamp_i32(1i, 1i, var_1.x)), var_1.x), ~reverseBits((vec2<i32>(global3.x, var_1.x) ^ var_1.yy) >> (~vec2<u32>(37550u, 47608u) % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, func_2(Struct_1(455f, vec3<u32>(18344u, 61135u, 1u), global0.wy, 19537u), false, Struct_1(-199f, vec3<u32>(26906u, 1u, 1u), global0.zw, 11058u)).x, var_1.x, u_input.c), vec4<i32>(firstLeadingBit(global3.x), var_1.x, ~(-2147483647i), u_input.b)));
}

