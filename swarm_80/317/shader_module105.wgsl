struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(50771u, 4294967295u), vec2<u32>(1773u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(77395u, 7793u), vec2<u32>(25831u, 1044u), vec2<u32>(118523u, 45935u), vec2<u32>(4294967295u, 0u), vec2<u32>(15530u, 22766u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(17569u, 0u), vec2<u32>(17602u, 0u), vec2<u32>(82608u, 68628u), vec2<u32>(0u, 0u), vec2<u32>(39788u, 83574u), vec2<u32>(25414u, 19288u), vec2<u32>(57824u, 39908u), vec2<u32>(1u, 123194u), vec2<u32>(36065u, 46502u), vec2<u32>(1289u, 0u), vec2<u32>(1u, 6939u), vec2<u32>(1u, 4294967295u), vec2<u32>(55100u, 4294967295u), vec2<u32>(1u, 59978u), vec2<u32>(4294967295u, 0u));

var<private> global1: array<vec3<u32>, 23>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-39320i, 288f, false, -313f, true), Struct_1(-67661i, -456f, true, -452f, false), Struct_1(20684i, 103f, true, -1000f, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1() -> Struct_1 {
    return global3[_wgslsmith_index_u32(4294967295u, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 23>();
    var var_0 = true;
    let var_1 = func_1();
    let var_2 = global2.a;
    let var_3 = min(vec3<i32>(var_1.a, global2.a, func_1().a), ~_wgslsmith_add_vec3_i32(vec3<i32>(abs(global2.a), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-39700i, global2.a, var_1.a), vec3<i32>(2147483647i, 0i, -16660i))), abs(firstTrailingBit(vec3<i32>(15647i, -15805i, global2.a)))));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_vec4_i32(max(vec4<i32>(var_1.a, global2.a, var_4, -1i) & vec4<i32>(var_3.x, 1i, var_4, -1i), vec4<i32>(-17507i, -6106i, var_1.a, var_1.a)), vec4<i32>(1i, global2.a, -1i, min(-58178i, var_4)))), 324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.d)) + 942f))), -398f, var_3.xz);
}

