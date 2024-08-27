struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8>;

var<private> global1: array<Struct_4, 14>;

var<private> global2: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_1(vec3<bool>(true, true, true), -443f, true), 4294967295u, vec3<bool>(false, false, true), Struct_2(2147483647i), vec4<f32>(184f, 447f, 148f, 851f)), Struct_3(Struct_1(vec3<bool>(true, false, true), 885f, false), 29246u, vec3<bool>(true, false, true), Struct_2(36670i), vec4<f32>(1409f, -255f, 1000f, -1564f)), Struct_3(Struct_1(vec3<bool>(false, false, true), -1733f, false), 4294967295u, vec3<bool>(false, false, false), Struct_2(i32(-2147483648)), vec4<f32>(-293f, -332f, -470f, 404f)), Struct_3(Struct_1(vec3<bool>(true, false, false), 1127f, true), 0u, vec3<bool>(true, false, false), Struct_2(11428i), vec4<f32>(143f, -1396f, -1505f, -715f)), Struct_3(Struct_1(vec3<bool>(true, true, true), -1456f, true), 36131u, vec3<bool>(false, true, false), Struct_2(-9014i), vec4<f32>(1109f, -2038f, -744f, 696f)), Struct_3(Struct_1(vec3<bool>(false, true, true), -1656f, true), 1u, vec3<bool>(true, false, true), Struct_2(2147483647i), vec4<f32>(447f, -736f, -1332f, -162f)), Struct_3(Struct_1(vec3<bool>(true, true, true), -1293f, true), 83091u, vec3<bool>(true, false, false), Struct_2(2147483647i), vec4<f32>(-1000f, 1614f, 698f, -923f)), Struct_3(Struct_1(vec3<bool>(false, false, false), 1658f, false), 1u, vec3<bool>(false, true, false), Struct_2(i32(-2147483648)), vec4<f32>(-168f, 1743f, -115f, 1000f)), Struct_3(Struct_1(vec3<bool>(true, true, false), -1171f, false), 4294967295u, vec3<bool>(false, true, false), Struct_2(2147483647i), vec4<f32>(-795f, -274f, 175f, 180f)), Struct_3(Struct_1(vec3<bool>(false, false, true), 494f, true), 0u, vec3<bool>(true, true, false), Struct_2(1i), vec4<f32>(629f, 1000f, 1389f, 1348f)), Struct_3(Struct_1(vec3<bool>(false, false, false), -350f, false), 1u, vec3<bool>(false, true, false), Struct_2(-16569i), vec4<f32>(-395f, -896f, -466f, -954f)));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_3 {
    return global2[_wgslsmith_index_u32(u_input.b, 11u)];
}

fn func_3(arg_0: Struct_3) -> Struct_3 {
    var var_0 = ~max(7293u, u_input.b);
    var var_1 = ~_wgslsmith_add_u32(arg_0.b, 0u);
    let var_2 = Struct_1(vec3<bool>(all(vec3<bool>(all(vec3<bool>(false, global3.a.x, global3.c)), arg_0.a.c, global3.a.x)), true, false), -803f, true);
    var var_3 = -1000f;
    var var_4 = func_2().a.a.zx;
    return func_2();
}

fn func_1() -> f32 {
    var var_0 = func_3(func_2());
    var_0 = func_3(Struct_3(Struct_1(vec3<bool>(u_input.c.x >= 11216i, true, any(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.b, global3.b)), !(!global3.c)), ~0u, select(vec3<bool>(!var_0.c.x, true, var_0.c.x), !global3.a, global3.a), func_3(func_2()).d, vec4<f32>(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.a.x, 11u)]).e.x - _wgslsmith_f_op_f32(min(var_0.e.x, -1135f))), global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x * global3.b)), var_0.a.b)));
    let var_1 = global3.a;
    global3 = func_3(Struct_3(Struct_1(func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(415f))), 0u == var_0.b), 1u, var_0.a.a, func_3(func_2()).d, var_0.e)).a;
    global0 = array<vec2<i32>, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1122f - _wgslsmith_f_op_f32(805f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 8>();
    global2 = array<Struct_3, 11>();
    global3 = Struct_1(select(!vec3<bool>(true, all(vec2<bool>(global3.a.x, global3.c)), all(vec4<bool>(false, global3.c, global3.a.x, true))), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(func_1()), all(global3.a.xz));
    var var_0 = u_input.c.x;
    global0 = array<vec2<i32>, 8>();
    var_0 = 1002i;
    var var_1 = func_3(func_3(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 43566u), vec4<u32>(u_input.b, 4294967295u, 0u, u_input.a.x)) ^ u_input.b), 11u)])).a;
    global2 = array<Struct_3, 11>();
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, global3.b, 656f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(global3.b * -810f), -442f))), ~reverseBits(u_input.c.x));
}

