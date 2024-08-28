struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    global0 = array<u32, 25>();
    let var_0 = u_input.a.x;
    var var_1 = -45929i;
    var_1 = select(50394i, u_input.a.x, arg_3);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-739f, arg_0.x, -1630f), vec3<f32>(891f, 1459f, arg_1.x))), _wgslsmith_f_op_vec3_f32(-arg_0.yzy)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-743f, 643f, var_2.a.x)))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.a.x & 2147483647i;
    var_0 = _wgslsmith_clamp_i32(21697i, 1i, 1i);
    var var_1 = Struct_2(arg_2, arg_2, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_2.a)) * arg_2.a) + vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(round(arg_2.a.x)), _wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x)))));
    var var_2 = _wgslsmith_div_f32(-253f, _wgslsmith_div_f32(-1057f, var_1.c.a.x));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), var_1.c.a.x, var_1.b.a.x, _wgslsmith_f_op_f32(step(var_1.a.a.x, 368f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.a.x, var_1.b.a.x), vec2<f32>(536f, var_1.c.a.x)))), ~(~(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53071u, 25u)], 25u)], 25u)], 25u)], 4294967295u))), ~arg_0.x >= ~arg_0.x);
    return func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.x), var_3.a.x, _wgslsmith_f_op_f32(max(var_1.b.a.x, -609f)), var_3.a.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1353f, 518f, _wgslsmith_div_f32(var_1.c.a.x, arg_2.a.x), arg_2.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_1.c.a.x, arg_2.a.x, 1023f))))), var_1.a.a.xz, 1u, !(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 25u)], 25u)] & 50676u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], 25u)]) <= ~countOneBits(global0[_wgslsmith_index_u32(6098u, 25u)])));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = array<u32, 25>();
    return func_3(~vec3<i32>(-arg_1.x, select(~arg_1.x, firstTrailingBit(arg_1.x), true), -(i32(-1i) * -2147483647i)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_1.x), u_input.a) | vec3<i32>(u_input.a.x, -10291i, arg_1.x), arg_1.ywy), u_input.a), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.a.x, 123f, -645f, 354f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1332f, -950f, arg_2.c.a.x, 1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.a.x, 624f, arg_3.a.x, -919f), vec4<f32>(arg_3.a.x, -352f, 1000f, arg_3.a.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1300f + arg_3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -611f))), 42249u, true));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<f32> {
    global0 = array<u32, 25>();
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(arg_2.x, firstTrailingBit(-(arg_2.x | 1i))), -28993i, _wgslsmith_div_i32(u_input.a.x, 41944i), ~_wgslsmith_mod_i32(-_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), select(-2147483647i, 1i, arg_0.a.x != arg_3.a.x)));
    global0 = array<u32, 25>();
    let var_1 = (i32(-1i) * -48393i) ^ _wgslsmith_add_i32(arg_2.x, var_0.x);
    var var_2 = select(select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(true, false, false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), vec2<bool>(true, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 25u)], 25u)], 0u), 35995u) == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(0u, 25u)]), 25u)]), 25u)], 25u)]), true);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a.xy, vec2<f32>(arg_3.a.x, -1084f)) + arg_1.yz))) * _wgslsmith_div_vec2_f32(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(937f, arg_1.x, arg_3.a.x, arg_1.x))), vec4<f32>(1698f, 1979f, 420f, 606f)), vec2<f32>(-200f, 1043f), 73408u, true).a.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.xz + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1005f, arg_0.a.x) - arg_3.a.yx)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_1(u_input.a.yx, vec4<i32>(u_input.a.x, -21271i, -1i, 48587i), Struct_2(Struct_1(vec3<f32>(1245f, -703f, 561f)), Struct_1(vec3<f32>(-325f, 236f, 512f)), Struct_1(vec3<f32>(700f, -566f, -632f))), Struct_1(vec3<f32>(-375f, 1532f, 2347f))), vec3<f32>(1f, 1f, 1f), vec3<i32>(-49717i, -12335i, u_input.a.x), func_3(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, Struct_1(vec3<f32>(669f, 2013f, 698f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1332f, -556f) * vec2<f32>(141f, 1316f)), vec2<f32>(-563f, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1770f * 1512f)), -1131f), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3564u, 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 0u)) >= 1u, select(true, true, true) && true))));
    let var_1 = _wgslsmith_f_op_f32(-1888f + func_3(vec3<i32>(u_input.a.x, -13293i, _wgslsmith_mod_i32(2147483647i | u_input.a.x, u_input.a.x)), vec3<i32>(-16056i, select(u_input.a.x, abs(u_input.a.x), all(vec2<bool>(false, true))), _wgslsmith_mult_i32(firstLeadingBit(u_input.a.x), u_input.a.x ^ -2147483647i)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1328f, 538f, 1413f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -820f, var_0.x)))))).a.x);
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(861f, var_1, var_0.x, -2042f))), vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1075f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 826f)), _wgslsmith_f_op_f32(floor(var_1))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1168f, -306f)))))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], ~global0[_wgslsmith_index_u32(4287u, 25u)]) >> (reverseBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21142u, 25u)], 25u)] | 0u) % 32u), 25u)], false);
    let var_3 = all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, var_1 <= var_1, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))), select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), true), vec4<bool>(any(vec3<bool>(false, true, true)), u_input.a.x > 1i, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), any(vec4<bool>(false, false, true, true))))));
    let var_4 = true;
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -655f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) * _wgslsmith_f_op_f32(-288f - var_2.a.x)) * var_2.a.x));
    var var_6 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -485f)), var_2.a.xx, !(-49780i > u_input.a.x))) - var_2.a.yy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_0.x * -509f)), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])), vec4<u32>(~1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21347u, 25u)], 25u)] & 0u, global0[_wgslsmith_index_u32(44256u, 25u)] | global0[_wgslsmith_index_u32(0u, 25u)]))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(460f, var_6.x, var_6.x) - var_2.a)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(150f, 252f, var_0.x)), func_3(u_input.a, u_input.a, Struct_1(var_2.a)).a, var_3))), vec3<f32>(732f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(600f, var_6.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) * _wgslsmith_f_op_f32(-var_2.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1613f, _wgslsmith_f_op_f32(trunc(1420f))))), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))));
}

