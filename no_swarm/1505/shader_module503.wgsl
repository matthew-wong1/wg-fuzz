struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec2<f32> = vec2<f32>(139f, 676f);

var<private> global2: f32 = 384f;

var<private> global3: array<u32, 19> = array<u32, 19>(0u, 108638u, 2584u, 4294967295u, 4294967295u, 1u, 1u, 37466u, 9181u, 4294967295u, 1u, 45041u, 0u, 21212u, 35319u, 39978u, 12158u, 50712u, 6835u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = Struct_1(-68289i, vec4<f32>(global1.x, 195f, _wgslsmith_f_op_f32(-global1.x), 549f), arg_0.x & true, 330f);
    global3 = array<u32, 19>();
    var var_1 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(565u, 19u)] ^ 34488u, 17u)];
    global1 = _wgslsmith_f_op_vec2_f32(trunc(var_0.b.zy));
    global1 = var_1.b.zx;
    return ~(~((countOneBits(u_input.c.wxy) ^ vec3<u32>(u_input.a, 49511u, 0u)) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), vec3<u32>(51294u, 64332u, 4294967295u)) % vec3<u32>(32u))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = true | (abs(_wgslsmith_clamp_i32(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(19503i, u_input.b), vec2<i32>(u_input.b, arg_2.a)), 5262i)) >= _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b, arg_2.a, 0i, u_input.b), abs(~vec4<i32>(u_input.b, arg_2.a, arg_2.a, u_input.b))));
    global0 = array<Struct_1, 17>();
    global2 = -686f;
    global2 = _wgslsmith_f_op_f32(select(-604f, 545f, all(!vec4<bool>(arg_2.c, any(vec2<bool>(true, var_0)), !arg_0, arg_1))));
    let var_1 = vec3<i32>(-(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.b, u_input.b) & vec2<i32>(arg_2.a, 27836i)) << (_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(22751u, 52586u, u_input.d.x, 27410u), vec4<u32>(1u, u_input.a, global3[_wgslsmith_index_u32(20352u, 19u)], 55311u))) % 32u)), i32(-1i) * -max(_wgslsmith_mod_i32(u_input.b, -4965i), 1i), _wgslsmith_add_i32(~(reverseBits(arg_2.a) ^ (u_input.b | u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(33184i, u_input.b) | _wgslsmith_clamp_vec2_i32(vec2<i32>(40289i, 2147483647i), vec2<i32>(12102i, u_input.b), vec2<i32>(0i, u_input.b)), ~(-vec2<i32>(u_input.b, -2147483647i)))));
    return abs(-20877i);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>) -> bool {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_1.x)))))));
    global2 = _wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(global1.x, -1007f));
    var var_0 = Struct_1(u_input.b, vec4<f32>(_wgslsmith_f_op_f32(floor(-512f)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1903f * _wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_f32(243f + _wgslsmith_f_op_f32(floor(1464f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(648f, global1.x))))), false, -2126f);
    var var_1 = vec4<i32>(countOneBits(_wgslsmith_mult_i32(18648i, 1i)), 1i, _wgslsmith_add_i32(-1i, -u_input.b), _wgslsmith_mod_i32(-(~max(-2147483647i, arg_0.x)), -(-var_0.a >> (abs(0u) % 32u))));
    var var_2 = vec3<bool>(!(!var_0.c), (1799f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + 1107f)) && true, var_0.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d))) + global1.x) >= _wgslsmith_f_op_f32(floor(-346f));
}

fn func_1() -> Struct_1 {
    let var_0 = -1i;
    var var_1 = global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~min(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], ~(~8894u)), 19u)], 17u)];
    var var_2 = ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7892u, 19u)], 19u)], 19u)]);
    var var_3 = ~_wgslsmith_clamp_vec3_u32(abs(func_2(!vec2<bool>(var_1.c, false))), ~vec3<u32>(~u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.d), 30142u), vec3<u32>(~57621u, 4294967295u, _wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(40769u, 19u)])));
    var_3 = u_input.d.zyx;
    return Struct_1(var_0, var_1.b, func_4(vec3<i32>(~u_input.b ^ 1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-33742i, -30637i), vec2<i32>(var_1.a, var_1.a), true), select(vec2<i32>(-11646i, 1i), vec2<i32>(u_input.b, var_0), false)), ~func_3(var_1.c, true, Struct_1(-42931i, var_1.b, true, var_1.d))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d, var_1.b.x, var_1.b.x), _wgslsmith_f_op_vec3_f32(abs(var_1.b.zyw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.wxy + vec3<f32>(global1.x, var_1.b.x, var_1.d))), vec3<bool>(var_1.c, true, !var_1.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f)) - -1170f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = true;
    let var_2 = abs(select(~u_input.d.yw, u_input.d.zy, false));
    global0 = array<Struct_1, 17>();
    let var_3 = func_1();
    let var_4 = vec4<i32>(_wgslsmith_div_i32(u_input.b, ~(-1i)), var_3.a, _wgslsmith_add_i32(var_3.a, -min(var_3.a, -2147483647i)), var_0.a);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(ceil(var_3.b.x)))) * _wgslsmith_f_op_f32(-var_3.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d))));
    let var_5 = func_1();
    let var_6 = ~vec4<i32>(var_5.a ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_4, var_4), 1i), ~(~select(-2147483647i, -8075i, var_3.c)), var_5.a, firstTrailingBit(_wgslsmith_add_i32(~9473i, 10044i << (u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c.yzx, u_input.d.wxz), 1u), ~68927u, ~max(24186u, max(0u, 1u))));
}

