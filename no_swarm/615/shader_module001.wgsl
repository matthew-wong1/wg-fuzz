struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> bool {
    global1 = 618f;
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(arg_1.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-428f, arg_1.b.a.x, arg_1.a.x, 132f), arg_1.a)))))))), arg_1.b);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.a.x)) + _wgslsmith_f_op_f32(floor(var_0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(489f + 540f))), !(1i != arg_1.b.b.x))))), arg_1.b.a.x));
    let var_2 = select(var_0.b.b.x, var_0.b.b.x, 4294967295u <= max(arg_0.x, 1u));
    let var_3 = arg_0.xzy;
    return !(!all(vec2<bool>(true, true)) == all(vec3<bool>(false, true, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3) -> vec3<i32> {
    global1 = _wgslsmith_f_op_f32(arg_1.b.a.x - 432f);
    let var_0 = countOneBits(arg_2.b.b.b.x);
    return -(arg_1.b.b.b.yyx << (firstLeadingBit(select(select(vec3<u32>(arg_2.c, 1u, 1u), vec3<u32>(arg_1.c, 44479u, arg_2.c), arg_1.d), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c, arg_1.c, 35053u), vec3<u32>(u_input.a, arg_2.c, arg_1.c)), any(vec2<bool>(true, arg_0.x)))) % vec3<u32>(32u)));
}

fn func_2() -> f32 {
    global0 = u_input.a;
    let var_0 = func_4(vec4<bool>(true, true, !all(vec2<bool>(true, false)) & any(vec4<bool>(true, true, true, true)), true & any(vec3<bool>(true, true, true))), Struct_3(true, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1250f, -803f, 1000f, -471f), vec4<f32>(-1435f, 1865f, -755f, 1156f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(864f, 1487f, 421f, 1550f))), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1044f, 1347f, -1415f), vec3<f32>(-796f, 1334f, -556f))), vec4<i32>(-39967i, 0i, 0i, -1i))), u_input.a, true), Struct_3(true, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(-954f, -104f)), _wgslsmith_f_op_f32(793f - 589f), _wgslsmith_f_op_f32(-333f + -2213f), _wgslsmith_f_op_f32(step(2100f, 1000f))), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(356f, 537f, -415f), vec3<f32>(-586f, 327f, -1000f))), vec4<i32>(-2147483647i, 0i, 1i, 26777i) << (vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) % vec4<u32>(32u)))), 11292u, !func_3(~vec4<u32>(4294967295u, 19830u, u_input.a, 16074u), Struct_2(vec4<f32>(-106f, -1000f, 2073f, 740f), Struct_1(vec3<f32>(105f, 1332f, 511f), vec4<i32>(1i, 1i, 2147483647i, -7357i))))));
    var var_1 = ~vec2<i32>(var_0.x, var_0.x);
    global1 = 494f;
    let var_2 = Struct_3(all(select(vec3<bool>(u_input.a > u_input.a, true, select(false, false, true)), vec3<bool>(false, false, false), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(853f, -181f, _wgslsmith_div_f32(792f, 642f), -275f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-301f, -954f, -485f, 104f), vec4<f32>(-928f, -129f, -1000f, 1000f)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(553f, 579f, -429f), vec3<f32>(1667f, 1000f, 497f), false)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2062f, 916f, -525f)))), select(firstTrailingBit(vec4<i32>(-27751i, var_1.x, var_1.x, -2147483647i)), vec4<i32>(0i, var_1.x, 1i, var_0.x) << (vec4<u32>(u_input.a, 1u, u_input.a, 1u) % vec4<u32>(32u)), true))), 69530u << (~(_wgslsmith_sub_u32(1u, u_input.a) ^ reverseBits(u_input.a)) % 32u), -(var_1.x << ((47805u | u_input.a) % 32u)) == ~var_1.x);
    return 1000f;
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1228f, 689f, true)) - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(263f + 743f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-208f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~(~vec3<u32>(37196u, u_input.a, u_input.a)))), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-9810i, -14357i, -1i, -24368i), vec4<i32>(-2147483647i, 0i, -2147483647i, 1i)), ~(-22574i)), min(abs(vec4<i32>(1337i, -59109i, 54576i, 1i)), max(vec4<i32>(-26211i, 0i, -1684i, 50640i), vec4<i32>(25645i, 2147483647i, -1i, 18366i)))) >> ((u_input.a | ~u_input.a) % 32u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1793f, 1000f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f * -331f)), _wgslsmith_f_op_f32(func_1())))));
}

