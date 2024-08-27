struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: array<f32, 17>;

var<private> global1: array<i32, 1>;

var<private> global2: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-28256i, i32(-2147483648), -45150i), vec3<i32>(18994i, -22762i, 0i), vec3<i32>(0i, -20515i, 21751i), vec3<i32>(-15978i, -5196i, -3259i), vec3<i32>(-16635i, 30785i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, 52775i), vec3<i32>(-28541i, -47265i, 0i), vec3<i32>(5884i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 39517i), vec3<i32>(51639i, 189i, 2147483647i), vec3<i32>(-57537i, -17411i, 2147483647i), vec3<i32>(-17077i, 36679i, 22094i), vec3<i32>(16905i, -8763i, 0i), vec3<i32>(-44201i, -1i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 10129i), vec3<i32>(20057i, i32(-2147483648), 11380i), vec3<i32>(4817i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(16825i, -2390i, 0i), vec3<i32>(1i, i32(-2147483648), 1i), vec3<i32>(22149i, 2147483647i, 2147483647i), vec3<i32>(-1i, -28127i, -1i), vec3<i32>(0i, -11402i, 2147483647i), vec3<i32>(43270i, 17203i, 0i), vec3<i32>(i32(-2147483648), 14291i, i32(-2147483648)), vec3<i32>(2147483647i, -2862i, 24584i), vec3<i32>(i32(-2147483648), 1i, 2147483647i));

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<i32>(0i, 142i), false), Struct_1(vec2<i32>(0i, 0i), true), Struct_1(vec2<i32>(12665i, -18378i), false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 1>();
    let var_0 = u_input.c.ywy;
    global0 = array<f32, 17>();
    var var_1 = Struct_1(~((-vec2<i32>(-1i, u_input.d.x) >> (~vec2<u32>(var_0.x, 1u) % vec2<u32>(32u))) & u_input.d.wz), select(!(all(vec3<bool>(false, false, true)) || true), true, true));
    global0 = array<f32, 17>();
    let var_2 = vec2<bool>(true, true);
    var var_3 = global3[_wgslsmith_index_u32(u_input.e, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_3.a), 917u, ~_wgslsmith_sub_u32(~104032u << (~var_0.x % 32u), var_0.x), var_1.a.x, firstTrailingBit(~firstLeadingBit(-var_1.a.x)));
}

