struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
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

var<private> global0: bool;

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec2<i32>(-1i, 0i), true), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec2<i32>(0i, 2147483647i), false), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec2<i32>(10456i, -1532i), false), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec2<i32>(-22798i, 5919i), false), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec2<i32>(2147483647i, -1i), false), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec2<i32>(0i, -26283i), true), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec2<i32>(-6839i, i32(-2147483648)), true), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec2<i32>(2147483647i, -68270i), true), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec2<i32>(0i, 10121i), false), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec2<i32>(1i, -1i), false), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec2<i32>(i32(-2147483648), -1i), false), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, -29041i), false), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec2<i32>(1i, 57372i), true), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec2<i32>(1i, -977i), false), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec2<i32>(i32(-2147483648), -1i), true), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec2<i32>(i32(-2147483648), 64402i), false), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec2<i32>(0i, -42717i), false), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec2<i32>(-23662i, 22338i), false), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec2<i32>(i32(-2147483648), -19454i), true), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec2<i32>(1i, -1i), true), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec2<i32>(-4945i, 10859i), true), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec2<i32>(i32(-2147483648), 7825i), false), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec2<i32>(-33656i, -23970i), true), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec2<i32>(25470i, i32(-2147483648)), true), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec2<i32>(43388i, 0i), true), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec2<i32>(0i, 2147483647i), false), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec2<i32>(2147483647i, -46759i), false), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec2<i32>(30901i, 29199i), true), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec2<i32>(1923i, -42522i), true), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec2<i32>(1i, 0i), true), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec2<i32>(-48344i, -17350i), false));

var<private> global3: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(26881u, 49995u, 4294967295u, 0u), vec4<u32>(1u, 1u, 95206u, 4294967295u), vec4<u32>(4294967295u, 81060u, 0u, 1u), vec4<u32>(4294967295u, 104695u, 1u, 4294967295u), vec4<u32>(0u, 3189u, 10066u, 0u), vec4<u32>(1u, 0u, 0u, 1389u), vec4<u32>(1u, 60538u, 4294967295u, 1u), vec4<u32>(1u, 1u, 12239u, 1u), vec4<u32>(7184u, 1u, 4294967295u, 1u), vec4<u32>(1u, 81815u, 0u, 52141u), vec4<u32>(5436u, 4294967295u, 30478u, 15380u));

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(~(~select(vec3<u32>(u_input.a, 22148u, 0u), vec3<u32>(4039u, u_input.a, 35280u), vec3<bool>(true, false, false))), ~(vec3<u32>(u_input.a, 1u, 48028u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-6412i);
}

