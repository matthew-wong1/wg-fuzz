struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<bool>(false, true, false), -1503f, vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, false), -1259f, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), 334f, vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, false, false), -2491f, vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, true, false), -1046f, vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, false, false), 1000f, vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(true, false, false), 1000f, vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, false, false), -1379f, vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, true, true), -629f, vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, false, false), 753f, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, false, false), 734f, vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, false), 1000f, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, true, true), -437f, vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, false), -762f, vec4<bool>(true, false, false, true)));

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<bool>(true, false, false), -1000f, vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(false, false, false), -198f, vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, false, false), -1488f, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, true, true), 326f, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, false, false), 1253f, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, false, false), -1000f, vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(true, true, true), 316f, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, true, true), 1788f, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, false, true), -860f, vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, false, false), 131f, vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, false, true), 515f, vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, false, false), -644f, vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, true, true), 689f, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, true, false), 565f, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, false), 241f, vec4<bool>(true, false, true, false)));

var<private> global2: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    return !(!select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec4<bool>(false, false, false, false))), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_2() -> Struct_1 {
    global2 = !any(select(vec2<bool>(false, any(vec3<bool>(false, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), func_3()));
    return global1[_wgslsmith_index_u32(~u_input.a << (select(u_input.a, 1u, all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))))) % 32u), 15u)];
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f * var_0.b) - -243f))), vec4<bool>(var_0.a.x, any(vec2<bool>(false, var_0.c.x)), arg_0.c.x, countOneBits(u_input.a << (1u % 32u)) <= u_input.a));
    global2 = !(~u_input.c > -16990i);
    var var_1 = ~max(countOneBits(vec4<u32>(u_input.a, 10236u, u_input.a, u_input.a) ^ vec4<u32>(69840u, 1u, 4294967295u, 1u)), ~vec4<u32>(62331u, u_input.a, u_input.a, u_input.a) | ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) << (~vec4<u32>(~(1u << (u_input.a % 32u)), ~38043u, max(1u, ~u_input.a), _wgslsmith_mod_u32(14718u, 1u)) % vec4<u32>(32u));
    var var_2 = -1991f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(!any(vec2<bool>(false, false)), true, any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, true, false), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-298f - 1072f)))))), vec4<bool>(true, true, true, true));
    global1 = array<Struct_1, 15>();
    global0 = array<Struct_1, 14>();
    var var_1 = func_1(Struct_1(vec3<bool>(var_0.a.x, true, any(vec4<bool>(false, true, false, true))), 275f, select(select(!var_0.c, var_0.c, var_0.a.x && var_0.a.x), var_0.c, !(var_0.b > 1035f))));
    var var_2 = Struct_1(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

