struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21>;

var<private> global1: Struct_4;

var<private> global2: Struct_4 = Struct_4(vec3<f32>(1443f, -304f, -403f), 16322i, -163f);

var<private> global3: f32 = 567f;

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = ~u_input.d;
    let var_1 = Struct_2(~(-_wgslsmith_clamp_i32(-2147483647i, -17372i, _wgslsmith_add_i32(20560i, global2.b))));
    global0 = array<vec3<f32>, 21>();
    var var_2 = Struct_1(u_input.a);
    global3 = _wgslsmith_f_op_f32(-global1.a.x);
    return global4.a.x;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 21>();
    global2 = Struct_4(global2.a, 38857i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-625f, global1.c) * _wgslsmith_f_op_f32(-global2.a.x))))));
    global3 = _wgslsmith_f_op_f32(-global1.c);
    let var_0 = max(abs(~min(u_input.a.yxy, ~vec3<u32>(0u, arg_1, 0u))), ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(29278u, global4.a.x, arg_2.a.x) & u_input.a.xwz), vec3<u32>(u_input.c, min(global4.a.x, 4294967295u), 0u)));
    let var_1 = Struct_2(arg_0);
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    global1 = Struct_4(global0[_wgslsmith_index_u32(func_2(false), 21u)], 53748i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-355f)))))));
    global0 = array<vec3<f32>, 21>();
    let var_0 = Struct_3(~(firstTrailingBit(abs(vec2<u32>(62607u, 4294967295u))) >> (select(u_input.a.yz, ~vec2<u32>(26412u, 0u), true) % vec2<u32>(32u))));
    let var_1 = vec2<bool>(!any(vec3<bool>(true, true, any(vec4<bool>(false, true, false, false)))), true);
    global3 = _wgslsmith_f_op_f32(1864f + 1305f);
    return Struct_3(reverseBits(~(~vec2<u32>(81893u, 0u) | ~u_input.a.xz)));
}

fn func_1(arg_0: f32, arg_1: i32) -> i32 {
    global0 = array<vec3<f32>, 21>();
    let var_0 = Struct_3(min(vec2<u32>(~95545u, 4294967295u), abs(u_input.a.zz) >> (u_input.a.zw % vec2<u32>(32u))));
    global4 = func_4(global1.b, func_3(max(2147483647i, ~(-3459i)), func_2(false), Struct_1(u_input.a)));
    var var_1 = 23396u >> (u_input.c % 32u);
    var var_2 = Struct_2(global2.b);
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>) -> vec2<bool> {
    global0 = array<vec3<f32>, 21>();
    return select(vec2<bool>(all(vec4<bool>(true, all(vec2<bool>(true, false)), arg_0 > 676f, true)), !((global1.c != global2.a.x) && all(vec2<bool>(true, false)))), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, false), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(331f - global2.c), _wgslsmith_f_op_f32(ceil(1049f))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-global1.b, func_1(-793f, 7892i), 6932i, global1.b), _wgslsmith_add_vec4_i32(vec4<i32>(global1.b, global1.b, 12903i, global1.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global1.b, global1.b, 38051i), vec4<i32>(global2.b, global2.b, global2.b, -2147483647i)))), countOneBits(vec4<i32>(65852i, 17016i, _wgslsmith_div_i32(2147483647i, global2.b), _wgslsmith_add_i32(u_input.d, -72336i)))));
    var var_1 = false;
    var var_2 = !vec4<bool>(!(!select(var_0.x, false, var_0.x)), var_0.x, var_0.x, !all(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d & ~abs(firstTrailingBit(global1.b)), -vec4<i32>(global1.b, -2147483647i, _wgslsmith_add_i32(global2.b, _wgslsmith_clamp_i32(-31993i, global1.b, global1.b)), max(-8209i, ~(-12565i))));
}

