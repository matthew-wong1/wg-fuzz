struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global1 = array<Struct_1, 31>();
    let var_0 = vec2<i32>(~(~1i), ~_wgslsmith_mult_i32(i32(-1i) * -46761i, _wgslsmith_mult_i32(-2147483647i, 0i)));
    let var_1 = vec2<i32>(-2147483647i, 2147483647i << (0u % 32u));
    let var_2 = Struct_1(global0.a, ~arg_0.b, !arg_1);
    let var_3 = select(vec3<u32>(4294967295u, _wgslsmith_mod_u32(reverseBits(3633u), global0.b), global0.b) & vec3<u32>(global0.b, _wgslsmith_mod_u32(select(1u, 72626u, false), reverseBits(var_2.b)), 9831u), ~(~vec3<u32>(~21959u, ~4294967295u, abs(105254u))), !(!(998f != global0.a.x) && arg_0.c));
    return -19243i;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(select(global0.b, arg_0, true), 31u)];
    global1 = array<Struct_1, 31>();
    var var_1 = firstTrailingBit(func_3(global1[_wgslsmith_index_u32(57594u, 31u)], !((global0.a.x == global0.a.x) && !var_0.c)));
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(global0.a.x, var_0.a.x, var_0.c)), -813f, 2276f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, _wgslsmith_f_op_f32(min(1041f, global0.a.x)), _wgslsmith_div_f32(global0.a.x, -1410f)))), _wgslsmith_mult_u32(arg_1.x, ~33661u), global0.c);
    let var_3 = global1[_wgslsmith_index_u32(u_input.a, 31u)];
    return arg_1 | arg_1;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-503f, 659f, global0.a.x) - _wgslsmith_f_op_vec3_f32(ceil(global0.a)))) + _wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(-1173f, -1143f, global0.a.x), select(!vec3<bool>(true, false, global0.c), vec3<bool>(global0.c, true, false), false)))), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(~(~u_input.a), ~u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~1u), func_2(~29833u, _wgslsmith_add_vec2_u32(vec2<u32>(54549u, 4294967295u), vec2<u32>(arg_0, arg_0))))), any(select(vec3<bool>(true, global0.c, any(vec4<bool>(global0.c, global0.c, true, true))), vec3<bool>(global0.c, false | global0.c, true), all(!vec4<bool>(true, true, global0.c, true)))));
    global0 = var_0;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), ~(~4294967295u) << (reverseBits(~arg_0 << (4294967295u % 32u)) % 32u), false);
    let var_2 = Struct_1(vec3<f32>(119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(exp2(var_0.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-178f)))))), 4294967295u, false);
    global0 = var_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_2.a.x, -3156f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2635f, 429f, 1184f))))))), 1u, _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), 805f, var_2.c & var_2.c)))) >= 1196f);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = select(vec3<bool>(false, !(309f <= _wgslsmith_f_op_f32(arg_0 + 856f)), false), select(!vec3<bool>(false, !arg_2.c, true), !(!(!vec3<bool>(false, arg_1, arg_3.c))), select(select(vec3<bool>(false, arg_1, global0.c), vec3<bool>(arg_1, arg_2.c, arg_1), true), vec3<bool>(false, all(vec4<bool>(global0.c, false, false, arg_2.c)), arg_2.c), !select(vec3<bool>(false, global0.c, true), vec3<bool>(true, true, arg_3.c), vec3<bool>(false, global0.c, arg_2.c)))), select(!vec3<bool>(false, false, !arg_2.c), vec3<bool>(select(select(global0.c, true, global0.c), select(false, arg_3.c, arg_1), select(true, false, false)), true, true), arg_1));
    let var_1 = select(!vec2<bool>(true | (4294967295u < u_input.a), true), var_0.xy, true);
    global0 = func_1(~(arg_3.b << (~_wgslsmith_mult_u32(arg_3.b, 4294967295u) % 32u)));
    let var_2 = func_1(6251u);
    let var_3 = 1u;
    return func_3(Struct_1(arg_2.a, 1u, any(select(select(vec3<bool>(global0.c, arg_1, var_1.x), vec3<bool>(arg_3.c, var_1.x, global0.c), vec3<bool>(true, true, arg_3.c)), !vec3<bool>(true, arg_2.c, false), true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.a.x * _wgslsmith_f_op_f32(-var_2.a.x)), -917f)) > _wgslsmith_f_op_f32(trunc(-338f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(countOneBits(abs(-2147483647i)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -32606i, 28911i, 8543i), vec4<i32>(-25125i, 20885i, 9124i, -1i)))), func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, 302f), _wgslsmith_f_op_f32(663f * -1296f)), _wgslsmith_clamp_i32(-24976i, 2317i, 6483i) > firstLeadingBit(-1678i), global1[_wgslsmith_index_u32(u_input.a >> (1u % 32u), 31u)], func_1(4294967295u))) << (vec2<u32>(_wgslsmith_sub_u32(global0.b, 13011u), ~abs(func_2(u_input.a, vec2<u32>(global0.b, u_input.a)).x)) % vec2<u32>(32u));
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(firstLeadingBit(global0.b)), 31u)];
    global1 = array<Struct_1, 31>();
    let var_2 = 24224i;
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(func_1(0u).a.x, _wgslsmith_f_op_f32(select(757f, -367f, false))))), var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_div_f32(444f, var_1.a.x))), ~min(16370u, 4294967295u), select(global0.c, var_1.c, true));
    let var_4 = vec3<i32>(reverseBits(func_3(Struct_1(global0.a, 4990u, true), any(!vec3<bool>(true, true, var_1.c)))), var_0.x, 0i);
    var var_5 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global0.a.x + -1448f), var_1.a.x, global0.a.x)));
    let var_6 = abs(-_wgslsmith_add_i32(reverseBits(83573i), 2319i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

