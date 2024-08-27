struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(1u, 43013u, 30825u), vec3<u32>(4294967295u, 7717u, 4294967295u), vec3<u32>(31435u, 4294967295u, 0u), vec3<u32>(8235u, 4294967295u, 0u), vec3<u32>(39333u, 18097u, 29147u), vec3<u32>(2074u, 0u, 4294967295u), vec3<u32>(1u, 61357u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 108061u), vec3<u32>(0u, 48375u, 20584u), vec3<u32>(0u, 4294967295u, 13194u));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(7986u, 53026u, 38191u), vec2<f32>(324f, -798f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> f32 {
    return 714f;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<u32>, 11>();
    let var_0 = vec2<bool>(false, all(vec3<bool>(_wgslsmith_f_op_f32(step(861f, -1457f)) >= _wgslsmith_f_op_f32(step(global1.b.x, -416f)), select(all(vec4<bool>(true, true, true, false)), false, true), true)));
    let var_1 = abs(~global1.a.x);
    global0 = array<vec3<u32>, 11>();
    let var_2 = var_0.x;
    return Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(min(4294967295u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, global1.a.x, global1.a.x), vec4<u32>(var_1, 7068u, global1.a.x, 9322u)), _wgslsmith_sub_u32(4796u, 0u)), select(_wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(0u, 11u)], vec3<u32>(var_1, 1u, var_1)), ~global0[_wgslsmith_index_u32(var_1, 11u)], vec3<bool>(false, var_0.x, var_0.x))) << (global1.a % vec3<u32>(32u)), global1.b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<u32>, 11>();
    global0 = array<vec3<u32>, 11>();
    let var_0 = Struct_1(firstLeadingBit(~global0[_wgslsmith_index_u32(24205u, 11u)] >> (firstTrailingBit(global0[_wgslsmith_index_u32(17682u, 11u)]) % vec3<u32>(32u))) ^ select(arg_0.a, vec3<u32>(~global1.a.x, ~arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_f32(-global1.b.x) == _wgslsmith_f_op_f32(global1.b.x + -1432f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(401f, arg_0.b.x) - _wgslsmith_f_op_vec2_f32(-global1.b))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, 1623f) * vec2<f32>(1000f, 218f)))), any(vec4<bool>(true, true, true, true)))));
    var var_1 = 10118u;
    var var_2 = _wgslsmith_mod_vec4_u32(abs(~max(vec4<u32>(31515u, 11728u, arg_2.a.x, u_input.c.x), vec4<u32>(50229u, arg_0.a.x, global1.a.x, var_0.a.x))), vec4<u32>(7257u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_0.a.x), select(global1.a, global0[_wgslsmith_index_u32(46891u, 11u)], true)), ~_wgslsmith_clamp_u32(arg_0.a.x, 4294967295u, 5663u), 1u)) << (~max(abs(vec4<u32>(1u, arg_2.a.x, 79124u, var_0.a.x) ^ vec4<u32>(arg_0.a.x, 0u, 11327u, 0u)), ~abs(vec4<u32>(arg_2.a.x, 85465u, u_input.c.x, arg_0.a.x))) % vec4<u32>(32u));
    return Struct_1(vec3<u32>(8484u, var_2.x, ~((u_input.c.x << (133806u % 32u)) >> (reverseBits(u_input.c.x) % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b + _wgslsmith_f_op_vec2_f32(arg_1.b + var_0.b)) + _wgslsmith_f_op_vec2_f32(sign(arg_0.b))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(min(-1065f, -2518f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(89151u & ~(_wgslsmith_add_u32(u_input.c.x, 1934u) << (reverseBits(u_input.c.x) % 32u)));
    let var_1 = var_0;
    let var_2 = func_3(Struct_1(select(~(vec3<u32>(4294967295u, 50041u, global1.a.x) | global0[_wgslsmith_index_u32(0u, 11u)]), vec3<u32>(22889u, var_0 ^ global1.a.x, abs(global1.a.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_1(Struct_1(global0[_wgslsmith_index_u32(var_1, 11u)], global1.b))))), func_2((~vec4<i32>(2147483647i, u_input.a.x, 34536i, -2147483647i) | (u_input.a >> (vec4<u32>(var_1, u_input.c.x, u_input.c.x, global1.a.x) % vec4<u32>(32u)))) << (vec4<u32>(0u, ~4294967295u, 1u, 0u) % vec4<u32>(32u))), Struct_1(~vec3<u32>(var_1, ~118148u, global1.a.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(80860i, -1i, -9950i, -5105i)).b * global1.b)))));
    global1 = func_3(func_3(var_2, func_2(u_input.a), var_2), Struct_1(min(vec3<u32>(~39887u, var_1 << (u_input.c.x % 32u), ~var_2.a.x), max(vec3<u32>(43255u, var_2.a.x, 4294967295u), ~global1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global1.b.x) - global1.b), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b.x, var_2.b.x), vec2<f32>(global1.b.x, -1150f)))) - global1.b)), Struct_1(global1.a, vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x))));
    let var_3 = vec2<bool>((all(vec4<bool>(true, true, true, true)) & !all(vec4<bool>(false, true, true, false))) | (-(u_input.a.x ^ u_input.a.x) != (select(-2147483647i, -2147483647i, true) << (0u % 32u))), !all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-814f, global1.b.x), global1.b.x), global1.b.x, var_3.x))), i32(-1i) * -1i);
}

