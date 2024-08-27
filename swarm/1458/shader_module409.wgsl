struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 11>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = arg_0;
    let var_0 = Struct_1(u_input.a.xx, _wgslsmith_mult_u32(4294967295u, u_input.a.x), vec3<i32>(global0.c.x, 14717i, -5710i) << (u_input.a % vec3<u32>(32u)));
    var var_1 = select(!vec4<bool>(true, false | global1[_wgslsmith_index_u32(30027u << (u_input.a.x % 32u), 11u)], !all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(65139u, 11u)], global1[_wgslsmith_index_u32(30918u, 11u)])), global1[_wgslsmith_index_u32(abs(~global0.b), 11u)]), vec4<bool>(global1[_wgslsmith_index_u32(~(~global0.a.x) & ~1u, 11u)], !global1[_wgslsmith_index_u32(var_0.a.x, 11u)], true, !(!all(vec4<bool>(false, global1[_wgslsmith_index_u32(14561u, 11u)], true, false)))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.a.x, _wgslsmith_sub_u32(u_input.a.x, 11621u), ~_wgslsmith_clamp_u32(~global0.a.x, 0u, ~8383u)), 11u)]);
    var_1 = select(!vec4<bool>(all(select(vec3<bool>(false, var_1.x, false), vec3<bool>(false, false, false), var_1.yyw)), global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)], !var_1.x || (u_input.a.x != global0.b)), select(!vec4<bool>(!var_1.x, true, var_1.x, true), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(var_0.b, 11u)], true), true), !vec4<bool>(false, global1[_wgslsmith_index_u32(50871u, 11u)], var_1.x, var_1.x), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 11u)], false, var_1.x)), vec4<bool>(!var_1.x, false, !var_1.x, true), var_1.x), !(!(!vec4<bool>(false, var_1.x, true, global1[_wgslsmith_index_u32(22048u, 11u)])))), var_1.x);
    var var_2 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(-970f))) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(select(-1000f, -265f, false)))))));
    return var_0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = ~vec4<u32>(global0.a.x, func_3(Struct_1(firstLeadingBit(global0.a), _wgslsmith_mod_u32(9076u, global0.a.x), vec3<i32>(40645i, global0.c.x, global0.c.x))), _wgslsmith_mod_u32(4294967295u, 4294967295u & ~u_input.a.x), 0u);
    let var_1 = _wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec3_u32(~reverseBits(max(vec3<u32>(32089u, 0u, global0.b), vec3<u32>(66699u, 25780u, var_0.x))), var_0.wxz));
    let var_2 = var_1 >= (var_1 << (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, u_input.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(22557u, global0.a.x), vec2<u32>(66801u, var_0.x))) % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-154f, 734f)), _wgslsmith_f_op_f32(select(955f, 330f, false)), 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1602f, -1466f, -1029f)))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1284f, 659f, true)) * _wgslsmith_div_f32(878f, -590f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2318f) * _wgslsmith_f_op_f32(trunc(810f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-507f, 1534f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(346f)))) + _wgslsmith_f_op_f32(sign(-1060f)))));
    var var_4 = vec2<f32>(var_3.x, -227f);
    return Struct_1(_wgslsmith_mult_vec2_u32(countOneBits(u_input.a.zy), ~(~(vec2<u32>(3399u, 1u) ^ global0.a))), _wgslsmith_dot_vec3_u32(vec3<u32>(80209u, 0u, 50130u), ~vec3<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 36925u), _wgslsmith_sub_u32(45305u, u_input.a.x))), ~(-vec3<i32>(global0.c.x, -global0.c.x, reverseBits(0i))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(~max(_wgslsmith_div_vec2_u32(max(global0.a, global0.a), ~vec2<u32>(global0.a.x, global0.a.x)), global0.a), countOneBits(~arg_1.b), (_wgslsmith_mod_vec3_i32(arg_1.c, -arg_2.xwy) | vec3<i32>(i32(-1i) * -2147483647i, -arg_0.x, 29381i)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(21980u, global0.a.x), u_input.a.xx), _wgslsmith_sub_vec2_u32(u_input.a.yz, global0.a)), abs(~arg_1.b), ~(~21861u)) % vec3<u32>(32u)));
    return var_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<bool, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(313f)))))));
    return func_4(global0.c, func_2(), firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), -12213i, ~(global0.c.x | 17137i), arg_0.c.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(abs(4294967295u), 11u)];
    global1 = array<bool, 11>();
    let var_1 = Struct_1(vec2<u32>(6818u, global0.a.x << (global0.b % 32u)), min(87754u, func_2().a.x), _wgslsmith_mult_vec3_i32(global0.c, vec3<i32>(2147483647i, -1i, i32(-1i) * -9836i) ^ reverseBits(arg_0.c << (u_input.a % vec3<u32>(32u)))));
    global1 = array<bool, 11>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(573f)), _wgslsmith_f_op_f32(trunc(2482f)), _wgslsmith_div_f32(-1171f, -110f), _wgslsmith_f_op_f32(f32(-1f) * -321f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(126f, 704f, 494f, -385f) + vec4<f32>(533f, 1000f, 160f, 146f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-172f)))), 1351f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-874f, -918f)))), 1535f), global1[_wgslsmith_index_u32(19941u, 11u)])) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1188f - 184f) - _wgslsmith_f_op_f32(f32(-1f) * -1242f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-997f, _wgslsmith_div_f32(-458f, 269f), global1[_wgslsmith_index_u32(u_input.a.x, 11u)] && true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) * _wgslsmith_f_op_f32(floor(836f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))));
    return arg_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = !(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(global0.a.x, 11u)], global1[_wgslsmith_index_u32(42872u, 11u)], true))));
    global1 = array<bool, 11>();
    let var_1 = vec3<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -854f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + -695f) - -587f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3)), 368f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3))))), _wgslsmith_f_op_f32(f32(-1f) * -1239f));
    let var_2 = 1i;
    var var_3 = Struct_1(~vec2<u32>(max(106730u, arg_2.a.x), global0.a.x << (4294967295u % 32u)) & func_2().a, 0u, arg_2.c);
    return arg_2;
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec3<bool>(all(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], true))), false, arg_2);
    global0 = func_1(arg_1);
    let var_1 = Struct_1(u_input.a.xx, u_input.a.x, vec3<i32>(arg_1.c.x, global0.c.x >> (arg_0.x % 32u), _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, arg_3.x) << (_wgslsmith_mod_u32(u_input.a.x, 4294967295u) % 32u), arg_1.c.x)));
    let var_2 = vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(global0.b, 21482u) ^ u_input.a.x, 4997u), ~(~9329u));
    var_0 = select(vec3<bool>(true, true, true), !(!select(!vec3<bool>(true, arg_2, global1[_wgslsmith_index_u32(1u, 11u)]), vec3<bool>(true, var_0.x, true), false)), !vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], firstTrailingBit(arg_0.x) <= ~u_input.a.x));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(!(!global1[_wgslsmith_index_u32(0u, 11u)]), global1[_wgslsmith_index_u32(u_input.a.x, 11u)]));
    var var_1 = Struct_1(vec2<u32>(u_input.a.x, abs(~0u)) & abs(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a.x) ^ global0.a, u_input.a.yz)), ~_wgslsmith_mod_u32(u_input.a.x, ~4294967295u), global0.c);
    var_1 = func_7(u_input.a, func_6(vec2<f32>(-475f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f) - -1000f)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, u_input.a.x, u_input.a.x, global0.b), vec4<u32>(global0.b, 1u, u_input.a.x, 41498u))), func_5(func_1(Struct_1(vec2<u32>(var_1.a.x, var_1.b), 43518u, vec3<i32>(var_1.c.x, 0i, global0.c.x))), _wgslsmith_mod_vec4_i32(~vec4<i32>(global0.c.x, var_1.c.x, global0.c.x, -18459i), vec4<i32>(global0.c.x, global0.c.x, var_1.c.x, var_1.c.x) >> (vec4<u32>(23169u, global0.a.x, 4294967295u, 4294967295u) % vec4<u32>(32u))), ~(~8288u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, -2147483647i, global0.c.x) << (vec3<u32>(92129u, 9419u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-47569i, 3972i, -29231i), global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(503f, 450f)) - 1000f)), true, _wgslsmith_add_vec4_i32(-(vec4<i32>(3536i, global0.c.x, -304i, var_1.c.x) >> (abs(vec4<u32>(var_1.a.x, 99235u, 20471u, var_1.a.x)) % vec4<u32>(32u))), ~(~vec4<i32>(global0.c.x, 0i, -16158i, global0.c.x) | vec4<i32>(4979i, global0.c.x, global0.c.x, var_1.c.x))));
    var var_2 = select(vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(var_1.a.x, 52378u), ~1u), 11u)], false), select(vec2<bool>(true, global1[_wgslsmith_index_u32(max(_wgslsmith_add_u32(u_input.a.x, global0.a.x), max(global0.a.x, 40603u)), 11u)]), vec2<bool>((true | global1[_wgslsmith_index_u32(4294967295u, 11u)]) && any(vec2<bool>(true, false)), false), !select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(34524u, 11u)]))), global1[_wgslsmith_index_u32(69129u, 11u)] || global1[_wgslsmith_index_u32(13909u, 11u)]);
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(var_1.c.yy, -vec2<i32>(-1i, var_1.c.x)), -var_1.c.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(global0.c.x & -36467i, global0.c.x, func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, global0.c.x, var_1.c.x), vec3<i32>(var_1.c.x, var_3.x, 21883i)), func_4(global0.c, Struct_1(vec2<u32>(u_input.a.x, var_1.a.x), global0.b, vec3<i32>(global0.c.x, global0.c.x, var_3.x)), vec4<i32>(var_1.c.x, -5547i, -37644i, var_3.x)), vec4<i32>(2147483647i, var_3.x, var_1.c.x, 58790i) | vec4<i32>(var_1.c.x, -1i, global0.c.x, global0.c.x)).c.x, -1i), vec4<i32>(~reverseBits(-37200i), (-41751i | var_1.c.x) ^ -39575i, global0.c.x, _wgslsmith_clamp_i32(func_6(vec2<f32>(-263f, -897f), vec4<u32>(global0.b, 11395u, u_input.a.x, u_input.a.x), Struct_1(var_1.a, 45010u, global0.c), 193f).c.x, 1i ^ global0.c.x, var_1.c.x))));
}

