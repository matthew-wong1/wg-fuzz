struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -32580i);

var<private> global2: array<Struct_2, 3>;

var<private> global3: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(4294967295u, 31115u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(21318u, 14321u, 0u));

var<private> global4: array<Struct_4, 6>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec3<f32> {
    global4 = array<Struct_4, 6>();
    global3 = array<vec3<u32>, 5>();
    let var_0 = any(!(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true))));
    global4 = array<Struct_4, 6>();
    global4 = array<Struct_4, 6>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-331f, -433f, -868f) - vec3<f32>(-1952f, -1596f, -201f)) - vec3<f32>(-414f, 1000f, -689f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1422f, -1377f, 685f) + vec3<f32>(-615f, -345f, -757f)))), select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, true, var_0), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_4, 6>();
    global1 = vec2<i32>(_wgslsmith_sub_i32(u_input.a, -2646i), global1.x) | _wgslsmith_mod_vec2_i32(reverseBits(~(~vec2<i32>(u_input.a, global1.x))), -vec2<i32>(u_input.a, u_input.a) << ((~vec2<u32>(u_input.b, 0u) & vec2<u32>(4294967295u, 20282u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(~vec2<u32>(4294967295u, 24914u), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, global1.x, u_input.a), vec3<i32>(32061i, 17083i, global1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1536f, 1017f, 814f)))))), 2637f);
}

