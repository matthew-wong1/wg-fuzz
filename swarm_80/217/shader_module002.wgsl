struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<f32>(-1627f, -691f), vec2<f32>(-1442f, -284f), i32(-2147483648), vec3<i32>(58161i, 1i, 15901i)), Struct_1(vec2<f32>(-577f, 328f), vec2<f32>(-1625f, 848f), -6902i, vec3<i32>(-42917i, 0i, 1i)), Struct_1(vec2<f32>(1046f, 1000f), vec2<f32>(1569f, -691f), 3306i, vec3<i32>(1i, 5399i, -2391i)), Struct_1(vec2<f32>(1000f, 722f), vec2<f32>(-559f, -264f), -1i, vec3<i32>(i32(-2147483648), -113047i, 2147483647i)));

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<f32, 20> = array<f32, 20>(930f, -224f, 568f, -2505f, -467f, -766f, -714f, 1009f, -1174f, 100f, -821f, -517f, -1584f, 1833f, 262f, -665f, 1352f, -1618f, -113f, -327f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~reverseBits(u_input.a.x), 4u)];
    let var_1 = global2[_wgslsmith_index_u32(~u_input.a.x, 20u)];
    global2 = array<f32, 20>();
    var var_2 = 300f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(285f, 625f) - vec2<f32>(-1000f, var_0.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(var_0.b)), vec2<f32>(_wgslsmith_div_f32(-388f, -1500f), 774f)))), var_0.d.x, vec3<i32>(-(_wgslsmith_add_i32(var_0.d.x, -15348i) & _wgslsmith_add_i32(13662i, var_0.d.x)), var_0.c, -2147483647i));
    global2 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c & var_3.c);
}

