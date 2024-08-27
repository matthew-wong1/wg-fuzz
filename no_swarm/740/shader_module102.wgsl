struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    let var_0 = reverseBits(vec4<i32>(-26555i >> (global0[_wgslsmith_index_u32(1u, 32u)] % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(15553i, u_input.b, 11236i), vec3<i32>(u_input.b, -35404i, u_input.b)) << (min(~4294967295u, _wgslsmith_clamp_u32(0u, 48027u, 0u)) % 32u), _wgslsmith_add_i32(2147483647i, -u_input.b), -(u_input.b | -1i) & _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, 4586i, -2147483647i)), -vec3<i32>(u_input.b, u_input.b, -18605i))));
    global0 = array<u32, 32>();
    let var_1 = Struct_2(!(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))) && true), Struct_1(1u, 1u, vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), true, !(11467u != global0[_wgslsmith_index_u32(49335u, 32u)])), ~(~select(vec4<u32>(u_input.a.x, 4294967295u, 0u, global0[_wgslsmith_index_u32(14612u, 32u)]), vec4<u32>(27284u, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.a.x, 53259u), false))), select(all(vec3<bool>(false, false, true)) == !select(true, true, true), !(!all(vec4<bool>(true, true, false, false))), true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 384f, arg_0) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1198f, 108f, 991f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1166f, arg_0, 513f) + vec3<f32>(1000f, arg_0, -231f))))), vec3<f32>(168f, arg_0, arg_0))), var_0.zzw);
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1453f, -2688f))), var_1.d.x)), _wgslsmith_f_op_f32(432f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), var_1.d.x)), 1560f, -339f), var_1.b.c);
    let var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.a), select(vec2<u32>(global0[_wgslsmith_index_u32(~84924u, 32u)], 14083u), vec2<u32>(global0[_wgslsmith_index_u32(~var_1.b.b, 32u)], var_1.b.b), var_1.b.c.x)), u_input.a.x);
    return firstTrailingBit(~abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-82695i, var_1.e.x), _wgslsmith_div_vec2_i32(var_0.zx, vec2<i32>(2147483647i, -2147483647i)))));
}

fn func_2() -> vec2<i32> {
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    return _wgslsmith_sub_vec2_i32(select(select(~(~vec2<i32>(u_input.b, 64497i)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(-13209i, u_input.b), vec2<i32>(-75193i, u_input.b)), ~vec2<i32>(-4692i, -2147483647i), true), u_input.a.x > ~u_input.a.x), _wgslsmith_add_vec2_i32(~(vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(22286i, u_input.b)), func_3(316f))), true), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(1i, u_input.b)), _wgslsmith_add_vec2_i32(max(vec2<i32>(-24233i, 0i), vec2<i32>(1i, u_input.b)), firstTrailingBit(vec2<i32>(-14364i, 2147483647i)))), -(_wgslsmith_mod_vec2_i32(vec2<i32>(-2570i, u_input.b), vec2<i32>(u_input.b, 1i)) | vec2<i32>(u_input.b, u_input.b))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<u32, 32>();
    var var_0 = Struct_3(func_2(), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), false), true || any(vec4<bool>(false, false, true, true)))), Struct_1(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)] | 1u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 32u)], ~0u), global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), 32u)]), 32u)]), u_input.a.x, !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27680u, 32u)], 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], global0[_wgslsmith_index_u32(51512u, 32u)], 28462u), vec4<u32>(0u, 98838u, 66395u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74158u, 32u)], 32u)])))));
    var var_1 = Struct_3(-(~func_3(138f)), false, var_0.c);
    global0 = array<u32, 32>();
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, 289f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-806f, -184f)), -433f, _wgslsmith_f_op_f32(-528f + 696f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(177f, 1005f, -1073f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -945f), 1254f, _wgslsmith_f_op_f32(1489f - _wgslsmith_f_op_f32(f32(-1f) * -1108f))), !var_0.c.c)), var_0.c.c);
    return var_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_3.x;
    let var_1 = select(-1i, -firstTrailingBit(-u_input.b), !arg_1.c.x) & -abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, u_input.b), _wgslsmith_mod_i32(-1i, arg_2.a.x)));
    global0 = array<u32, 32>();
    var_0 = _wgslsmith_f_op_f32(-919f * -753f);
    let var_2 = vec2<u32>(arg_0.b, ~_wgslsmith_add_u32(4294967295u, ~global0[_wgslsmith_index_u32(arg_0.a, 32u)]) << (4294967295u % 32u));
    return u_input.a.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: u32) -> f32 {
    let var_0 = -_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, 1i, -2147483647i)), vec3<i32>(abs(1199i), -u_input.b, u_input.b)), vec3<i32>(-2147483647i, ~max(23672i, u_input.b), _wgslsmith_sub_i32(_wgslsmith_div_i32(62415i, u_input.b), u_input.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(420f + 301f) + _wgslsmith_f_op_f32(-arg_0.x)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, -168f)) - arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~u_input.b, -1i, select(-38477i, _wgslsmith_sub_i32(-reverseBits(-18800i), 1i), true));
    let var_1 = u_input.a.x << (1u % 32u);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-727f, -403f, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-166f, 1546f, 233f) - vec3<f32>(-319f, -167f, 1094f)))))), func_4(func_1(countOneBits(-19059i)), Struct_4(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(629f, -1451f, 1114f), vec3<f32>(-1762f, 324f, -1102f), vec3<bool>(false, false, false))), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), Struct_3(var_0.xz ^ vec2<i32>(u_input.b, u_input.b), all(vec2<bool>(false, true)), func_1(1519i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(645f, 958f, 171f, -1273f)))))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -753f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1127f * -376f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + 1f))));
    let var_3 = vec4<i32>(abs(_wgslsmith_mod_i32(firstTrailingBit(abs(21397i)), 0i)), u_input.b, var_0.x, 5990i);
    let var_4 = Struct_1(~_wgslsmith_div_u32(~4294967295u, u_input.a.x), ~20257u, vec3<bool>(select(true, true, true), false, false), select(_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(44245u, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], 4294967295u), vec4<u32>(u_input.a.x, var_1, u_input.a.x, 0u)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], var_1, 31135u, global0[_wgslsmith_index_u32(0u, 32u)]) ^ ~vec4<u32>(var_1, var_1, 4294967295u, var_1)), ~(~reverseBits(vec4<u32>(0u, 0u, 33094u, u_input.a.x))), any(vec4<bool>(true, -1i != var_0.x, any(vec4<bool>(false, false, false, true)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1747f + _wgslsmith_f_op_f32(func_5(vec3<f32>(468f, -1221f, -1000f), 11662u)))), _wgslsmith_f_op_f32(-176f + _wgslsmith_f_op_f32(abs(1f)))), ~_wgslsmith_mult_vec2_u32(~(var_4.d.yw | vec2<u32>(6835u, 0u)), ~var_4.d.yz ^ ~vec2<u32>(1u, u_input.a.x)));
}

