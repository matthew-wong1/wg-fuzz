struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(400f, 1312f, -1000f), vec3<f32>(1000f, 1717f, -128f), vec3<f32>(-1000f, -1187f, -578f), vec3<f32>(-784f, -755f, -462f), vec3<f32>(-1343f, -813f, -980f), vec3<f32>(-184f, -371f, -1000f), vec3<f32>(289f, 388f, -350f), vec3<f32>(1054f, 1299f, 4052f));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: u32;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(false, 109888u, vec2<i32>(i32(-2147483648), 0i), vec2<u32>(13161u, 0u), Struct_1(vec4<bool>(false, true, false, false), 38003u, -993f)), Struct_2(false, 0u, vec2<i32>(2147483647i, 77742i), vec2<u32>(1u, 10935u), Struct_1(vec4<bool>(false, true, true, false), 4294967295u, -920f)), Struct_2(true, 1u, vec2<i32>(1i, -23863i), vec2<u32>(0u, 53125u), Struct_1(vec4<bool>(false, false, false, true), 15141u, 1424f)), Struct_2(true, 1u, vec2<i32>(i32(-2147483648), -25690i), vec2<u32>(10022u, 118370u), Struct_1(vec4<bool>(true, false, true, true), 0u, -1232f)), Struct_2(true, 1u, vec2<i32>(7205i, i32(-2147483648)), vec2<u32>(4294967295u, 14562u), Struct_1(vec4<bool>(false, true, false, true), 15930u, 580f)), Struct_2(true, 0u, vec2<i32>(-62008i, 32942i), vec2<u32>(4294967295u, 54109u), Struct_1(vec4<bool>(false, false, false, false), 7149u, 2230f)), Struct_2(false, 0u, vec2<i32>(0i, 29870i), vec2<u32>(4294967295u, 1u), Struct_1(vec4<bool>(true, false, true, true), 10882u, 303f)), Struct_2(false, 0u, vec2<i32>(-6726i, i32(-2147483648)), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<bool>(false, true, false, true), 4294967295u, -762f)), Struct_2(false, 0u, vec2<i32>(22740i, -70415i), vec2<u32>(34596u, 4294967295u), Struct_1(vec4<bool>(true, false, false, false), 4294967295u, 1114f)), Struct_2(true, 0u, vec2<i32>(2147483647i, 1i), vec2<u32>(39235u, 4294967295u), Struct_1(vec4<bool>(false, false, true, true), 1u, 543f)), Struct_2(false, 0u, vec2<i32>(-1i, 24567i), vec2<u32>(4294967295u, 1u), Struct_1(vec4<bool>(false, false, false, true), 0u, 684f)), Struct_2(false, 7940u, vec2<i32>(-1i, 0i), vec2<u32>(59529u, 4294967295u), Struct_1(vec4<bool>(true, true, false, true), 1u, -1112f)), Struct_2(true, 11559u, vec2<i32>(1i, 2147483647i), vec2<u32>(49973u, 0u), Struct_1(vec4<bool>(true, true, false, false), 1u, 215f)), Struct_2(false, 0u, vec2<i32>(-6856i, -4358i), vec2<u32>(4294967295u, 0u), Struct_1(vec4<bool>(false, true, true, false), 10072u, -594f)), Struct_2(true, 0u, vec2<i32>(i32(-2147483648), -18104i), vec2<u32>(10186u, 73268u), Struct_1(vec4<bool>(true, true, false, false), 29228u, 439f)), Struct_2(true, 1u, vec2<i32>(-1i, 1i), vec2<u32>(12058u, 54618u), Struct_1(vec4<bool>(true, false, true, true), 1u, -1367f)), Struct_2(false, 0u, vec2<i32>(0i, 2147483647i), vec2<u32>(4294967295u, 19709u), Struct_1(vec4<bool>(true, false, true, true), 4294967295u, 1667f)), Struct_2(false, 69920u, vec2<i32>(1i, i32(-2147483648)), vec2<u32>(0u, 4294967295u), Struct_1(vec4<bool>(false, false, false, true), 4294967295u, -1511f)));

var<private> global4: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -reverseBits(-(firstTrailingBit(vec4<i32>(0i, -10003i, u_input.a.x, 32123i)) << (u_input.c % vec4<u32>(32u))));
    var var_1 = Struct_2(global1.x, u_input.d & ~(~(~global4.b.x)), var_0.yz ^ select(_wgslsmith_add_vec2_i32(~vec2<i32>(38772i, 31213i), vec2<i32>(1i, var_0.x)), vec2<i32>(1032i, ~0i), vec2<bool>(global1.x, !global1.x)), vec2<u32>(~(~reverseBits(u_input.e)), global4.a), Struct_1(vec4<bool>(false, global1.x, select(true, !global1.x, true), false), 25177u, 1022f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.e, _wgslsmith_f_op_f32(-491f * _wgslsmith_f_op_f32(var_1.e.c - _wgslsmith_f_op_f32(-1561f - _wgslsmith_f_op_f32(select(-1540f, -723f, global1.x))))), ~(~_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(var_1.d.x, u_input.b, u_input.c.x))));
}

