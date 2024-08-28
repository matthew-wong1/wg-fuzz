struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(391i, -757i);

var<private> global1: Struct_1 = Struct_1(false, 32545u, vec4<f32>(-292f, -1341f, 568f, -672f), vec4<f32>(-584f, 215f, -207f, -1146f), vec3<i32>(1i, -31388i, -34193i));

var<private> global2: vec4<f32>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> bool {
    var var_0 = global1.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, global2.x) - _wgslsmith_f_op_vec2_f32(min(global2.yx, vec2<f32>(-910f, global2.x))))))));
    let var_2 = select(!vec3<bool>(global1.a, true, arg_1), select(vec3<bool>(!(!global3.x), _wgslsmith_mod_u32(global1.b, 0u) >= min(global1.b, u_input.a), true), select(vec3<bool>(any(vec4<bool>(arg_1, arg_1, global3.x, true)), any(vec4<bool>(arg_1, global3.x, global3.x, global1.a)), false == arg_1), !select(vec3<bool>(false, global3.x, global1.a), vec3<bool>(global1.a, global1.a, global3.x), vec3<bool>(arg_1, false, true)), true), false), _wgslsmith_div_i32(u_input.c, -2147483647i) == -9275i);
    global0 = array<i32, 2>();
    return false;
}

fn func_2() -> bool {
    let var_0 = vec2<bool>(global1.a, func_3(~(_wgslsmith_add_vec3_i32(global1.e, vec3<i32>(-13379i, global0[_wgslsmith_index_u32(62722u, 2u)], global0[_wgslsmith_index_u32(910u, 2u)])) | -global1.e), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) <= _wgslsmith_f_op_f32(-global2.x)));
    var var_1 = select(!vec4<bool>(var_0.x || !var_0.x, false, global1.a, false), vec4<bool>(false, 1u == _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.b, global1.b, 32328u), abs(vec3<u32>(3391u, u_input.a, u_input.b))), !(!any(vec2<bool>(global1.a, true))), min(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 63283u, global1.b), vec3<u32>(76203u, 4294967295u, 1u))) > ~countOneBits(0u)), global1.a);
    var_1 = vec4<bool>(var_0.x, global3.x, all(select(vec4<bool>(true, true, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 2u)] >= global0[_wgslsmith_index_u32(u_input.a, 2u)]), !vec4<bool>(var_0.x, false, var_1.x, var_0.x), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, global1.a, true), global1.a))), global1.a);
    global3 = select(!select(!var_1.xzy, !select(var_1.wyw, var_1.xxy, vec3<bool>(global3.x, var_0.x, false)), select(var_1.www, !vec3<bool>(var_1.x, true, true), var_1.www)), var_1.xzw, any(var_1.wxy) | var_1.x);
    global2 = _wgslsmith_f_op_vec4_f32(-global1.d);
    return false;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<u32> {
    var var_0 = Struct_1(all(vec2<bool>(func_2(), global1.a)), _wgslsmith_add_u32(87070u, arg_1 << (~(~u_input.a) % 32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(f32(-1f) * -830f), 1000f), vec4<f32>(_wgslsmith_f_op_f32(step(-468f, global2.x)), _wgslsmith_f_op_f32(597f - global2.x), -1315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global1.d.x))), vec4<bool>((global3.x || global1.a) | true, global3.x, min(global1.e.x, -1i) > -u_input.c, global3.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(arg_0, 317f, -944f, global2.x)))), global1.d), vec3<i32>(-_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, arg_1), vec4<u32>(global1.b, global1.b, 0u, 0u)), 2u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.b, 76227u, arg_1), vec4<u32>(1u, 10336u, arg_1, global1.b)), 2u)]), -_wgslsmith_dot_vec3_i32(global1.e, select(vec3<i32>(u_input.c, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<i32>(global1.e.x, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<bool>(false, false, true))), firstTrailingBit(_wgslsmith_dot_vec2_i32(global1.e.xx, max(vec2<i32>(u_input.c, 0i), global1.e.xy)))));
    let var_1 = Struct_1(global3.x, ~((1u << (u_input.b % 32u)) >> (global1.b % 32u)) | arg_1, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(813f, var_0.d.x, 610f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1297f, var_0.d.x, 240f, 200f))), true)), global1.d, -vec3<i32>(countOneBits(-9325i), u_input.c, _wgslsmith_div_i32(0i, global0[_wgslsmith_index_u32(1u, 2u)])) & vec3<i32>(abs(abs(-1i)), firstTrailingBit(~(-1i)), u_input.c));
    var_0 = Struct_1(true, arg_1, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), var_0.d.x, _wgslsmith_f_op_f32(step(-145f, -536f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.d.x, arg_0, 614f) + vec4<f32>(1311f, 551f, 1463f, -296f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.c))), _wgslsmith_div_vec4_f32(vec4<f32>(-600f, -937f, var_0.c.x, global1.c.x), _wgslsmith_div_vec4_f32(var_0.c, var_0.d)))), global3.x)), _wgslsmith_sub_vec3_i32(min(var_1.e, vec3<i32>(~29551i, _wgslsmith_div_i32(global1.e.x, -25239i), global1.e.x)), global1.e));
    global3 = select(select(select(vec3<bool>(func_3(global1.e, var_0.a), true, true), select(!vec3<bool>(false, var_0.a, var_0.a), !vec3<bool>(global3.x, false, global1.a), any(vec3<bool>(var_1.a, true, true))), false), vec3<bool>(false, var_0.a, global1.a), !vec3<bool>(1248f <= var_1.d.x, true, all(vec2<bool>(var_1.a, global1.a)))), select(select(!select(vec3<bool>(true, var_1.a, false), vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(global1.a, false, false)), vec3<bool>(any(global3.yx), select(false, true, true), false), vec3<bool>(var_1.a, true, all(global3.zx))), !vec3<bool>(func_3(var_0.e, global1.a), all(vec3<bool>(true, global1.a, var_1.a)), false), var_1.a), !global1.a | true);
    let var_2 = 55855u;
    return vec3<u32>(~arg_1, _wgslsmith_div_u32(_wgslsmith_mult_u32(57814u, 18938u), 4294967295u << (var_0.b % 32u)), 1u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)))), arg_3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-742f))), _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(282f * arg_1.c.x)))));
    global2 = global1.d;
    global1 = Struct_1(45771u < _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.x, global1.b, arg_3.b) | arg_0, ~vec3<u32>(87944u, 4294967295u, 1u), arg_2), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.b, 3808u, arg_1.b), arg_0)), u_input.b << (49762u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(307f, _wgslsmith_f_op_f32(ceil(arg_3.c.x)))), arg_3.c.x), 1f, -873f, _wgslsmith_f_op_f32(min(arg_3.d.x, _wgslsmith_div_f32(-839f, _wgslsmith_f_op_f32(exp2(global2.x)))))), abs(vec3<i32>(arg_1.e.x, 1i, i32(-1i) * -10616i)) >> (countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(92978u, 0u, 1654u), arg_0)) % vec3<u32>(32u)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-global1.d);
    global0 = array<i32, 2>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global1.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1622f, global1.c.x, -927f))) - global1.c))) - global1.d);
    let var_0 = -396f;
    let var_1 = Struct_1(global1.a, max(1u, u_input.b), vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(min(-896f, global1.d.x)), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f) * -567f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.c, global1.c, vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1402f, -1862f, var_0, var_0)), vec4<f32>(_wgslsmith_f_op_f32(global1.d.x - 219f), -231f, -609f, _wgslsmith_f_op_f32(round(698f))))), !vec4<bool>(all(vec4<bool>(global3.x, false, true, false)), global1.a, global1.a, u_input.a != u_input.a))), countOneBits(_wgslsmith_clamp_vec3_i32(global1.e, vec3<i32>(~1i, reverseBits(u_input.c), _wgslsmith_div_i32(u_input.c, global0[_wgslsmith_index_u32(1u, 2u)])), -global1.e & _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.c, global0[_wgslsmith_index_u32(global1.b, 2u)]), vec3<i32>(u_input.c, 46961i, global0[_wgslsmith_index_u32(u_input.a, 2u)])))));
    global1 = func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(step(var_0, 1193f))), _wgslsmith_sub_u32(global1.b, ~var_1.b))), Struct_1(true & !all(vec3<bool>(false, global1.a, global1.a)), global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global1.d)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1560f, 1000f, -528f, -266f))) * _wgslsmith_f_op_vec4_f32(-var_1.c))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c * vec4<f32>(global1.d.x, -641f, 437f, -1000f)), vec4<f32>(1000f, 1358f, var_1.c.x, var_0)))), (select(vec3<i32>(-33634i, 1i, global0[_wgslsmith_index_u32(28961u, 2u)]), vec3<i32>(-2147483647i, 9747i, -29542i), true) | reverseBits(vec3<i32>(-78938i, -1i, u_input.c))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, var_1.b, 19217u), vec3<u32>(u_input.a, 4294967295u, 48841u)) % vec3<u32>(32u))), select(!select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(global1.a, global3.x, var_1.a), !var_1.a), select(!(!vec3<bool>(true, var_1.a, global1.a)), vec3<bool>(!global1.a, !global3.x, true), select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(var_1.a, global3.x, global3.x), false)), true), Struct_1(global1.a, ~_wgslsmith_mult_u32(23942u, 73277u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.d)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.d.x, -1752f, var_0, 612f), vec4<f32>(-757f, 323f, global1.c.x, global1.d.x)))) + var_1.d), _wgslsmith_f_op_vec4_f32(floor(global1.c)), vec3<i32>(_wgslsmith_mod_i32(19192i, 38257i) << (max(var_1.b, 0u) % 32u), 11900i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 13927i, var_1.e.x), vec3<i32>(18381i, var_1.e.x, var_1.e.x)))));
    global3 = vec3<bool>(true, var_1.a, func_3(var_1.e, var_1.a));
    global1 = Struct_1(any(!global3.yy), ~reverseBits(_wgslsmith_mult_u32(firstTrailingBit(global1.b), ~u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1555f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-395f))), global2.x)), _wgslsmith_f_op_vec4_f32(-var_1.c), firstLeadingBit(firstTrailingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(29206i, -14733i, -26336i), var_1.e))));
    global0 = array<i32, 2>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0, 315f), var_1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) * _wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-921f)))));
    let var_2 = Struct_1(true, _wgslsmith_mod_u32(67135u, (~var_1.b & ~var_1.b) & abs(global1.b)), vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - global1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f))), _wgslsmith_f_op_f32(abs(504f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.c, var_1.c, vec4<bool>(true, true, global1.a, global1.a))) * _wgslsmith_f_op_vec4_f32(var_1.d + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, var_0, -1006f, global2.x))))), vec3<i32>(_wgslsmith_mod_i32(~u_input.c, ~countOneBits(global0[_wgslsmith_index_u32(57606u, 2u)])), var_1.e.x, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(-260f, global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1527f), var_2.c.x);
}

