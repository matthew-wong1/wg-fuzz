struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_2(true, 860f, Struct_1(vec2<bool>(false, true), -1000f, 4294967295u, vec4<u32>(0u, 1u, 23703u, 22618u))), Struct_3(false), vec2<i32>(84303i, 0i), -755f, -1336f), Struct_4(Struct_2(true, -1000f, Struct_1(vec2<bool>(true, true), -1271f, 381u, vec4<u32>(17826u, 1u, 3551u, 4294967295u))), Struct_3(true), vec2<i32>(-14423i, 7306i), -752f, 111f), Struct_4(Struct_2(false, 903f, Struct_1(vec2<bool>(true, false), 1488f, 0u, vec4<u32>(4294967295u, 4294967295u, 48816u, 1u))), Struct_3(false), vec2<i32>(1i, -21745i), -435f, -1145f), Struct_4(Struct_2(true, -112f, Struct_1(vec2<bool>(false, false), 551f, 0u, vec4<u32>(28826u, 0u, 76231u, 102657u))), Struct_3(true), vec2<i32>(14476i, 0i), -377f, -1212f), Struct_4(Struct_2(true, -1372f, Struct_1(vec2<bool>(false, true), -1017f, 1u, vec4<u32>(1u, 1u, 4294967295u, 0u))), Struct_3(true), vec2<i32>(-65363i, -33588i), 1662f, 629f), Struct_4(Struct_2(false, -396f, Struct_1(vec2<bool>(false, true), 283f, 18129u, vec4<u32>(13747u, 1u, 0u, 1u))), Struct_3(true), vec2<i32>(2147483647i, 44609i), 610f, -1080f), Struct_4(Struct_2(false, 1000f, Struct_1(vec2<bool>(false, true), 1691f, 36986u, vec4<u32>(40819u, 15800u, 44431u, 44366u))), Struct_3(true), vec2<i32>(-32157i, -1i), 245f, -346f), Struct_4(Struct_2(true, 814f, Struct_1(vec2<bool>(true, false), -941f, 1u, vec4<u32>(4294967295u, 33306u, 1u, 4294967295u))), Struct_3(false), vec2<i32>(17700i, 1i), 273f, -413f), Struct_4(Struct_2(false, -664f, Struct_1(vec2<bool>(true, false), 607f, 0u, vec4<u32>(105449u, 1u, 8257u, 1u))), Struct_3(false), vec2<i32>(59913i, i32(-2147483648)), -1101f, 2603f), Struct_4(Struct_2(false, -1450f, Struct_1(vec2<bool>(true, true), 790f, 0u, vec4<u32>(1u, 5141u, 4294967295u, 0u))), Struct_3(false), vec2<i32>(13294i, -5829i), 978f, 116f));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true), -115f, 1u, vec4<u32>(28452u, 0u, 1u, 24824u));

var<private> global3: array<bool, 23> = array<bool, 23>(false, false, false, true, false, false, true, false, false, true, false, false, true, true, false, false, false, false, false, true, false, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(global2.c, 10u)];
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -173f)));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, vec3<u32>(10381u, _wgslsmith_add_u32(global2.d.x, 44934u), ~_wgslsmith_add_u32(abs(global2.c), max(5764u, global2.c))), _wgslsmith_sub_u32(1u, var_0.a.c.d.x));
}

