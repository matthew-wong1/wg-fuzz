struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 32478u, 4294967295u);

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(0u, 4294967295u), vec2<u32>(37663u, 73372u), vec2<u32>(1u, 93777u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 61879u), vec2<u32>(4294967295u, 16125u), vec2<u32>(94554u, 0u), vec2<u32>(0u, 1u), vec2<u32>(43364u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 3757u), vec2<u32>(85946u, 37929u));

var<private> global2: array<f32, 28> = array<f32, 28>(941f, -482f, 1594f, 446f, 219f, 1045f, 733f, -943f, -823f, -723f, -688f, -187f, -238f, 812f, -271f, 516f, 1578f, -452f, -2054f, 237f, 1240f, -1265f, 563f, -1000f, 247f, 171f, -1550f, -769f);

var<private> global3: Struct_3 = Struct_3(Struct_1(vec4<f32>(-583f, -202f, 2294f, 978f), -1278f), vec4<u32>(17757u, 99385u, 16337u, 60204u), 1092f);

var<private> global4: array<f32, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec3<u32> {
    var var_0 = vec3<bool>(true, any(vec3<bool>(global4[_wgslsmith_index_u32(0u ^ global0.x, 32u)] < global3.a.b, !all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)))), true);
    global1 = array<vec2<u32>, 12>();
    let var_1 = vec4<i32>(abs(u_input.d), reverseBits(-2147483647i), 1i, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(8247i, u_input.d), ~vec2<i32>(u_input.d, u_input.d) | firstTrailingBit(vec2<i32>(-56030i, -1i))));
    global4 = array<f32, 32>();
    let var_2 = 766f;
    return ~select(~_wgslsmith_clamp_vec3_u32(reverseBits(global3.b.zwy), u_input.c.xyx, vec3<u32>(global0.x, 0u, global3.b.x)), vec3<u32>(~u_input.a.x, global3.b.x, 1u), var_0.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = global0.x;
    global1 = array<vec2<u32>, 12>();
    let var_1 = true;
    var var_2 = arg_1;
    let var_3 = ~vec3<u32>(1u, 33358u, 4294967295u);
    return global0.x;
}

fn func_3() -> f32 {
    global1 = array<vec2<u32>, 12>();
    var var_0 = (abs(~vec3<i32>(u_input.d, 0i, 31494i) << (~global3.b.yxw % vec3<u32>(32u))) >> (min(vec3<u32>(u_input.b, _wgslsmith_sub_u32(4294967295u, 11519u), 1u), vec3<u32>(u_input.c.x, 1u, 0u)) % vec3<u32>(32u))) >> (vec3<u32>(global0.x, abs(~global0.x), global3.b.x) % vec3<u32>(32u));
    global4 = array<f32, 32>();
    var var_1 = vec2<i32>(-((-1i | var_0.x) << (_wgslsmith_div_u32(global0.x, global0.x) % 32u)) | select(u_input.d, ~abs(31402i), true), -(~(var_0.x ^ u_input.d)));
    var var_2 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)), _wgslsmith_f_op_f32(1163f * 1000f), -911f, _wgslsmith_f_op_f32(sign(-586f))), 638f), reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.b, 70233u, 72769u), ~vec4<u32>(0u, global3.b.x, 4294967295u, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-771f + global4[_wgslsmith_index_u32(18627u, 32u)]))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~func_2(Struct_2(vec2<u32>(u_input.a.x, 0u), global3.a.a.zyz, var_2.b.yzx, global3.a, 0i), Struct_2(vec2<u32>(1u, 47831u), vec3<f32>(1000f, 2092f, 760f), vec3<u32>(global3.b.x, global0.x, 2650u), Struct_1(vec4<f32>(456f, global2[_wgslsmith_index_u32(160u, 28u)], 1436f, global3.c), 582f), var_1.x), true, Struct_1(var_2.a.a, global2[_wgslsmith_index_u32(4294967295u, 28u)])), 28u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wzz, vec3<u32>(0u, 1u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(32405u, global3.b.x, u_input.b), u_input.a.xxw)), func_1()));
    global1 = array<vec2<u32>, 12>();
    var var_0 = vec4<bool>(global3.b.x < ~(~abs(u_input.c.x)), true, true, all(!vec3<bool>(true, any(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true)))));
    var var_1 = Struct_2(~vec2<u32>(global3.b.x, func_2(Struct_2(global1[_wgslsmith_index_u32(1u, 12u)], global3.a.a.wwz, vec3<u32>(1u, 50971u, 17410u), Struct_1(global3.a.a, -203f), 0i), Struct_2(vec2<u32>(global3.b.x, 4294967295u), global3.a.a.xwz, vec3<u32>(49625u, 91515u, global0.x), Struct_1(vec4<f32>(1109f, global3.a.a.x, -870f, global4[_wgslsmith_index_u32(u_input.c.x, 32u)]), global4[_wgslsmith_index_u32(global3.b.x, 32u)]), -2147483647i), true, global3.a) << (countOneBits(global3.b.x) % 32u)), global3.a.a.zxx, u_input.c.zyw, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(31538u, 32u)], -373f))), -1493f), -869f), 0i);
    let var_2 = Struct_2(var_1.c.yz, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1418f, global3.a.a.x)), global2[_wgslsmith_index_u32(~57210u, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -1209f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(492f, -400f, 457f) - _wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(global3.c, global3.a.b, -395f)))))), vec3<u32>(23093u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~52608u, u_input.a.x), countOneBits(~0u), global0.x), u_input.b), var_1.d, -u_input.d);
    let var_3 = ~var_1.a.x;
    let var_4 = ~global3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.a, _wgslsmith_mod_vec2_i32(~vec2<i32>(-2147483647i, 1i) | -vec2<i32>(var_2.e, 0i), reverseBits(firstTrailingBit(vec2<i32>(-8330i, var_1.e)))) & -_wgslsmith_div_vec2_i32(vec2<i32>(1i, 66569i), ~vec2<i32>(var_1.e, u_input.d)));
}

