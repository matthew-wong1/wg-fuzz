struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<i32>(-69835i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), -39982i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(1i, 46860i)), Struct_1(vec2<i32>(16562i, -49051i)), Struct_1(vec2<i32>(-23724i, -11073i)), Struct_1(vec2<i32>(42352i, -29164i)), Struct_1(vec2<i32>(43334i, 35695i)), Struct_1(vec2<i32>(i32(-2147483648), -14404i)), Struct_1(vec2<i32>(-26164i, -4077i)), Struct_1(vec2<i32>(2147483647i, -10i)), Struct_1(vec2<i32>(2147483647i, -1i)), Struct_1(vec2<i32>(-1i, -19761i)), Struct_1(vec2<i32>(-6741i, -16053i)), Struct_1(vec2<i32>(2147483647i, -9961i)), Struct_1(vec2<i32>(-8676i, 2147483647i)), Struct_1(vec2<i32>(-96470i, -12797i)), Struct_1(vec2<i32>(-1i, 28712i)), Struct_1(vec2<i32>(16721i, 51873i)), Struct_1(vec2<i32>(2147483647i, -43042i)), Struct_1(vec2<i32>(-49339i, -8660i)), Struct_1(vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<i32>(-63261i, 21998i)), Struct_1(vec2<i32>(665i, -74872i)));

var<private> global1: array<vec3<bool>, 11>;

var<private> global2: array<i32, 5>;

var<private> global3: f32 = 1131f;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 54791i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(26922u, 25u)];
    global4 = Struct_1(select(_wgslsmith_add_vec2_i32(global4.a & global4.a, -vec2<i32>(global4.a.x, global2[_wgslsmith_index_u32(15364u, 5u)])), vec2<i32>(var_0.a.x, -1i), vec2<bool>(true, true)) ^ ~_wgslsmith_mod_vec2_i32(max(vec2<i32>(global4.a.x, global4.a.x), var_0.a), ~global4.a));
    global1 = array<vec3<bool>, 11>();
    global1 = array<vec3<bool>, 11>();
    global2 = array<i32, 5>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 25u)];
    let var_2 = !global1[_wgslsmith_index_u32(u_input.b, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(63969u, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a.x, ~1u, ~53623u)), u_input.a.wzw));
}

