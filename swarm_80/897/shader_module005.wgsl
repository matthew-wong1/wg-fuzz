struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<bool, 14> = array<bool, 14>(false, false, false, false, true, false, true, false, false, true, false, false, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = -vec2<i32>(u_input.a, select(-u_input.a, u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.d), 14u)]) & -1i);
    var var_1 = vec2<i32>(u_input.a, u_input.a);
    let var_2 = !select(select(vec2<bool>(true, !global1[_wgslsmith_index_u32(u_input.c, 14u)]), vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(38646u, 14u)], true, global1[_wgslsmith_index_u32(u_input.b, 14u)])), all(vec2<bool>(true, true))), 729f < _wgslsmith_f_op_f32(round(-532f))), select(!select(vec2<bool>(global1[_wgslsmith_index_u32(14360u, 14u)], global1[_wgslsmith_index_u32(18738u, 14u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]), false), !(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(u_input.c, 14u)])), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 14u)])), global1[_wgslsmith_index_u32(~((1u << (u_input.d % 32u)) >> (_wgslsmith_sub_u32(u_input.d, u_input.d) % 32u)), 14u)]);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1586f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1864f - -1693f), _wgslsmith_div_f32(744f, -1492f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1180f)))))))));
    var var_4 = !(!select(!(!vec3<bool>(var_2.x, true, false)), vec3<bool>(all(var_2), true, any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 14u)]))), select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 14u)], var_2.x, global1[_wgslsmith_index_u32(u_input.b, 14u)]), !vec3<bool>(var_2.x, var_2.x, true), true)));
    return -144f;
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = vec2<bool>(true, false);
    global0 = u_input.a;
    let var_1 = all(select(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(14625u, 14u)], true, false))), !select(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 14u)], true, false), vec3<bool>(var_0.x, false, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 14u)], var_0.x, var_0.x)), true));
    var var_2 = u_input.a;
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(func_3()), Struct_2(Struct_1(~vec2<u32>(arg_0, arg_0), u_input.a, vec4<i32>(u_input.a, 2147483647i, u_input.a, -9023i), _wgslsmith_f_op_f32(602f + -154f)), 572f, vec3<i32>(u_input.a, abs(-20553i), ~(-1i)), any(vec2<bool>(false, var_0.x)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, u_input.b), vec2<u32>(5071u, 55661u)), 1i, ~vec4<i32>(u_input.a, u_input.a, u_input.a, -37789i), _wgslsmith_f_op_f32(-755f - -425f))), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 14u)], var_1)), var_1), !select(var_0.x, var_1, var_1)), Struct_1(vec2<u32>(u_input.d, countOneBits(arg_0)), u_input.a, vec4<i32>(0i, min(-10549i, u_input.a), _wgslsmith_mod_i32(0i, 23727i), countOneBits(u_input.a)), -157f)), u_input.a);
    return var_3.a;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global1 = array<bool, 14>();
    var var_0 = func_2(u_input.d);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-1401f - -1628f)), func_2(_wgslsmith_add_u32(~(~26798u), _wgslsmith_mod_u32(28588u << (u_input.b % 32u), firstTrailingBit(1u)))).b, !vec2<bool>(func_2(60885u).b.d, select(true, all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], false)), global1[_wgslsmith_index_u32(var_0.b.e.a.x, 14u)])), Struct_1(~firstLeadingBit(vec2<u32>(13626u, u_input.b)) & ~vec2<u32>(u_input.d, 7411u), func_2(~var_0.b.e.a.x).b.e.c.x, ~vec4<i32>(2147483647i, ~u_input.a, func_2(44187u).b.e.b, firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)))));
    let var_2 = Struct_4(func_2(7929u), firstTrailingBit(2147483647i));
    var var_3 = vec2<bool>(false, var_2.a.c.x);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 14>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -343f), true | all(vec4<bool>(false, global1[_wgslsmith_index_u32(12384u, 14u)], false, global1[_wgslsmith_index_u32(7918u, 14u)]))))), func_1(!(!select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(324u, 14u)], true), global1[_wgslsmith_index_u32(22091u, 14u)]))), !vec2<bool>(false, any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 14u)]))), Struct_1(func_2(~u_input.b).d.a, -23738i, vec4<i32>(-18598i, 0i, 2487i, -u_input.a) >> (vec4<u32>(_wgslsmith_div_u32(57316u, u_input.d), 11509u, abs(4294967295u), reverseBits(1u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f))));
    global1 = array<bool, 14>();
    global1 = array<bool, 14>();
    let var_1 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.d.d)), _wgslsmith_div_f32(197f, var_0.b.a.d), -288f)))));
}

