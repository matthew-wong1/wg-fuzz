struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(193f, Struct_1(1u, 87023u, -844f), vec2<u32>(6982u, 1u), vec3<f32>(531f, -448f, 114f));

var<private> global1: Struct_2 = Struct_2(1845f, Struct_1(9696u, 113702u, -1618f), vec2<u32>(0u, 4294967295u), vec3<f32>(477f, 1241f, 1049f));

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(1u, 4294967295u, 720f), Struct_1(7305u, 4294967295u, -625f), Struct_1(4294967295u, 26549u, 1269f), Struct_1(0u, 13706u, 382f), Struct_1(5154u, 0u, -309f), Struct_1(0u, 4375u, 497f), Struct_1(42141u, 0u, 1000f), Struct_1(1u, 104746u, -507f), Struct_1(68880u, 4294967295u, 1000f), Struct_1(13463u, 79176u, -1000f), Struct_1(4662u, 1u, -213f), Struct_1(32827u, 4294967295u, -222f), Struct_1(61759u, 13596u, 656f), Struct_1(20720u, 5072u, 2356f), Struct_1(22800u, 0u, -176f), Struct_1(37020u, 1u, 2026f), Struct_1(4294967295u, 107072u, 785f), Struct_1(38574u, 4294967295u, 550f), Struct_1(20868u, 19317u, 429f), Struct_1(0u, 4294967295u, -830f), Struct_1(4294967295u, 67080u, 1000f), Struct_1(4294967295u, 4294967295u, 742f), Struct_1(1u, 0u, 835f), Struct_1(14674u, 22799u, 800f), Struct_1(21948u, 66841u, -1959f), Struct_1(36479u, 50633u, 1238f), Struct_1(10785u, 18488u, -1097f), Struct_1(3242u, 6671u, -1576f), Struct_1(20375u, 84825u, -1083f), Struct_1(1u, 1u, -2136f));

var<private> global3: f32 = 2861f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = select(!vec3<bool>(false, true != var_0.x, var_0.x), !(!(!vec3<bool>(var_0.x, true, var_0.x))), false);
    let var_2 = global1.b.c;
    var var_3 = 0u;
    let var_4 = global0.d;
    let var_5 = Struct_2(global0.a, Struct_1(_wgslsmith_sub_u32(min(global0.c.x, countOneBits(0u)), 4294967295u), ~global1.c.x, _wgslsmith_f_op_f32(trunc(-463f))), ~_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(global1.c, vec2<u32>(global1.b.a, global1.c.x)), vec2<u32>(~global0.c.x, u_input.c)), global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, firstLeadingBit(abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))) << (reverseBits(select(~vec4<u32>(global1.c.x, 1u, 24596u, 52684u), vec4<u32>(0u, 1u, 13014u, 25910u), vec4<bool>(var_1.x, true, var_1.x, true))) % vec4<u32>(32u)), 1u, ~u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, -37755i, u_input.b, u_input.b), select(vec4<i32>(-12814i, 0i, u_input.b, -33705i), vec4<i32>(13540i, u_input.b, u_input.b, -2147483647i), vec4<bool>(true, var_1.x, true, false))), vec4<i32>(_wgslsmith_clamp_i32(-59598i, u_input.b, 1i), u_input.b, 18712i, u_input.b)) | -2147483647i);
}

