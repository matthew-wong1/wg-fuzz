struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: u32;

var<private> global3: array<u32, 16> = array<u32, 16>(90444u, 19740u, 0u, 4294967295u, 34920u, 4294967295u, 42450u, 138323u, 37877u, 22408u, 10277u, 40458u, 17661u, 68715u, 66805u, 59049u);

var<private> global4: array<vec2<i32>, 6>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    return _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(i32(-1i) * -4408i, i32(-1i) * -1i, 1i, select(17412i, -10579i, false))), vec4<i32>(_wgslsmith_mod_i32(-23522i, firstLeadingBit(-1i)), -5108i, -95787i, countOneBits(_wgslsmith_sub_i32(max(-20182i, 42013i), -31209i))));
}

fn func_2() -> Struct_2 {
    let var_0 = select(-(vec3<i32>(-1i) * -vec3<i32>(-61305i, 28878i, -2147483647i)) ^ vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(27360i, 2147483647i, 1i, -16579i), vec4<i32>(-51465i, -27006i, 1i, 6095i)), max(_wgslsmith_sub_i32(-1i, -1i), -69869i), ~(i32(-1i) * -42622i)), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(29087i, -27980i, -7506i)), ~vec3<i32>(24014i, -92574i, 1i)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-18860i, 36658i, -9601i), vec3<i32>(-25998i, 17974i, -33770i)), vec3<i32>(-2147483647i, -2147483647i, 1216i)), vec3<i32>(countOneBits(2147483647i), 1i, func_3(Struct_1(vec3<u32>(3867u, 31751u, 40675u), vec2<bool>(global1.x, global1.x), false, -969f), vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], false, true)))), global1.xzy);
    let var_1 = Struct_2(min(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(1u, 16u)] << (~1u % 32u), _wgslsmith_sub_u32(~1u, 11233u)), ~vec4<u32>(u_input.a, 19178u, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 16u)]) << (firstTrailingBit(countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(42236u, 16u)], 17395u, 32233u, u_input.a))) % vec4<u32>(32u))), !global1.x);
    let var_2 = countOneBits(abs(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a)) >> (var_1.a.x % 32u));
    let var_3 = _wgslsmith_f_op_f32(365f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -874f))))));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3)));
    return var_1;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 7>();
    let var_0 = vec2<u32>(arg_1.a.x & _wgslsmith_dot_vec4_u32(abs(select(arg_1.a, arg_1.a, true)), _wgslsmith_mult_vec4_u32(arg_1.a >> (vec4<u32>(global3[_wgslsmith_index_u32(32935u, 16u)], u_input.a, 48628u, u_input.a) % vec4<u32>(32u)), select(arg_1.a, vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], 67110u, 0u, global3[_wgslsmith_index_u32(arg_2.a.x, 16u)]), false))), 4294967295u);
    global4 = array<vec2<i32>, 6>();
    global1 = vec4<bool>(any(!select(vec2<bool>(false, arg_1.b), global1.zy, global1.yz)) & func_2().b, arg_2.d == _wgslsmith_f_op_f32(abs(816f)), true, global1.x);
    global2 = 1u;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(arg_2.d * arg_2.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_2.d, 240f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d * -1178f) - _wgslsmith_f_op_f32(-524f + arg_0.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(-199f, arg_2.d), _wgslsmith_f_op_f32(arg_0.x + arg_2.d))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1020f)) * 448f), _wgslsmith_f_op_f32(f32(-1f) * -430f))), false));
}

fn func_1() -> Struct_1 {
    global3 = array<u32, 16>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(466f, -745f))) * -638f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1196f, 510f, 1f))), func_2(), Struct_1(reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 16u)], 1u, 40205u)), global1.wz, global0[_wgslsmith_index_u32(~(~u_input.a), 7u)], _wgslsmith_f_op_f32(f32(-1f) * -558f)))));
    var var_1 = func_2();
    var var_2 = Struct_1(~(~vec3<u32>(global3[_wgslsmith_index_u32(3631u ^ global3[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], _wgslsmith_div_u32(59637u, u_input.a), 20736u)), !(!select(global1.xy, global1.yw, var_1.b)), select(global1.x, true, (any(vec3<bool>(global1.x, true, true)) & true) && !all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 7u)], false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-621f)))))));
    let var_3 = _wgslsmith_div_vec3_u32(var_1.a.wyy << (~vec3<u32>(1u, firstLeadingBit(var_1.a.x), u_input.a) % vec3<u32>(32u)), vec3<u32>(max(u_input.a, ~23298u), _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(~var_2.a.x, 16u)], _wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(var_1.a.x, global3[_wgslsmith_index_u32(0u, 16u)], var_1.a.x)))), _wgslsmith_mult_u32(u_input.a, var_2.a.x)));
    return Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~(10382u & var_3.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.a, var_1.a.xxw), countOneBits(var_1.a.xzy)), reverseBits(global3[_wgslsmith_index_u32(30057u, 16u)])), vec3<u32>(reverseBits(1u << (var_3.x % 32u)), ~(~0u), 20379u)), !(!select(!global1.xw, vec2<bool>(true, false), select(true, false, var_2.b.x))), true, var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(~(-34718i), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-51626i, -35412i, 31079i, -3754i)), vec4<i32>(i32(-1i) * -712i, -35577i, 2147483647i, -2147483647i)), select(countOneBits(1i) >> (var_0.a.x % 32u), ~3011i, any(vec4<bool>(global1.x, false, global1.x, false)) && any(global1.xwx)), ~_wgslsmith_dot_vec2_i32(~global4[_wgslsmith_index_u32(var_0.a.x, 6u)], max(vec2<i32>(-28955i, 9885i), vec2<i32>(-2147483647i, 1i)))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-2147483647i, 52585i, -63543i, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(55800i, 2147483647i, 36005i), vec3<i32>(1977i, 0i, 0i)), -vec3<i32>(794i, 0i, 15535i)), -38110i, firstTrailingBit(1i), -1i)));
    var var_2 = vec4<bool>(true, 58875u < global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global3[_wgslsmith_index_u32(var_0.a.x, 16u)], 1u, 0u)), var_0.a), 16u)], 16u)], false, !all(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_0.a.x, 7u)], var_0.b.x)));
    let var_3 = Struct_2(vec4<u32>(func_1().a.x, _wgslsmith_dot_vec2_u32(~max(var_0.a.xy, vec2<u32>(global3[_wgslsmith_index_u32(var_0.a.x, 16u)], u_input.a)), var_0.a.xx ^ ~var_0.a.zx), select(~(~u_input.a), 4294967295u, (true || var_0.c) && global1.x), ~firstTrailingBit(491u)), -1i >= (min(1i, _wgslsmith_sub_i32(-1i, var_1.x)) >> (u_input.a % 32u)));
    var var_4 = Struct_2(vec4<u32>(38962u, u_input.a << ((u_input.a & 1u) % 32u), 27629u, 4294967295u), var_0.c);
    let var_5 = _wgslsmith_mult_vec2_i32(global4[_wgslsmith_index_u32(abs(var_0.a.x) ^ ~_wgslsmith_div_u32(~1u, ~1u), 6u)], countOneBits(min(vec2<i32>(firstTrailingBit(83885i), var_1.x), _wgslsmith_div_vec2_i32(global4[_wgslsmith_index_u32(var_3.a.x, 6u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.a.x, 0u), 6u)]))));
    global4 = array<vec2<i32>, 6>();
    let var_6 = ~var_1.wyy;
    var var_7 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_i32(min(var_1.x, 2147483647i) ^ reverseBits(var_6.x), ~(-33583i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(21313i, var_5.x, 27399i, var_5.x), vec4<i32>(-1i, -23059i, 4809i, var_1.x), false), var_1) << (15465u % 32u)), ~(~(~abs(var_4.a))));
}

