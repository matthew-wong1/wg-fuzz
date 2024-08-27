struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(0u, 26258u), true, vec4<f32>(882f, 901f, 1000f, 767f), -1524f, vec2<bool>(false, false));

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<vec4<bool>, 10>;

var<private> global3: bool;

var<private> global4: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(26527i, -27580i, 2147483647i, 2147483647i), vec4<i32>(8354i, -1i, 20061i, 8699i), vec4<i32>(i32(-2147483648), 24802i, -1i, 2147483647i), vec4<i32>(-1i, 0i, 11189i, 1i), vec4<i32>(2147483647i, -16127i, -42775i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -1745i, 16907i), vec4<i32>(-4003i, 17507i, 56845i, -1i), vec4<i32>(2147483647i, 0i, 30460i, 28284i), vec4<i32>(-1i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -42135i), vec4<i32>(i32(-2147483648), 2147483647i, 24119i, 26594i), vec4<i32>(2147483647i, -12039i, 0i, i32(-2147483648)), vec4<i32>(-34550i, 26639i, 2147483647i, 1i), vec4<i32>(19861i, 19096i, 4069i, -14635i), vec4<i32>(31974i, 1i, -34900i, -9312i), vec4<i32>(-41929i, 61429i, 1i, -1i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, -1i, 1i, -3857i), vec4<i32>(-1i, 36247i, 0i, 1i), vec4<i32>(0i, 17019i, -8201i, 8900i), vec4<i32>(i32(-2147483648), -52448i, 1i, i32(-2147483648)), vec4<i32>(44710i, 22525i, 1i, -36264i), vec4<i32>(i32(-2147483648), -33932i, 12080i, 1i), vec4<i32>(20551i, 2522i, i32(-2147483648), 11776i), vec4<i32>(2147483647i, -852i, 10598i, i32(-2147483648)), vec4<i32>(-8640i, i32(-2147483648), -18113i, 52747i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 100f, _wgslsmith_f_op_f32(trunc(global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.d))))));
    let var_1 = -1524f;
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_sub_i32(_wgslsmith_sub_i32(42557i, 53460i), 42426i) >> (global0.a.x % 32u)), 1u);
}

