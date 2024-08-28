struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(317f, 385f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(114f, -348f, -307f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-197f, 276f, -796f) - vec3<f32>(1521f, 283f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(299f, -752f, -2050f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-745f, 519f, -1701f)))))));
    var var_1 = _wgslsmith_sub_u32(11842u, u_input.a.x);
    let var_2 = vec3<bool>(true, any(vec2<bool>(true, u_input.b.x < -82685i)) | select(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), false, any(vec2<bool>(false, true))), !(true | (0u <= u_input.d.x)));
    let var_3 = Struct_2(var_0.a);
    var var_4 = var_2.x;
    var_4 = true;
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1356f, -1377f, -429f) + var_3.a))))));
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1194f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-714f, var_3.a.x), ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.d.x) & firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 65892u, u_input.d.x)))), u_input.a, _wgslsmith_mult_vec3_i32(-(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -1i, 40687i), vec3<i32>(1359i, -2147483647i, u_input.b.x)) ^ -vec3<i32>(5290i, -7230i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.c, ~u_input.c, u_input.c << (1u % 32u)), vec3<i32>(_wgslsmith_mod_i32(u_input.c, -2147483647i), _wgslsmith_add_i32(23749i, u_input.b.x), u_input.c & 1i), vec3<i32>(~u_input.c, _wgslsmith_mult_i32(u_input.c, u_input.c), abs(u_input.c)))), u_input.d);
}

