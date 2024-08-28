struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(-945f, vec4<i32>(-1979i, 1i, 2147483647i, -3069i)), Struct_2(965f, vec4<i32>(-1i, 2323i, 2147483647i, 9142i)), Struct_2(593f, vec4<i32>(2147483647i, 0i, 54790i, -25727i)), Struct_2(1001f, vec4<i32>(-1i, -8540i, -97540i, i32(-2147483648))), Struct_2(-1002f, vec4<i32>(-12635i, 2854i, -1i, -75894i)), Struct_2(1469f, vec4<i32>(10798i, i32(-2147483648), 0i, -2545i)), Struct_2(488f, vec4<i32>(0i, 0i, i32(-2147483648), -11511i)), Struct_2(439f, vec4<i32>(1i, 1i, 2147483647i, -40167i)), Struct_2(-694f, vec4<i32>(2147483647i, 84130i, 34187i, 9250i)), Struct_2(-790f, vec4<i32>(-50772i, 1i, 1i, -44572i)), Struct_2(-1925f, vec4<i32>(-17874i, i32(-2147483648), 2147483647i, 21364i)), Struct_2(-542f, vec4<i32>(2147483647i, 0i, 1i, 16214i)), Struct_2(-1152f, vec4<i32>(-1i, i32(-2147483648), -11827i, -18650i)), Struct_2(822f, vec4<i32>(i32(-2147483648), -50360i, 62557i, -25811i)), Struct_2(995f, vec4<i32>(2147483647i, -1i, i32(-2147483648), -70891i)), Struct_2(1007f, vec4<i32>(2147483647i, -35044i, -9105i, 0i)), Struct_2(1000f, vec4<i32>(3637i, 11771i, -25680i, i32(-2147483648))), Struct_2(-404f, vec4<i32>(-1i, -1i, 71514i, 1i)), Struct_2(903f, vec4<i32>(5393i, -1i, -16394i, -1i)), Struct_2(-211f, vec4<i32>(0i, 1i, i32(-2147483648), -1i)), Struct_2(-1184f, vec4<i32>(-62682i, 55474i, -35766i, 1i)), Struct_2(-1560f, vec4<i32>(34201i, 1i, 1i, 0i)), Struct_2(991f, vec4<i32>(12029i, 0i, -27638i, -1i)), Struct_2(-1933f, vec4<i32>(-20773i, 30025i, i32(-2147483648), 1i)), Struct_2(1739f, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i)), Struct_2(-259f, vec4<i32>(25139i, 2147483647i, 1i, -1i)));

var<private> global3: Struct_1;

var<private> global4: array<u32, 22> = array<u32, 22>(1u, 13043u, 0u, 3789u, 127970u, 36388u, 0u, 126485u, 11487u, 4294967295u, 1u, 4294967295u, 4294967295u, 1u, 1u, 99887u, 0u, 1u, 1u, 48431u, 0u, 1u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(global0.x, abs(u_input.a & u_input.a));
    let var_1 = global0.x;
    global1 = arg_0.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(683f, global0.x), vec2<f32>(global0.x, -1324f), false)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(235f, 479f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(423f, var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-262f, var_0.a) - vec2<f32>(1347f, var_0.a)), var_0.b.x > 1049i)), arg_0.b)) * vec2<f32>(1026f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(143f)))))));
    var var_3 = global2[_wgslsmith_index_u32(arg_0.a.x, 26u)];
    return global3.b;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    var var_0 = ~(((global3.a & (global3.a ^ global3.a)) >> (vec2<u32>(_wgslsmith_mod_u32(53544u, 4857u), ~4294967295u) % vec2<u32>(32u))) ^ (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(20546u, global3.a.x)), ~vec2<u32>(arg_0, 32883u)) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 5397u), global3.a, vec2<u32>(global4[_wgslsmith_index_u32(global3.a.x, 22u)], 0u))));
    let var_1 = vec2<bool>(false, any(select(vec2<bool>(global3.b, func_3(Struct_1(global3.a, global3.b, 0i, global3.c))), select(!vec2<bool>(global3.b, global3.b), !vec2<bool>(global3.b, global3.b), !vec2<bool>(global3.b, false)), vec2<bool>(-1i < global3.d, true))));
    global2 = array<Struct_2, 26>();
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-106f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -155f, true))));
    global2 = array<Struct_2, 26>();
    return arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, _wgslsmith_f_op_f32(select(-2048f, arg_0.a, true)))))));
    let var_0 = arg_0;
    let var_1 = Struct_1(vec2<u32>(~(~func_2(global3.a.x, vec3<f32>(arg_0.a, 1266f, 351f))), 37251u), true, u_input.a.x, ~(-1i));
    global4 = array<u32, 22>();
    var var_2 = u_input.a.x;
    return Struct_1(var_1.a, var_1.b, -23317i, _wgslsmith_add_i32(-4118i, 5301i));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<u32> {
    global4 = array<u32, 22>();
    let var_0 = global2[_wgslsmith_index_u32(16259u, 26u)];
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_2.c, 51243i), 0i >> (0u % 32u)), vec2<i32>(var_0.b.x, select(arg_0.b.x, arg_2.d, arg_1.x))) | _wgslsmith_add_vec2_i32(~select(var_0.b.zy, vec2<i32>(2147483647i, 0i), arg_1.yy), ~_wgslsmith_sub_vec2_i32(var_0.b.zy, arg_0.b.zx)), var_0.b.xz);
    var var_1 = vec2<i32>(-firstTrailingBit((i32(-1i) * -2147483647i) >> ((0u | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_2.a.x, 22u)], 22u)]) % 32u)), 0i);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -955f) - -1174f), true || (false & any(arg_1.yz))))));
    return ~vec2<u32>(global3.a.x, func_1(global2[_wgslsmith_index_u32(abs(arg_2.a.x), 26u)], ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.a.x, global3.a.x, arg_2.a.x, 1u), vec4<u32>(global3.a.x, arg_2.a.x, 1u, arg_2.a.x), vec4<u32>(arg_2.a.x, 1u, 0u, arg_2.a.x))).a.x);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-462f, global0.x))))));
    let var_0 = global2[_wgslsmith_index_u32(~reverseBits(1u), 26u)];
    global3 = func_1(global2[_wgslsmith_index_u32(~41793u, 26u)], reverseBits(max(min(vec4<u32>(global3.a.x, global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(18096u, 22u)]), vec4<u32>(global4[_wgslsmith_index_u32(arg_1.a.x, 22u)], arg_1.a.x, global3.a.x, 4294967295u)), ~vec4<u32>(arg_1.a.x, global3.a.x, 37375u, 4294967295u))));
    global3 = func_1(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -294f), true))), vec4<i32>(47231i, _wgslsmith_mod_i32(1i, 30142i), _wgslsmith_div_i32(0i, -86256i), -global3.d) & (_wgslsmith_sub_vec4_i32(var_0.b, var_0.b) | -vec4<i32>(u_input.a.x, 17061i, 0i, u_input.a.x))), vec4<u32>(2973u, func_2(select(_wgslsmith_add_u32(1u, 1u), _wgslsmith_div_u32(arg_1.a.x, 4294967295u), any(vec4<bool>(global3.b, false, false, global3.b))), vec3<f32>(_wgslsmith_f_op_f32(abs(-1364f)), _wgslsmith_f_op_f32(trunc(-213f)), _wgslsmith_div_f32(1379f, var_0.a))), ~select(4294967295u, func_2(41527u, vec3<f32>(-329f, global0.x, var_0.a)), !global3.b), _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(~4294967295u, 22u)], 4294967295u)));
    let var_1 = ~countOneBits(~(~(~vec3<u32>(0u, arg_1.a.x, global3.a.x))));
    return func_1(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-425f + -1243f)))), (~vec4<i32>(var_0.b.x, arg_1.d, u_input.a.x, global3.d) << (select(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, var_1.x, global3.a.x), true) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, -31845i, arg_0.x, u_input.a.x), firstTrailingBit(u_input.a))), _wgslsmith_mod_vec4_u32(~min(abs(vec4<u32>(26926u, 198210u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(44536u, 22u)], 22u)], 22u)], global4[_wgslsmith_index_u32(var_1.x, 22u)])), vec4<u32>(arg_1.a.x, 70964u, 29985u, 4294967295u)), vec4<u32>(~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43166u, 22u)], 22u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.a.x), vec2<u32>(global3.a.x, 4294967295u)), _wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(1u, 1u)), _wgslsmith_sub_u32(firstLeadingBit(global4[_wgslsmith_index_u32(var_1.x, 22u)]), 34822u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 26>();
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f))), 554f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-488f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + 148f), _wgslsmith_f_op_f32(-564f * 1749f)))))));
    let var_0 = global2[_wgslsmith_index_u32(20253u, 26u)];
    let var_1 = func_5(vec2<i32>(u_input.a.x, -33799i) ^ -(-u_input.a.xz << (global3.a % vec2<u32>(32u))), Struct_1(_wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(4064u, global3.a.x), global3.a), func_4(global2[_wgslsmith_index_u32(global3.a.x, 26u)], vec3<bool>(global3.b, global3.b, global3.b), func_1(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 22u)], 26u)], vec4<u32>(0u, 1u, global4[_wgslsmith_index_u32(1u, 22u)], global3.a.x)))), true, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(-7070i, 1633i)), firstTrailingBit(0i)), -57611i));
    let var_2 = -39064i;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(269f, global0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-462f, var_0.a))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1042f)), vec2<f32>(966f, var_0.a), select(vec2<bool>(false, true), vec2<bool>(global3.b, var_1.b), global3.b)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(377f, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, -333f)))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(1431f * 594f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-436f, -237f)))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -443f)), select(select(vec2<bool>(global3.b, global3.b), vec2<bool>(true, global3.b), true), !vec2<bool>(true, global3.b), vec2<bool>(global3.b, var_1.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-var_0.a), false)), ~(-(vec2<i32>(var_1.d, 57584i) << (vec2<u32>(1u, global4[_wgslsmith_index_u32(0u, 22u)]) % vec2<u32>(32u)))), ~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(28977u, global3.a.x), 22u)], ~var_0.b.zyz, vec4<f32>(1f, _wgslsmith_f_op_f32(-var_0.a), var_0.a, _wgslsmith_f_op_f32(abs(156f))));
}

