struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 416f;

var<private> global1: array<f32, 24> = array<f32, 24>(-1000f, 113f, 650f, 278f, 1580f, -498f, 880f, -597f, 1357f, 885f, -1293f, -889f, 2033f, 134f, 1001f, 668f, -116f, 1015f, -1101f, -775f, 1433f, -922f, 274f, 517f);

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<f32>(495f, 868f, 1145f, 1403f)), Struct_1(vec4<f32>(552f, -740f, -1151f, 181f)), Struct_1(vec4<f32>(-1000f, -1139f, -1000f, 2190f)), Struct_1(vec4<f32>(-1152f, -728f, 1296f, 1000f)), Struct_1(vec4<f32>(-258f, 472f, 1273f, -434f)), Struct_1(vec4<f32>(-793f, -1528f, 1000f, -1087f)), Struct_1(vec4<f32>(804f, 675f, 830f, -863f)), Struct_1(vec4<f32>(-1000f, 245f, 1000f, -242f)), Struct_1(vec4<f32>(841f, -742f, -660f, 325f)), Struct_1(vec4<f32>(-106f, -455f, -895f, -482f)), Struct_1(vec4<f32>(1784f, 1000f, -268f, -758f)), Struct_1(vec4<f32>(413f, 669f, 249f, -1000f)), Struct_1(vec4<f32>(-102f, -420f, -867f, 1000f)), Struct_1(vec4<f32>(-675f, 1482f, -758f, 529f)), Struct_1(vec4<f32>(1163f, -589f, 584f, -1055f)), Struct_1(vec4<f32>(1104f, -1002f, -832f, -689f)), Struct_1(vec4<f32>(-435f, -717f, 529f, -857f)), Struct_1(vec4<f32>(-824f, 1268f, -1705f, 569f)), Struct_1(vec4<f32>(-1136f, -1149f, 276f, 948f)), Struct_1(vec4<f32>(196f, 1496f, 333f, -125f)), Struct_1(vec4<f32>(-298f, -419f, -761f, -536f)), Struct_1(vec4<f32>(1000f, -195f, -1056f, -281f)), Struct_1(vec4<f32>(-195f, -474f, 196f, 558f)), Struct_1(vec4<f32>(-918f, -183f, -1901f, 506f)), Struct_1(vec4<f32>(1000f, -546f, -373f, -1017f)), Struct_1(vec4<f32>(-320f, 708f, -824f, 800f)), Struct_1(vec4<f32>(-2044f, 178f, 2097f, -947f)), Struct_1(vec4<f32>(1736f, 2407f, -447f, 267f)), Struct_1(vec4<f32>(-1000f, 550f, 668f, 522f)), Struct_1(vec4<f32>(-1000f, 219f, 1000f, 1977f)), Struct_1(vec4<f32>(892f, 519f, -590f, -815f)), Struct_1(vec4<f32>(106f, -1000f, 1864f, 361f)));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(1134f, -1000f, -238f, -2267f));

var<private> global4: vec3<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_2 {
    global4 = vec3<u32>(_wgslsmith_div_u32(global4.x, global4.x), global4.x, global4.x) & (~vec3<u32>(1u & global4.x, 1u, ~global4.x) >> (vec3<u32>(1u >> (~4294967295u % 32u), global4.x >> (29843u % 32u), ~66850u) % vec3<u32>(32u)));
    global2 = array<Struct_1, 32>();
    var var_0 = select(vec2<bool>(true, true), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), !(select(any(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(true, false))) == true));
    var var_1 = -1094f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a))));
    return var_2;
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global4.x, 24u)], -1067f)), _wgslsmith_f_op_f32(-400f - _wgslsmith_f_op_f32(-356f - _wgslsmith_f_op_f32(floor(global3.a.x)))));
    var var_0 = Struct_2(func_2().a);
    var var_1 = func_2().a;
    global3 = func_2().a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a));
    return countOneBits(~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(global4.x, 10800u, 96518u), vec3<u32>(global4.x, global4.x, global4.x)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(global4.x, 24u)], -251f))))))));
    let var_1 = _wgslsmith_mult_i32(-_wgslsmith_add_i32(-_wgslsmith_div_i32(0i, -11672i), u_input.b.x), -(i32(-1i) * -1i));
    global1 = array<f32, 24>();
    var var_2 = func_2();
    global4 = ~reverseBits(~_wgslsmith_div_vec3_u32(func_3(u_input.a.x), ~vec3<u32>(40534u, global4.x, 1u)));
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, 492f, global1[_wgslsmith_index_u32(global4.x, 24u)], global3.a.x)))))));
    global4 = min(vec3<u32>(global4.x, abs(arg_2), abs(20478u)), firstTrailingBit(vec3<u32>(countOneBits(_wgslsmith_div_u32(arg_2, arg_2)), arg_2, ~(~arg_2))));
    global3 = arg_3;
    let var_2 = 2284u;
    return global2[_wgslsmith_index_u32(countOneBits(var_2), 32u)];
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = ~(~(4294967295u >> (~4294967295u % 32u))) >> (0u % 32u);
    var_0 = global4.x;
    let var_1 = ~vec4<u32>(~28355u, func_3(-1i).x, func_3(u_input.b.x).x, (global4.x & global4.x) ^ ~82057u) & min(_wgslsmith_add_vec4_u32(select(vec4<u32>(global4.x, global4.x, global4.x, 0u), vec4<u32>(global4.x, global4.x, 89907u, global4.x), vec4<bool>(false, true, false, true)) >> (~vec4<u32>(4294967295u, global4.x, global4.x, global4.x) % vec4<u32>(32u)), ~(vec4<u32>(4294967295u, 0u, 54924u, global4.x) ^ vec4<u32>(global4.x, 1u, global4.x, global4.x))), min(select(abs(vec4<u32>(15074u, 29175u, 0u, 16273u)), vec4<u32>(0u, global4.x, 1u, 4294967295u), true), ~(vec4<u32>(global4.x, 0u, 1u, 0u) ^ vec4<u32>(16660u, global4.x, 0u, global4.x))));
    var var_2 = func_2();
    var var_3 = global2[_wgslsmith_index_u32(~(~firstLeadingBit(~88234u)) << (~global4.x % 32u), 32u)];
    return StorageBuffer(func_1(u_input.b.x).a, _wgslsmith_clamp_i32(45114i, u_input.a.x, ~(-u_input.b.x >> ((global4.x << (global4.x % 32u)) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(global3.a.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a))), Struct_2(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global4.x, 24u)] * global3.a.x), -411f, true)), Struct_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(global4.x, 24u)], global3.a.x, 962f, -262f))), ~(~0u), func_1(~u_input.a.x))));
}

