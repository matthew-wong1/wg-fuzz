struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(4294967295u, 1u, 105377u, 8128u), vec4<u32>(76282u, 6076u, 1u, 27054u), vec4<u32>(0u, 4294967295u, 21513u, 4294967295u), vec4<u32>(1u, 0u, 0u, 48550u), vec4<u32>(15981u, 60044u, 51942u, 4294967295u), vec4<u32>(4294967295u, 0u, 21433u, 49026u), vec4<u32>(35148u, 23187u, 1u, 1u), vec4<u32>(72707u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 32819u, 0u, 0u), vec4<u32>(9311u, 40094u, 23433u, 3833u), vec4<u32>(1607u, 4294967295u, 36161u, 74143u), vec4<u32>(44070u, 1u, 16977u, 48976u), vec4<u32>(77127u, 51998u, 0u, 1u), vec4<u32>(4294967295u, 1u, 14435u, 1u), vec4<u32>(31821u, 1u, 18755u, 0u), vec4<u32>(0u, 4294967295u, 1u, 67712u), vec4<u32>(4294967295u, 0u, 98384u, 1u), vec4<u32>(57853u, 4294967295u, 75861u, 1u), vec4<u32>(1u, 4294967295u, 6454u, 0u), vec4<u32>(92924u, 33915u, 1u, 0u), vec4<u32>(1u, 5210u, 0u, 31078u), vec4<u32>(1u, 4294967295u, 0u, 16000u), vec4<u32>(75543u, 8907u, 61422u, 4294967295u), vec4<u32>(4294967295u, 33761u, 1u, 0u), vec4<u32>(0u, 43593u, 28066u, 23478u), vec4<u32>(27556u, 35593u, 0u, 41916u), vec4<u32>(1u, 1u, 16214u, 1u), vec4<u32>(0u, 8154u, 3119u, 1u), vec4<u32>(4294967295u, 4294967295u, 7u, 20575u), vec4<u32>(1u, 4294967295u, 0u, 22945u), vec4<u32>(17868u, 70520u, 0u, 41603u), vec4<u32>(5367u, 4294967295u, 0u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<u32>) -> u32 {
    global2 = array<vec4<u32>, 32>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -529f, 580f, global1.a.x) * vec4<f32>(1013f, 398f, 1115f, global1.a.x)) * global1.a))), -vec2<i32>(~(-u_input.d.x), -(u_input.e.x << (33287u % 32u))), u_input.e.yz, global1.d);
    global2 = array<vec4<u32>, 32>();
    global0 = array<vec2<bool>, 22>();
    var var_1 = var_0;
    return arg_2.x;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<u32>(u_input.b.x, ~(~(func_2(global1.d.x, vec2<bool>(false, false), u_input.b.xx) | 1u)));
    global0 = array<vec2<bool>, 22>();
    global2 = array<vec4<u32>, 32>();
    global1 = Struct_1(global1.a, u_input.d.yx, global1.c, vec3<bool>(true, true, true));
    global2 = array<vec4<u32>, 32>();
    return Struct_1(vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)) - global1.a.x), global1.a.x), firstLeadingBit(~(-vec2<i32>(global1.b.x, u_input.e.x) << (~vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_add_vec2_i32(u_input.d.zz, u_input.e.xx), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 34390i;
    global1 = func_1();
    var var_1 = global1.d.x && true;
    var var_2 = vec3<i32>(u_input.e.x, -u_input.d.x, global1.b.x);
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global1.a.x, -1901f, 164f), vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -975f)) - -564f)));
}

