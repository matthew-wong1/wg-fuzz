struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(913f, vec4<i32>(49671i, 1i, 0i, -4475i), Struct_1(-1i, 5415u), -75107i);

var<private> global1: Struct_3 = Struct_3(vec3<u32>(1u, 1543u, 56211u), 130f, Struct_2(-2193f, vec4<i32>(-32668i, -5100i, -4982i, i32(-2147483648)), Struct_1(2147483647i, 4294967295u), 24493i));

var<private> global2: array<f32, 4> = array<f32, 4>(-925f, 1385f, 1000f, 1077f);

var<private> global3: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(335f, 976f), vec2<f32>(-835f, 237f), vec2<f32>(-830f, -151f), vec2<f32>(266f, 1000f), vec2<f32>(-351f, -170f), vec2<f32>(-433f, 1834f), vec2<f32>(-1228f, 1821f), vec2<f32>(-200f, 753f), vec2<f32>(-1659f, 572f), vec2<f32>(-1000f, 1945f), vec2<f32>(-1346f, 309f), vec2<f32>(105f, 2170f), vec2<f32>(-1837f, 457f), vec2<f32>(-829f, -890f), vec2<f32>(1000f, 302f), vec2<f32>(-1101f, -1291f), vec2<f32>(337f, -736f), vec2<f32>(-1178f, 521f), vec2<f32>(2204f, -1126f), vec2<f32>(-498f, 447f), vec2<f32>(-467f, 833f), vec2<f32>(-2734f, 957f), vec2<f32>(-1041f, 1809f));

var<private> global4: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec4<f32> {
    let var_0 = Struct_3(~global1.a, -727f, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1081f, _wgslsmith_f_op_f32(-global1.c.a))), -firstLeadingBit(global1.c.b) << (countOneBits(vec4<u32>(global1.c.c.b, u_input.a, global1.a.x, 7570u) & vec4<u32>(0u, 36467u, 1u, global0.c.b)) % vec4<u32>(32u)), Struct_1(global1.c.c.a, ~global0.c.b ^ ~u_input.a), 14170i));
    var var_1 = !any(select(select(global4.zy, select(global4.yx, global4.xy, false), false), vec2<bool>(any(arg_1.ww), true), select(global4.x, select(arg_1.x, false, arg_1.x), global4.x)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(countOneBits(global1.c.c.b), 4u)], _wgslsmith_f_op_f32(-arg_3.x))) * _wgslsmith_f_op_f32(arg_0 * -494f)) * _wgslsmith_f_op_f32(floor(var_0.c.a))), _wgslsmith_div_f32(176f, -1450f)));
    global2 = array<f32, 4>();
    let var_3 = 14979i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1733f, -648f, arg_0, -1319f)), vec4<f32>(arg_0, -1018f, -740f, -1177f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, arg_0, -998f, -1884f))));
}

fn func_2() -> f32 {
    let var_0 = !(!global4.x & true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1937f, global0.a, 1136f, 1758f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 4u)], 411f, -313f, -1000f))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -2841f), select(vec4<bool>(false, false, true, true), vec4<bool>(false, global4.x, false, var_0), vec4<bool>(true, true, true, false)), ~vec2<i32>(-2147483647i, 28213i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, -1000f, global0.a, global0.a)))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, global0.a, global0.a, 124f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-259f, 616f, global2[_wgslsmith_index_u32(51051u, 4u)], 805f), vec4<f32>(global1.b, 890f, global1.c.a, global0.a), false))))))));
    global0 = Struct_2(var_1.x, ~max(~global0.b >> (abs(vec4<u32>(4294967295u, global1.c.c.b, 74611u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(abs(global0.d), -1i, -26048i, ~1i)), Struct_1(global1.c.b.x, ~_wgslsmith_div_u32(4294967295u, 42492u)), global1.c.d);
    let var_2 = select(!(!(!(!vec3<bool>(false, var_0, false)))), vec3<bool>(var_0, !(global0.a > -804f), all(select(!vec4<bool>(var_0, global4.x, var_0, var_0), vec4<bool>(var_0, false, var_0, true), var_0))), !vec3<bool>(select(global4.x, any(vec3<bool>(false, var_0, global4.x)), true), !(global0.b.x > 0i), !(!global4.x)));
    global1 = Struct_3(~max(vec3<u32>(global1.a.x, 5740u, global1.c.c.b), reverseBits(vec3<u32>(2580u, global0.c.b, global1.a.x))), 545f, global1.c);
    return global0.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = ~(-abs(2147483647i));
    global2 = array<f32, 4>();
    var var_1 = Struct_3(global1.a, _wgslsmith_f_op_f32(func_2()), global1.c);
    let var_2 = vec4<u32>(firstLeadingBit(11517u), global1.a.x, _wgslsmith_mult_u32(abs(~select(u_input.a, arg_1.b, global4.x)), abs(~1u) & arg_0.b), firstLeadingBit(~0u) | (firstLeadingBit(abs(global1.a.x)) << (arg_0.b % 32u)));
    var var_3 = Struct_1(global0.b.x, arg_1.b);
    return var_2;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = ~(vec4<u32>(global0.c.b, 12397u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u) | arg_0.wx, vec2<u32>(global0.c.b, global1.a.x)), 60730u) | firstTrailingBit(vec4<u32>(arg_1, 7358u, 1u, firstTrailingBit(23150u))));
    global0 = Struct_2(global0.a, ~(-abs(-vec4<i32>(global1.c.c.a, global1.c.d, -2147483647i, global1.c.b.x))), Struct_1(reverseBits(104765i << (~global0.c.b % 32u)), _wgslsmith_add_u32(global0.c.b, 0u)), -(global1.c.c.a << (abs(u_input.a) % 32u)));
    let var_1 = select(select(select(!vec4<bool>(true, global4.x, global4.x, false), !(!vec4<bool>(true, global4.x, false, false)), true), select(select(vec4<bool>(global4.x, true, false, global4.x), !vec4<bool>(true, false, true, global4.x), true), vec4<bool>(true, all(vec3<bool>(true, global4.x, true)), -80337i <= global0.b.x, global4.x & true), select(vec4<bool>(global4.x, global4.x, global4.x, true), !vec4<bool>(false, global4.x, global4.x, false), !vec4<bool>(true, global4.x, false, global4.x))), global4.x), !(!vec4<bool>(false, global4.x, global4.x && global4.x, true)), global4.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 4u)], global0.a, global2[_wgslsmith_index_u32(var_0.x, 4u)]))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(781f, 571f, global1.c.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 4u)], 447f, -674f))))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) + 657f), global0.a));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-var_2.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.c.a), -281f)) + 886f)), global0.b >> (arg_0 % vec4<u32>(32u)), Struct_1(global0.c.a, select(arg_2.x >> (29511u % 32u), arg_0.x, var_1.x)), _wgslsmith_mult_i32(-24928i, -26279i ^ ~abs(global1.c.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!global4.x, global4.x);
    global3 = array<vec2<f32>, 23>();
    global0 = func_4(countOneBits(firstLeadingBit(func_1(Struct_1(global0.c.a, global1.a.x), Struct_1(global1.c.b.x, 19093u)))), 23971u, global1.a.zz);
    let var_1 = _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_add_i32(global0.d, global1.c.b.x), global1.c.c.a, -21102i), global1.c.b.zxx);
    global3 = array<vec2<f32>, 23>();
    global0 = Struct_2(-2393f, global1.c.b | vec4<i32>(~global1.c.d, 1i, ~var_1.x >> (abs(1u) % 32u), -1i), Struct_1(max(-_wgslsmith_clamp_i32(global1.c.d, 53169i, -1i), ~firstLeadingBit(28764i)), ~(_wgslsmith_clamp_u32(97387u, u_input.a, 0u) & 0u)), ~abs(-global0.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a.x, u_input.a, min(_wgslsmith_div_vec4_i32(-vec4<i32>(var_1.x, global0.d, -2147483647i, global1.c.d), global1.c.b), select(_wgslsmith_div_vec4_i32(global1.c.b, global0.b), abs(global0.b), global4.x)) | -_wgslsmith_mult_vec4_i32(vec4<i32>(8027i, 2147483647i, 8285i, global1.c.d) ^ global0.b, vec4<i32>(-1i, -25679i, global0.c.a, var_1.x) & global0.b), countOneBits(global0.c.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(-global0.a)) - global1.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(f32(-1f) * -210f)) * -1716f), global2[_wgslsmith_index_u32(16314u, 4u)], -1152f));
}

