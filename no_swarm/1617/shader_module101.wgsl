struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-238f, 505f), vec2<f32>(1242f, -604f), vec2<f32>(825f, -293f), vec2<f32>(-1730f, 1000f), vec2<f32>(830f, -388f), vec2<f32>(202f, 1209f), vec2<f32>(-133f, -1755f), vec2<f32>(556f, -575f), vec2<f32>(692f, 2046f), vec2<f32>(584f, 702f), vec2<f32>(1191f, -275f), vec2<f32>(-469f, 318f), vec2<f32>(-557f, -1579f), vec2<f32>(164f, -558f));

var<private> global2: array<vec4<u32>, 24>;

var<private> global3: vec2<i32>;

var<private> global4: vec3<f32> = vec3<f32>(487f, -228f, 587f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 99729u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global4.x), -vec3<i32>(1i, _wgslsmith_sub_i32(global3.x, _wgslsmith_add_i32(-6797i, global3.x)), _wgslsmith_add_i32(u_input.c, _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(u_input.b, 18299i)))), vec3<i32>(abs(~u_input.a.x), -31758i ^ _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, global3.x), _wgslsmith_sub_i32(u_input.b, u_input.c), global3.x >> (var_0 % 32u)), _wgslsmith_clamp_i32(select(_wgslsmith_mult_i32(-1i, -8153i), -u_input.b, any(vec3<bool>(true, true, false))), global3.x, abs(global3.x))));
}

