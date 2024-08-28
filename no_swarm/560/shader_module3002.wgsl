struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_4, 18>;

var<private> global2: Struct_3 = Struct_3(-1360f);

var<private> global3: vec3<f32> = vec3<f32>(-1027f, 363f, -1181f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_4(arg_0.c.b, !(!arg_0.c.c.b), Struct_2(arg_0.c.c, arg_0.a, arg_0.c.c, arg_0.c.c.a.x, u_input.b.x << (4294967295u % 32u)), Struct_3(arg_0.d.a));
    return var_0.c.c.c.x;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>) -> vec3<u32> {
    let var_0 = u_input.b.x;
    let var_1 = false;
    let var_2 = arg_1.b.xz;
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), global2.a, arg_1.c.b.x)), -816f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(-282f + 379f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))) - _wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(abs(2040f)))))), arg_0.a, arg_1.c.c.x);
    let var_4 = firstTrailingBit(-(i32(-1i) * -2147483647i));
    return vec3<u32>(countOneBits(reverseBits(var_0 | var_2.x)) ^ 43474u, min(1u, 4294967295u), ~arg_1.b.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    global2 = Struct_3(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(1u, 18u)])));
    let var_0 = vec3<u32>(~1u & _wgslsmith_dot_vec3_u32(u_input.b.xxy, select(u_input.b.zzz, func_3(Struct_3(578f), Struct_2(Struct_1(vec2<i32>(arg_0.x, arg_1.a.x), arg_2.b, vec3<f32>(-476f, global2.a, global3.x)), vec3<u32>(arg_3.x, 111505u, u_input.b.x), Struct_1(arg_0.yz, vec3<bool>(global0.x, false, false), vec3<f32>(arg_1.c.x, global2.a, 1558f)), arg_1.a.x, 4294967295u), vec3<f32>(global2.a, 251f, arg_2.c.x)), select(arg_1.b, arg_2.b, false))), _wgslsmith_mult_u32(~abs(30335u) & (40138u & arg_3.x), countOneBits(~arg_3.x)), ~arg_3.x);
    var var_1 = !vec4<bool>(-arg_0.x <= ~31234i, false, false, true);
    var var_2 = Struct_3(arg_2.c.x);
    var var_3 = global1[_wgslsmith_index_u32(var_0.x, 18u)];
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(-511f * -569f)) * global2.a) - _wgslsmith_f_op_f32(f32(-1f) * -644f)), -295f, false));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(-vec3<i32>(u_input.a.x, u_input.a.x, 10760i), Struct_1(u_input.a.yy, vec3<bool>(global0.x, global0.x, false), vec3<f32>(global3.x, -1255f, 272f)), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(true, global0.x, global0.x), vec3<f32>(873f, global2.a, 307f)), u_input.b.xy)), _wgslsmith_div_f32(763f, _wgslsmith_f_op_f32(global3.x * global2.a)), -1992f)), vec3<f32>(global2.a, -1108f, -2153f)));
    let var_0 = all(select(vec4<bool>(true, false, any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), global0.x)), all(select(vec2<bool>(false, global0.x), vec2<bool>(true, false), true))), vec4<bool>(true, true, true, true), vec4<bool>(global0.x, false, any(!vec4<bool>(true, global0.x, global0.x, true)), true)));
    global0 = select(!vec2<bool>(select(true, !var_0, true), !var_0), vec2<bool>(global0.x, any(select(!vec4<bool>(true, true, var_0, global0.x), vec4<bool>(var_0, var_0, false, var_0), !vec4<bool>(global0.x, true, var_0, var_0)))), vec2<bool>(global0.x, !var_0 && (all(vec4<bool>(global0.x, true, false, global0.x)) != var_0)));
    let var_1 = Struct_1(select(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 50613i, 0i), u_input.a), i32(-1i) * -5279i), u_input.a.xx, vec2<bool>(global0.x, global0.x && global0.x)), !select(vec3<bool>(var_0 || global0.x, var_0, all(vec3<bool>(false, global0.x, false))), select(!vec3<bool>(true, true, global0.x), select(vec3<bool>(true, false, var_0), vec3<bool>(true, global0.x, var_0), vec3<bool>(global0.x, var_0, var_0)), select(vec3<bool>(false, global0.x, var_0), vec3<bool>(var_0, global0.x, false), true)), var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1182f, -437f)), _wgslsmith_f_op_f32(func_2(Struct_4(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<bool>(true, var_0, global0.x), Struct_2(Struct_1(u_input.a.yx, vec3<bool>(global0.x, true, global0.x), vec3<f32>(global3.x, global2.a, -156f)), u_input.b.wyz, Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(var_0, false, global0.x), vec3<f32>(global2.a, global2.a, 578f)), 0i, u_input.b.x), Struct_3(427f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global2.a)))));
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.c))), min(var_1.a.x, abs(1i)) ^ firstTrailingBit(firstLeadingBit(u_input.a.x)), var_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(var_1.c.xx)), _wgslsmith_f_op_vec2_f32(-global3.xx), !var_0))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -1502f)))), var_1.c.zz))));
}

