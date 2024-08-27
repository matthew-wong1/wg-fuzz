struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(0u, 4294967295u, 68337u, 4294967295u, 4294967295u, 4294967295u, 51550u, 21814u);

var<private> global1: array<bool, 9> = array<bool, 9>(true, false, true, false, false, true, false, false, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f * -530f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(777f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(286f, 675f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f)), abs(abs(countOneBits(u_input.a.x))), global1[_wgslsmith_index_u32(~49723u, 9u)], reverseBits(vec2<i32>(abs(u_input.a.x), u_input.a.x | u_input.a.x))), _wgslsmith_dot_vec3_i32(~vec3<i32>(~7815i, -1i, u_input.a.x), countOneBits(vec3<i32>(_wgslsmith_sub_i32(-56738i, 74290i), _wgslsmith_sub_i32(1i, 0i), -u_input.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1362f, -1472f, -423f, _wgslsmith_f_op_f32(step(-820f, -379f)))), 480f, 19163i << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(12018u, global0[_wgslsmith_index_u32(31327u, 8u)], global0[_wgslsmith_index_u32(12976u, 8u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23119u, 8u)], 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(0u, 8u)], 4294967295u)), vec3<u32>(21153u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22372u, 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(5031u, 8u)]) | vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 4294967295u)) % 32u), false, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(1i, firstTrailingBit(u_input.a.x)))), !(!global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(46098u, global0[_wgslsmith_index_u32(64789u, 8u)], 0u), vec3<u32>(27607u, 1u, 1u))), 9u)]), !(!(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(56129u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], false), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36425u, 8u)], 8u)], 9u)], global1[_wgslsmith_index_u32(44827u, 9u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(82492u, 8u)], 8u)], 9u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 9u)], false, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34461u, 8u)], 9u)])))));
    var var_1 = var_0.a.a;
    var var_2 = vec3<f32>(-900f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.a.a.x)), _wgslsmith_f_op_f32(-var_1.x), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1411f)) - _wgslsmith_f_op_f32(var_1.x + var_0.c.b)));
    var_1 = _wgslsmith_f_op_vec4_f32(var_0.c.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(-var_0.c.a.x)), var_2.x, -1474f, var_0.c.a.x)));
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-577f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-622f * var_0.c.b), true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 867f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(var_0.c.a.x, -2390f))))), var_1.x);
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-286f, -1000f, 1177f))))) * vec3<f32>(150f, 1461f, _wgslsmith_f_op_f32(-377f - -1259f))) * _wgslsmith_f_op_vec3_f32(func_3())), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1314f, -121f, -1333f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -953f) - -1881f)), 1i ^ ~u_input.a.x, true || global1[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(1u)), 9u)], max(abs(vec2<i32>(-61922i, u_input.a.x)), vec2<i32>(u_input.a.x, u_input.a.x)) << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(46017u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17042u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)]), vec2<u32>(1u, 0u)), ~79732u) % vec2<u32>(32u))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 1u) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58785u, 8u)], 8u)], 8u)], 8u)], 8u)], 29905u) % vec3<u32>(32u)), reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(33309u, 8u)], 21225u, global0[_wgslsmith_index_u32(1u, 8u)]))), vec3<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(56826u, 8u)]), 32149u >> (global0[_wgslsmith_index_u32(46845u, 8u)] % 32u), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 8u)])) & ~max(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53927u, 8u)], 8u)], 8u)], 68715u, global0[_wgslsmith_index_u32(99588u, 8u)]), max(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43343u, 8u)], 8u)], 12409u, 6861u), vec3<u32>(1572u, 27356u, 1u))));
    let var_1 = Struct_2(max(4294967295u, 12014u), !vec4<bool>(false, any(select(vec4<bool>(var_0.b.d, var_0.b.d, false, var_0.b.d), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.c.x, 9u)], true, var_0.b.d), true)), global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u) | ~var_0.c.x, 9u)], any(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c.x, 8u)], 8u)], 9u)]), vec3<bool>(var_0.b.d, true, true), false))), _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(u_input.a.x), u_input.a.x, firstTrailingBit(countOneBits(4526i))), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(11230i, var_0.b.c, 2147483647i)), select(vec3<i32>(u_input.a.x, 48878i, u_input.a.x), vec3<i32>(9808i, u_input.a.x, var_0.b.e.x), true) ^ ~vec3<i32>(1i, -2147483647i, 0i), reverseBits(vec3<i32>(1i, 49632i, 0i)))), _wgslsmith_dot_vec2_u32(var_0.c.zz, vec2<u32>(reverseBits(global0[_wgslsmith_index_u32(max(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c.x, 8u)], 8u)]), 8u)]), var_0.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-1f), any(!select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], var_0.b.d, global1[_wgslsmith_index_u32(11820u, 9u)], false), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c.x, 8u)], 9u)], false, var_0.b.d, false), var_0.b.d)))));
    global0 = array<u32, 8>();
    let var_2 = var_0.b.a.x;
    global0 = array<u32, 8>();
    return ~reverseBits(vec4<u32>(~global0[_wgslsmith_index_u32(var_1.d, 8u)], firstTrailingBit(var_0.c.x), var_1.a, 1u)) << (vec4<u32>(7903u, var_1.a, _wgslsmith_dot_vec2_u32(~var_0.c.yx, var_0.c.zx), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(80955u, 8u)], 0u, 58997u)), var_0.c)) % vec4<u32>(32u));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_4) -> vec4<u32> {
    return ~max(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.c.x, 130182u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(15522u, 8u)], arg_2.c.x, 4294967295u, arg_0.x), vec4<u32>(4294967295u, arg_2.c.x, arg_1.c.x, arg_0.x))), func_2());
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_5 {
    var var_0 = Struct_5(!(!(~9299i > arg_1.c.x)), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, 423f, -1419f, -466f) + vec4<f32>(-259f, -1821f, -267f, -166f)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.e, arg_1.e, -203f, 1000f), vec4<f32>(arg_1.e, arg_1.e, 438f, arg_1.e))), 482f, reverseBits(select(1i, u_input.a.x, global1[_wgslsmith_index_u32(2459u, 9u)])), 37083u < ~arg_0, vec2<i32>(firstTrailingBit(arg_1.c.x), u_input.a.x)), -(firstTrailingBit(-56472i) ^ _wgslsmith_dot_vec2_i32(arg_1.c.xx, vec2<i32>(1i, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, arg_1.e, 1000f, arg_1.e) + vec4<f32>(1497f, arg_1.e, 133f, -552f)) - vec4<f32>(arg_1.e, 513f, -1247f, arg_1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e) - _wgslsmith_f_op_f32(f32(-1f) * -972f)), u_input.a.x, any(select(arg_1.b.wxx, vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(8525u, 9u)]), arg_1.b.xww)), arg_1.c.yx), global1[_wgslsmith_index_u32(0u, 9u)], arg_1.b), arg_1);
    var var_1 = u_input.a.x | countOneBits(select(2196i, firstTrailingBit(min(var_0.c.c.x, -2147483647i)), false));
    let var_2 = Struct_1(vec4<f32>(arg_1.e, var_0.c.e, arg_1.e, -1600f), arg_1.e, -(~reverseBits(0i)) | var_0.c.c.x, all(select(vec2<bool>(var_0.b.a.b < var_0.b.c.a.x, 3088u > arg_1.d), arg_1.b.zw, true)), var_0.c.c.yx);
    global0 = array<u32, 8>();
    let var_3 = ~global0[_wgslsmith_index_u32(6445u << (~arg_0 % 32u), 8u)];
    return Struct_5(!var_0.a, var_0.b, Struct_2(1u, vec4<bool>(var_2.d, var_0.c.b.x, u_input.a.x >= _wgslsmith_mod_i32(-1i, -19394i), global1[_wgslsmith_index_u32(firstLeadingBit(6997u), 9u)]), abs(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, 23937i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.e.x, var_2.e.x, var_2.e.x), vec3<i32>(-9694i, -1i, 1i), arg_1.c))), var_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(1000f + arg_1.e)), arg_1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_0 = !select(vec2<bool>(true, true), !(!vec2<bool>(global1[_wgslsmith_index_u32(50296u, 9u)], true)), !vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29546u, 8u)], 8u)], 8u)], 8u)] != 74413u));
    var var_1 = 0u;
    var var_2 = func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 0u), global0[_wgslsmith_index_u32(46868u, 8u)] >> (74976u % 32u), min(4294967295u, global0[_wgslsmith_index_u32(0u, 8u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86851u, 8u)], 8u)], 8u)], 8u)]), ~func_1(vec2<u32>(15536u, global0[_wgslsmith_index_u32(4294967295u, 8u)]) | vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47059u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23113u, 8u)], 8u)], 8u)]), Struct_4(vec3<f32>(336f, -1158f, 1032f), Struct_1(vec4<f32>(1212f, 2300f, 1004f, -582f), 380f, u_input.a.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 9u)], u_input.a), vec3<u32>(13207u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26876u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65265u, 8u)], 8u)])), Struct_4(vec3<f32>(-550f, 129f, 1000f), Struct_1(vec4<f32>(-434f, 1055f, -1482f, -541f), 1841f, 0i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], 9u)], u_input.a), vec3<u32>(65376u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68625u, 8u)], 8u)], 8u)], 8u)], 3094u)))), Struct_2(_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(firstTrailingBit(~45361u), 8u)]), select(!(!vec4<bool>(false, var_0.x, var_0.x, true)), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(0u, 9u)], all(vec2<bool>(true, var_0.x)), select(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53203u, 8u)], 8u)], 8u)], 9u)], var_0.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 9u)])), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 9u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29396u, 8u)], 9u)], global1[_wgslsmith_index_u32(11769u, 9u)])), firstTrailingBit(abs(vec3<i32>(8340i, -2147483647i, 42767i))), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(76097u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 4294967295u)), 8u)], ~func_2().x, ~_wgslsmith_div_u32(26075u, 1224u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(437f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-521f, ~func_2().zw, var_2.b.c.a.xx, _wgslsmith_f_op_f32(var_2.b.c.a.x - var_2.b.a.a.x));
}

