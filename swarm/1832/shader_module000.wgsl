struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: Struct_3 = Struct_3(vec2<bool>(false, false));

var<private> global2: u32;

var<private> global3: f32;

var<private> global4: u32 = 22116u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1848f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 22u)], 882f)))))) - -494f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~(~u_input.a >> (firstTrailingBit(arg_3) % 32u)), 22u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~u_input.c), 22u)]), arg_0.a.a.x || (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 5990u, 33505u, u_input.a), vec4<u32>(u_input.c, 12982u, 16294u, u_input.c)) == u_input.a))));
    var var_2 = 492f;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(896f - 660f));
    var var_3 = -2147483647i;
    return 0u;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> vec3<bool> {
    let var_0 = (_wgslsmith_mod_u32(func_3(Struct_4(Struct_3(global1.a), 1i), ~u_input.b.wxy, select(true, false, false), u_input.c), 17156u) >> (_wgslsmith_mod_u32(~(109830u << (u_input.a % 32u)), func_3(Struct_4(Struct_3(global1.a), arg_1), min(u_input.b.zxy, u_input.b.zwy), false, 9398u)) % 32u)) <= ~(4294967295u & ~u_input.a);
    global3 = _wgslsmith_div_f32(256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.c, 22u)]))) * global0[_wgslsmith_index_u32(arg_0.x, 22u)]));
    global2 = ~30810u;
    let var_1 = select(vec4<bool>(!any(select(vec4<bool>(false, true, true, var_0), vec4<bool>(var_0, true, false, global1.a.x), vec4<bool>(var_0, false, true, false))), var_0, ((-1i | arg_1) << (1u % 32u)) >= ~arg_1, false), !(!vec4<bool>(false, all(vec3<bool>(false, false, true)), true, true)), all(!vec4<bool>(false, global1.a.x != false, all(vec3<bool>(false, var_0, global1.a.x)), var_0)));
    var var_2 = true;
    return vec3<bool>(all(select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, global1.a.x), vec2<bool>(var_1.x, true)), vec2<bool>(var_0, all(var_1)), global1.a)), all(select(select(global1.a, var_1.xx, true), !select(vec2<bool>(var_0, global1.a.x), vec2<bool>(global1.a.x, false), false), false)), (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 22u)]), global0[_wgslsmith_index_u32(arg_0.x | u_input.c, 22u)])) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-618f * global0[_wgslsmith_index_u32(arg_0.x, 22u)])))) && false);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    var var_0 = abs(vec3<u32>(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(arg_1.x | 66318u, _wgslsmith_div_u32(arg_1.x, 1u))), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 21136u), vec2<u32>(u_input.c, 1u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(799f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 22u)] * -425f)), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(countOneBits(1u), 22u)])))));
    global4 = arg_1.x & 0u;
    var var_2 = u_input.b.yz;
    global2 = u_input.a;
    return var_1.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global2 = 0u;
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(!all(func_2(vec2<u32>(u_input.a, 4294967295u), 1i)), vec4<u32>(reverseBits(u_input.c | u_input.c), u_input.c, u_input.c, _wgslsmith_div_u32(9462u, u_input.a) & u_input.c))), _wgslsmith_f_op_f32(f32(-1f) * -214f)));
    global1 = Struct_3(!(!global1.a));
    var var_0 = _wgslsmith_div_vec2_u32(~(~(~vec2<u32>(0u, u_input.c))), vec2<u32>(_wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(~u_input.c, u_input.a)), 4294967295u));
    let var_1 = arg_1;
    return ~34674u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.x;
    global0 = array<f32, 22>();
    var var_1 = -70735i;
    let var_2 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~(select(4294967295u, _wgslsmith_sub_u32(u_input.c, u_input.c), select(global1.a.x, true, true)) >> (5642u % 32u)), 22u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, _wgslsmith_sub_u32(0u, 0u) >> (~u_input.c % 32u)), _wgslsmith_sub_u32(4294967295u, 107629u)), 22u)], 32194u > ~firstLeadingBit(u_input.a)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-207f)) - -536f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_1(12861i <= u_input.b.x, Struct_1(485f), _wgslsmith_clamp_vec3_i32(u_input.b.yzx, vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(-1i, u_input.b.x, 0i))), 22u)]) + _wgslsmith_f_op_f32(-var_2)));
    let var_4 = !select(!select(select(vec4<bool>(global1.a.x, global1.a.x, false, false), vec4<bool>(global1.a.x, false, false, global1.a.x), global1.a.x), vec4<bool>(true, true, true, true), true), !select(!vec4<bool>(false, global1.a.x, global1.a.x, false), !vec4<bool>(true, false, false, global1.a.x), true & global1.a.x), select(vec4<bool>(global1.a.x || global1.a.x, true, true, any(vec4<bool>(true, true, global1.a.x, true))), !(!vec4<bool>(false, global1.a.x, global1.a.x, false)), vec4<bool>(false, !global1.a.x, any(vec3<bool>(true, true, global1.a.x)), true)));
    let var_5 = !select(vec2<bool>(true, global1.a.x), !vec2<bool>(true, u_input.b.x == 1i), any(var_4.xz));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -921f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(103f, -401f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(1u), 22u)]))), vec4<i32>(~u_input.b.x, u_input.b.x, u_input.b.x, _wgslsmith_div_i32(-u_input.b.x, -1i)), min(vec2<i32>(-(u_input.b.x >> (19680u % 32u)), ~(i32(-1i) * -16834i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.b.x), u_input.b.xz >> (select(vec2<u32>(5201u, 1u), vec2<u32>(22679u, 0u), global1.a) % vec2<u32>(32u)))), vec4<u32>(~_wgslsmith_mult_u32(42715u, select(u_input.c, u_input.c, var_4.x)), 57054u, 41764u << (u_input.c % 32u), reverseBits(4294967295u)));
}

