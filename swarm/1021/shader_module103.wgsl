struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(145730u, Struct_1(4294967295u, vec4<u32>(23676u, 4294967295u, 0u, 81362u), vec3<bool>(true, false, true), vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), 979f), Struct_2(0u, Struct_1(4294967295u, vec4<u32>(1u, 5413u, 4294967295u, 7204u), vec3<bool>(false, true, true), vec4<u32>(43094u, 13687u, 1u, 4294967295u)), -513f), Struct_2(0u, Struct_1(0u, vec4<u32>(44148u, 4294967295u, 4294967295u, 8043u), vec3<bool>(false, true, false), vec4<u32>(4294967295u, 42618u, 4294967295u, 0u)), 340f), Struct_2(73887u, Struct_1(68024u, vec4<u32>(19602u, 34394u, 75713u, 1u), vec3<bool>(false, false, true), vec4<u32>(1u, 42442u, 40775u, 0u)), 1732f), Struct_2(41054u, Struct_1(89951u, vec4<u32>(117742u, 118936u, 1u, 2411u), vec3<bool>(true, true, true), vec4<u32>(22050u, 38751u, 4294967295u, 23192u)), -769f), Struct_2(21430u, Struct_1(69441u, vec4<u32>(1u, 4294967295u, 0u, 0u), vec3<bool>(true, false, false), vec4<u32>(0u, 105343u, 1u, 0u)), -627f), Struct_2(27811u, Struct_1(13805u, vec4<u32>(4294967295u, 1u, 8364u, 0u), vec3<bool>(false, false, true), vec4<u32>(52777u, 1u, 4294967295u, 10374u)), 384f), Struct_2(38946u, Struct_1(1u, vec4<u32>(1u, 72838u, 4294967295u, 4294967295u), vec3<bool>(false, true, true), vec4<u32>(0u, 28383u, 1u, 4294967295u)), -991f), Struct_2(42537u, Struct_1(1u, vec4<u32>(28422u, 40813u, 0u, 4294967295u), vec3<bool>(false, false, false), vec4<u32>(15714u, 4294967295u, 116207u, 3343u)), -1910f), Struct_2(54496u, Struct_1(0u, vec4<u32>(0u, 4294967295u, 0u, 0u), vec3<bool>(true, true, false), vec4<u32>(1u, 1u, 69960u, 4294967295u)), 1009f), Struct_2(1u, Struct_1(26252u, vec4<u32>(1u, 4294967295u, 0u, 61001u), vec3<bool>(false, true, true), vec4<u32>(1u, 41160u, 18387u, 0u)), 493f));

var<private> global1: i32;

var<private> global2: array<i32, 2>;

var<private> global3: vec3<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    global2 = array<i32, 2>();
    global1 = global2[_wgslsmith_index_u32(arg_0.x, 2u)] ^ -_wgslsmith_div_i32(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 2u)] & global2[_wgslsmith_index_u32(global3.x, 2u)], -24656i), (-22948i << (0u % 32u)) << (u_input.a.x % 32u));
    let var_0 = -217f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(995f, var_0, -1099f, var_0)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1108f, -186f, 1558f, 1009f), vec4<f32>(var_0, 1120f, var_0, 206f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(f32(-1f) * -2440f), var_0, _wgslsmith_f_op_f32(ceil(var_0)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(488f)), -237f), 143f, _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1076f, 1117f)), _wgslsmith_div_f32(-979f, 165f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), var_0), vec4<f32>(_wgslsmith_f_op_f32(sign(330f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1992f * var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(120f, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    let var_2 = true;
    return (any(vec4<bool>(any(vec4<bool>(var_2, var_2, var_2, true)), -1117f != var_1.x, var_2, var_2)) && (var_2 & (var_2 && var_2))) == (~(~18918u) != u_input.a.x);
}

fn func_2(arg_0: bool) -> vec3<u32> {
    var var_0 = Struct_1(global3.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, 4294967295u, 21281u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, u_input.a.x), u_input.a.yy)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 27359u, u_input.a.x)), ~vec4<u32>(0u, 33897u, 21189u, global3.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(59917u, 27260u, u_input.a.x, 1u), vec4<u32>(1u, 16491u, 4294967295u, u_input.a.x)) ^ vec4<u32>(11183u, u_input.a.x, u_input.a.x, 15363u)) >> (vec4<u32>(global3.x & firstLeadingBit(1u), ~(~1u), 1u, reverseBits(u_input.a.x)) % vec4<u32>(32u)), vec3<bool>(false, false, select(false, func_3(select(u_input.a, vec3<u32>(u_input.a.x, 0u, global3.x), vec3<bool>(arg_0, false, arg_0))), true)), vec4<u32>(14062u >> (u_input.a.x % 32u), 15583u, 1u, ~85068u));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f)), 286f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-931f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(869f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1531f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -266f)))), -2065f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-568f, -1441f, 326f, 597f)))))));
    var var_2 = ~(-min(select(vec4<i32>(-28999i, 50585i, -32101i, global2[_wgslsmith_index_u32(66643u, 2u)]), vec4<i32>(-31548i, -36230i, -2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec4<bool>(false, false, var_0.c.x, arg_0)) | ~vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(global3.x, 2u)], 2147483647i, global2[_wgslsmith_index_u32(global3.x, 2u)]), _wgslsmith_div_vec4_i32(vec4<i32>(549i, 34253i, 1i, global2[_wgslsmith_index_u32(global3.x, 2u)]), ~vec4<i32>(-11016i, global2[_wgslsmith_index_u32(40649u, 2u)], global2[_wgslsmith_index_u32(global3.x, 2u)], global2[_wgslsmith_index_u32(var_0.d.x, 2u)]))));
    let var_3 = var_1.xyw;
    let var_4 = ~(-6904i);
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(18561u, 84400u, ~17347u), var_0.d.yzx, vec3<u32>(0u, ~1u, var_0.b.x));
}

fn func_1() -> u32 {
    global3 = select(~reverseBits(~vec3<u32>(15543u, global3.x, 4294967295u)) << ((firstTrailingBit(~vec3<u32>(0u, 65046u, 117519u)) >> (vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 19403u), global3.yy), 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(1763u, 1u, _wgslsmith_mult_u32(global3.x, global3.x)), select(vec3<u32>(u_input.a.x, 36970u, 0u) ^ func_2(false), func_2(true), true)), false);
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global3.x, 7893u) >> (_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), max(vec3<u32>(1u, global3.x, 4294967295u), u_input.a >> (vec3<u32>(1u, global3.x, global3.x) % vec3<u32>(32u)))), global3.x, abs(79902u), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(99918u, 3355u, 4294967295u)), func_2(true)));
    var var_1 = ~var_0;
    var_1 = ~(~min(~select(vec4<u32>(var_1.x, var_0.x, u_input.a.x, 57447u), vec4<u32>(0u, 93390u, global3.x, 73507u), true), vec4<u32>(global3.x, 4294967295u, ~68443u, var_1.x)));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 11u)];
    return _wgslsmith_dot_vec2_u32(~abs(var_2.b.b.zx), u_input.a.zz ^ ~u_input.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(global3.x, 11u)];
    var var_1 = reverseBits(global2[_wgslsmith_index_u32((~(u_input.a.x << (u_input.a.x % 32u)) ^ 1u) ^ ~1u, 2u)]);
    let var_2 = abs(4294967295u);
    let var_3 = ~global2[_wgslsmith_index_u32(u_input.a.x, 2u)];
    global3 = vec3<u32>(4294967295u, 0u << (firstTrailingBit(func_1()) % 32u), ~(~1u));
    let var_4 = (_wgslsmith_div_i32(~852i, abs(global2[_wgslsmith_index_u32(u_input.a.x, 2u)] | -1i)) ^ -11805i) & -61464i;
    global3 = vec3<u32>(u_input.a.x >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~var_0.b.d, ~vec4<u32>(30991u, var_0.b.a, var_0.b.d.x, 38084u)), var_0.b.b) % 32u), _wgslsmith_dot_vec2_u32(~(~(~global3.xx)), global3.xy >> (_wgslsmith_mult_vec2_u32(max(var_0.b.b.zy, vec2<u32>(u_input.a.x, 37953u)), u_input.a.yx) % vec2<u32>(32u))), firstTrailingBit(var_2 ^ (var_0.b.a << (~global3.x % 32u))));
    let var_5 = Struct_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(~(-1i), max(2147483647i, -25773i)) >> (max(firstTrailingBit(vec2<u32>(var_2, 4294967295u)), var_0.b.b.ww & vec2<u32>(60055u, var_0.b.d.x)) % vec2<u32>(32u)), vec2<i32>(var_3, _wgslsmith_mult_i32(var_3, var_3)) >> (vec2<u32>(select(var_2, var_0.b.a, var_0.b.c.x), var_2) % vec2<u32>(32u)), abs(max(vec2<i32>(25401i, 1i), vec2<i32>(-5113i, -16429i))) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(29490i, -92412i, global2[_wgslsmith_index_u32(var_2, 2u)]), vec3<i32>(-1i, var_4, var_3)), ~var_3)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(717f + _wgslsmith_f_op_f32(exp2(var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + -417f))), var_0.c));
    var_1 = global2[_wgslsmith_index_u32(~var_2, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.x, countOneBits(vec3<u32>(_wgslsmith_sub_u32(var_0.a, reverseBits(var_2)), 0u, ~(~68202u))), -1i, abs(countOneBits(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 24957u), vec3<u32>(global3.x, 1u, 38589u))))));
}

