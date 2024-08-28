struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(16801i, true), Struct_1(-1i, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    return ~(~u_input.b.x);
}

fn func_3() -> vec2<bool> {
    let var_0 = !vec3<bool>(true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), false)), true);
    let var_1 = !vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(362f)), _wgslsmith_div_f32(-339f, -3153f)) > _wgslsmith_f_op_f32(abs(-1538f)), any(select(vec3<bool>(false, true, true), var_0, !vec3<bool>(var_0.x, var_0.x, false))), !var_0.x, var_0.x);
    let var_2 = countOneBits(u_input.c);
    let var_3 = abs(vec4<u32>(~(~u_input.b.x), u_input.b.x, u_input.b.x, 0u) << (u_input.b % vec4<u32>(32u)));
    return select(var_1.xx, var_1.xy, true);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = !func_3();
    var var_1 = -2078f;
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var_1 = -466f;
    return ~(~u_input.b.x);
}

fn func_4(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_1, 2>();
    var var_0 = vec4<u32>(~u_input.b.x, _wgslsmith_sub_u32(6506u, ~(~arg_0.a.x | 122181u)), 4294967295u, abs(~u_input.b.x));
    global0 = array<Struct_1, 2>();
    var var_1 = select(select(select(!vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, true), !select(vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, arg_0.c.b), vec4<bool>(false, false, false, false), vec4<bool>(true, false, arg_0.c.b, false)), !vec4<bool>(false, true, arg_0.c.b, arg_0.c.b)), !select(!vec4<bool>(arg_0.c.b, false, arg_0.c.b, true), !vec4<bool>(false, false, arg_0.c.b, arg_0.c.b), vec4<bool>(arg_0.c.b, false, arg_0.c.b, false)), true), select(select(!(!vec4<bool>(false, true, arg_0.c.b, arg_0.c.b)), vec4<bool>(!arg_0.c.b, arg_0.c.b, all(vec2<bool>(arg_0.c.b, true)), select(false, arg_0.c.b, arg_0.c.b)), false), !select(!vec4<bool>(arg_0.c.b, false, false, false), vec4<bool>(true, false, false, true), !vec4<bool>(true, false, arg_0.c.b, false)), !arg_0.c.b), vec4<bool>(!(!(false && arg_0.c.b)), true, !(arg_0.c.b && arg_0.c.b), arg_0.c.b));
    var var_2 = max(min(-(~u_input.d.zz), min(u_input.d.wy << (arg_0.a.zz % vec2<u32>(32u)), min(vec2<i32>(-46378i, arg_0.c.a), vec2<i32>(u_input.d.x, 0i)))), vec2<i32>(arg_0.b, arg_0.c.a)) | u_input.d.zz;
    return ~(~(~_wgslsmith_dot_vec3_u32(var_0.yzz, ~vec3<u32>(var_0.x, 100374u, arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-_wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.c & 916i) >> (~(firstLeadingBit(u_input.b.x) << (func_1(Struct_2(u_input.b, 16757i, Struct_1(u_input.a, true))) % 32u)) % 32u), true);
    global0 = array<Struct_1, 2>();
    var_0 = global0[_wgslsmith_index_u32(func_4(Struct_2(((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) >> (u_input.b % vec4<u32>(32u))) << (~u_input.b % vec4<u32>(32u))) | ~(~u_input.b), -34893i << (func_2(35662u) % 32u), Struct_1(-_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), var_0.b))), 2u)];
    var var_1 = Struct_1(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1178f - -165f))), 461f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1414f + _wgslsmith_f_op_f32(-291f - 352f))));
    var_1 = Struct_1(var_0.a, all(select(vec4<bool>(true, var_0.b, true, 53312i <= var_1.a), vec4<bool>(var_0.b, var_0.b, true, any(vec4<bool>(var_0.b, false, var_0.b, true))), !(!vec4<bool>(var_0.b, true, var_1.b, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(u_input.b.x), 87273u), u_input.d);
}

