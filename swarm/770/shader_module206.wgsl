struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1692f, 149f, 1414f);

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 22> = array<bool, 22>(false, true, true, false, true, false, true, true, false, true, true, true, true, true, false, false, true, false, false, false, false, true);

var<private> global3: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(5923i, 2147483647i, 1750i, -11419i), vec4<i32>(2147483647i, 0i, 2147483647i, -1i), vec4<i32>(1i, 1i, i32(-2147483648), 14518i), vec4<i32>(-3384i, 42282i, -1i, 1i), vec4<i32>(-1i, -857i, -30998i, 1565i), vec4<i32>(14577i, 35304i, 1i, 815i), vec4<i32>(1i, 3642i, 10705i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 91282i), vec4<i32>(2147483647i, -19318i, -22155i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 23972i, 50635i, 0i), vec4<i32>(1i, -17803i, -47059i, -1i), vec4<i32>(33522i, 1i, 47443i, 1322i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -162f) + 2063f)), 1531f));
}

