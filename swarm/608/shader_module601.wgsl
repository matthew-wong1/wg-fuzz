struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    global0 = 28135i;
    global1 = array<bool, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.b.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.b.wy, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-913f, arg_0.b.x))))))));
    global0 = i32(-1i) * -1i;
    var var_1 = arg_0.b.x;
    return abs(14952u);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1616f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1798f, 694f)))))))));
    let var_1 = (~select(arg_1.zy << (vec2<u32>(1u, arg_1.x) % vec2<u32>(32u)), vec2<u32>(arg_1.x, arg_1.x), select(vec2<bool>(true, arg_0), vec2<bool>(true, global1[_wgslsmith_index_u32(25351u, 4u)]), arg_0)) & (vec2<u32>(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(1u, 9318u, arg_1.x, arg_1.x)), firstTrailingBit(arg_1.x)) << (vec2<u32>(arg_1.x, ~arg_1.x) % vec2<u32>(32u)))) ^ arg_1.yz;
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    var_0 = -530f;
    return vec4<i32>(countOneBits(-39557i), -1i, -32382i, u_input.a.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -935f), -1000f));
    let var_1 = vec4<bool>(!select(!arg_2.x, any(vec4<bool>(arg_3, arg_3, false, global1[_wgslsmith_index_u32(0u, 4u)])), false), !any(!(!vec3<bool>(arg_3, false, false))), true, true);
    let var_2 = _wgslsmith_sub_vec2_u32(~min(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 13225u, 20103u, 0u), vec4<u32>(53570u, 0u, 0u, 65391u)), ~1u)), vec2<u32>(_wgslsmith_mod_u32(24079u, 1u), _wgslsmith_clamp_u32(1u, 19807u, _wgslsmith_clamp_u32(1u, 87686u, ~1u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, 232f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(550f, 1000f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -633f), vec2<f32>(1406f, var_0)), _wgslsmith_div_vec2_f32(vec2<f32>(-503f, -222f), vec2<f32>(var_0, 234f)))))));
    var var_4 = _wgslsmith_div_i32(~_wgslsmith_mod_i32(~(-3560i), abs(arg_1)) >> (select(_wgslsmith_mod_u32(~11425u, 1u << (var_2.x % 32u)), abs(var_2.x), _wgslsmith_f_op_f32(sign(-141f)) > var_0) % 32u), u_input.a.x);
    return abs(~(~max(~vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(0u, 4294967295u, 0u, 1u))));
}

fn func_2() -> Struct_1 {
    global0 = -2219i;
    global0 = firstTrailingBit(u_input.a.x);
    var var_0 = Struct_1(u_input.a.x, 1597f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) + -2178f)), -1205f));
    var var_1 = func_5(func_4(false, vec4<u32>(func_3(Struct_2(1i, vec4<f32>(var_0.c.x, 927f, var_0.b, var_0.c.x), true, global1[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_0.a, 58487i), vec4<i32>(u_input.a.x, u_input.a.x, var_0.a, -32039i)), ~vec3<i32>(u_input.a.x, 0i, 1i), 1328f < var_0.b), 1u, _wgslsmith_sub_u32(abs(4294967295u), ~65676u), _wgslsmith_clamp_u32(14244u, countOneBits(28401u), ~1037u))), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -46426i, ~u_input.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, 1i), vec3<i32>(14855i, u_input.a.x, 57380i)), u_input.a.x >> (select(43578u, 54006u, false) % 32u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-12219i, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(-1i, 1i, var_0.a, u_input.a.x) ^ (vec4<i32>(28168i, -21391i, 47425i, -2147483647i) ^ vec4<i32>(var_0.a, u_input.a.x, u_input.a.x, var_0.a)), vec4<i32>(u_input.a.x, 21017i, var_0.a, ~(-1i)))), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(1u), firstLeadingBit(1u)), 4u)], true), false);
    var var_2 = select(select(vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], true, global1[_wgslsmith_index_u32(var_1.x, 4u)], false)) && (1i != var_0.a), !all(vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 4u)], global1[_wgslsmith_index_u32(var_1.x, 4u)])), false, all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(var_1.x, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], false, global1[_wgslsmith_index_u32(4294967295u, 4u)]), true))), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(14404u, 4u)], false, false, global1[_wgslsmith_index_u32(var_1.x, 4u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 4u)], true), global1[_wgslsmith_index_u32(108071u, 4u)])), !select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(4294967295u, 4u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 4u)], true, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_1.x, 4u)], global1[_wgslsmith_index_u32(var_1.x, 4u)]), false), select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 4u)], global1[_wgslsmith_index_u32(var_1.x, 4u)], true, global1[_wgslsmith_index_u32(1551u, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(var_1.x, 4u)], false, global1[_wgslsmith_index_u32(31146u, 4u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(22793u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)])))), !(!vec4<bool>(!global1[_wgslsmith_index_u32(41532u, 4u)], !global1[_wgslsmith_index_u32(9691u, 4u)], any(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 4u)], global1[_wgslsmith_index_u32(var_1.x, 4u)], global1[_wgslsmith_index_u32(var_1.x, 4u)])), any(vec3<bool>(global1[_wgslsmith_index_u32(83276u, 4u)], false, global1[_wgslsmith_index_u32(4294967295u, 4u)])))), !any(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(var_1.x, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], false)) & all(vec3<bool>(true, !global1[_wgslsmith_index_u32(var_1.x, 4u)], all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(15107u, 4u)])))));
    return Struct_1(var_0.a, var_0.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, 1000f), vec2<f32>(-311f, var_0.c.x))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~4294967295u, 4294967295u, firstTrailingBit(countOneBits(4294967295u))), vec3<u32>(1u, 1u, 1u)) >> (vec3<u32>(29890u, ~1u, reverseBits(1u)) % vec3<u32>(32u));
    let var_1 = 0u;
    var_0 = ~vec3<u32>(var_1, 4294967295u, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1, 1u, 39108u)), ~vec3<u32>(215u, var_0.x, 15482u)));
    var var_2 = func_2();
    let var_3 = var_2.c;
    return _wgslsmith_div_u32(10501u, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec2_u32(max(vec2<u32>(1u, 1u), ~(~vec2<u32>(4294967295u, 0u))), _wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(91145u, 1u, 4294967295u, 12309u), vec4<u32>(0u, 47225u, 34549u, 4294967295u))), ~(~vec2<u32>(100611u, 4236u)))));
    global1 = array<bool, 4>();
    let var_1 = ~vec3<u32>(select(var_0.x, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-890f, -100f, 924f, -1302f)), 1121f, firstLeadingBit(vec3<i32>(-6523i, 10159i, -17257i)), Struct_2(2147483647i, vec4<f32>(-979f, 351f, -1323f, -1609f), global1[_wgslsmith_index_u32(var_0.x, 4u)], false)), true), 12733u, _wgslsmith_sub_u32(12342u, _wgslsmith_mod_u32(var_0.x, 71088u)) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 85754u), vec2<u32>(0u, var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(step(1000f, 1061f))))))));
    var var_3 = abs(~(~vec4<u32>(var_0.x, 4294967295u, 1u, ~var_1.x)));
    var var_4 = ~func_5(~select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-31701i, 36124i, 1i, -2147483647i), global1[_wgslsmith_index_u32(1226u, 4u)]) >> ((~vec4<u32>(var_3.x, 1u, 4294967295u, var_0.x) ^ abs(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x))) % vec4<u32>(32u)), u_input.a.x, vec2<bool>(all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 4u)])) || true, select(false, global1[_wgslsmith_index_u32(firstLeadingBit(0u), 4u)], var_2 >= -315f)), !(!(global1[_wgslsmith_index_u32(78688u, 4u)] || true))).wwy;
    var var_5 = var_1.x;
    var var_6 = vec2<u32>(var_1.x, ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(~var_6.x, countOneBits(var_0.x))), ~(~(~var_1.x)));
}

