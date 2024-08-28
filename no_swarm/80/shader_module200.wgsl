struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: Struct_3;

var<private> global2: array<bool, 2> = array<bool, 2>(false, true);

var<private> global3: array<Struct_3, 16>;

var<private> global4: vec3<bool>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    global3 = array<Struct_3, 16>();
    global2 = array<bool, 2>();
    global1 = Struct_3(global1.a);
    let var_0 = _wgslsmith_sub_vec4_i32(-(-vec4<i32>(-1814i, u_input.a.x, 1i, -14098i) | ((vec4<i32>(13532i, u_input.b, -23929i, u_input.a.x) ^ vec4<i32>(-15428i, -1i, 10781i, 2809i)) | (vec4<i32>(u_input.a.x, 1i, u_input.b, u_input.b) >> (arg_1 % vec4<u32>(32u))))), max(select(~(~vec4<i32>(-1i, 0i, u_input.a.x, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(103847i, -1i, u_input.a.x, -53390i), vec4<i32>(28650i, u_input.a.x, u_input.b, -1i)), true), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.b, 9395i), vec4<i32>(u_input.b, 45446i, u_input.a.x, 2147483647i))))));
    var var_1 = global0[_wgslsmith_index_u32(select(~firstLeadingBit(~4294967295u) >> (_wgslsmith_sub_u32(35845u, _wgslsmith_mult_u32(arg_1.x, ~14288u)) % 32u), ~arg_1.x, arg_0.a.x), 6u)];
    return firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, ~abs(arg_1.x)), min(_wgslsmith_clamp_vec2_u32(arg_1.ww, min(vec2<u32>(arg_1.x, 13654u), arg_1.xw), arg_1.zx), firstLeadingBit(~arg_1.zw))));
}

fn func_2(arg_0: u32) -> u32 {
    global0 = array<Struct_3, 6>();
    global1 = Struct_3(select(!global1.a, global1.a, any(vec4<bool>(all(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 2u)])), global2[_wgslsmith_index_u32(arg_0 | arg_0, 2u)], true, !global1.a.x))));
    global2 = array<bool, 2>();
    global1 = global3[_wgslsmith_index_u32(func_3(Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(abs(0u)), 2u)], false, false)), reverseBits(vec4<u32>(69303u, arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, arg_0)), arg_0)) & ~(~(~vec4<u32>(43696u, arg_0, 0u, 0u)))), 16u)];
    let var_0 = _wgslsmith_f_op_f32(-2032f + _wgslsmith_f_op_f32(980f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-497f, _wgslsmith_f_op_f32(407f - -719f))))));
    return arg_0 & arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32) -> bool {
    var var_0 = u_input.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 * -1000f));
    var var_2 = ~func_2(arg_1.x);
    global4 = !(!select(vec3<bool>(false, !arg_0.a.x, all(vec3<bool>(global1.a.x, false, global4.x))), !select(arg_0.a, vec3<bool>(arg_0.a.x, false, false), arg_0.a), (arg_1.x == 1u) & global4.x));
    let var_3 = Struct_2(vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))) + -763f)), countOneBits(abs(u_input.b)));
    return arg_0.a.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_3;
    global3 = array<Struct_3, 16>();
    let var_1 = 47259i;
    let var_2 = arg_3;
    global1 = Struct_3(var_0.a.zyx);
    return global0[_wgslsmith_index_u32(func_3(Struct_3(var_2.a.zyw), vec4<u32>(~_wgslsmith_mod_u32(1u, 1u), min(select(func_3(Struct_3(vec3<bool>(global1.a.x, true, global1.a.x)), vec4<u32>(0u, 6289u, 0u, 10991u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 23966u), vec2<u32>(27492u, 33481u)), false), _wgslsmith_dot_vec3_u32(vec3<u32>(30420u, 2702u, 0u), abs(vec3<u32>(12323u, 32113u, 27595u)))), firstTrailingBit(11176u), 4294967295u)), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(!select(vec3<bool>(true, !global4.x, func_1(global3[_wgslsmith_index_u32(0u, 16u)], vec3<u32>(0u, 67085u, 1u), -681f)), global1.a, !(!vec3<bool>(false, global1.a.x, global2[_wgslsmith_index_u32(42663u, 2u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(round(-1229f))))), _wgslsmith_f_op_f32(trunc(1538f))), global1.a.yx, Struct_1(select(!select(vec4<bool>(true, global4.x, global1.a.x, true), vec4<bool>(global1.a.x, false, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(global1.a.x, global2[_wgslsmith_index_u32(25444u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], false)), vec4<bool>(any(vec4<bool>(global1.a.x, global1.a.x, true, true)), !global2[_wgslsmith_index_u32(54536u, 2u)], global4.x, false), any(vec4<bool>(false, false, global1.a.x, true))), global4.zx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1341f, 192f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1839f, -737f, 1243f) - vec3<f32>(940f, 1628f, 323f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2497f, -491f, -1029f), vec3<f32>(913f, 612f, -282f)))), _wgslsmith_sub_i32(min(reverseBits(-34011i), -10945i), u_input.b)));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(1f - 1000f), _wgslsmith_f_op_f32(-1f));
    global0 = array<Struct_3, 6>();
    var var_1 = Struct_3(global1.a);
    let var_2 = select(!func_4(vec3<bool>(var_0.x >= -609f, var_1.a.x, true), _wgslsmith_f_op_f32(round(-1826f)), !(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], false)), Struct_1(vec4<bool>(true, true, false, var_1.a.x), !vec2<bool>(global4.x, global4.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -216f, -492f))), u_input.b)).a.yx, !vec2<bool>(_wgslsmith_div_i32(u_input.a.x, -23694i) < _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 72012i, 6003i), vec3<i32>(-27747i, u_input.b, u_input.a.x)), func_4(vec3<bool>(false, global1.a.x, false), var_0.x, var_1.a.yx, Struct_1(vec4<bool>(global1.a.x, global4.x, global1.a.x, var_1.a.x), global1.a.xx, vec3<f32>(-156f, var_0.x, var_0.x), -33768i)).a.x), any(select(vec3<bool>(any(vec2<bool>(true, global2[_wgslsmith_index_u32(95963u, 2u)])), -497f == var_0.x, global4.x), !(!vec3<bool>(global1.a.x, true, global1.a.x)), !(!global4.x))));
    let var_3 = func_4(var_1.a, 1297f, vec2<bool>(true, true), Struct_1(!(!(!vec4<bool>(false, var_2.x, var_1.a.x, true))), vec2<bool>(!all(vec4<bool>(false, global4.x, global4.x, true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-672f, 1786f, var_0.x)))), (-u_input.b & -u_input.a.x) << (0u % 32u)));
    let var_4 = 23922i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_div_f32(var_0.x, -1000f), !global4.x)))), 803f);
}

