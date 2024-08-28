struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 1u), false, vec2<bool>(false, false), -1000f)), Struct_2(Struct_1(vec3<u32>(16189u, 26001u, 1u), true, vec2<bool>(false, true), -1338f)), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 1u), true, vec2<bool>(true, false), 467f)), Struct_2(Struct_1(vec3<u32>(23820u, 993u, 22510u), true, vec2<bool>(false, true), 794f)), Struct_2(Struct_1(vec3<u32>(15591u, 36931u, 46204u), false, vec2<bool>(false, true), -230f)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), true, vec2<bool>(false, false), 485f)), Struct_2(Struct_1(vec3<u32>(15806u, 0u, 51676u), true, vec2<bool>(false, false), 1000f)), Struct_2(Struct_1(vec3<u32>(33961u, 1u, 1u), true, vec2<bool>(true, false), -1436f)), Struct_2(Struct_1(vec3<u32>(0u, 60345u, 15695u), true, vec2<bool>(true, true), 503f)), Struct_2(Struct_1(vec3<u32>(0u, 27687u, 1u), false, vec2<bool>(true, false), -1751f)), Struct_2(Struct_1(vec3<u32>(0u, 65900u, 0u), false, vec2<bool>(true, true), 867f)), Struct_2(Struct_1(vec3<u32>(30534u, 1u, 1u), false, vec2<bool>(false, true), -107f)), Struct_2(Struct_1(vec3<u32>(0u, 0u, 16798u), true, vec2<bool>(false, false), 1000f)), Struct_2(Struct_1(vec3<u32>(4294967295u, 3254u, 4294967295u), true, vec2<bool>(true, true), -1375f)), Struct_2(Struct_1(vec3<u32>(0u, 40655u, 199u), true, vec2<bool>(false, false), -559f)), Struct_2(Struct_1(vec3<u32>(1u, 1u, 4294967295u), false, vec2<bool>(false, true), 708f)), Struct_2(Struct_1(vec3<u32>(4294967295u, 69308u, 0u), false, vec2<bool>(true, false), 1000f)), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), true, vec2<bool>(false, true), -761f)), Struct_2(Struct_1(vec3<u32>(19828u, 1u, 4294967295u), false, vec2<bool>(true, false), -623f)), Struct_2(Struct_1(vec3<u32>(161997u, 4294967295u, 0u), false, vec2<bool>(true, true), 1124f)), Struct_2(Struct_1(vec3<u32>(1u, 14646u, 34397u), false, vec2<bool>(false, true), -1000f)));

var<private> global2: array<Struct_2, 8>;

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    global2 = array<Struct_2, 8>();
    let var_0 = arg_1;
    global1 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1101f)) * 525f);
    global1 = array<Struct_2, 21>();
    return global4.a;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<bool>(true, !(u_input.b.x == ~18446u), !(!(all(vec2<bool>(false, false)) != all(vec4<bool>(false, global4.a.b, false, true)))));
    return Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-989f, 700f))), vec2<i32>(1i, (-2147483647i & u_input.d.x) ^ -44809i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = u_input.d;
    var var_1 = !(!select(!select(vec3<bool>(true, global3.a.c.x, global3.a.c.x), vec3<bool>(global4.a.c.x, global4.a.c.x, global4.a.c.x), false), vec3<bool>(0u <= global4.a.a.x, true, global4.a.b), u_input.b.x < ~12622u));
    let var_2 = 257f;
    global1 = array<Struct_2, 21>();
    let var_3 = global2[_wgslsmith_index_u32(global4.a.a.x, 8u)];
    return global3.a.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~global3.a.a.x));
    global3 = global1[_wgslsmith_index_u32(46010u, 21u)];
    var var_1 = ~u_input.c != ~_wgslsmith_add_u32(global3.a.a.x & 4294967295u, ~firstTrailingBit(4294967295u));
    global3 = func_1();
    let var_2 = global3.a;
    global0 = array<vec3<i32>, 27>();
    global3 = global1[_wgslsmith_index_u32(48001u, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -6529i, -20291i) << (firstTrailingBit(abs(var_2.a.zy)) % vec2<u32>(32u)), ~u_input.a.zx));
}

