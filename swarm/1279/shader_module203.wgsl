struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, true, true, false, false, false, true, false, false, true, false);

var<private> global1: array<vec4<bool>, 6>;

var<private> global2: vec3<i32> = vec3<i32>(14632i, i32(-2147483648), -1i);

var<private> global3: vec3<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> bool {
    global2 = -(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, global3.x, min(global3.x, global3.x)), (vec3<i32>(global3.x, -41788i, global2.x) | vec3<i32>(global3.x, global3.x, 40213i)) & vec3<i32>(global2.x, 2147483647i, global3.x), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2.x, global2.x, -1i), vec3<i32>(global3.x, global3.x, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(global3.x, 41242i, global3.x), vec3<i32>(18360i, global3.x, -1i)))) & (-max(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-19383i, -2147483647i, -35297i)) & countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(0i, global2.x, 19885i), vec3<i32>(global3.x, global3.x, global3.x)))));
    return arg_2.a.c.x;
}

fn func_1(arg_0: u32, arg_1: i32) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(global2.x, 17968i, -21913i, global3.x) | -vec4<i32>(global2.x, 2147483647i, 81217i, global2.x)), abs(vec4<i32>(global3.x, 24264i, global3.x, -1i)) ^ -_wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, 1i, arg_1, 0i), vec4<i32>(-52044i, global3.x, global2.x, arg_1))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 0u), 12u)]);
    var var_1 = vec4<u32>(firstTrailingBit(arg_0), u_input.b.x, ~max(~arg_0, ~(~u_input.a)), firstLeadingBit(u_input.b.x));
    let var_2 = !select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 12u)], var_0.b, true), vec3<bool>(true, false, false)), vec3<bool>(!var_0.b, global0[_wgslsmith_index_u32(firstTrailingBit(var_1.x), 12u)], true), vec3<bool>(!global0[_wgslsmith_index_u32(9146u, 12u)], func_2(-1926f, true, Struct_3(Struct_1(vec4<f32>(-147f, 1000f, -529f, -474f), 4294967295u, vec4<bool>(true, var_0.b, global0[_wgslsmith_index_u32(u_input.b.x, 12u)], true), var_1.zz, -1000f), 14752u)), true)), var_0.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(225f + 607f), _wgslsmith_f_op_f32(sign(-430f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1138f, -1000f) * _wgslsmith_div_f32(1000f, 507f)))));
    let var_4 = 20392u;
    return ~(~(u_input.b.zy << (((vec2<u32>(var_4, u_input.a) << (var_1.yy % vec2<u32>(32u))) ^ vec2<u32>(0u, var_4)) % vec2<u32>(32u))));
}

fn func_3() -> vec4<u32> {
    global2 = -select(~(~(-vec3<i32>(global2.x, global3.x, global3.x))), countOneBits(abs(firstTrailingBit(vec3<i32>(global2.x, -1i, -1359i)))), !(4294967295u > min(14052u, u_input.a)));
    global2 = vec3<i32>(_wgslsmith_mod_i32(3052i, _wgslsmith_clamp_i32(countOneBits(-27817i) ^ _wgslsmith_clamp_i32(-5929i, -45488i, -1i), global3.x, -global2.x)), ~1i, _wgslsmith_add_i32(global2.x, select(~global2.x, _wgslsmith_sub_i32(global2.x, global3.x), global3.x <= -4525i)) | firstTrailingBit(global2.x));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = ~(~abs(u_input.a));
    global3 = select(vec3<i32>(-39599i, -global2.x, global2.x << (~78287u % 32u)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, -1i, 0i)), -vec3<i32>(global3.x, global3.x, -2147483647i)), ~41849i, global3.x), all(!select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(17746u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(4752u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), false), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], true)))));
    return abs(vec4<u32>(4294967295u, _wgslsmith_add_u32(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 15665u, u_input.a), vec3<u32>(u_input.b.x, u_input.b.x, 1u))), u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_mod_vec3_i32(~(~select(-vec3<i32>(1089i, global2.x, global2.x), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, global3.x, global3.x), vec3<i32>(global3.x, 0i, global3.x)), true)), abs(~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, global2.x, global3.x), vec3<i32>(global2.x, global2.x, 0i)) | vec3<i32>(_wgslsmith_dot_vec2_i32(global3.zx, global2.yx), 0i, reverseBits(global2.x))));
    var var_0 = vec2<f32>(-442f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-279f, -224f), -583f, global0[_wgslsmith_index_u32(~u_input.a, 12u)]))), _wgslsmith_f_op_f32(f32(-1f) * -630f)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -688f, 322f, var_0.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-145f, var_0.x, 419f, -907f))))), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(37987u, 68996u, 29886u, u_input.b.x)), ~u_input.b), 12u)], global0[_wgslsmith_index_u32(13463u, 12u)], any(global1[_wgslsmith_index_u32(9951u, 6u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.wyy, u_input.b.ywy) & _wgslsmith_add_u32(1u, u_input.b.x), 12u)]), func_1(u_input.b.x, ~31449i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1000f)), 30760u);
    let var_2 = func_3();
    global1 = array<vec4<bool>, 6>();
    let var_3 = var_2;
    global0 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(~global2.x, -global2.x, firstTrailingBit(global2.x), global3.x), max(~(~var_1.a.d), max(firstLeadingBit(vec2<u32>(13027u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(var_3.x, var_1.a.b))) ^ var_2.zw), var_3.x << (firstTrailingBit(_wgslsmith_div_u32(var_1.a.b, ~10499u)) % 32u));
}

