struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_2, 22>;

var<private> global1: array<i32, 28>;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<bool>(true, false, true), vec2<f32>(304f, -141f), false, vec4<i32>(40329i, 1i, -6095i, 0i)), Struct_2(vec3<bool>(true, true, false), vec2<f32>(-814f, -1844f), true, vec4<i32>(-21729i, 38421i, 44060i, -17888i)), Struct_2(vec3<bool>(true, true, true), vec2<f32>(-310f, 1335f), true, vec4<i32>(54443i, i32(-2147483648), i32(-2147483648), -9426i)), Struct_2(vec3<bool>(true, true, true), vec2<f32>(286f, 1000f), true, vec4<i32>(-1i, i32(-2147483648), 35068i, -38441i)), Struct_2(vec3<bool>(true, true, false), vec2<f32>(-319f, -1676f), true, vec4<i32>(-68795i, 2147483647i, -21527i, 1i)), Struct_2(vec3<bool>(false, true, false), vec2<f32>(-1111f, 1126f), false, vec4<i32>(0i, 1i, -15340i, 1i)), Struct_2(vec3<bool>(true, false, true), vec2<f32>(641f, 1280f), false, vec4<i32>(-1290i, 1i, 0i, -7458i)), Struct_2(vec3<bool>(true, true, false), vec2<f32>(-155f, 229f), true, vec4<i32>(i32(-2147483648), 2147483647i, 58721i, -1i)));

var<private> global3: array<f32, 5>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 8>();
    global0 = array<Struct_2, 22>();
    global1 = array<i32, 28>();
    global3 = array<f32, 5>();
    var var_0 = reverseBits(vec2<i32>(34864i, u_input.a));
    let var_1 = true;
    global1 = array<i32, 28>();
    let var_2 = min(abs(0u), _wgslsmith_mod_u32(abs(48633u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 7815u, 1u)), vec3<u32>(_wgslsmith_mod_u32(39763u, 4294967295u), ~17446u, _wgslsmith_mult_u32(53620u, 10085u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-9607i);
}

