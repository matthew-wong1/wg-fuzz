struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec2<f32>(-918f, -155f)), false), Struct_2(Struct_1(vec2<f32>(115f, -530f)), false), Struct_2(Struct_1(vec2<f32>(583f, 665f)), false), Struct_2(Struct_1(vec2<f32>(-470f, 962f)), true), Struct_2(Struct_1(vec2<f32>(978f, -163f)), false));

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_1(vec2<f32>(377f, -1678f))), Struct_4(Struct_1(vec2<f32>(-1000f, 667f))), Struct_4(Struct_1(vec2<f32>(839f, -1049f))), Struct_4(Struct_1(vec2<f32>(-1349f, -973f))));

var<private> global2: array<u32, 31> = array<u32, 31>(0u, 45945u, 78139u, 14567u, 0u, 4294967295u, 1u, 1367u, 1u, 4294967295u, 73227u, 19170u, 29693u, 89420u, 32513u, 59795u, 11067u, 1214u, 4093u, 20120u, 1u, 1u, 4294967295u, 20195u, 1u, 4294967295u, 4294967295u, 3363u, 1u, 66395u, 53078u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> vec2<f32> {
    global2 = array<u32, 31>();
    global0 = array<Struct_2, 5>();
    var var_0 = ~vec3<i32>(-2147483647i, firstTrailingBit(u_input.d.x), ~arg_0.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(463f, -646f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(f32(-1f) * -525f)))))));
    var var_2 = _wgslsmith_sub_vec4_i32(max(u_input.d, arg_0), arg_0);
    return _wgslsmith_f_op_vec2_f32(round(var_1.a));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<Struct_4, 4>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(2147483647i, 10069i, -6813i, u_input.d.x), Struct_3(global2[_wgslsmith_index_u32(arg_0, 31u)]))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(u_input.d, Struct_3(arg_1))).x)), 1102f)), -1676f));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1137f, 567f, var_0))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1140f, -1158f, arg_2.a.x), vec3<f32>(var_0, arg_2.a.x, var_0)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -101f, var_0)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.a.x, arg_2.a.x, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, -1000f))))))))));
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, firstLeadingBit(-50203i), ~2147483647i), ~abs(vec3<i32>(13185i, 0i, u_input.c.x))), -_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, 15036i, u_input.c.x)), vec3<i32>(-18750i, u_input.c.x, u_input.c.x)), max(_wgslsmith_mult_vec3_i32(vec3<i32>(58172i, u_input.c.x, u_input.c.x), select(u_input.d.xxw, u_input.d.zxw, vec3<bool>(false, true, true))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), vec3<i32>(-2147483647i, 2147483647i, -1i)), vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i)))), vec3<i32>((_wgslsmith_mult_i32(1i, u_input.d.x) << (arg_1 % 32u)) | -select(u_input.c.x, 2147483647i, arg_0.x), ~2147483647i, (countOneBits(u_input.c.x) | ~u_input.c.x) & reverseBits(_wgslsmith_mult_i32(u_input.c.x, -78397i))));
    var var_3 = arg_2;
    let var_4 = vec4<u32>(~arg_1, 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.zyw, firstLeadingBit(abs(vec3<u32>(arg_1, u_input.b, 68718u)))), abs(u_input.a.x), reverseBits(arg_1)), countOneBits(reverseBits(firstLeadingBit(arg_1 >> (global2[_wgslsmith_index_u32(u_input.a.x, 31u)] % 32u)))));
    return func_2(_wgslsmith_clamp_u32(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_div_u32(27120u, 25823u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 1u), vec3<u32>(arg_1, u_input.a.x, 48442u) << (vec3<u32>(4294967295u, 75800u, var_4.x) % vec3<u32>(32u)))), 7392u, ~var_4.x));
}

fn func_1() -> Struct_4 {
    var var_0 = -(~u_input.c);
    var var_1 = Struct_2(func_4(!vec4<bool>(false, true, all(vec2<bool>(true, false)), true), ~(6073u | u_input.b) & ~1u, func_2(~_wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(u_input.b, 1444u)))), true);
    let var_2 = _wgslsmith_dot_vec4_i32(-u_input.d, ~_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c.x, 6316i, u_input.d.x, u_input.d.x), vec4<i32>(~u_input.c.x, 27297i, abs(u_input.d.x), countOneBits(u_input.d.x))));
    global0 = array<Struct_2, 5>();
    var var_3 = select(select(!select(!vec4<bool>(var_1.b, var_1.b, var_1.b, false), !vec4<bool>(false, true, var_1.b, var_1.b), true), select(!(!vec4<bool>(var_1.b, false, false, var_1.b)), !(!vec4<bool>(var_1.b, false, var_1.b, true)), vec4<bool>(var_0.x <= u_input.c.x, any(vec3<bool>(var_1.b, var_1.b, var_1.b)), 4294967295u != u_input.a.x, false)), !(!select(vec4<bool>(true, true, var_1.b, false), vec4<bool>(false, true, var_1.b, false), vec4<bool>(var_1.b, false, true, var_1.b)))), vec4<bool>(u_input.a.x == u_input.a.x, false, false, true | var_1.b), all(select(!select(vec3<bool>(false, var_1.b, true), vec3<bool>(var_1.b, var_1.b, var_1.b), var_1.b), vec3<bool>(var_1.b, var_1.b, 63709u < global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15644u, 31u)], 31u)]), all(vec2<bool>(false, var_1.b)) & var_1.b)));
    return Struct_4(func_4(select(!select(vec4<bool>(false, var_1.b, var_3.x, var_3.x), vec4<bool>(var_1.b, var_1.b, var_3.x, true), vec4<bool>(var_1.b, var_3.x, true, var_3.x)), !(!vec4<bool>(var_1.b, var_3.x, false, true)), select(vec4<bool>(var_1.b, var_1.b, var_3.x, false), vec4<bool>(true, true, var_3.x, var_1.b), vec4<bool>(true, var_1.b, var_1.b, false))), ~(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(8600u, 31u)], u_input.b) ^ select(global2[_wgslsmith_index_u32(53599u, 31u)], 21437u, true)), var_1.a));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool) -> u32 {
    global1 = array<Struct_4, 4>();
    global2 = array<u32, 31>();
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_5(func_1(), Struct_3(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 31u)], 31u)] ^ u_input.a.x, 4294967295u, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(741f, -795f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f * -945f))));
    global0 = array<Struct_2, 5>();
    global1 = array<Struct_4, 4>();
    var var_1 = select(all(!vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, true)))), true, select(true, true, !(u_input.c.x >= 30796i)));
    var var_2 = vec3<bool>(true, any(vec2<bool>(true, true)) || select(false, false, false), true);
    global2 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

