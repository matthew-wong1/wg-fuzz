struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, vec3<i32>(70631i, -45871i, 4074i), vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), -22368i)), Struct_1(true, vec3<i32>(6292i, 2147483647i, 0i), vec4<bool>(true, false, true, false), vec2<i32>(8104i, -41912i)), Struct_1(true, vec3<i32>(-27944i, -37166i, -14934i), vec4<bool>(true, true, false, true), vec2<i32>(1i, -1i)), Struct_1(false, vec3<i32>(2147483647i, -27771i, 17532i), vec4<bool>(true, false, false, true), vec2<i32>(0i, 26866i)), Struct_1(false, vec3<i32>(0i, 2147483647i, -1i), vec4<bool>(true, false, true, true), vec2<i32>(0i, 43794i)), Struct_1(false, vec3<i32>(36951i, 1i, 0i), vec4<bool>(false, true, false, true), vec2<i32>(-15851i, -1i)), Struct_1(true, vec3<i32>(-1i, -27666i, -25344i), vec4<bool>(false, true, true, true), vec2<i32>(10813i, 2147483647i)), Struct_1(true, vec3<i32>(-9122i, i32(-2147483648), i32(-2147483648)), vec4<bool>(false, false, false, false), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(false, vec3<i32>(47076i, 2147483647i, -1i), vec4<bool>(false, true, true, false), vec2<i32>(-29171i, 2147483647i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = ~abs(abs(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, 1u, u_input.d)), abs(vec3<u32>(u_input.d, u_input.d, u_input.d)))));
    let var_2 = vec4<i32>(u_input.b, max(_wgslsmith_mod_i32(1i, abs(29283i)), -_wgslsmith_sub_i32(-u_input.c.x, ~u_input.c.x)), -u_input.b, _wgslsmith_div_i32(-9124i, u_input.b) & ~(-6664i));
    var_0 = ~firstLeadingBit(23916u);
    global2 = array<Struct_1, 9>();
    let var_3 = false;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(839f * _wgslsmith_f_op_f32(f32(-1f) * -1305f)), 1939f, -514f);
    global1 = array<Struct_1, 10>();
    global2 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.ywy);
}

