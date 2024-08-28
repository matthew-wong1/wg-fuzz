struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    return u_input.d.x;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(vec3<u32>(~u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d, u_input.e.x, 100197u, u_input.b), vec4<u32>(u_input.b, 0u, arg_1.d, 12337u)) & ~u_input.a.x, ~u_input.e.x), select(vec2<bool>(arg_1.b.x, arg_1.b.x), !arg_1.b, true), select(vec2<bool>(abs(u_input.c) < _wgslsmith_clamp_u32(0u, arg_1.d, 1u), arg_1.b.x), vec2<bool>(true, true), arg_1.b.x), 19834u);
    var_0 = Struct_1(~(~(~(vec3<u32>(arg_1.d, 45533u, u_input.e.x) >> (vec3<u32>(75429u, var_0.a.x, u_input.b) % vec3<u32>(32u))))), !vec2<bool>(!(false & arg_1.c.x), any(!vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x))), vec2<bool>(var_0.c.x, any(select(vec3<bool>(false, arg_1.b.x, true), !vec3<bool>(false, true, var_0.b.x), vec3<bool>(true, arg_1.c.x, false)))), ~(~1314u));
    var_0 = arg_1;
    var_0 = Struct_1(var_0.a, vec2<bool>(any(!(!vec3<bool>(false, arg_1.c.x, false))), var_0.b.x && true), vec2<bool>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)) > _wgslsmith_f_op_f32(arg_0 * arg_0), !(!(!var_0.b.x))), 37005u);
    let var_1 = vec4<i32>(u_input.d.x, 6440i, firstTrailingBit(_wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(-1i, 1i))), _wgslsmith_div_i32(_wgslsmith_sub_i32(firstLeadingBit(-41532i), _wgslsmith_sub_i32(0i, u_input.d.x) | (u_input.d.x << (4294967295u % 32u))), abs(0i)));
    return var_0.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = countOneBits(firstTrailingBit(~(-arg_0) ^ arg_0));
    let var_1 = Struct_1(abs(max(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, u_input.a.x), arg_2.yzx & vec3<u32>(0u, u_input.e.x, arg_2.x)), vec3<u32>(countOneBits(u_input.c), u_input.c, 1u))), vec2<bool>(-2147483647i != (reverseBits(20828i) | func_1(Struct_1(vec3<u32>(arg_2.x, 0u, 57986u), vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), arg_2.x), -19277i)), any(!func_3(-266f, Struct_1(u_input.e, vec2<bool>(true, true), vec2<bool>(true, arg_1), 54551u)))), vec2<bool>(true, arg_1), 4294967295u);
    var var_2 = var_1.d;
    var var_3 = abs(~select(~_wgslsmith_div_vec4_u32(arg_2, vec4<u32>(61890u, arg_2.x, 34443u, 38301u)), arg_2, true));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 38586u;
    let var_1 = Struct_1(u_input.e, select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false))), false), !func_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x), vec4<i32>(1i, u_input.d.x, u_input.d.x, 38411i)), func_1(Struct_1(u_input.e, vec2<bool>(false, false), vec2<bool>(false, false), 34199u), -35835i), min(1i, u_input.d.x)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), ~countOneBits(vec4<u32>(90872u, u_input.e.x, var_0, 52132u))), _wgslsmith_add_u32(~_wgslsmith_sub_u32(0u, 0u), u_input.b));
    var var_2 = u_input.d.x;
    var_2 = _wgslsmith_div_i32(_wgslsmith_mult_i32(~(~(-51245i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 20120i, 25956i, u_input.d.x), vec4<i32>(-1396i, u_input.d.x, u_input.d.x, u_input.d.x))) >> (4294967295u % 32u), -2147483647i);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(~_wgslsmith_sub_i32(47911i, u_input.d.x)), reverseBits(_wgslsmith_dot_vec3_i32(~u_input.d, ~vec3<i32>(u_input.d.x, 1i, u_input.d.x))), u_input.d.x));
}

