struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1348f, Struct_1(59976u, vec3<bool>(false, false, true), vec2<u32>(0u, 1u)));

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<i32, 5>;

var<private> global3: array<u32, 25> = array<u32, 25>(0u, 4294967295u, 13918u, 32847u, 0u, 2753u, 4294967295u, 16833u, 1u, 0u, 4294967295u, 0u, 28490u, 1u, 58241u, 110534u, 1u, 63786u, 0u, 31993u, 4294967295u, 49574u, 0u, 28077u, 0u);

var<private> global4: array<u32, 32> = array<u32, 32>(23114u, 4294967295u, 47889u, 41636u, 29832u, 1u, 1u, 0u, 0u, 0u, 32548u, 30823u, 11052u, 39129u, 21770u, 1u, 0u, 13325u, 7579u, 10775u, 4294967295u, 1u, 0u, 41134u, 41215u, 16558u, 4294967295u, 20036u, 56056u, 90338u, 65805u, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    global2 = array<i32, 5>();
    global3 = array<u32, 25>();
    var var_0 = 861f;
    global3 = array<u32, 25>();
    let var_1 = global1[_wgslsmith_index_u32(1u, 30u)];
    return global2[_wgslsmith_index_u32(~(~31851u), 5u)];
}

fn func_1() -> Struct_3 {
    let var_0 = u_input.d.x & 1i;
    var var_1 = -_wgslsmith_sub_vec2_i32(vec2<i32>(min(_wgslsmith_sub_i32(19205i, u_input.d.x), func_2(Struct_1(global0.b.a, vec3<bool>(global0.b.b.x, false, global0.b.b.x), vec2<u32>(0u, 432u)), Struct_4(vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, global0.b.a)), vec3<u32>(global0.b.a, global4[_wgslsmith_index_u32(30376u, 32u)], 38996u), global2[_wgslsmith_index_u32(global0.b.c.x, 5u)])), var_0), -(~u_input.d));
    let var_2 = 3869u;
    let var_3 = _wgslsmith_add_vec4_u32(min(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global4[_wgslsmith_index_u32(49520u, 32u)], 0u, 0u), vec4<u32>(1u, 4294967295u, 1u, global4[_wgslsmith_index_u32(0u, 32u)]))), abs(~vec4<u32>(global3[_wgslsmith_index_u32(45546u, 25u)], var_2, global4[_wgslsmith_index_u32(45791u, 32u)], var_2))) | (_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c.x, 38074u, 1u, u_input.c.x)), min(vec4<u32>(4294967295u, 13384u, u_input.a.x, global4[_wgslsmith_index_u32(global0.b.a, 32u)]), vec4<u32>(0u, global0.b.a, 18783u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], 0u, global0.b.a, global4[_wgslsmith_index_u32(var_2, 32u)]), vec4<u32>(global4[_wgslsmith_index_u32(0u, 32u)], 56360u, global4[_wgslsmith_index_u32(105865u, 32u)], global4[_wgslsmith_index_u32(u_input.b.x, 32u)]))) | _wgslsmith_sub_vec4_u32(vec4<u32>(68075u, 47019u, 0u, var_2) >> (vec4<u32>(30603u, global3[_wgslsmith_index_u32(global0.b.c.x, 25u)], global3[_wgslsmith_index_u32(0u, 25u)], 0u) % vec4<u32>(32u)), vec4<u32>(20976u, 11026u, global4[_wgslsmith_index_u32(36628u, 32u)], 78875u))), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(38620u, 1u, global4[_wgslsmith_index_u32(var_2, 32u)], global0.b.c.x)) & vec4<u32>(global4[_wgslsmith_index_u32(1u, 32u)], global0.b.c.x, firstLeadingBit(global4[_wgslsmith_index_u32(9736u, 32u)]), firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 25u)])), vec4<u32>(_wgslsmith_add_u32(select(0u, 4294967295u, true), 4294967295u << (global0.b.a % 32u)), firstTrailingBit(global3[_wgslsmith_index_u32(var_2, 25u)] << (1u % 32u)), 4294967295u, global0.b.c.x)));
    global3 = array<u32, 25>();
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-966f, global0.a)) * _wgslsmith_f_op_f32(-1404f * global0.a)), _wgslsmith_f_op_f32(-global0.a), !all(global0.b.b.yx))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -590f))), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(global0.a * global0.a), -402f, global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), global0.a, true && all(vec3<bool>(global0.b.b.x, false, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-850f * 2164f)))))));
    var var_1 = func_1();
    var_1 = func_1();
    global2 = array<i32, 5>();
    let var_2 = ((~abs(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 32u)], 12854u, 32924u)) >> (_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a.x, 1u, global3[_wgslsmith_index_u32(u_input.b.x, 25u)]), u_input.b), vec3<u32>(68354u, var_1.b.a, global3[_wgslsmith_index_u32(35094u, 25u)])) % vec3<u32>(32u))) & ~(~select(vec3<u32>(1u, u_input.b.x, 75110u), vec3<u32>(1u, 10871u, 843u), global0.b.b))) << (countOneBits(u_input.a) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zwy, _wgslsmith_f_op_vec3_f32(ceil(var_0.yyy)));
}

