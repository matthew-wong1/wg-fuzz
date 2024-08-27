struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<i32>(-1i, 0i, 0i), Struct_1(vec4<f32>(-1317f, -836f, 941f, 637f), 757f, 0u, -1i), 914f), Struct_2(vec3<i32>(-1i, 4868i, 1i), Struct_1(vec4<f32>(-576f, 775f, 997f, -817f), 1000f, 23915u, -1i), -251f), Struct_2(vec3<i32>(-1i, -6256i, i32(-2147483648)), Struct_1(vec4<f32>(833f, 107f, 1388f, 832f), -2146f, 0u, 1i), 638f), Struct_2(vec3<i32>(42071i, i32(-2147483648), i32(-2147483648)), Struct_1(vec4<f32>(-1514f, 1436f, -1426f, 270f), 1253f, 106376u, 1i), -217f), Struct_2(vec3<i32>(i32(-2147483648), -1i, 1i), Struct_1(vec4<f32>(-1324f, 476f, -286f, 753f), 405f, 0u, 0i), 1000f), Struct_2(vec3<i32>(-1i, 46100i, -56290i), Struct_1(vec4<f32>(1000f, 1188f, 2558f, -381f), 334f, 1u, 2147483647i), -941f), Struct_2(vec3<i32>(i32(-2147483648), 1431i, 5144i), Struct_1(vec4<f32>(1056f, 1029f, -171f, -1000f), 1917f, 1u, 1i), -821f), Struct_2(vec3<i32>(16467i, -71543i, 55358i), Struct_1(vec4<f32>(322f, -370f, 1000f, 2608f), 1000f, 0u, i32(-2147483648)), -155f));

var<private> global1: vec3<bool>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(2007f, 1168f, -404f, -855f), -243f, 39244u, -1i);

var<private> global3: u32;

var<private> global4: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    let var_0 = global2.a.x;
    let var_1 = global2.a.yy;
    var var_2 = vec2<u32>(global2.c, ~(~_wgslsmith_clamp_u32(~global2.c, global2.c << (14685u % 32u), global2.c)));
    var var_3 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x << (~_wgslsmith_div_u32(countOneBits(1u), firstTrailingBit(16679u)) % 32u), -_wgslsmith_mod_vec3_i32(~(~vec3<i32>(-2024i, 2147483647i, global2.d)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-28776i, global2.d, -2147483647i), ~vec3<i32>(u_input.a, global2.d, u_input.a))));
}

