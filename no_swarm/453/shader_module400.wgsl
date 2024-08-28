struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false)), vec4<f32>(1206f, 1000f, -1000f, -564f), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, false)), vec4<f32>(1206f, 342f, 508f, -1000f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, true)), vec4<f32>(-198f, -175f, 626f, 459f), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true)), vec4<f32>(-429f, -1011f, -159f, -1201f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true)), vec4<f32>(-264f, 1896f, -929f, 237f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, true)), vec4<f32>(783f, 638f, 1000f, -1000f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true)), vec4<f32>(-583f, 721f, 293f, 1513f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true)), vec4<f32>(-106f, -217f, 110f, 1000f), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false)), vec4<f32>(177f, 1491f, -393f, -1685f), vec3<bool>(true, false, true)));

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec4<u32>, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((max(-vec2<i32>(-2147483647i, 60073i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -21228i), vec2<i32>(-2147483647i, 1i))) >> (vec2<u32>(~1u, u_input.a ^ 30486u) % vec2<u32>(32u))) << (vec2<u32>(~(u_input.a ^ u_input.a), u_input.a) % vec2<u32>(32u))) >> (~abs(~select(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(true, true))) % vec2<u32>(32u));
    global2 = array<vec4<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.x, -2147483647i, _wgslsmith_div_i32(44323i, _wgslsmith_add_i32(~var_0.x, abs(2147483647i))), -1i), firstLeadingBit(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(39766u, u_input.a, 19812u, u_input.a) << (global2[_wgslsmith_index_u32(17621u, 18u)] % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)]), global2[_wgslsmith_index_u32(0u | u_input.a, 18u)]))), _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, 53791u, 0u) | firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 18u)]), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(19428u, 4294967295u), 18u)]), global2[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.a)), 18u)]));
}

