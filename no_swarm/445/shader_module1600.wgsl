struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(71731u, 67532u, 1u, 1u), false, vec2<bool>(true, false), -252f);

var<private> global4: vec4<f32> = vec4<f32>(-1011f, 173f, -168f, 784f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~global2.a, !(any(vec4<bool>(global2.b, global3.b, false, global2.b)) | true), !global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))), Struct_1(global3.a, false, !global3.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.d - _wgslsmith_f_op_f32(step(564f, global3.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-771f * global3.d) + _wgslsmith_f_op_f32(global3.d - global2.d)), global2.b))));
    let var_1 = 1u;
    let var_2 = Struct_1(var_0.a.a, !((global2.b & true) && all(select(vec3<bool>(true, var_0.b.c.x, global2.b), vec3<bool>(true, true, false), true))), select(var_0.a.c, global3.c, select(select(select(vec2<bool>(false, true), vec2<bool>(true, global3.b), vec2<bool>(global2.c.x, true)), vec2<bool>(global3.c.x, global2.c.x), vec2<bool>(global2.b, global3.b)), global2.c, !var_0.b.c)), 167f);
    var var_3 = vec3<bool>(any(vec4<bool>(var_0.b.c.x | true, var_2.b, all(!vec3<bool>(global2.c.x, global3.b, global2.c.x)), !any(global3.c))), true, !all(select(vec2<bool>(true, var_2.c.x), vec2<bool>(false, false), vec2<bool>(false, var_0.b.b))));
    let var_4 = any(var_2.c);
    return var_2;
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: bool) -> f32 {
    global2 = func_2();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(731f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(479f))))), _wgslsmith_f_op_f32(global3.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - arg_0) + _wgslsmith_f_op_f32(sign(arg_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d * 1000f)))), true));
    global2 = func_2();
    return _wgslsmith_f_op_f32(max(-925f, global4.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    global2 = func_2();
    let var_0 = vec4<bool>(global2.b, func_2().b, false, global2.c.x || true);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1324f - global4.x))) * global4.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d - 155f))), _wgslsmith_f_op_f32(func_3(-183f, select(vec3<u32>(global2.a.x, 53807u, u_input.a.x), vec3<u32>(u_input.a.x, 1733u, u_input.a.x), arg_0.b), var_1)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d + global2.d));
    global2 = func_2();
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(~global2.a, abs(vec4<u32>(func_1(Struct_1(global3.a, false, global2.c, -433f), vec3<u32>(1u, 17025u, global2.a.x)), ~4294967295u, reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(global3.a.xwy, global2.a.yzx)))), true, vec2<bool>(global3.c.x, true | global2.c.x), _wgslsmith_f_op_f32(-global2.d));
    var var_1 = countOneBits(~var_0.a);
    global1 = !all(!select(vec3<bool>(global2.c.x, false, global2.b), vec3<bool>(true, global2.b, false), vec3<bool>(false, false, false))) & false;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(~(-2147483647i), abs(~1i), countOneBits(_wgslsmith_mod_i32(-79535i, -57345i)), min(57215i >> (var_0.a.x % 32u), 1i)), vec4<i32>(-1i, 1i, -1i, 1i >> (1u % 32u)), ~_wgslsmith_mod_i32(0i, 6435i) < firstTrailingBit(max(3956i, 2147483647i))), -1i, 1i, 29329u, ~(abs(vec2<u32>(0u, u_input.a.x)) >> (vec2<u32>(select(98697u, global3.a.x, true), 39195u) % vec2<u32>(32u))));
}

