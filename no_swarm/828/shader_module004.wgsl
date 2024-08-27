struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = arg_0.a.c;
    global0 = arg_0.a.b;
    let var_1 = _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(arg_3.b.x, ~arg_1.b.x), arg_0.b.x, -1i) != reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(arg_3.b.x), arg_0.b.x), u_input.a.zz));
    var var_2 = vec3<i32>(~(-2147483647i), arg_3.b.x, -arg_0.b.x) >> (vec3<u32>(~reverseBits(~arg_0.a.a.x), ~_wgslsmith_mod_u32(1u, var_0.a), _wgslsmith_clamp_u32(0u, arg_0.a.a.x, _wgslsmith_add_u32(arg_3.a.a.x, ~0u))) % vec3<u32>(32u));
    var var_3 = abs(_wgslsmith_add_i32(arg_2.b.x, _wgslsmith_clamp_i32(~_wgslsmith_add_i32(1i, var_2.x), var_2.x, u_input.a.x)));
    return var_1;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec3<u32> {
    global0 = !(!(!select(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), true), select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), false), select(vec4<bool>(global0.x, true, true, false), vec4<bool>(global0.x, true, true, false), false))));
    let var_0 = ~1i;
    let var_1 = false;
    global0 = !vec4<bool>(false, true, func_3(Struct_3(Struct_2(vec3<u32>(1u, arg_1.a, 4294967295u), vec4<bool>(var_1, global0.x, false, global0.x), Struct_1(arg_0)), u_input.a.yz), Struct_3(Struct_2(vec3<u32>(1u, arg_0, arg_2), vec4<bool>(global0.x, var_1, global0.x, global0.x), Struct_1(6862u)), u_input.a.zy), Struct_3(Struct_2(vec3<u32>(arg_0, 18529u, arg_0), vec4<bool>(true, true, true, var_1), Struct_1(1u)), vec2<i32>(-2147483647i, 91041i)), Struct_3(Struct_2(vec3<u32>(arg_2, 1u, 18064u), vec4<bool>(global0.x, var_1, false, global0.x), Struct_1(arg_2)), u_input.a.zx)) || true, global0.x);
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_2, countOneBits(arg_2), 4294967295u, arg_1.a), vec4<u32>(min(1u, arg_2), arg_1.a << (77569u % 32u), _wgslsmith_clamp_u32(arg_1.a, 67529u, arg_1.a), max(0u, arg_1.a))), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(22242u, 4294967295u, arg_2, 4294967295u)), ~(~vec4<u32>(arg_1.a, arg_1.a, 4294967295u, arg_2)))));
    return vec3<u32>(0u, 46801u, ~(((8602u & arg_0) >> (arg_2 % 32u)) << (reverseBits(1u) % 32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32) -> bool {
    let var_0 = Struct_2(func_2(arg_1.x, Struct_1(arg_1.x), arg_1.x), vec4<bool>(func_3(Struct_3(Struct_2(vec3<u32>(85451u, arg_1.x, arg_1.x), vec4<bool>(true, false, arg_0.x, global0.x), Struct_1(16570u)), u_input.a.yx << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), Struct_3(Struct_2(vec3<u32>(arg_1.x, 4294967295u, 4607u), vec4<bool>(arg_0.x, true, arg_0.x, false), Struct_1(arg_1.x)), -u_input.a.xy), Struct_3(Struct_2(vec3<u32>(4294967295u, 11844u, 49236u), vec4<bool>(global0.x, false, arg_0.x, arg_0.x), Struct_1(arg_1.x)), u_input.a.yx), Struct_3(Struct_2(vec3<u32>(0u, 4294967295u, 1u), vec4<bool>(true, false, false, global0.x), Struct_1(arg_1.x)), ~u_input.a.xz)), global0.x, false, !any(vec3<bool>(false, false, false))), Struct_1(max(_wgslsmith_mod_u32(func_2(arg_1.x, Struct_1(0u), 84171u).x, 39441u), arg_1.x)));
    let var_1 = Struct_3(Struct_2(~vec3<u32>(arg_1.x, 2995u, var_0.c.a), vec4<bool>(!all(vec2<bool>(arg_0.x, global0.x)), true, !all(vec3<bool>(var_0.b.x, global0.x, var_0.b.x)), any(select(vec3<bool>(var_0.b.x, arg_0.x, true), vec3<bool>(false, true, arg_0.x), var_0.b.x))), Struct_1(_wgslsmith_sub_u32(50583u, ~arg_1.x))), u_input.a.xz);
    let var_2 = abs(-52116i);
    let var_3 = Struct_3(var_1.a, var_1.b >> (var_0.a.xz % vec2<u32>(32u)));
    var var_4 = var_0.b.ywz;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(!(!(!global0.x)) || false, true, all(vec4<bool>(global0.x, any(select(global0.wxx, global0.yyx, global0.xwz)), true, false)), global0.x || (false & func_1(!global0.wyy, select(vec2<u32>(0u, 100001u), vec2<u32>(1u, 72364u), true), -28944i | u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(-reverseBits(u_input.a.x), u_input.a.x, _wgslsmith_mod_i32(0i, -9062i), ~u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -764f), 250f)) + -296f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-562f)) + -711f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -549f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f * 1934f)))), 1630f, 13849u);
}

