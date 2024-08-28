struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<i32>(2147483647i, -38078i, 20214i)), Struct_3(vec3<i32>(-1i, 0i, 34458i)), Struct_3(vec3<i32>(2147483647i, -46720i, i32(-2147483648))), Struct_3(vec3<i32>(-28495i, -58242i, 0i)), Struct_3(vec3<i32>(1i, 0i, -28692i)), Struct_3(vec3<i32>(0i, 20175i, 1i)), Struct_3(vec3<i32>(1i, 4154i, 2872i)), Struct_3(vec3<i32>(16250i, 0i, 1i)), Struct_3(vec3<i32>(1i, 50416i, i32(-2147483648))), Struct_3(vec3<i32>(-33006i, -1i, 2147483647i)), Struct_3(vec3<i32>(-77938i, -8477i, 7871i)), Struct_3(vec3<i32>(-1i, 0i, 1i)), Struct_3(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_3(vec3<i32>(0i, 14645i, 871i)), Struct_3(vec3<i32>(-3134i, 18044i, 2147483647i)), Struct_3(vec3<i32>(4552i, 2147483647i, 2147483647i)), Struct_3(vec3<i32>(12606i, -39332i, 0i)));

var<private> global1: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(45084u, 67130u), vec2<u32>(34468u, 32949u), vec2<u32>(4294967295u, 70948u), vec2<u32>(32263u, 1414u), vec2<u32>(86444u, 13354u), vec2<u32>(4294967295u, 48677u), vec2<u32>(49965u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(13811u, 32682u), vec2<u32>(68499u, 4294967295u), vec2<u32>(35141u, 71029u), vec2<u32>(9590u, 3667u), vec2<u32>(4294967295u, 0u), vec2<u32>(45779u, 7932u), vec2<u32>(97797u, 24382u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 56867u), vec2<u32>(1u, 2022u), vec2<u32>(0u, 39497u), vec2<u32>(22584u, 1u), vec2<u32>(0u, 79214u), vec2<u32>(2813u, 19355u), vec2<u32>(1u, 0u), vec2<u32>(51467u, 144502u), vec2<u32>(25618u, 31326u), vec2<u32>(29655u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 38549u), vec2<u32>(16811u, 68571u), vec2<u32>(11374u, 27148u));

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(-1i) * -min(u_input.c.zxz, vec3<i32>(34125i, 1i, -2147483647i))) | vec3<i32>(23215i, -2147483647i, _wgslsmith_div_i32(u_input.c.x | u_input.c.x, select(-35808i, u_input.c.x, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1000f + -1148f), _wgslsmith_f_op_f32(max(1000f, 1588f)), -199f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, 433f, 762f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(504f + -126f), _wgslsmith_f_op_f32(f32(-1f) * -185f)), 879f)), u_input.c.xw, ~vec2<u32>(9203u, 52159u));
}

