struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true));

var<private> global1: array<bool, 20> = array<bool, 20>(false, false, true, false, false, true, true, true, false, true, true, false, true, true, true, false, false, true, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = -_wgslsmith_mod_i32(arg_0.b.a, max(arg_0.b.a, firstTrailingBit(arg_0.b.a)));
    global0 = array<vec4<bool>, 12>();
    var_0 = ~arg_0.b.a;
    global0 = array<vec4<bool>, 12>();
    let var_1 = ~(~(~45483u));
    return firstTrailingBit(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(13854i, 2147483647i, arg_0.b.a)), vec3<i32>(2147483647i >> (~4294967295u % 32u), arg_0.b.a, ~_wgslsmith_sub_i32(arg_0.b.a, 2147483647i))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_3 {
    global1 = array<bool, 20>();
    var var_0 = ~(~(vec2<i32>(-6596i, min(0i, 2147483647i)) << (select(countOneBits(vec2<u32>(u_input.a, 14247u)), ~vec2<u32>(4969u, 41969u), select(vec2<bool>(true, true), vec2<bool>(arg_1.c, true), global1[_wgslsmith_index_u32(u_input.a, 20u)])) % vec2<u32>(32u))));
    var var_1 = arg_1;
    let var_2 = Struct_3(vec2<u32>(~(~76960u) << (max(arg_1.a.x, 4294967295u | arg_1.a.x) % 32u), abs(_wgslsmith_div_u32(~arg_1.a.x, ~55485u))), Struct_2(-1i, false), true);
    let var_3 = -121f;
    return Struct_3(~vec2<u32>(select(_wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(var_2.a.x, var_2.a.x)), 42120u, true), arg_1.a.x | _wgslsmith_add_u32(63910u, var_1.a.x)), Struct_2(_wgslsmith_mult_i32(-13371i, ~arg_1.b.a) ^ _wgslsmith_div_i32(func_3(var_2), _wgslsmith_div_i32(var_0.x, 38860i)), abs(min(arg_1.a.x, 1u)) != u_input.a), true);
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(0u, 20u)];
    global0 = array<vec4<bool>, 12>();
    global1 = array<bool, 20>();
    global0 = array<vec4<bool>, 12>();
    var var_1 = Struct_2(0i, global1[_wgslsmith_index_u32(~(~77577u ^ u_input.a), 20u)]);
    return true;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = arg_3;
    var_0 = Struct_1(arg_3.a, var_0.b >> (101002u % 32u), !func_4(func_2(arg_2, Struct_3(arg_2.wz, Struct_2(-2147483647i, false), var_0.c), arg_1, arg_1.yz)));
    global1 = array<bool, 20>();
    let var_1 = Struct_1(-arg_3.a, countOneBits(i32(-1i) * -arg_3.a.x), all(vec2<bool>(!select(arg_0.x, false, true), any(vec4<bool>(true, true, false, arg_0.x)))));
    var var_2 = ~((0i << (_wgslsmith_clamp_u32(arg_2.x & arg_2.x, 1u, firstLeadingBit(u_input.a)) % 32u)) & var_1.b);
    return vec4<i32>(-44979i, _wgslsmith_mod_i32((~17995i | arg_3.b) ^ var_0.b, ~(~func_2(arg_2, Struct_3(vec2<u32>(u_input.a, 73951u), Struct_2(-34531i, var_1.c), false), arg_1, vec2<f32>(arg_1.x, arg_1.x)).b.a)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b, -2147483647i), vec2<i32>(2147483647i, arg_3.a.x) ^ vec2<i32>(var_0.b, -2147483647i)) << (~(~arg_2.x) % 32u)), -(_wgslsmith_div_i32(-549i, arg_3.b) & -_wgslsmith_mult_i32(21255i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 20>();
    let var_0 = Struct_2(-(0i & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -38719i, -1i, 1i), func_1(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], false, global1[_wgslsmith_index_u32(u_input.a, 20u)]), vec3<f32>(-1443f, 508f, -519f), vec4<u32>(86827u, 1u, 11117u, u_input.a), Struct_1(vec3<i32>(-9243i, 1i, 2147483647i), 17112i, false)))), any(vec4<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], true)), global1[_wgslsmith_index_u32(u_input.a, 20u)], true)));
    global0 = array<vec4<bool>, 12>();
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f)), -1766f)));
    global0 = array<vec4<bool>, 12>();
    var var_2 = Struct_2(var_0.a, !(false & all(select(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], var_0.b))));
    let var_3 = -376f;
    global1 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~u_input.a, 1u), _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -712f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_div_f32(var_1.x, var_3))))), var_2.a);
}

