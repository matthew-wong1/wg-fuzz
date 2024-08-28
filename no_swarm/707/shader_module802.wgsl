struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<i32>(1i, -19343i, 13767i), vec2<u32>(1u, 15954u)), Struct_1(vec3<i32>(2147483647i, 68290i, 17377i), vec2<u32>(85496u, 4294967295u)), Struct_1(vec3<i32>(-1i, 9168i, 15257i), vec2<u32>(34764u, 1u)), Struct_1(vec3<i32>(0i, 5303i, 0i), vec2<u32>(1u, 1u)), Struct_1(vec3<i32>(2147483647i, -22134i, 1i), vec2<u32>(60686u, 43306u)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 8846i), vec2<u32>(4294967295u, 67546u)), Struct_1(vec3<i32>(1i, 8848i, 4004i), vec2<u32>(90988u, 0u)), Struct_1(vec3<i32>(-5301i, -2646i, -1i), vec2<u32>(27635u, 43487u)), Struct_1(vec3<i32>(2147483647i, 29349i, 19083i), vec2<u32>(1u, 0u)), Struct_1(vec3<i32>(45777i, 0i, 30058i), vec2<u32>(11128u, 55839u)), Struct_1(vec3<i32>(0i, 1090i, 1i), vec2<u32>(24905u, 4294967295u)), Struct_1(vec3<i32>(2147483647i, -1i, 1i), vec2<u32>(48093u, 21856u)), Struct_1(vec3<i32>(-16689i, 1i, 2147483647i), vec2<u32>(0u, 37763u)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), vec2<u32>(68093u, 1u)), Struct_1(vec3<i32>(15138i, 8357i, 17664i), vec2<u32>(1u, 0u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<i32>(24588i, ~u_input.c, 2147483647i, 18385i));
    global0 = array<Struct_1, 15>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(533f, 1138f, 577f) + vec3<f32>(-415f, -1838f, -551f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2586f, -1000f, 102f) + vec3<f32>(-384f, -940f, 1038f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-934f, -485f, 2178f)))))));
    var var_2 = vec2<bool>(true, true);
    let var_3 = Struct_1(u_input.b, vec2<u32>(1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xxw);
}

