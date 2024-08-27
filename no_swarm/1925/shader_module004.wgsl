struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32;

var<private> global2: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(59162i, 0i, 1i), vec3<i32>(-66862i, 2147483647i, 1i), vec3<i32>(-24406i, 0i, i32(-2147483648)), vec3<i32>(17393i, 46673i, 0i), vec3<i32>(-1i, 0i, -46368i));

var<private> global3: array<i32, 6>;

var<private> global4: vec2<f32> = vec2<f32>(-366f, 696f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_4 {
    let var_0 = true;
    let var_1 = true;
    global4 = _wgslsmith_f_op_vec2_f32(global0.xx * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-574f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(421f, global0.x))) + global0.zx));
    let var_2 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 1u, 1u), u_input.d.x), _wgslsmith_sub_u32(u_input.d.x, ~21307u)), u_input.d.x);
    let var_3 = u_input.d;
    return Struct_4(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-global3[_wgslsmith_index_u32(var_2, 6u)], _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(var_2, 6u)], -2147483647i, global3[_wgslsmith_index_u32(var_2, 6u)])), vec2<i32>(-1i) * -vec2<i32>(global3[_wgslsmith_index_u32(var_2, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)])), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], 1i), vec2<i32>(15448i, global3[_wgslsmith_index_u32(var_3.x, 6u)]), vec2<i32>(7257i, global3[_wgslsmith_index_u32(62227u, 6u)])) & (vec2<i32>(-1i) * -vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], 0i)), firstLeadingBit(vec2<i32>(2147483647i, -15474i) | vec2<i32>(global3[_wgslsmith_index_u32(64533u, 6u)], global3[_wgslsmith_index_u32(u_input.d.x, 6u)])) | vec2<i32>(global3[_wgslsmith_index_u32(1u, 6u)], reverseBits(-15118i))), global0.zx);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(u_input.b, 5u)], vec3<i32>(_wgslsmith_sub_i32(abs(10589i), _wgslsmith_dot_vec2_i32(vec2<i32>(-41152i, global3[_wgslsmith_index_u32(1u, 6u)]), vec2<i32>(-1i, -1i))) | -23184i, _wgslsmith_dot_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(u_input.a, 6u)], 0i), vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.d.x, 6u)], global3[_wgslsmith_index_u32(u_input.b, 6u)], global3[_wgslsmith_index_u32(44375u, 6u)])), select(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], -13104i, global3[_wgslsmith_index_u32(1u, 6u)]), vec4<i32>(0i, global3[_wgslsmith_index_u32(u_input.d.x, 6u)], -1i, global3[_wgslsmith_index_u32(u_input.b, 6u)]), vec4<bool>(true, false, true, false))), vec4<i32>(~(-1i), firstTrailingBit(global3[_wgslsmith_index_u32(u_input.c, 6u)]), global3[_wgslsmith_index_u32(u_input.a, 6u)] >> (u_input.d.x % 32u), _wgslsmith_mod_i32(32350i, -9565i))), global3[_wgslsmith_index_u32(u_input.a, 6u)]));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(22136u, 6u)], ~abs(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 19244u), 6u)]), global3[_wgslsmith_index_u32(u_input.c, 6u)]), 39849i);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, 1f, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(trunc(141f))))));
    let var_2 = ~(~u_input.d.zw);
    var var_3 = func_1();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(430f - global0.x), _wgslsmith_f_op_f32(-global4.x))), var_3.b.x)))));
}

fn func_2() -> bool {
    let var_0 = 17333u;
    global0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-598f, global0.x) + global0.x) * _wgslsmith_f_op_f32(func_3())), 425f, _wgslsmith_f_op_f32(ceil(1555f)))));
    let var_1 = !vec4<bool>(false, false, all(vec2<bool>(any(vec2<bool>(false, true)), true)), !(_wgslsmith_dot_vec2_i32(vec2<i32>(13647i, 0i), vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.a, 6u)])) == _wgslsmith_add_i32(global3[_wgslsmith_index_u32(68461u, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)])));
    global3 = array<i32, 6>();
    let var_2 = global0.zz;
    return select(!var_1.x, !var_1.x, var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(countOneBits(9238i) ^ _wgslsmith_add_i32(~(~global3[_wgslsmith_index_u32(4294967295u, 6u)]), arg_1.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.c, 6u)], arg_1.a.x, -17746i) << (vec4<u32>(u_input.d.x, 18693u, u_input.c, u_input.d.x) % vec4<u32>(32u)), -vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 6u)], 0i, 19851i, -2147483647i)), vec4<i32>(reverseBits(arg_1.a.x), -24740i, reverseBits(arg_1.a.x), i32(-1i) * -2147483647i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -28639i, -22787i, 33157i) | vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<i32>(-71191i, global3[_wgslsmith_index_u32(u_input.a, 6u)], -2147483647i, 2147483647i) & vec4<i32>(arg_1.a.x, arg_1.a.x, global3[_wgslsmith_index_u32(u_input.c, 6u)], arg_1.a.x))));
    global3 = array<i32, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(112f + _wgslsmith_f_op_f32(select(-509f, -1277f, arg_0.a))) + -240f), arg_1.b.x) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(step(-1124f, _wgslsmith_f_op_f32(select(global4.x, 611f, false)))), _wgslsmith_f_op_f32(func_3()), -1000f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(724f * 164f), _wgslsmith_f_op_f32(-1449f + 1181f), _wgslsmith_f_op_f32(select(arg_1.b.x, 513f, false)), _wgslsmith_f_op_f32(382f - 1760f))))));
    global3 = array<i32, 6>();
    var var_2 = 1u;
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -164f), abs(vec4<i32>(reverseBits(-arg_1.a.x), global3[_wgslsmith_index_u32(abs(abs(u_input.d.x)), 6u)], var_0.x, -19783i)), arg_0, vec4<i32>(~countOneBits(~0i), -2147483647i, min(-20438i, 8982i), var_0.x));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_sub_vec2_i32(-select(vec2<i32>(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(21110u, 6u)], global3[_wgslsmith_index_u32(u_input.c, 6u)]), -global3[_wgslsmith_index_u32(16270u, 6u)]), -countOneBits(arg_0.b.wy), false), arg_0.b.yx);
    var var_1 = max(1136u, countOneBits(arg_2.b.x) ^ reverseBits(1u >> (u_input.b % 32u))) >> (64734u % 32u);
    global3 = array<i32, 6>();
    global3 = array<i32, 6>();
    global2 = array<vec3<i32>, 5>();
    return func_4(arg_0.c, func_1(), -1474f, arg_3.zzz).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(func_4(Struct_1(true), func_1(), _wgslsmith_f_op_f32(round(-159f)), vec3<bool>(func_2(), all(vec4<bool>(false, true, false, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1044f)), Struct_3(func_4(Struct_1(true), Struct_4(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(548u, 6u)]), vec2<f32>(1082f, -347f)), _wgslsmith_f_op_f32(-871f - global0.x), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)).c, select(vec3<u32>(u_input.b, 0u, u_input.c), u_input.d.wwx, vec3<bool>(true, true, true)), func_1().b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-698f, global0.x)), global4.x)), vec4<bool>(true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), func_4(Struct_1(false), func_1(), global0.x, vec3<bool>(true, true, true)).c.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(func_1().b.x, global4.x))));
    let var_2 = Struct_4(~(-vec2<i32>(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.b, 6u)], -23994i), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(5574u, 6u)], global3[_wgslsmith_index_u32(u_input.a, 6u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1554f))), func_1().b.x)));
    global1 = global0.x;
    global3 = array<i32, 6>();
    global3 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zyy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))), vec4<f32>(679f, global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1292f)), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-675f))))), func_4(Struct_1(func_2()), var_2, 695f, !select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, true, var_0.a))).a), -11081i);
}

