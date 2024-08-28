struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(4294967295u, 4294967295u, 0u, 6703u));

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(false, 42282u, vec2<bool>(true, true))), Struct_4(Struct_3(false, 80579u, vec2<bool>(false, true))), Struct_4(Struct_3(false, 23863u, vec2<bool>(true, false))), Struct_4(Struct_3(false, 45251u, vec2<bool>(false, true))), Struct_4(Struct_3(false, 8464u, vec2<bool>(false, true))), Struct_4(Struct_3(false, 0u, vec2<bool>(false, true))), Struct_4(Struct_3(true, 9985u, vec2<bool>(false, true))), Struct_4(Struct_3(true, 0u, vec2<bool>(false, true))), Struct_4(Struct_3(true, 0u, vec2<bool>(true, true))), Struct_4(Struct_3(false, 4294967295u, vec2<bool>(false, true))), Struct_4(Struct_3(true, 1870u, vec2<bool>(false, false))), Struct_4(Struct_3(true, 0u, vec2<bool>(true, false))), Struct_4(Struct_3(true, 8377u, vec2<bool>(false, true))), Struct_4(Struct_3(false, 0u, vec2<bool>(false, true))), Struct_4(Struct_3(true, 0u, vec2<bool>(false, true))), Struct_4(Struct_3(true, 2413u, vec2<bool>(true, false))), Struct_4(Struct_3(false, 64387u, vec2<bool>(true, false))), Struct_4(Struct_3(true, 43679u, vec2<bool>(false, true))), Struct_4(Struct_3(true, 12129u, vec2<bool>(true, false))), Struct_4(Struct_3(true, 0u, vec2<bool>(true, false))), Struct_4(Struct_3(false, 80187u, vec2<bool>(false, false))), Struct_4(Struct_3(true, 27461u, vec2<bool>(true, false))), Struct_4(Struct_3(true, 32135u, vec2<bool>(true, false))), Struct_4(Struct_3(false, 4294967295u, vec2<bool>(true, false))), Struct_4(Struct_3(false, 19578u, vec2<bool>(true, true))), Struct_4(Struct_3(false, 0u, vec2<bool>(false, false))), Struct_4(Struct_3(true, 119342u, vec2<bool>(true, true))), Struct_4(Struct_3(true, 1u, vec2<bool>(false, true))), Struct_4(Struct_3(false, 7869u, vec2<bool>(true, true))), Struct_4(Struct_3(false, 1u, vec2<bool>(true, true))), Struct_4(Struct_3(false, 0u, vec2<bool>(false, false))), Struct_4(Struct_3(true, 105626u, vec2<bool>(true, false))));

var<private> global3: Struct_4 = Struct_4(Struct_3(true, 0u, vec2<bool>(false, false)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 13>();
    global1 = array<vec4<u32>, 1>();
    global0 = array<vec2<u32>, 13>();
    var var_0 = firstLeadingBit(global3.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec3<u32>(global3.a.b | 93505u, 48493u ^ global3.a.b, global3.a.b)), select(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 1i, -16188i, -47640i), ~vec4<i32>(1i, u_input.a.x, -1i, u_input.a.x)), _wgslsmith_mod_i32(abs(u_input.a.x), -3657i), !(global3.a.c.x == global3.a.a)) | _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)), vec4<i32>(~(-23906i), 2147483647i, 1i, _wgslsmith_add_i32(u_input.a.x, -1i))));
}

