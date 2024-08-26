struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: vec4<u32>;

var<private> global1: array<i32, 26> = array<i32, 26>(1i, -11107i, -76818i, -35192i, 45000i, 1i, -33423i, 0i, 0i, 23523i, 23743i, 30374i, -26160i, i32(-2147483648), 42461i, i32(-2147483648), 4987i, 12347i, 7779i, -42909i, 28455i, 2147483647i, -35527i, 1i, 69718i, 2147483647i);

var<private> global2: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    global0 = firstLeadingBit(vec4<u32>(~4294967295u, ~1u, 30408u, 4294967295u));
    var var_0 = min(max(57999u, 28011u), _wgslsmith_sub_u32(max(global0.x, _wgslsmith_mod_u32(global2.b, global2.b)) ^ ~4294967295u, abs(1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global2.a.a, global2.a.a, global2.c.x)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(638f, -1021f)), global2.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b * global2.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-132f))), global2.a.a.x)), -841f);
    global2 = Struct_2(var_1, firstLeadingBit((~u_input.b ^ ~u_input.b) << (~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(19168u, 30838u, 25959u, global2.b)) % 32u)), select(global2.c, !(!select(global2.c, vec2<bool>(true, global2.c.x), vec2<bool>(false, true))), global2.c.x));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~min(global1[_wgslsmith_index_u32(30627u, 26u)], 1i), global1[_wgslsmith_index_u32(1u, 26u)]), global1[_wgslsmith_index_u32(global2.b ^ ~(25090u << (1u % 32u)), 26u)], select(-8897i, 2147483647i, all(!vec3<bool>(global2.c.x, global2.c.x, global2.c.x)))), 2147483647i);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(step(var_1.a.x, -1000f)))) >= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f)), _wgslsmith_f_op_f32(round(var_1.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-348f + var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a.b))))));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = all(!vec3<bool>(false, func_3(), all(!vec2<bool>(false, global2.c.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1181f)) + _wgslsmith_f_op_f32(sign(arg_1.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(831f, arg_1.a.b)) * global2.a.a.x), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(min(global2.a.b, 558f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-676f)), global2.a.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-300f, -525f, global2.a.a.x, global2.a.b) - _wgslsmith_f_op_vec4_f32(global2.a.a + arg_1.a.a)))), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(-1652f))));
    var var_2 = Struct_2(arg_1.a, ~55831u, arg_1.c);
    let var_3 = var_1;
    let var_4 = !(!vec2<bool>(global2.c.x, true && all(vec3<bool>(false, true, var_0))));
    return _wgslsmith_f_op_f32(1195f + var_2.a.b);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<i32, 26>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(~(-2147483647i), Struct_2(global2.a, 1u, vec2<bool>(arg_0, false)))))))));
    let var_1 = vec2<i32>(~global1[_wgslsmith_index_u32(~global2.b ^ (u_input.d ^ global2.b), 26u)], select(global1[_wgslsmith_index_u32(firstLeadingBit(~global2.b << (~global0.x % 32u)), 26u)], max(global1[_wgslsmith_index_u32(~global0.x, 26u)], global1[_wgslsmith_index_u32(31290u << (u_input.c.x % 32u), 26u)]) & 2147483647i, true));
    var var_2 = u_input.c.yyw;
    var var_3 = _wgslsmith_f_op_f32(global2.a.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-global2.a.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(750f))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a.a), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(608f * global2.a.a.x)))), all(select(global2.c, !vec2<bool>(arg_0, global2.c.x), !vec2<bool>(arg_0, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.x;
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 26u)]) & vec2<i32>(global1[_wgslsmith_index_u32(51968u, 26u)], global1[_wgslsmith_index_u32(global0.x, 26u)])), -min(vec2<i32>(-1858i, global1[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<i32>(-24733i, -2147483647i))), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(~(global2.b ^ global0.x), 26u)], _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(global2.b, 26u)], global1[_wgslsmith_index_u32(25614u, 26u)], -1i), firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(25285u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(global2.b, 26u)], global1[_wgslsmith_index_u32(70680u, 26u)]))))), global1[_wgslsmith_index_u32(global0.x, 26u)]);
    var var_2 = u_input.a;
    var var_3 = func_1(global2.c.x);
    let var_4 = select(vec3<bool>(all(vec3<bool>(!global2.c.x, true, global2.c.x)), global2.c.x, !global2.c.x), select(select(select(!vec3<bool>(true, global2.c.x, false), select(vec3<bool>(true, true, global2.c.x), vec3<bool>(global2.c.x, global2.c.x, false), true), select(vec3<bool>(true, false, true), vec3<bool>(global2.c.x, global2.c.x, global2.c.x), true)), vec3<bool>(global2.a.a.x >= -182f, global2.c.x, 2147483647i == global1[_wgslsmith_index_u32(75749u, 26u)]), global2.c.x), vec3<bool>(!(!global2.c.x), global2.c.x, global2.c.x), !vec3<bool>(global2.c.x != global2.c.x, global2.c.x && true, false)), select(vec3<bool>(all(vec4<bool>(global2.c.x, global2.c.x, global2.c.x, false)), func_3(), _wgslsmith_f_op_f32(f32(-1f) * -309f) > _wgslsmith_f_op_f32(global2.a.b * var_3.b)), select(!select(vec3<bool>(false, global2.c.x, global2.c.x), vec3<bool>(true, global2.c.x, true), vec3<bool>(true, global2.c.x, global2.c.x)), vec3<bool>(global2.c.x, global2.c.x, func_3()), vec3<bool>(global2.c.x | global2.c.x, any(vec3<bool>(false, false, global2.c.x)), any(vec4<bool>(global2.c.x, true, global2.c.x, global2.c.x)))), false));
    let var_5 = Struct_2(func_1(!var_4.x), u_input.a, !var_4.zx);
    global1 = array<i32, 26>();
    var_2 = firstLeadingBit(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.a.xw, _wgslsmith_mod_vec4_u32(u_input.c & u_input.c, _wgslsmith_clamp_vec4_u32(~u_input.c, u_input.c, ~vec4<u32>(u_input.a, 46744u, u_input.d, u_input.c.x))) | u_input.c);
}

