struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(i32(-2147483648), i32(-2147483648), 64936i, -47316i, i32(-2147483648), 2147483647i, -1i, 2147483647i, -18055i, 0i, 34944i, 1i, 47498i, -32652i, i32(-2147483648), -34373i, 2147483647i, -8778i, 46958i, 1i, 3307i, i32(-2147483648), -7079i, i32(-2147483648), -51133i, -5969i);

var<private> global1: vec2<i32>;

var<private> global2: vec3<u32>;

var<private> global3: vec3<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec4<f32>) -> bool {
    global2 = min(vec3<u32>(~_wgslsmith_mod_u32(1u, arg_1.b.x), reverseBits(~0u), global2.x), ~_wgslsmith_clamp_vec3_u32(u_input.b.xyw, u_input.b.xwx, firstLeadingBit(u_input.b.xwz))) << ((vec3<u32>(0u << (global2.x % 32u), global2.x, 0u) ^ (u_input.b.zyy & ~(~vec3<u32>(global2.x, global2.x, 0u)))) % vec3<u32>(32u));
    global0 = array<i32, 26>();
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_1.b.x, 4294967295u), 26u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(global2.xz), u_input.b.zw), 26u)], countOneBits(~global0[_wgslsmith_index_u32(arg_1.b.x, 26u)]), ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -9627i), vec2<i32>(12281i, u_input.a))), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(40144i, -1616i, global1.x, 0i), vec4<i32>(global1.x, 0i, global1.x, -2147483647i)))));
    global3 = arg_2.wxw;
    let var_1 = Struct_5(_wgslsmith_dot_vec3_u32(u_input.b.yxx >> (~(vec3<u32>(arg_1.b.x, u_input.b.x, arg_1.b.x) << (u_input.b.zzz % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<u32>(0u, ~u_input.b.x, 4294967295u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1020f, global3.x)))))));
    return arg_1.a.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = any(!(!vec2<bool>(any(vec4<bool>(false, arg_0, true, true)), arg_0)));
    var var_1 = Struct_3(-21203i | _wgslsmith_dot_vec2_i32(arg_1.b.zz, firstLeadingBit(_wgslsmith_clamp_vec2_i32(arg_1.b.ww, arg_1.b.wx, arg_1.b.xz))));
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(abs(global3.x)));
    global1 = (vec2<i32>(u_input.a | -global1.x, -1i) << (countOneBits(u_input.b.zy) % vec2<u32>(32u))) ^ (arg_1.b.yw & ~arg_1.b.wz);
    global2 = vec3<u32>(countOneBits(1u), u_input.b.x, u_input.b.x);
    return vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a.x - 689f), _wgslsmith_f_op_f32(select(1000f, global3.x, var_0)))) - _wgslsmith_f_op_f32(f32(-1f) * -1795f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-154f)))), _wgslsmith_f_op_f32(127f - global3.x))));
}

fn func_2() -> Struct_5 {
    let var_0 = u_input.a;
    global2 = vec3<u32>(u_input.b.x, u_input.b.x, 1u >> (u_input.b.x % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global3.zx)) + global3.yy) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(746f, -212f)))))));
    global0 = array<i32, 26>();
    global3 = _wgslsmith_f_op_vec3_f32(func_4(func_3(vec4<bool>(true, true, true, true), Struct_4(Struct_1(-808f, true, vec3<bool>(true, true, true), vec2<bool>(true, true)), vec2<u32>(~4294967295u, 24981u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, global3.x)), var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(581f + var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -816f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(global3.x - -802f), 1651f)), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.xx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.zx * global3.yx), var_1)), vec4<i32>(~global0[_wgslsmith_index_u32(1u, 26u)] & global0[_wgslsmith_index_u32(global2.x, 26u)], -5011i, 1i, _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(4294967295u, 26u)])))));
    return Struct_5(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x * var_1.x))), 963f)));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_5, arg_3: vec4<f32>) -> vec4<i32> {
    global2 = ~u_input.b.zyz;
    let var_0 = ~(-1i);
    let var_1 = vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global2.x, u_input.b.x), 26u)], 10894i) | ~vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(arg_1), global1.x >> (58553u % 32u)), var_0, _wgslsmith_mult_i32(global1.x, var_0));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -1528f), _wgslsmith_f_op_f32(max(arg_2.b, global3.x)))))));
    return _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, ~(~(u_input.a << (5646u % 32u))), arg_1 << (~(0u << (u_input.b.x % 32u)) % 32u), u_input.a), -(reverseBits(vec4<i32>(61066i, 1i, arg_1, -1i)) << (vec4<u32>(0u, u_input.b.x, global2.x, 0u) % vec4<u32>(32u))) >> (reverseBits(~select(vec4<u32>(global2.x, 0u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, arg_2.a, 1u, 73412u), true)) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = global3.x;
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(global3.x * -887f), -139f), _wgslsmith_mod_vec4_i32(func_5(~arg_0 << (arg_0 % 32u), firstLeadingBit(~arg_3), func_2(), vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(global3.x)), global3.x, _wgslsmith_f_op_f32(sign(-1000f)))), abs(abs(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, -2147483647i, 1i, u_input.a), vec4<i32>(-1i, arg_3, global0[_wgslsmith_index_u32(4294967295u, 26u)], 24240i))))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))), var_1.a.x)), arg_1, !vec3<bool>(false, global3.x > -483f, 1i < var_1.b.x), vec2<bool>(arg_1, !arg_1)), global2.zz, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(any(vec3<bool>(arg_1, true, arg_1)), Struct_2(var_1.a, vec4<i32>(var_1.b.x, 2147483647i, 4170i, -6092i)))).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(ceil(var_1.a.x)))), -528f)));
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, global3.x, 826f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a, _wgslsmith_div_f32(-599f, -642f), 588f)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_2.a.a, 1266f)), _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, var_2.a.a, -1294f), vec3<f32>(1000f, global3.x, var_1.a.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.x, var_1.a.x, global3.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, var_2.c, 432f)), select(vec3<bool>(false, true, arg_1), vec3<bool>(true, true, false), false)))), global2.x > 1u)));
    global1 = var_1.b.ww;
    return Struct_1(global3.x, func_3(!(!vec4<bool>(true, true, var_2.a.b, false)), var_2, vec4<f32>(-1130f, _wgslsmith_f_op_f32(-var_2.a.a), _wgslsmith_f_op_f32(round(var_1.a.x)), var_2.a.a)), vec3<bool>(var_2.a.b, false, false), !var_2.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global2.x, 52865u, 4294967295u, u_input.b.x) >> (vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u))), ~_wgslsmith_div_u32(0u, 51861u)) <= ~(~(u_input.b.x >> (u_input.b.x % 32u))), true);
    var var_1 = global2.x;
    let var_2 = vec3<u32>(~_wgslsmith_mult_u32(abs(1u), 37567u), 23596u, firstTrailingBit(global2.x));
    var var_3 = Struct_4(func_1(47049u, true, 1i, global1.x), min(countOneBits(vec2<u32>(1u, u_input.b.x) >> (var_2.zx % vec2<u32>(32u))), vec2<u32>(u_input.b.x, global2.x) << (u_input.b.xz % vec2<u32>(32u))) ^ u_input.b.wz, -640f);
    let var_4 = ~(~var_3.b.x);
    var var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(293f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.c, -480f)), var_3.c), -123f, _wgslsmith_f_op_f32(var_3.a.a - _wgslsmith_f_op_f32(-841f * _wgslsmith_f_op_f32(-470f + global3.x)))));
    let var_6 = _wgslsmith_f_op_f32(-1105f - var_3.c);
    let var_7 = Struct_2(vec2<f32>(var_3.c, 1000f), countOneBits(vec4<i32>(-2147483647i, firstTrailingBit(-2147483647i), func_5(58270u << (1u % 32u), -5176i, func_2(), vec4<f32>(var_6, -349f, var_6, var_5.x)).x, global1.x)));
    global0 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(var_7.a.x + _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 30444u, _wgslsmith_mult_u32(~var_4, ~var_2.x), 4294967295u), ~u_input.b));
}

