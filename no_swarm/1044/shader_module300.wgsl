struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(2147483647i, 12442i, 0i, -29111i, -348i, -25401i, i32(-2147483648), 0i, 8142i, 6644i, 41412i, -11329i, -5571i);

var<private> global1: array<bool, 27> = array<bool, 27>(true, true, true, true, false, false, true, true, true, true, true, true, true, true, false, true, false, true, true, false, false, false, true, true, true, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global0 = array<i32, 13>();
    global1 = array<bool, 27>();
    global0 = array<i32, 13>();
    return Struct_2(true, max(firstTrailingBit(arg_0.a.x), reverseBits(~_wgslsmith_clamp_i32(u_input.b, 1i, u_input.b))), Struct_1(vec4<i32>(_wgslsmith_mod_i32(38115i, global0[_wgslsmith_index_u32(u_input.c, 13u)]) & reverseBits(-1i), -abs(arg_0.a.x), u_input.b, firstTrailingBit(-24993i))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    global1 = array<bool, 27>();
    let var_0 = func_2(func_2(func_2(arg_2.c).c).c);
    global1 = array<bool, 27>();
    let var_1 = vec3<i32>(reverseBits(_wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(29972i, -58219i))), arg_2.c.a.x, 1i) ^ -vec3<i32>(-47288i | var_0.c.a.x, arg_2.b, 0i);
    let var_2 = var_0;
    return 1u;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    var var_0 = ~min(reverseBits(arg_2), ~arg_1.x);
    let var_1 = Struct_1(~firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(arg_3.x, 2147483647i, -21716i, arg_3.x)));
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(abs(func_3(abs(4294967295u), _wgslsmith_sub_vec4_i32(var_1.a, var_1.a), func_2(var_1))), 1u), ~(~arg_2));
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.a, vec4<i32>(u_input.b, reverseBits(1i), _wgslsmith_div_i32(-29431i, 12250i), -1i)), firstLeadingBit(vec4<i32>(-18246i, -54855i, 2902i, _wgslsmith_mult_i32(-1i, 0i)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(661f, 557f, -547f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1549f, 139f, -440f)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(786f - -457f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-395f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1105f)) + _wgslsmith_f_op_f32(f32(-1f) * -1300f)), _wgslsmith_f_op_f32(trunc(-683f)))));
    return ~_wgslsmith_dot_vec2_u32(arg_1.yy & arg_1.xx, _wgslsmith_mult_vec2_u32((arg_1.xy << (arg_1.xy % vec2<u32>(32u))) << (arg_1.zy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(0u, arg_1.x), vec2<u32>(var_2.x, 43354u)), ~vec2<u32>(var_2.x, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_2), arg_1.zz, vec2<u32>(4294967295u, arg_2)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    global1 = array<bool, 27>();
    return Struct_1(vec4<i32>(min(arg_2.x, _wgslsmith_sub_i32(-1570i, _wgslsmith_mult_i32(-41872i, global0[_wgslsmith_index_u32(u_input.c, 13u)]))), arg_0.b, ~firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_0.c.a.xxw, vec3<i32>(arg_0.c.a.x, 23756i, 23699i))), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 27>();
    var var_0 = func_4(Struct_2(global1[_wgslsmith_index_u32(func_1(u_input.b, reverseBits(vec3<u32>(1u, u_input.c, u_input.c)), 4294967295u, vec3<i32>(u_input.a, -2147483647i, -2147483647i)), 27u)] | true, 1i, func_2(Struct_1(firstLeadingBit(vec4<i32>(-9828i, u_input.b, 0i, -1i)))).c), vec3<bool>(u_input.b >= global0[_wgslsmith_index_u32(u_input.c, 13u)], true | global1[_wgslsmith_index_u32(min(countOneBits(u_input.c), _wgslsmith_mod_u32(4294967295u, u_input.c)), 27u)], all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 27u)], global1[_wgslsmith_index_u32(u_input.c, 27u)], true, global1[_wgslsmith_index_u32(u_input.c, 27u)])) && !(!global1[_wgslsmith_index_u32(u_input.c, 27u)])), select(countOneBits(vec2<i32>(-7491i << (u_input.c % 32u), 16760i)), vec2<i32>(global0[_wgslsmith_index_u32(10805u, 13u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c) | vec2<u32>(0u, 1u)), 13u)]), -(global0[_wgslsmith_index_u32(u_input.c, 13u)] | global0[_wgslsmith_index_u32(u_input.c, 13u)]) <= -4535i));
    global0 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(237f - -662f), _wgslsmith_f_op_f32(-199f - 635f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1386f, 1102f, -1190f))) + vec3<f32>(-1000f, 1698f, 805f)) + vec3<f32>(_wgslsmith_f_op_f32(step(666f, 290f)), _wgslsmith_f_op_f32(-346f * 764f), _wgslsmith_f_op_f32(f32(-1f) * -944f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1200f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -459f))), global1[_wgslsmith_index_u32(u_input.c, 27u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(206f * -150f)))));
}

