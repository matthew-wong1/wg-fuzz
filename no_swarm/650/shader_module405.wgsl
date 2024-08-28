struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 59162u;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<f32>(340f, -1768f, 222f, 462f), vec4<u32>(3272u, 4122u, 25003u, 47652u), vec4<bool>(false, false, false, true)), Struct_1(vec4<f32>(-676f, -1944f, -148f, 384f), vec4<u32>(31778u, 38548u, 0u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_1(vec4<f32>(-969f, -1000f, -503f, -360f), vec4<u32>(0u, 0u, 0u, 0u), vec4<bool>(true, false, true, true)), Struct_1(vec4<f32>(1539f, -1271f, 659f, 392f), vec4<u32>(4294967295u, 16304u, 167u, 629u), vec4<bool>(true, false, true, false)), Struct_1(vec4<f32>(540f, 191f, -1000f, -138f), vec4<u32>(0u, 1u, 0u, 8061u), vec4<bool>(true, false, true, true)), Struct_1(vec4<f32>(-1000f, -454f, 1000f, -404f), vec4<u32>(48199u, 4325u, 4294967295u, 0u), vec4<bool>(true, true, false, false)), Struct_1(vec4<f32>(899f, 855f, 1936f, -973f), vec4<u32>(4294967295u, 47006u, 10542u, 1u), vec4<bool>(false, true, true, true)));

var<private> global2: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_2(592f, Struct_1(vec4<f32>(-1769f, 1000f, -1000f, 1231f), vec4<u32>(22258u, 1u, 9022u, 31891u), vec4<bool>(true, true, false, false)))), Struct_3(Struct_2(528f, Struct_1(vec4<f32>(-1000f, 2312f, 231f, -200f), vec4<u32>(4294967295u, 56392u, 4294967295u, 108879u), vec4<bool>(true, true, true, false)))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global2 = array<Struct_3, 2>();
    let var_0 = select(false, all(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true)))), all(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var var_1 = vec2<u32>(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(u_input.c.yw & u_input.c.yw), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d, u_input.c.x), ~u_input.c.wx)), vec2<u32>((u_input.c.x & 4294967295u) ^ ~u_input.c.x, 52944u | (31116u << (u_input.d % 32u)))));
    let var_2 = u_input.b;
    var_1 = max(abs(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c.x, 4548u), u_input.c.wwy), ~(~9550u))), select(u_input.c.yz << ((vec2<u32>(var_1.x, 94527u) >> (vec2<u32>(19303u, var_1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(1u, abs(~0u)), !select(vec2<bool>(false, var_0), vec2<bool>(true, true), vec2<bool>(true, var_0))));
    return false;
}

fn func_2(arg_0: f32) -> StorageBuffer {
    let var_0 = u_input.b.zz;
    var var_1 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), func_3(), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), (arg_0 >= 1000f) && true);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0))));
    let var_3 = global1[_wgslsmith_index_u32(~(~0u & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(55349u, u_input.d), vec2<u32>(u_input.d, 16679u)), u_input.d)) << (~u_input.d % 32u), 7u)];
    var var_4 = var_3.a;
    return StorageBuffer(vec2<u32>(~u_input.c.x, _wgslsmith_add_u32(var_3.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, 33373u) >> (vec3<u32>(70695u, 4294967295u, u_input.d) % vec3<u32>(32u)), vec3<u32>(1u, 49542u, 64689u)))), var_4.x, 29743u, u_input.b.x);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f + -1855f) * _wgslsmith_f_op_f32(f32(-1f) * -950f)))));
    global1 = array<Struct_1, 7>();
    var var_1 = all(vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), ~(u_input.d >> (39341u % 32u)) != 4294967295u, true, true));
    global0 = u_input.d;
    var_1 = true;
    return func_2(1199f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d, 7u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1007f + var_0.a.x) + -1229f), _wgslsmith_f_op_f32(min(-519f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1564f - -1000f) + 1671f))))));
    var var_2 = u_input.c;
    global2 = array<Struct_3, 2>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zx));
    var var_3 = var_0.c;
    let x = u_input.a;
    s_output = func_1();
}

