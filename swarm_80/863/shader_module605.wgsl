struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 667f;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec2<bool>(true, true), vec4<u32>(1u, 74711u, 84283u, 0u), 8387u), Struct_4(vec2<bool>(true, true), vec4<u32>(942u, 62157u, 36013u, 45756u), 27151u), Struct_4(vec2<bool>(true, false), vec4<u32>(4294967295u, 4835u, 1u, 15606u), 1u), Struct_4(vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, 104349u, 4294967295u), 69393u), Struct_4(vec2<bool>(true, false), vec4<u32>(42842u, 1u, 74609u, 4294967295u), 47882u), Struct_4(vec2<bool>(true, true), vec4<u32>(43878u, 4294967295u, 0u, 47341u), 36609u), Struct_4(vec2<bool>(true, true), vec4<u32>(1u, 0u, 0u, 4294967295u), 4294967295u), Struct_4(vec2<bool>(true, false), vec4<u32>(4294967295u, 17215u, 22846u, 0u), 25113u), Struct_4(vec2<bool>(false, true), vec4<u32>(50688u, 14305u, 19746u, 4636u), 186912u));

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<u32>(2079u, 28665u), -692f, -720f), Struct_1(vec2<u32>(4294967295u, 24171u), 116f, 310f), Struct_1(vec2<u32>(1u, 0u), -1463f, 1421f), Struct_1(vec2<u32>(1u, 46228u), 863f, -1419f), Struct_1(vec2<u32>(7880u, 50847u), -627f, 234f), Struct_1(vec2<u32>(36498u, 0u), -905f, 233f), Struct_1(vec2<u32>(0u, 4294967295u), 840f, -1000f), Struct_1(vec2<u32>(1266u, 6784u), 142f, 1000f), Struct_1(vec2<u32>(18256u, 4889u), -1017f, 1146f), Struct_1(vec2<u32>(7749u, 4294967295u), -509f, -1866f), Struct_1(vec2<u32>(65327u, 1u), -134f, 603f), Struct_1(vec2<u32>(16874u, 113123u), 133f, -399f), Struct_1(vec2<u32>(19802u, 1u), -1000f, 1152f), Struct_1(vec2<u32>(0u, 72793u), -1000f, 642f));

var<private> global3: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(60555i, -1i), vec2<i32>(-26157i, 0i), vec2<i32>(-34663i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -57566i), vec2<i32>(1i, -8175i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, -13928i), vec2<i32>(-1i, 8196i), vec2<i32>(2147483647i, -11476i), vec2<i32>(1i, 61797i), vec2<i32>(0i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(28468i, -29526i), vec2<i32>(-33611i, 1i), vec2<i32>(1i, 10068i), vec2<i32>(-54671i, 2147483647i), vec2<i32>(2147483647i, 759i), vec2<i32>(0i, 35083i), vec2<i32>(4766i, 2147483647i), vec2<i32>(2147483647i, 26891i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-51618i, 15974i), vec2<i32>(2147483647i, 19033i), vec2<i32>(-1i, -1i));

var<private> global4: Struct_2 = Struct_2(true, vec3<i32>(7710i, -1i, 23109i), 21937u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4) -> StorageBuffer {
    let var_0 = vec3<u32>(~arg_0.c, ~(~22238u), ~60748u);
    return StorageBuffer(0u, ~var_0.x ^ var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 27>();
    let var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32((reverseBits(56340u) >> (1u % 32u)) | global4.c, firstLeadingBit(~1885u), _wgslsmith_sub_u32(global4.c, _wgslsmith_add_u32(54827u, global4.c) >> (~13891u % 32u))), 9u)]);
}

