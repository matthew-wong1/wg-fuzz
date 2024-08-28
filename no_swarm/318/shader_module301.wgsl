struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 21> = array<f32, 21>(1140f, -1000f, -593f, 239f, -2022f, 1199f, -227f, 1445f, -1336f, 536f, 648f, 860f, -1137f, -663f, -1000f, -547f, 423f, 765f, 724f, 719f, 101f);

var<private> global2: array<i32, 16>;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_1.a);
    let var_1 = select(vec4<bool>(arg_1.a.x, arg_1.a.x, !(~u_input.b != _wgslsmith_add_i32(global2[_wgslsmith_index_u32(arg_0.x, 16u)], -47118i)), !(_wgslsmith_add_u32(0u, arg_0.x) > ~0u)), select(vec4<bool>((u_input.b & global2[_wgslsmith_index_u32(arg_0.x, 16u)]) <= -global2[_wgslsmith_index_u32(4294967295u, 16u)], (u_input.a.x < arg_0.x) || arg_1.a.x, true, true), vec4<bool>(true, -246f == _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(72747u, 21u)])), !(25233u > u_input.a.x), true), _wgslsmith_f_op_f32(step(-334f, global1[_wgslsmith_index_u32(~15998u, 21u)])) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 21u)] - -663f) - _wgslsmith_f_op_f32(647f + global1[_wgslsmith_index_u32(1u, 21u)]))), select(vec4<bool>(u_input.b == (global2[_wgslsmith_index_u32(u_input.a.x, 16u)] << (arg_0.x % 32u)), arg_1.a.x, true, arg_1.a.x || true), select(select(select(vec4<bool>(false, true, true, arg_1.a.x), vec4<bool>(var_0.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), false), vec4<bool>(true, global0.a.x, true, arg_1.a.x), select(vec4<bool>(false, arg_1.a.x, true, true), vec4<bool>(var_0.a.x, global0.a.x, false, true), var_0.a.x)), !(!vec4<bool>(false, arg_1.a.x, false, false)), global0.a.x), vec4<bool>(true, global0.a.x & false, any(vec3<bool>(true, true, true)), any(!vec3<bool>(true, global0.a.x, false)))));
    let var_2 = Struct_1(!var_0.a);
    global0 = Struct_1(vec2<bool>(u_input.a.x != u_input.a.x, true));
    var var_3 = select(arg_0.yy ^ _wgslsmith_add_vec2_u32(~(~vec2<u32>(4294967295u, u_input.a.x)), firstTrailingBit(firstLeadingBit(arg_0.zz))), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, 13727u), vec2<u32>(countOneBits(~0u), ~firstLeadingBit(u_input.a.x))), all(!vec3<bool>(var_2.a.x && true, true && arg_1.a.x, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.x, 0u), 21u)])) * -1000f);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> u32 {
    global2 = array<i32, 16>();
    global1 = array<f32, 21>();
    global0 = global3[_wgslsmith_index_u32(1u, 27u)];
    global2 = array<i32, 16>();
    let var_0 = max(u_input.a.x, u_input.a.x << (~11367u % 32u));
    return max(15896u, _wgslsmith_clamp_u32(~(u_input.a.x ^ var_0), ~var_0, 63541u)) & _wgslsmith_sub_u32(firstTrailingBit(abs(u_input.a.x) >> (firstLeadingBit(u_input.a.x) % 32u)), 52396u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 27u)];
    let var_1 = global3[_wgslsmith_index_u32(1u, 27u)];
    let var_2 = global3[_wgslsmith_index_u32(func_4(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(arg_0.zwx, global3[_wgslsmith_index_u32(arg_0.x, 27u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 21u)]), _wgslsmith_f_op_f32(-691f - -2480f))))), global1[_wgslsmith_index_u32(arg_1.x & reverseBits(reverseBits(0u)), 21u)], _wgslsmith_f_op_f32(f32(-1f) * -259f)), _wgslsmith_mult_i32(37575i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(select(u_input.a.x, 0u, false), 16u)], _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global2[_wgslsmith_index_u32(arg_1.x, 16u)])) | select(~1i, u_input.b, true)), u_input.b), 27u)];
    var var_3 = ~global2[_wgslsmith_index_u32(arg_1.x, 16u)];
    return _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 21u)]);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~4294967295u, 21u)] != -1139f;
    var var_1 = Struct_1(vec2<bool>(!(!all(global0.a)), var_0));
    let var_2 = arg_0;
    let var_3 = Struct_1(!(!(!vec2<bool>(global0.a.x, false))));
    let var_4 = arg_1;
    return arg_1;
}

fn func_1() -> f32 {
    global3 = array<Struct_1, 27>();
    var var_0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(512f, _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x), vec2<u32>(13793u, u_input.a.x))), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(33643u, 21u)])))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(20015u, 21u)], -363f, -332f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2022f, -1200f, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]) - vec3<f32>(global1[_wgslsmith_index_u32(12585u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(24858u, 21u)])))), vec3<f32>(global1[_wgslsmith_index_u32(~u_input.a.x, 21u)], -1836f, global1[_wgslsmith_index_u32(44032u, 21u)])))), Struct_1(global0.a));
    var var_1 = Struct_1(global0.a);
    global1 = array<f32, 21>();
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(~u_input.a, firstTrailingBit(select(u_input.a, vec4<u32>(u_input.a.x, 0u, u_input.a.x, 92666u), false)))), abs(~firstTrailingBit(vec4<u32>(38294u, 60811u, 4294967295u, 1u)))), 27u)];
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(2168f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24946u, 21u)]))))) - -1037f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 21u)] - 635f) * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 21u)]))), _wgslsmith_f_op_f32(func_1())), -497f)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(min(vec4<i32>(4839i, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.b, global2[_wgslsmith_index_u32(1u, 16u)]), vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(13683u, 16u)], u_input.b, -27080i))), ~countOneBits(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.b, 38031i))), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.b, 11435i, u_input.b, 28910i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-29682i, global2[_wgslsmith_index_u32(7734u, 16u)], u_input.b, u_input.b), vec4<i32>(u_input.b, -8362i, u_input.b, u_input.b))), (vec4<i32>(-1i) * -vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.b, u_input.b)) ^ ~(vec4<i32>(u_input.b, u_input.b, 1i, -2147483647i) >> (u_input.a % vec4<u32>(32u)))), firstLeadingBit(u_input.b), _wgslsmith_mult_u32(~(u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_div_u32(u_input.a.x, countOneBits(0u))), 1u);
}

