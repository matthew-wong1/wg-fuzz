struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_3,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(vec4<u32>(25128u, 5976u, 16250u, 26765u), vec4<i32>(-1i, i32(-2147483648), 0i, -19125i), Struct_3(Struct_1(vec3<bool>(true, true, false)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, false, false)), false, Struct_1(vec3<bool>(false, false, true))), 2147483647i, Struct_3(Struct_1(vec3<bool>(false, true, true)), vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, true, false)), true, Struct_1(vec3<bool>(false, true, false)))), Struct_5(vec4<u32>(1u, 3115u, 1u, 1u), vec4<i32>(1i, 11975i, -1i, 0i), Struct_3(Struct_1(vec3<bool>(false, false, true)), vec3<bool>(true, true, true), Struct_1(vec3<bool>(false, false, false)), false, Struct_1(vec3<bool>(false, false, false))), 2147483647i, Struct_3(Struct_1(vec3<bool>(true, false, false)), vec3<bool>(false, true, false), Struct_1(vec3<bool>(false, true, true)), false, Struct_1(vec3<bool>(false, false, true)))), Struct_5(vec4<u32>(78725u, 24353u, 52616u, 0u), vec4<i32>(-10240i, -59916i, 23514i, 62272i), Struct_3(Struct_1(vec3<bool>(false, true, false)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, false, false)), true, Struct_1(vec3<bool>(true, false, false))), 0i, Struct_3(Struct_1(vec3<bool>(false, true, false)), vec3<bool>(false, false, false), Struct_1(vec3<bool>(false, true, false)), true, Struct_1(vec3<bool>(true, false, true)))), Struct_5(vec4<u32>(61458u, 4294967295u, 1u, 65776u), vec4<i32>(2147483647i, -14585i, -20425i, -42048i), Struct_3(Struct_1(vec3<bool>(true, true, false)), vec3<bool>(false, false, false), Struct_1(vec3<bool>(false, false, false)), false, Struct_1(vec3<bool>(true, false, true))), 2147483647i, Struct_3(Struct_1(vec3<bool>(true, false, true)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(false, true, false)), true, Struct_1(vec3<bool>(false, true, false)))), Struct_5(vec4<u32>(11040u, 33689u, 47582u, 114103u), vec4<i32>(-26540i, -16832i, 1i, i32(-2147483648)), Struct_3(Struct_1(vec3<bool>(true, true, false)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, true, true)), true, Struct_1(vec3<bool>(true, false, false))), 33770i, Struct_3(Struct_1(vec3<bool>(false, false, false)), vec3<bool>(true, true, true), Struct_1(vec3<bool>(false, true, true)), true, Struct_1(vec3<bool>(true, true, false)))), Struct_5(vec4<u32>(4294967295u, 75049u, 4294967295u, 1u), vec4<i32>(1i, 1i, -1i, -7312i), Struct_3(Struct_1(vec3<bool>(true, true, true)), vec3<bool>(true, false, true), Struct_1(vec3<bool>(false, true, true)), false, Struct_1(vec3<bool>(false, false, true))), 34577i, Struct_3(Struct_1(vec3<bool>(true, false, false)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(true, true, true)), true, Struct_1(vec3<bool>(false, true, false)))), Struct_5(vec4<u32>(80733u, 4294967295u, 1u, 17922u), vec4<i32>(2147483647i, 1375i, -1i, 1i), Struct_3(Struct_1(vec3<bool>(true, true, false)), vec3<bool>(false, false, false), Struct_1(vec3<bool>(false, true, false)), true, Struct_1(vec3<bool>(false, true, true))), 9139i, Struct_3(Struct_1(vec3<bool>(true, false, true)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(true, false, true)), true, Struct_1(vec3<bool>(true, true, false)))), Struct_5(vec4<u32>(78399u, 0u, 27618u, 3558u), vec4<i32>(6773i, -1i, -32914i, 2830i), Struct_3(Struct_1(vec3<bool>(true, false, false)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, false, true)), true, Struct_1(vec3<bool>(true, false, false))), 61240i, Struct_3(Struct_1(vec3<bool>(true, false, true)), vec3<bool>(false, false, false), Struct_1(vec3<bool>(true, true, false)), true, Struct_1(vec3<bool>(true, false, false)))), Struct_5(vec4<u32>(4294967295u, 3652u, 4294967295u, 1u), vec4<i32>(-42022i, -6581i, 4274i, 2147483647i), Struct_3(Struct_1(vec3<bool>(true, true, false)), vec3<bool>(false, false, false), Struct_1(vec3<bool>(true, false, false)), true, Struct_1(vec3<bool>(false, true, false))), 2147483647i, Struct_3(Struct_1(vec3<bool>(false, true, true)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(true, true, false)), false, Struct_1(vec3<bool>(false, false, true)))), Struct_5(vec4<u32>(4294967295u, 4294967295u, 0u, 88655u), vec4<i32>(38125i, 1i, -1i, 0i), Struct_3(Struct_1(vec3<bool>(true, false, true)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(false, false, false)), false, Struct_1(vec3<bool>(true, false, true))), 1i, Struct_3(Struct_1(vec3<bool>(false, true, true)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, false, false)), true, Struct_1(vec3<bool>(false, false, false)))), Struct_5(vec4<u32>(8474u, 30213u, 8563u, 1u), vec4<i32>(2147483647i, -1i, -29088i, -58977i), Struct_3(Struct_1(vec3<bool>(false, true, true)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, true, false)), true, Struct_1(vec3<bool>(true, false, false))), -117970i, Struct_3(Struct_1(vec3<bool>(true, false, true)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(true, false, false)), true, Struct_1(vec3<bool>(false, false, false)))), Struct_5(vec4<u32>(1u, 1u, 1u, 1u), vec4<i32>(14945i, i32(-2147483648), 1i, 462i), Struct_3(Struct_1(vec3<bool>(false, true, true)), vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, true, true)), true, Struct_1(vec3<bool>(false, true, true))), 25140i, Struct_3(Struct_1(vec3<bool>(true, false, true)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, false, true)), false, Struct_1(vec3<bool>(false, false, false)))), Struct_5(vec4<u32>(9272u, 38919u, 6217u, 1u), vec4<i32>(0i, -1i, 30359i, i32(-2147483648)), Struct_3(Struct_1(vec3<bool>(true, false, false)), vec3<bool>(true, true, false), Struct_1(vec3<bool>(false, false, false)), true, Struct_1(vec3<bool>(false, true, true))), 1i, Struct_3(Struct_1(vec3<bool>(false, true, true)), vec3<bool>(false, true, false), Struct_1(vec3<bool>(false, true, true)), false, Struct_1(vec3<bool>(true, true, false)))), Struct_5(vec4<u32>(20320u, 14612u, 7514u, 6873u), vec4<i32>(-26162i, 0i, 16171i, 3893i), Struct_3(Struct_1(vec3<bool>(true, true, false)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, false, false)), true, Struct_1(vec3<bool>(false, true, false))), 1i, Struct_3(Struct_1(vec3<bool>(false, false, false)), vec3<bool>(true, true, false), Struct_1(vec3<bool>(true, true, true)), false, Struct_1(vec3<bool>(true, true, false)))), Struct_5(vec4<u32>(84684u, 50933u, 0u, 1u), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 0i), Struct_3(Struct_1(vec3<bool>(false, false, false)), vec3<bool>(false, true, false), Struct_1(vec3<bool>(true, true, false)), false, Struct_1(vec3<bool>(false, true, true))), 39496i, Struct_3(Struct_1(vec3<bool>(true, false, false)), vec3<bool>(false, true, false), Struct_1(vec3<bool>(true, true, false)), true, Struct_1(vec3<bool>(false, false, true)))), Struct_5(vec4<u32>(2189u, 1u, 32556u, 22075u), vec4<i32>(73457i, 33422i, -1i, -230i), Struct_3(Struct_1(vec3<bool>(false, false, false)), vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, false, true)), true, Struct_1(vec3<bool>(true, true, false))), 2147483647i, Struct_3(Struct_1(vec3<bool>(false, true, true)), vec3<bool>(true, false, true), Struct_1(vec3<bool>(false, false, true)), true, Struct_1(vec3<bool>(false, true, true)))), Struct_5(vec4<u32>(16003u, 4294967295u, 1u, 0u), vec4<i32>(-29152i, 1i, -28429i, 47776i), Struct_3(Struct_1(vec3<bool>(false, false, false)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(true, true, false)), false, Struct_1(vec3<bool>(true, true, true))), -20850i, Struct_3(Struct_1(vec3<bool>(true, false, true)), vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, true, false)), true, Struct_1(vec3<bool>(true, true, true)))), Struct_5(vec4<u32>(0u, 2158u, 4294967295u, 51827u), vec4<i32>(15387i, 0i, -60816i, i32(-2147483648)), Struct_3(Struct_1(vec3<bool>(false, true, false)), vec3<bool>(true, false, true), Struct_1(vec3<bool>(false, false, false)), true, Struct_1(vec3<bool>(false, true, true))), 285i, Struct_3(Struct_1(vec3<bool>(false, false, true)), vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, false, true)), true, Struct_1(vec3<bool>(false, false, false)))));

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 18>();
    global0 = array<Struct_5, 18>();
    global0 = array<Struct_5, 18>();
    global0 = array<Struct_5, 18>();
    global0 = array<Struct_5, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(39718u, vec2<f32>(1000f, -342f));
}

