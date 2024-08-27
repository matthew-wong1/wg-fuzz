struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<f32> = vec2<f32>(271f, 1681f);

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<Struct_3, 27>;

var<private> global4: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(47491i, vec3<f32>(-239f, 1712f, -1000f), 1u, vec4<i32>(1468i, i32(-2147483648), 2147483647i, 0i)), Struct_1(0i, vec3<f32>(385f, 528f, 816f), 4294967295u, vec4<i32>(55963i, 12250i, 9864i, -21298i)), Struct_1(71924i, vec3<f32>(284f, 514f, -1000f), 0u, vec4<i32>(-1i, -1743i, i32(-2147483648), 2147483647i)), Struct_1(2035i, vec3<f32>(1750f, 2286f, 752f), 0u, vec4<i32>(11619i, -1i, 1i, 1i)), Struct_1(4166i, vec3<f32>(-2103f, 979f, 900f), 4294967295u, vec4<i32>(i32(-2147483648), 48628i, 0i, -11037i)), Struct_1(0i, vec3<f32>(482f, -1118f, 155f), 4294967295u, vec4<i32>(77i, -11912i, -8248i, -7817i)), Struct_1(26464i, vec3<f32>(-206f, 833f, -199f), 50732u, vec4<i32>(1i, 2147483647i, 24689i, 15040i)), Struct_1(-7032i, vec3<f32>(-1104f, 157f, -624f), 51934u, vec4<i32>(25750i, -21722i, i32(-2147483648), 30823i)), Struct_1(11346i, vec3<f32>(-2191f, -205f, -1101f), 4294967295u, vec4<i32>(0i, i32(-2147483648), 9426i, 68639i)), Struct_1(-5221i, vec3<f32>(-2249f, -796f, -1000f), 0u, vec4<i32>(0i, 73983i, 23268i, -13461i)), Struct_1(-6696i, vec3<f32>(-244f, -1260f, 821f), 1u, vec4<i32>(37731i, -19721i, 11043i, -41619i)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 11>();
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(-global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-10124i, _wgslsmith_sub_vec4_i32(abs(-vec4<i32>(2147483647i, var_0, -31559i, 70821i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 1u, 4294967295u, u_input.c), vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u)) % vec4<u32>(32u))), -vec4<i32>(29836i, var_0, select(1i, -21919i, global2.x), _wgslsmith_clamp_i32(var_0, -1i, u_input.a.x))));
}

