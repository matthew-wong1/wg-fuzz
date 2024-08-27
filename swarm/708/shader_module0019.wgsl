struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(1000f, 1339f, -392f, 466f, 919f, 621f, 1633f, -432f, -969f);

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, true, false, true), -19228i), Struct_1(vec4<bool>(true, true, false, true), 2147483647i));

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 16> = array<u32, 16>(88524u, 8061u, 10628u, 40565u, 79481u, 17640u, 4294967295u, 22815u, 40091u, 31242u, 1u, 0u, 102456u, 0u, 70766u, 51574u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(min(max(vec4<i32>(825i, u_input.e.x, u_input.b, u_input.d.x) | u_input.d, ~u_input.d), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.c, u_input.e.x, global2.x, -2147483647i), u_input.d), vec4<i32>(u_input.b, global2.x, global2.x, 2147483647i))) << (vec4<u32>(global3[_wgslsmith_index_u32(~select(34485u, 4294967295u, true), 16u)], firstLeadingBit(~1u), _wgslsmith_clamp_u32(23810u ^ global3[_wgslsmith_index_u32(u_input.a, 16u)], _wgslsmith_div_u32(0u, global3[_wgslsmith_index_u32(17973u, 16u)]), u_input.a), ~57608u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(20006u, 9u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(29823u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]))) + vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 16u)], 9u)]), -352f))), vec3<i32>(2147483647i, _wgslsmith_add_i32(~reverseBits(19344i), countOneBits(0i)), global2.x));
}

