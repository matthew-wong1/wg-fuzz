struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = firstTrailingBit(-u_input.b);
    var var_1 = arg_0;
    var var_2 = vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_mod_u32(firstTrailingBit(var_1.b.x), 55123u), arg_0.b.x), arg_0.b.x);
    var var_3 = _wgslsmith_mod_vec4_u32(~vec4<u32>(firstLeadingBit(var_2.x) & _wgslsmith_mod_u32(arg_0.b.x, 0u), 13889u, 30709u, var_1.b.x), _wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_0.b.x, 0u, ~70305u, var_2.x & var_2.x), ~vec4<u32>(arg_0.b.x, var_2.x, 4294967295u, var_1.b.x), !(!vec4<bool>(var_1.c, true, var_1.a.x, false))), ~(~vec4<u32>(var_2.x, 849u, var_1.b.x, var_1.b.x))));
    var_2 = var_3.wz;
    return _wgslsmith_f_op_f32(-var_1.e);
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<bool> {
    var var_0 = vec2<u32>(22704u, arg_0);
    var_0 = countOneBits(select(reverseBits(~vec2<u32>(35u, 29415u)), ~(~vec2<u32>(29398u, 63512u)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), true))) << ((vec2<u32>(reverseBits(arg_0), _wgslsmith_div_u32(var_0.x, arg_0) >> (arg_0 % 32u)) ^ vec2<u32>(44903u, _wgslsmith_mult_u32(arg_0, abs(4294967295u)))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(!all(vec3<bool>(true, true, true)), true), ~vec2<u32>(_wgslsmith_mod_u32(var_0.x, 2310u), arg_0), true, 1901f, 755f)));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(696f)))) - _wgslsmith_f_op_f32(abs(1000f)))));
    let var_2 = Struct_2(_wgslsmith_div_f32(-1677f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(406f * 125f), _wgslsmith_f_op_f32(1096f - -445f))))), true);
    return vec3<bool>(var_2.b, false, 310f > _wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(floor(-281f)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = !arg_0.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-205f * 184f)))))), _wgslsmith_sub_i32((arg_1.x | arg_1.x) >> (~101020u % 32u), 1i) <= -arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.a))));
    var var_3 = Struct_1(arg_0, select(arg_2.yx, ~(~firstTrailingBit(vec2<u32>(12179u, arg_2.x))), true), !((firstLeadingBit(arg_2.x) <= _wgslsmith_dot_vec2_u32(vec2<u32>(44662u, 4294967295u), arg_2.zy)) || all(func_2(12585u, 1i))), 472f, var_1.a);
    let var_4 = select(vec4<bool>(all(vec2<bool>(true, true)), true, var_1.b, 29031u < (var_3.b.x & 32735u)), vec4<bool>(var_0, any(vec3<bool>(false, !var_0, !arg_0.x)), var_0, false), vec4<bool>(var_3.c, arg_0.x, var_3.c, !(!(arg_0.x & var_3.c))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i << (func_1(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), u_input.c & _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i), u_input.c), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(72608u, 15734u), _wgslsmith_dot_vec2_u32(vec2<u32>(11737u, 1u), vec2<u32>(107676u, 27575u))), 1u, 1u)) % 32u);
    var_0 = ~firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.d.wyw, (vec3<i32>(u_input.d.x, 1i, u_input.b) << (vec3<u32>(4294967295u, 33286u, 37235u) % vec3<u32>(32u))) & u_input.d.wzx));
    let var_1 = 462f;
    let var_2 = Struct_2(var_1, all(!vec4<bool>(any(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, false)), false, false)));
    let var_3 = Struct_1(!vec2<bool>(var_2.b, true), vec2<u32>(0u, 4294967295u), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), 487f);
    var_0 = -u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, -58953i, select(u_input.d.wzy, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.d.xyx, vec3<i32>(u_input.d.x, -37881i, 0i)), u_input.d.x, u_input.c.x), all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, var_3.c, var_3.c), var_2.b), func_2(var_3.b.x, 1i), vec3<bool>(var_3.a.x, true, var_2.b)))), vec3<f32>(-486f, var_1, var_3.e), ~1286i);
}

