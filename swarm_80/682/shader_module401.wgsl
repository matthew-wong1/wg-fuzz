struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 79710u, 28453u, 45187u, 45776u, 4294967295u, 3864u, 59986u, 2966u, 16426u, 75968u, 4294967295u, 55231u, 1u, 34818u, 0u, 1u, 30565u, 0u);

var<private> global1: array<vec2<u32>, 11>;

var<private> global2: Struct_3;

var<private> global3: array<i32, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = select(vec2<bool>(global2.a, true), !select(vec2<bool>(global2.a, true), !vec2<bool>(true, global2.a), false), false);
    var var_1 = global2.b;
    var var_2 = var_1.b;
    global3 = array<i32, 12>();
    let var_3 = ((var_1.a.x >> (u_input.b % 32u)) & ~_wgslsmith_clamp_u32(47222u, 56063u, 4294967295u)) ^ global2.b.a.x;
    return Struct_2(vec2<u32>(0u, ~global2.b.a.x >> (33217u % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c, var_2.c, -1000f, -1092f) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.a.x, var_1.b.a.x, global2.b.c.a.x, 990f), global2.b.c.a))), vec3<i32>(var_2.b.x, -20391i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, global3[_wgslsmith_index_u32(31011u, 12u)]), firstTrailingBit(u_input.a))), -1520f), var_1.c);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> f32 {
    global3 = array<i32, 12>();
    var var_0 = Struct_3(any(vec4<bool>(false, select(global2.a, global2.a, true), global2.a, global2.a)), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1961f, arg_0, -1000f, -507f)))))));
    let var_1 = 1u;
    global3 = array<i32, 12>();
    let var_2 = var_0.b.c.a.xx;
    return arg_3;
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    let var_0 = global2.b.b.b.xy & global2.b.c.b.zz;
    global0 = array<u32, 19>();
    global2 = Struct_3(!((true && any(vec2<bool>(true, global2.a))) | any(vec2<bool>(global2.a, global2.a))), func_2((~vec4<u32>(12079u, global2.b.a.x, 4294967295u, 53777u) << (~vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(5029u, 19u)], global2.b.a.x, u_input.c.x) % vec4<u32>(32u))) >> (~(~vec4<u32>(94671u, 4294967295u, 35459u, global2.b.a.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-383f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f))), global2.b.b, global2.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -582f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global2.b.b.a + _wgslsmith_f_op_vec4_f32(global2.b.b.a - global2.d)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global2.b.b.a + vec4<f32>(-1311f, global2.b.b.a.x, 547f, global2.b.b.c)), _wgslsmith_f_op_vec4_f32(global2.d - vec4<f32>(global2.d.x, -694f, global2.d.x, 166f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 992f, 846f, -477f), global2.b.c.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, -1356f, global2.d.x, global2.c) - vec4<f32>(-2628f, -354f, global2.d.x, global2.b.b.a.x)) * global2.b.b.a))));
    let var_1 = func_2(_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(global2.b.a.x, u_input.d, global2.b.a.x, global0[_wgslsmith_index_u32(30894u, 19u)])) | reverseBits(~vec4<u32>(0u, 4294967295u, global2.b.a.x, 4294967295u)), vec4<u32>(_wgslsmith_mult_u32(global2.b.a.x >> (global0[_wgslsmith_index_u32(14590u, 19u)] % 32u), ~0u), u_input.e.x, ~(~global2.b.a.x), 31655u))).c.b.x;
    var var_2 = vec4<bool>(false, true, global2.a, any(!select(vec4<bool>(global2.a, global2.a, global2.a, global2.a), !vec4<bool>(true, global2.a, global2.a, global2.a), global2.a)));
    return StorageBuffer(_wgslsmith_mod_u32(global2.b.a.x, global2.b.a.x), countOneBits(vec2<i32>(min(0i, var_0.x), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec2<i32>(~countOneBits(2147483647i), 2147483647i));
}

