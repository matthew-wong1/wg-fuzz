struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<i32>(48593i, -1i, 2147483647i, -40116i), 4294967295u, vec3<i32>(-34600i, -1i, -35108i)), Struct_1(vec4<i32>(25347i, i32(-2147483648), 1i, 38583i), 18393u, vec3<i32>(-1720i, 23864i, 2147483647i)), Struct_1(vec4<i32>(1i, -68550i, 2147483647i, -40388i), 0u, vec3<i32>(0i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(66036i, 51964i, -1i, 1i), 40192u, vec3<i32>(-1i, 34694i, 19632i)), Struct_1(vec4<i32>(-40421i, 0i, i32(-2147483648), 2147483647i), 4294967295u, vec3<i32>(2147483647i, -22412i, -27261i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -50307i, 2147483647i), 1u, vec3<i32>(2165i, -23557i, -24281i)), Struct_1(vec4<i32>(0i, 1i, 29621i, -5247i), 0u, vec3<i32>(2147483647i, 1i, 5861i)), Struct_1(vec4<i32>(-12308i, 27647i, 2147483647i, i32(-2147483648)), 56103u, vec3<i32>(-1i, 9053i, 2147483647i)), Struct_1(vec4<i32>(0i, 16913i, 2147483647i, 27810i), 89381u, vec3<i32>(50114i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(34030i, -73i, 33222i, 0i), 0u, vec3<i32>(0i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(0i, 1i, 8073i, -1i), 19614u, vec3<i32>(-31481i, 0i, 44976i)), Struct_1(vec4<i32>(-9675i, 37758i, 0i, 14707i), 23588u, vec3<i32>(15639i, -19318i, 44738i)), Struct_1(vec4<i32>(1i, -40349i, -42215i, 1151i), 4294967295u, vec3<i32>(i32(-2147483648), 22680i, -55917i)));

var<private> global3: vec4<u32>;

var<private> global4: i32 = 14999i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    let var_0 = ((0u ^ countOneBits(~u_input.c.x)) >> (u_input.c.x % 32u)) & ~_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(max(1u, global3.x), 85017u));
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(~vec4<i32>(countOneBits(-1i), _wgslsmith_clamp_i32(-41946i, arg_1, 2147483647i), ~0i, countOneBits(arg_1)), abs(reverseBits(-vec4<i32>(1i, -11132i, -1i, u_input.a))), select(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, 23379i, arg_1), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -53809i, arg_1, arg_1), vec4<i32>(arg_1, 1i, -2213i, -2147483647i))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, -2589i, arg_1, -4977i), vec4<i32>(arg_1, arg_1, u_input.a, -8879i), vec4<i32>(u_input.a, arg_1, u_input.a, 1i))), select(global0.x && false, any(vec3<bool>(true, global0.x, true)), true))), abs(~(~var_0)) ^ u_input.b.x, _wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(~_wgslsmith_mod_i32(24367i, -1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, arg_1), vec2<i32>(2147483647i, arg_1))), u_input.a)));
    global0 = select(select(vec3<bool>(any(select(vec2<bool>(false, arg_0.x), global0.xx, true)), !global0.x, any(!arg_0)), vec3<bool>(false, select(global0.x, any(global0.xy), all(arg_0)), arg_0.x), vec3<bool>(true, false, true)), vec3<bool>(_wgslsmith_mod_u32(u_input.b.x, ~24200u) <= _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, var_1.b, var_1.b, global3.x), min(vec4<u32>(0u, 5060u, 2302u, u_input.c.x), vec4<u32>(global3.x, var_0, var_1.b, 88877u))), false, all(arg_0.xzy) || ((global3.x | 0u) <= 23331u)), !global0.x);
    var var_2 = var_1;
    global4 = select(-19768i, 0i, all(select(!(!vec2<bool>(global0.x, global0.x)), global0.yz, select(vec2<bool>(false, true), select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xy, arg_0.x), select(global0.xy, vec2<bool>(global0.x, arg_0.x), arg_0.x)))));
    return arg_2.x;
}

fn func_2() -> vec4<bool> {
    global2 = array<Struct_1, 13>();
    global1 = vec4<f32>(-2318f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1706f + global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!vec4<bool>(true, false, false, global0.x), u_input.a, vec2<f32>(global1.x, 1687f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(760f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(floor(1204f)))))));
    var var_0 = global1.x;
    let var_1 = Struct_1(_wgslsmith_sub_vec4_i32(abs(-abs(vec4<i32>(u_input.a, 0i, u_input.a, -9438i))), ~vec4<i32>(~u_input.a, _wgslsmith_div_i32(2147483647i, -2133i), -1i, ~(-2147483647i))), 56384u, vec3<i32>(u_input.a, u_input.a, -(-2147483647i >> ((u_input.b.x ^ 17872u) % 32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
    return !vec4<bool>(all(vec4<bool>(select(global0.x, false, true), !global0.x, any(vec3<bool>(false, global0.x, global0.x)), false || global0.x)), var_1.b >= ~_wgslsmith_add_u32(global3.x, 0u), global0.x | any(vec3<bool>(true, false, false)), !global0.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1.a.x;
    var var_1 = select(vec3<bool>(global0.x, false, all(vec4<bool>(global0.x, true, true, all(vec2<bool>(false, true))))), vec3<bool>(!any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x))), any(!func_2()), global0.x), !(!select(select(vec3<bool>(global0.x, true, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, true)), !vec3<bool>(true, false, global0.x), vec3<bool>(true, true, true))));
    global2 = array<Struct_1, 13>();
    global4 = -41894i << (global3.x % 32u);
    var var_2 = ~countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -17405i), arg_1.a.zy)));
    return ~vec4<i32>(-1i, ~u_input.a, ~(-(arg_1.c.x | arg_1.c.x)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<u32>(~global3.x, ~u_input.c.x & ~(~(15040u << (u_input.c.x % 32u))), 66421u, max(global3.x << (select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), global3.zy), _wgslsmith_dot_vec4_u32(vec4<u32>(70215u, global3.x, global3.x, 0u), vec4<u32>(global3.x, 11346u, 18179u, 31849u)), global0.x) % 32u), _wgslsmith_mult_u32(abs(u_input.c.x) << (_wgslsmith_mod_u32(u_input.b.x, 0u) % 32u), select(_wgslsmith_div_u32(4294967295u, global3.x), ~3213u, global0.x))));
    let var_0 = Struct_1(-func_1(71930u, Struct_1(vec4<i32>(u_input.a, -2147483647i, 0i, -15040i), _wgslsmith_mod_u32(global3.x, global3.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 8782i, 6816i), vec3<i32>(u_input.a, 2147483647i, u_input.a)))), ~(~global3.x ^ ~global3.x), vec3<i32>(u_input.a, ~abs(2147483647i), u_input.a) >> (global3.zwx % vec3<u32>(32u)));
    global2 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(153f, _wgslsmith_f_op_f32(-843f - global1.x)))))) + 944f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1641f + global1.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~global3.wxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.wwy - vec3<f32>(global1.x, global1.x, -536f)))))));
}

