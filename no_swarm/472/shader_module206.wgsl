struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 0u), vec2<u32>(96539u, 28161u), vec3<f32>(-1341f, 580f, -1000f)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(239f, 1427f, -722f)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 1u), vec2<u32>(13427u, 40010u), vec3<f32>(2654f, -1198f, 727f)), Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, 33805u), vec2<u32>(4683u, 6706u), vec3<f32>(-2516f, -785f, -1123f)), Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, 38001u), vec2<u32>(18587u, 1u), vec3<f32>(-393f, -203f, -423f)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(68894u, 0u), vec2<u32>(0u, 21408u), vec3<f32>(110f, -504f, -1032f)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 0u), vec2<u32>(11218u, 4744u), vec3<f32>(871f, 221f, -1717f)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 1u), vec2<u32>(46963u, 65723u), vec3<f32>(205f, -2248f, -771f)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 33614u), vec2<u32>(4294967295u, 0u), vec3<f32>(-399f, -948f, -1071f)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(24617u, 4294967295u), vec2<u32>(1u, 46299u), vec3<f32>(-833f, -896f, 1358f)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 38567u), vec3<f32>(1025f, 775f, 2003f)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(30871u, 1u), vec2<u32>(4294967295u, 0u), vec3<f32>(1532f, -569f, 461f)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(63612u, 55678u), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-294f, 569f, -119f)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(682u, 13255u), vec2<u32>(4294967295u, 44287u), vec3<f32>(-800f, 865f, 409f)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(13265u, 1698u), vec2<u32>(0u, 0u), vec3<f32>(-398f, 1189f, -774f)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(25752u, 4294967295u), vec2<u32>(24883u, 4294967295u), vec3<f32>(-1144f, 445f, -1000f)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(54515u, 35182u), vec2<u32>(1u, 58024u), vec3<f32>(440f, 1075f, 309f)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(14250u, 4294967295u), vec2<u32>(45583u, 4294967295u), vec3<f32>(-252f, 418f, -1291f)), Struct_1(vec3<bool>(false, false, false), vec2<u32>(1u, 1u), vec2<u32>(55865u, 1u), vec3<f32>(408f, 1505f, -1813f)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 6876u), vec2<u32>(88026u, 0u), vec3<f32>(-1000f, -542f, 769f)), Struct_1(vec3<bool>(false, true, false), vec2<u32>(0u, 0u), vec2<u32>(1u, 17890u), vec3<f32>(588f, -632f, -491f)), Struct_1(vec3<bool>(false, false, false), vec2<u32>(41482u, 1u), vec2<u32>(1u, 0u), vec3<f32>(206f, 2017f, -652f)), Struct_1(vec3<bool>(false, true, false), vec2<u32>(1012u, 1u), vec2<u32>(1u, 4294967295u), vec3<f32>(-962f, 498f, -132f)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(45455u, 20414u), vec2<u32>(37173u, 1u), vec3<f32>(-308f, -1000f, -496f)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(29435u, 6355u), vec2<u32>(0u, 1u), vec3<f32>(481f, 1351f, 416f)), Struct_1(vec3<bool>(false, false, false), vec2<u32>(4294967295u, 44201u), vec2<u32>(1u, 1u), vec3<f32>(-643f, -329f, 831f)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(19435u, 88423u), vec2<u32>(48040u, 1u), vec3<f32>(-699f, -675f, -1048f)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u), vec3<f32>(524f, 2234f, 160f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = 38935u;
    let var_1 = Struct_1(!(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))), u_input.a, u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1682f))))), -520f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2144f)), -213f))));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_2 = 1069f;
    return var_1.a;
}

fn func_2() -> i32 {
    var var_0 = select(!select(!func_3(vec3<i32>(-2147483647i, 61992i, u_input.c.x)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))) || true));
    var_0 = select(!select(vec3<bool>(func_3(vec3<i32>(3468i, u_input.b, -15389i)).x, !var_0.x, true), vec3<bool>(true, true, all(vec4<bool>(var_0.x, true, true, var_0.x))), func_3(vec3<i32>(u_input.b, -35096i, u_input.c.x) | vec3<i32>(2147483647i, u_input.b, -28827i))), select(!select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), select(true, false, var_0.x)), !select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_0.x, false), any(vec2<bool>(true, var_0.x))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(any(vec3<bool>(var_0.x, true, true)), var_0.x && var_0.x, false))), u_input.b <= (i32(-1i) * -(1i >> (u_input.a.x % 32u))));
    var_0 = !(!(!vec3<bool>(false, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 28u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-2881f * var_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_div_f32(413f, -352f), _wgslsmith_f_op_f32(step(var_1.d.x, var_1.d.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.d.x, var_1.d.x, var_1.d.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_1.d.x, -344f, -1845f) - vec4<f32>(-831f, var_1.d.x, var_1.d.x, -1000f))))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.x), -665f, var_1.d.x, _wgslsmith_f_op_f32(sign(var_1.d.x))))))));
    return firstLeadingBit(-2147483647i);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> bool {
    var var_0 = (func_2() > _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(2147483647i, 11294i, 2147483647i, 6228i)), abs(-vec4<i32>(-1i, u_input.c.x, 11875i, 51740i)))) && false;
    global0 = array<Struct_1, 28>();
    var var_1 = vec3<bool>(func_3(reverseBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-53092i, -21040i, u_input.b), vec3<i32>(-8885i, 2147483647i, u_input.c.x), vec3<i32>(u_input.b, u_input.c.x, u_input.c.x)))).x, !select(true, all(vec3<bool>(false, true, false)), !(1i <= arg_0.x)), any(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec2<bool>(false, true)), false))));
    let var_2 = true;
    let var_3 = vec3<u32>(_wgslsmith_div_u32(~(~_wgslsmith_mod_u32(u_input.a.x, arg_1.x)), ~(~23716u) ^ _wgslsmith_sub_u32(arg_1.x, 1u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(0u), _wgslsmith_mod_u32(16458u, reverseBits(30858u)), _wgslsmith_div_u32(0u, u_input.a.x), _wgslsmith_sub_u32(~u_input.a.x, ~0u)), ~abs(vec4<u32>(1u, 4294967295u, u_input.a.x, arg_1.x))));
    return -682f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -145f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(reverseBits(_wgslsmith_div_i32(u_input.b, -2147483647i)) < ~(-29555i), all(vec3<bool>(any(vec2<bool>(true, true)), true, true)), true, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), any(vec2<bool>(false, true))), vec4<bool>(func_1(vec2<i32>(747i, 1i), ~vec3<u32>(38756u, u_input.a.x, 13821u)), select(true, func_1(vec2<i32>(u_input.c.x, 50052i), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), true), true, true || func_3(vec3<i32>(u_input.c.x, -2147483647i, u_input.b)).x), all(!func_3(vec3<i32>(u_input.b, u_input.c.x, u_input.c.x)))), !vec4<bool>(!all(vec2<bool>(true, false)), true, true, true));
    global0 = array<Struct_1, 28>();
    var var_1 = global0[_wgslsmith_index_u32(1u | _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(1u, u_input.a.x, ~49733u)), 28u)];
    let var_2 = countOneBits(1i);
    var var_3 = global0[_wgslsmith_index_u32(~(~4294967295u), 28u)];
    let var_4 = Struct_1(select(vec3<bool>(!(var_2 >= -1i), all(var_0), false), var_1.a, var_0.wzx), vec2<u32>(4206u, ~firstTrailingBit(~var_1.b.x)), vec2<u32>(43089u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.x, 57337u, 0u), ~vec3<u32>(39997u, u_input.a.x, 0u))) >> ((select(u_input.a, vec2<u32>(0u, var_3.c.x), any(var_3.a)) | ~vec2<u32>(var_1.c.x, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_3.d, var_1.d, var_1.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1626f + var_4.d.x) - -614f), 14585u);
}

