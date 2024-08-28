struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global2: bool = false;

var<private> global3: vec2<i32>;

var<private> global4: array<bool, 9> = array<bool, 9>(false, false, false, true, true, false, true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> vec2<i32> {
    global3 = ~select(select(-(vec2<i32>(global3.x, 2147483647i) | vec2<i32>(global3.x, global3.x)), ~_wgslsmith_add_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(38294i, global3.x)), !(!global0.a.zw)), min(~(vec2<i32>(-2147483647i, -1946i) >> (global0.b.zz % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, global3.x), vec2<i32>(50476i, -1i))), global4[_wgslsmith_index_u32(select(_wgslsmith_add_u32(38202u << (u_input.a.x % 32u), global0.b.x | global1.x), 50099u, select(global0.a.x, true, 1454f <= arg_1.x)), 9u)]);
    var var_0 = arg_0.x;
    global3 = ~(~abs(-abs(vec2<i32>(-2147483647i, global3.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(726f * _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(select(arg_1.x, arg_0.x, true))))), -1029f));
    global1 = ~(global0.b.xw ^ u_input.a.zx);
    return select(~max(~vec2<i32>(global3.x, 32362i), max(vec2<i32>(8674i, global3.x), vec2<i32>(20698i, global3.x))), (vec2<i32>(-1i) * -vec2<i32>(66007i, global3.x)) << (~global0.b.yy % vec2<u32>(32u)), !global4[_wgslsmith_index_u32(~global1.x, 9u)]) | -(~(-vec2<i32>(global3.x, global3.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_2 {
    global3 = func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-488f, 318f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(770f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-297f)) + _wgslsmith_f_op_f32(f32(-1f) * -1587f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-215f)), -2483f, _wgslsmith_f_op_f32(trunc(-687f)))));
    var var_0 = reverseBits(vec3<i32>(-26153i, global3.x, _wgslsmith_sub_i32(abs(-45697i), func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(945f, 268f))), vec3<f32>(-1000f, 822f, 331f)).x)));
    global3 = _wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(var_0.x), max(global3.x, _wgslsmith_mult_i32(global3.x, ~global3.x))), select(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(global3.x, global3.x) & var_0.zz), -_wgslsmith_mult_vec2_i32(var_0.zz, var_0.xx)), _wgslsmith_add_vec2_i32(var_0.zx, var_0.zy), global0.a.zw));
    global0 = Struct_2(vec4<bool>(!(all(vec2<bool>(true, true)) & true), all(!arg_0.yzx) || !select(arg_0.x, arg_0.x, false), true, true), ~reverseBits(vec4<u32>(arg_1.a.x, 1u | u_input.a.x, 1u, _wgslsmith_add_u32(arg_1.a.x, 4294967295u))));
    global2 = select(select(true, true, !global4[_wgslsmith_index_u32(~(arg_1.a.x << (84874u % 32u)), 9u)]), all(!(!select(vec2<bool>(global0.a.x, true), arg_1.b, arg_1.b.x))), all(global0.a.yx));
    return Struct_2(global0.a, countOneBits(vec4<u32>(u_input.a.x << (u_input.a.x % 32u), 5576u, ~4294967295u, _wgslsmith_dot_vec2_u32(arg_1.a.yz, arg_1.a.xz))) | ~min(vec4<u32>(u_input.a.x, arg_1.a.x, 0u, u_input.a.x), vec4<u32>(arg_1.a.x, 17747u, u_input.a.x, arg_1.a.x)));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(Struct_2(global0.a, vec4<u32>(~_wgslsmith_clamp_u32(74308u, global1.x, u_input.a.x), u_input.a.x, global0.b.x, 22524u)), func_2(vec4<bool>(false, all(vec3<bool>(global0.a.x, true, global4[_wgslsmith_index_u32(u_input.a.x, 9u)])), !global0.a.x, true), Struct_1(vec3<u32>(19336u, u_input.a.x, 15767u ^ global1.x), vec2<bool>(global0.a.x, !global4[_wgslsmith_index_u32(u_input.a.x, 9u)]))), ~abs(max(vec2<u32>(33673u, 1u), global0.b.yx)), Struct_1(global0.b.wwz, !(!func_2(vec4<bool>(true, global0.a.x, global4[_wgslsmith_index_u32(global0.b.x, 9u)], true), Struct_1(vec3<u32>(global1.x, 1u, global0.b.x), global0.a.zy)).a.wx)));
    var var_1 = func_2(global0.a, Struct_1(global0.b.wyx, vec2<bool>(all(func_2(vec4<bool>(global0.a.x, false, true, true), Struct_1(vec3<u32>(global1.x, global1.x, u_input.a.x), var_0.a.a.yw)).a.wyx), all(select(vec2<bool>(global0.a.x, false), global0.a.zy, vec2<bool>(true, false))))));
    var var_2 = vec3<bool>(false, global0.a.x, global4[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_sub_u32(16161u, 5155u))), 9u)]);
    var var_3 = 5550u;
    let var_4 = Struct_2(var_0.a.a, _wgslsmith_add_vec4_u32(firstTrailingBit(~var_1.b), ~vec4<u32>(~36673u, u_input.a.x, ~65833u, 4294967295u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(all(global0.a.xy), global3.x <= -61238i, (global4[_wgslsmith_index_u32(global1.x, 9u)] | true) | false, global0.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    global3 = vec2<i32>(_wgslsmith_mod_i32(global3.x, -25474i), abs(global3.x));
    var var_2 = Struct_3(Struct_2(global0.a, firstTrailingBit(abs(u_input.a))), func_2(vec4<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(global4[_wgslsmith_index_u32(global1.x, 9u)], global4[_wgslsmith_index_u32(1u, 9u)], global4[_wgslsmith_index_u32(61197u, 9u)]), vec3<bool>(global0.a.x, true, true))), !all(global0.a.yxy), global0.a.x), Struct_1(global0.b.zxz, select(!vec2<bool>(true, global0.a.x), global0.a.yy, vec2<bool>(global0.a.x, false)))), _wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 9558u), _wgslsmith_div_vec2_u32(u_input.a.yw, vec2<u32>(27054u, u_input.a.x)))), abs(~global0.b.zw) | select(~vec2<u32>(0u, 4294967295u), global0.b.wy, false)), Struct_1(vec3<u32>(~15751u, ~u_input.a.x & global1.x, ~u_input.a.x), func_2(select(!global0.a, select(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 9u)], true, global0.a.x), vec4<bool>(global4[_wgslsmith_index_u32(global1.x, 9u)], global0.a.x, true, false), global4[_wgslsmith_index_u32(global1.x, 9u)]), !global0.a), Struct_1(u_input.a.zwx ^ global0.b.www, global0.a.yz)).a.yx));
    global3 = -vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(global3.x), global3.x), 4618i);
    let var_3 = -947f;
    global1 = abs(abs(u_input.a.yy));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(75791u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 3892u, global1.x), vec4<u32>(u_input.a.x, var_2.b.b.x, 15939u, global1.x))), -436f, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -40958i), -vec2<i32>(11098i, global3.x))), 0u);
}

