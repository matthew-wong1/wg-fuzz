struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(4294967295u, vec2<bool>(true, false), vec3<f32>(1750f, 897f, 334f), 34462i, vec3<u32>(53893u, 0u, 35814u)), Struct_3(37159u, vec2<bool>(true, false), vec3<f32>(-381f, -349f, -1000f), i32(-2147483648), vec3<u32>(1u, 0u, 1u)), Struct_3(10150u, vec2<bool>(true, false), vec3<f32>(2220f, 166f, -167f), -53388i, vec3<u32>(4294967295u, 1u, 29620u)), Struct_3(6456u, vec2<bool>(true, true), vec3<f32>(-477f, 428f, -1000f), 7966i, vec3<u32>(4294967295u, 29931u, 48176u)), Struct_3(4294967295u, vec2<bool>(true, false), vec3<f32>(-524f, 112f, -2642f), 2147483647i, vec3<u32>(4294967295u, 4294967295u, 86068u)), Struct_3(26623u, vec2<bool>(false, false), vec3<f32>(-896f, -919f, -544f), 12504i, vec3<u32>(1677u, 4294967295u, 4294967295u)), Struct_3(0u, vec2<bool>(false, false), vec3<f32>(262f, -474f, 1000f), 20176i, vec3<u32>(4294967295u, 42366u, 46764u)), Struct_3(4294967295u, vec2<bool>(false, true), vec3<f32>(1384f, 278f, -218f), 2147483647i, vec3<u32>(0u, 11621u, 95046u)), Struct_3(45102u, vec2<bool>(false, false), vec3<f32>(273f, -734f, -306f), 44378i, vec3<u32>(0u, 14756u, 4294967295u)), Struct_3(1u, vec2<bool>(false, true), vec3<f32>(-1000f, 1770f, 2039f), i32(-2147483648), vec3<u32>(4294967295u, 65016u, 1u)), Struct_3(4294967295u, vec2<bool>(true, false), vec3<f32>(103f, 131f, 1324f), -12107i, vec3<u32>(4538u, 0u, 0u)), Struct_3(0u, vec2<bool>(false, true), vec3<f32>(-272f, -1358f, 1366f), 15712i, vec3<u32>(4294967295u, 31302u, 4294967295u)), Struct_3(4294967295u, vec2<bool>(false, true), vec3<f32>(-581f, -977f, -154f), -6829i, vec3<u32>(53778u, 25986u, 64019u)), Struct_3(63123u, vec2<bool>(false, true), vec3<f32>(-1089f, 955f, -231f), 1i, vec3<u32>(1u, 1u, 4294967295u)), Struct_3(17427u, vec2<bool>(false, false), vec3<f32>(-1492f, -945f, 508f), -1632i, vec3<u32>(4294967295u, 0u, 67775u)), Struct_3(1u, vec2<bool>(true, true), vec3<f32>(-1249f, 656f, -651f), -1i, vec3<u32>(4294967295u, 53792u, 17202u)), Struct_3(4294967295u, vec2<bool>(false, false), vec3<f32>(377f, -197f, 162f), 2147483647i, vec3<u32>(6797u, 33086u, 1u)), Struct_3(22952u, vec2<bool>(false, false), vec3<f32>(-137f, 1861f, -1000f), -1i, vec3<u32>(4294967295u, 1u, 23573u)), Struct_3(0u, vec2<bool>(false, false), vec3<f32>(-559f, -439f, 1396f), 51509i, vec3<u32>(28350u, 7736u, 0u)), Struct_3(17127u, vec2<bool>(false, true), vec3<f32>(806f, 694f, -318f), 2147483647i, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_3(4294967295u, vec2<bool>(true, true), vec3<f32>(-722f, 136f, 1000f), -17933i, vec3<u32>(0u, 0u, 58168u)), Struct_3(3423u, vec2<bool>(false, true), vec3<f32>(-701f, -594f, -1000f), -49158i, vec3<u32>(59894u, 32574u, 0u)), Struct_3(4294967295u, vec2<bool>(false, true), vec3<f32>(-682f, -392f, -1184f), i32(-2147483648), vec3<u32>(1u, 33452u, 1u)));

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_5 = Struct_5(vec2<bool>(false, true), false, 0u, vec4<i32>(2147483647i, 32646i, -1i, 0i), Struct_3(35634u, vec2<bool>(false, false), vec3<f32>(2290f, -829f, -1000f), 33772i, vec3<u32>(10750u, 37567u, 4294967295u)));

var<private> global3: array<vec3<bool>, 29>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 23>();
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, global2.e.e << (countOneBits(vec3<u32>(35528u, 0u, u_input.b.x)) % vec3<u32>(32u))), 21u)]);
    var var_1 = Struct_3(~u_input.b.x, !select(!global2.e.b, select(vec2<bool>(false, true), vec2<bool>(true, false), global2.e.c.x != -2252f), global2.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.c.x, global2.e.c.x, _wgslsmith_f_op_f32(trunc(1166f)))), global2.d.x, ~(~_wgslsmith_mult_vec3_u32(var_0.a.b, ~vec3<u32>(4294967295u, u_input.b.x, 1u))));
    var var_2 = 806u;
    var var_3 = u_input.a.yx;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global2.d), global2.c);
}

