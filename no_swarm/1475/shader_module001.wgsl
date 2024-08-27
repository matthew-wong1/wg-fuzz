struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
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

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(vec3<bool>(false, false, true), vec2<bool>(false, true), Struct_2(vec4<f32>(-816f, -219f, -432f, -196f), vec3<u32>(4294967295u, 41806u, 7399u), -32433i, vec3<i32>(i32(-2147483648), i32(-2147483648), 1i))), Struct_4(vec3<bool>(true, true, true), vec2<bool>(false, true), Struct_2(vec4<f32>(397f, 559f, 127f, -662f), vec3<u32>(0u, 4294967295u, 4294967295u), 2147483647i, vec3<i32>(2147483647i, -40974i, 40395i))), Struct_4(vec3<bool>(true, true, false), vec2<bool>(true, false), Struct_2(vec4<f32>(1136f, -2481f, -1534f, -597f), vec3<u32>(1u, 4287u, 0u), i32(-2147483648), vec3<i32>(-1i, 0i, -74663i))), Struct_4(vec3<bool>(true, false, true), vec2<bool>(false, true), Struct_2(vec4<f32>(-2346f, 292f, -1477f, -489f), vec3<u32>(36052u, 1u, 0u), -36670i, vec3<i32>(13515i, 10157i, 0i))), Struct_4(vec3<bool>(false, false, false), vec2<bool>(false, true), Struct_2(vec4<f32>(-794f, 907f, 1741f, 131f), vec3<u32>(0u, 17489u, 5355u), -1i, vec3<i32>(1i, 2147483647i, -25011i))), Struct_4(vec3<bool>(true, true, true), vec2<bool>(true, true), Struct_2(vec4<f32>(2319f, -156f, -409f, 724f), vec3<u32>(4294967295u, 4294967295u, 4294967295u), -71634i, vec3<i32>(-1i, 1i, 10927i))), Struct_4(vec3<bool>(false, false, true), vec2<bool>(false, false), Struct_2(vec4<f32>(630f, 3032f, 120f, 1150f), vec3<u32>(4294967295u, 4351u, 6106u), 1i, vec3<i32>(0i, -24432i, -31125i))), Struct_4(vec3<bool>(false, false, false), vec2<bool>(true, true), Struct_2(vec4<f32>(-1477f, 113f, 1564f, -959f), vec3<u32>(62924u, 1u, 88453u), -41446i, vec3<i32>(1i, 0i, -4103i))), Struct_4(vec3<bool>(true, false, false), vec2<bool>(true, true), Struct_2(vec4<f32>(-466f, -419f, -1336f, -161f), vec3<u32>(10924u, 25202u, 46865u), 10954i, vec3<i32>(i32(-2147483648), -1647i, 7292i))), Struct_4(vec3<bool>(true, false, false), vec2<bool>(false, true), Struct_2(vec4<f32>(477f, 892f, 192f, 1000f), vec3<u32>(44580u, 7857u, 23594u), 2147483647i, vec3<i32>(66341i, 8644i, -64860i))), Struct_4(vec3<bool>(false, false, false), vec2<bool>(true, true), Struct_2(vec4<f32>(-1962f, 1030f, -1000f, 850f), vec3<u32>(4294967295u, 4294967295u, 0u), 7392i, vec3<i32>(0i, 20917i, 0i))), Struct_4(vec3<bool>(false, false, false), vec2<bool>(false, true), Struct_2(vec4<f32>(822f, 354f, -663f, 140f), vec3<u32>(1u, 4294967295u, 7184u), 17467i, vec3<i32>(0i, -60480i, 1i))));

var<private> global1: array<bool, 32> = array<bool, 32>(true, false, false, false, false, false, false, false, true, true, false, true, true, true, false, false, false, true, true, true, false, true, true, false, true, false, true, true, false, true, true, true);

var<private> global2: f32 = -1788f;

var<private> global3: array<Struct_4, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -218f);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f + 632f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(550f - -611f) - 671f))));
    let var_1 = -1i;
    global3 = array<Struct_4, 14>();
    global0 = array<Struct_4, 12>();
    var var_2 = vec4<i32>(var_1, -(_wgslsmith_mult_i32(u_input.a.x, 2147483647i) << (1u % 32u)), _wgslsmith_div_i32(0i, 1i), 2147483647i) | ~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xz, select(u_input.a.yy, u_input.a.xy, false)), -5666i, u_input.a.x, abs(i32(-1i) * -31332i));
    let var_3 = Struct_1(var_2.yw);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(reverseBits(u_input.c) ^ 0u, 38043u));
}

