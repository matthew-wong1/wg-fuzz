struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 4294967295u), vec4<u32>(1u, 16900u, 24616u, 871u), -544f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    global1 = arg_2;
    return u_input.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> bool {
    global1 = Struct_1(global1.a, ~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1.a.x, u_input.a, 4294967295u), global1.b), u_input.a, _wgslsmith_add_u32(~71379u, reverseBits(global1.b.x)), 13174u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -889f)))));
    var var_0 = Struct_1(min(_wgslsmith_mod_vec2_u32(vec2<u32>(~1u, global1.b.x), abs(global1.a) >> (vec2<u32>(1u, 44929u) % vec2<u32>(32u))), vec2<u32>(~(~4294967295u), u_input.a)), _wgslsmith_clamp_vec4_u32(abs(max(global1.b, vec4<u32>(1u, global1.b.x, 20978u, 11093u))), vec4<u32>(~(~u_input.a), global1.b.x, ~u_input.a, _wgslsmith_mult_u32(25873u, func_3(true, vec2<f32>(-1000f, 546f), Struct_1(vec2<u32>(1u, global1.a.x), vec4<u32>(51951u, global1.a.x, global1.b.x, 1u), arg_1), vec2<bool>(false, false)))), min(~abs(global1.b), vec4<u32>(global1.b.x, _wgslsmith_mod_u32(global1.b.x, u_input.a), 12390u >> (global1.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(43888u, 48260u, 0u, u_input.a), global1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1722f, 2310f, true))) * _wgslsmith_f_op_f32(arg_1 * -464f))));
    var_0 = Struct_1(~(~(~(~vec2<u32>(var_0.a.x, 76529u)))), vec4<u32>(39620u | min(~16665u, ~u_input.a), countOneBits(max(global1.b.x, u_input.a)), max(21891u, 0u), _wgslsmith_sub_u32(var_0.a.x & global1.a.x, _wgslsmith_div_u32(global1.b.x, var_0.a.x >> (var_0.a.x % 32u)))), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(sign(global1.c)))));
    let var_1 = Struct_2(Struct_1(~vec2<u32>(0u, u_input.a), ~global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c * -117f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.c, var_0.c))))) * vec3<f32>(var_1.a.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(f32(-1f) * -1057f)))), global1.c));
    return !select(true, any(vec2<bool>(false, true)) && all(vec4<bool>(true, true, true, true)), false);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = vec2<u32>(arg_0.a.x, arg_0.b.x ^ abs(_wgslsmith_sub_u32(1u, arg_0.b.x)));
    var var_1 = select(!vec4<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(true, true)), !any(vec2<bool>(false, false)), all(vec2<bool>(true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(func_2(vec3<i32>(arg_1, arg_1, -55316i), arg_0.c), all(vec2<bool>(true, true)), select(false, true, true), true), vec4<bool>(select(true, true, false), all(vec4<bool>(true, false, false, false)), true, all(vec2<bool>(false, true)))), select(vec4<bool>(any(vec2<bool>(true, false)), firstTrailingBit(arg_0.b.x) < _wgslsmith_sub_u32(global1.a.x, 11045u), !all(vec3<bool>(false, false, false)), select(true, true, true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false)), false), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true))));
    var var_2 = var_1.xwz;
    var var_3 = ~(var_0.x >> (_wgslsmith_mod_u32(28557u, global1.a.x) % 32u));
    var_3 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 34166u), ~(var_0.x & min(var_0.x, arg_0.b.x)));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.yzw;
    var var_1 = Struct_2(Struct_1(~global1.b.zy, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global1.a, vec4<u32>(4294967295u, 0u, 33871u, var_0.x), global1.c), 0i)), _wgslsmith_f_op_f32(floor(global1.c))))));
    var var_2 = select(1u, ~u_input.a, !(!all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var_1 = global0[_wgslsmith_index_u32(var_1.a.a.x, 5u)];
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(~(~u_input.a)), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u, u_input.a, abs(abs(vec3<i32>(~51948i, ~4634i, _wgslsmith_sub_i32(43158i, -29357i)))), var_3.a.c);
}

