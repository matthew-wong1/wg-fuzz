struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 32>;

var<private> global2: array<Struct_2, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    var var_0 = u_input.a.zxw;
    global2 = array<Struct_2, 16>();
    var var_1 = true;
    var_1 = !any(arg_3);
    var var_2 = arg_0.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x * -1093f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, global0.x))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1780f, arg_0.c, -1000f), vec4<f32>(arg_0.c, global0.x, 1354f, -2300f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c, arg_0.c, 435f, -236f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, 924f, 811f, 728f), vec4<f32>(arg_0.c, global0.x, -445f, 239f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -443f, -308f, -850f) - vec4<f32>(-1504f, -1251f, global0.x, global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(global0.x + 1877f), -600f, -634f, _wgslsmith_f_op_f32(min(arg_0.c, -1238f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(16021u, 1u, 0u), arg_2.ywz, global2[_wgslsmith_index_u32(47310u, 16u)], vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(floor(global0.x)), arg_0.c, -1189f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 1571f, global0.x, 1399f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -111f, 391f, 116f) - vec4<f32>(global0.x, arg_0.c, 783f, global0.x))))))));
    var var_0 = global2[_wgslsmith_index_u32(~firstTrailingBit(~37896u), 16u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-global0.zz);
    var var_2 = Struct_1(-_wgslsmith_mult_i32(-2147483647i, ~arg_1), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.c)), -1193f)))), u_input.a.zw, ~arg_1);
    var var_3 = var_0.b.x;
    return ~_wgslsmith_div_u32(select(~17569u, ~var_0.d.x, all(vec4<bool>(var_0.a.x, true, false, var_0.b.x))), ~1u) ^ ~(~var_0.d.x);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global1 = array<i32, 32>();
    global0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(func_2(vec3<u32>(1u, 1u, 1u), -vec3<i32>(-50428i, global1[_wgslsmith_index_u32(63727u, 32u)], arg_0.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 1u, 44325u)) % vec3<u32>(32u)), Struct_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false), any(vec2<bool>(true, true))), vec4<bool>(all(vec2<bool>(false, true)), true, all(vec3<bool>(true, false, false)), false), ~firstLeadingBit(-1i), vec3<u32>(1u, 1u, 1u), u_input.a.yw), vec3<bool>(true, all(vec2<bool>(true, true)) == true, any(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-909f)))))));
    let var_0 = select(true, abs(min(4294967295u, 1u)) > func_3(Struct_1(global1[_wgslsmith_index_u32(0u, 32u)], 2722i, 1874f, u_input.a.yw, 2147483647i), u_input.a.x ^ arg_0.x, u_input.a), false) & true;
    var var_1 = Struct_1(~(-reverseBits(1i)), _wgslsmith_dot_vec2_i32(arg_0.xx, arg_0.ww ^ vec2<i32>(abs(u_input.a.x), abs(arg_0.x))), -1384f, ~(-arg_0.wx), _wgslsmith_mod_i32(arg_0.x, -_wgslsmith_mult_i32(i32(-1i) * -56803i, u_input.a.x)));
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 13267u), vec3<u32>(4294967295u, 23045u, 0u)), ~vec3<u32>(1u, 1u, 1u)));
    return func_3(Struct_1(0i, ~57474i, global0.x, -(~u_input.c.zy << ((vec2<u32>(0u, 63932u) & vec2<u32>(37638u, var_2)) % vec2<u32>(32u))), ~var_1.b), -13989i, vec4<i32>(_wgslsmith_mult_i32(select(1i, 1i, 1u >= var_2), ~33857i), 0i, -1i, global1[_wgslsmith_index_u32(66806u, 32u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 24742u, 54313u, 50439u)), vec4<u32>(func_1(vec4<i32>(u_input.c.x, u_input.b.x, 2147483647i, -717i)), 4294967295u, 848u, ~20092u))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 21251u, 4294967295u)), _wgslsmith_clamp_u32(1u, 1u, ~2490u)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(104613u, 4294967295u, 22119u, 10595u)), vec4<u32>(1u, 1u, 1u, 1u)), min(min(min(37591u, 18516u), 1u), 1u), countOneBits(25599u)), !select(vec4<bool>(any(vec4<bool>(true, false, true, true)), true, true, all(vec2<bool>(false, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)));
    var var_1 = ~(~(~(~var_0.x & ~34071u)));
    var var_2 = Struct_1(34731i << (var_0.x % 32u), 0i, _wgslsmith_f_op_f32(func_2(vec3<u32>(33822u, var_0.x, var_0.x), -(~(vec3<i32>(u_input.a.x, 2147483647i, u_input.c.x) ^ u_input.b)), Struct_2(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(13450u, 32u)], _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_0.x, 32u)], u_input.c.x)), vec3<u32>(~var_0.x, var_0.x, 53366u), ~vec2<i32>(-35982i, global1[_wgslsmith_index_u32(var_0.x, 32u)])), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)))), u_input.c.xx, 42934i);
    var var_3 = global2[_wgslsmith_index_u32(var_0.x << (72432u % 32u), 16u)];
    let var_4 = Struct_1(1598i, var_3.e.x, 566f, _wgslsmith_clamp_vec2_i32(~(-(u_input.b.zz | vec2<i32>(var_3.c, u_input.c.x))), firstLeadingBit(_wgslsmith_add_vec2_i32(u_input.b.xx, min(var_3.e, u_input.b.yz))), ~var_2.d), _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, var_3.e.x) & -12335i, _wgslsmith_dot_vec4_i32(u_input.a, firstTrailingBit(u_input.a))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, -715f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.c))))) - var_4.c), 1071f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-437f - 1341f)) * 605f));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-373f, 1250f, var_2.c, -1349f)))))));
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xz) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-323f, var_2.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.wx, global0.zx)))))) + global0.yy);
    let x = u_input.a;
    s_output = StorageBuffer(958f, vec3<i32>(reverseBits(-75483i) ^ -global1[_wgslsmith_index_u32(10017u, 32u)], var_4.d.x, var_2.a), global0.wy);
}

