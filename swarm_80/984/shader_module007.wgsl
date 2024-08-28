struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(1u, 83134u, 1u), vec3<u32>(0u, 0u, 71301u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(32550u, 25372u, 4294967295u), vec3<u32>(0u, 13288u, 1u), vec3<u32>(30951u, 0u, 2871u), vec3<u32>(41975u, 4294967295u, 4294967295u), vec3<u32>(94386u, 1u, 6313u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(39161u, 0u, 4294967295u), vec3<u32>(12893u, 4294967295u, 0u), vec3<u32>(42548u, 18833u, 31365u), vec3<u32>(20332u, 4294967295u, 1u), vec3<u32>(32682u, 6838u, 10835u), vec3<u32>(46721u, 2791u, 34475u), vec3<u32>(54905u, 0u, 32309u), vec3<u32>(3632u, 53747u, 30027u), vec3<u32>(1u, 16942u, 82725u), vec3<u32>(1u, 0u, 24764u));

var<private> global1: array<bool, 23> = array<bool, 23>(true, false, true, true, true, true, true, true, true, false, true, true, true, true, false, true, true, true, false, true, false, true, false);

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(17583u, -1128f);

var<private> global4: vec3<i32> = vec3<i32>(-28487i, -90i, -1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> bool {
    global4 = _wgslsmith_mult_vec3_i32(abs(vec3<i32>(min(countOneBits(global4.x), u_input.b.x), -23583i, _wgslsmith_add_i32(abs(global4.x), min(global4.x, 2147483647i)))), max(vec3<i32>(countOneBits(1i), ~(-1i), max(~0i, 70772i)), u_input.d));
    let var_0 = ~(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(44505u, global3.a, global3.a, global3.a), reverseBits(vec4<u32>(1u, 62290u, 36178u, u_input.a.x)))));
    return all(!(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 23u)]))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = select(global2.a, func_2(), false);
    let var_1 = arg_2;
    var_0 = 1687f < _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.b, 691f))));
    global0 = array<vec3<u32>, 19>();
    var var_2 = Struct_2(global2.a);
    return ~max(_wgslsmith_mod_u32(global3.a, firstLeadingBit(0u)) ^ arg_1, ~(u_input.a.x >> (68482u % 32u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<vec3<u32>, 19>();
    let var_0 = Struct_2(!(!(arg_0.b <= _wgslsmith_f_op_f32(global3.b + arg_0.b))));
    var var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) - -158f))));
    global4 = u_input.d;
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(1u, 23u)]);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))));
    var var_2 = _wgslsmith_mod_vec4_i32(reverseBits(-_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global4.x, global4.x, u_input.b.x, u_input.d.x), vec4<i32>(6716i, global4.x, 1i, -41023i)), -vec4<i32>(14344i, 55108i, 2147483647i, u_input.c))), ~(-_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.d.x, -26710i, -2147483647i), vec4<i32>(global4.x, u_input.d.x, -1i, global4.x)), vec4<i32>(global4.x, -9678i, global4.x, global4.x) | vec4<i32>(-1i, -1i, global4.x, global4.x), abs(vec4<i32>(1i, global4.x, -10947i, 40659i)))));
    global3 = func_3(Struct_1(~14051u, _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(min(global3.b, global3.b))))), vec4<u32>(45812u, _wgslsmith_mult_u32(4294967295u, u_input.a.x) & ~u_input.a.x, ~0u, ~func_1(select(vec3<bool>(false, global2.a, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], false), false), ~53079u, Struct_2(global2.a))));
    let var_3 = Struct_2(true);
    var var_4 = 0u;
    global3 = Struct_1(firstLeadingBit(u_input.a.x) & 1u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f * global3.b)) + global3.b))));
    global3 = func_3(Struct_1(~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_f_op_f32(step(global3.b, -188f))) * func_3(Struct_1(global3.a, 721f), ~vec4<u32>(0u, global3.a, global3.a, global3.a)).b)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a.x, global3.a, global3.a, 0u) & (vec4<u32>(u_input.a.x, 66051u, 22537u, 65243u) << (vec4<u32>(4294967295u, 18595u, global3.a, u_input.a.x) % vec4<u32>(32u)))), ~(~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, _wgslsmith_sub_i32(u_input.d.x, var_2.x), _wgslsmith_div_u32(u_input.a.x, 11396u), _wgslsmith_mod_i32(var_2.x, 1i));
}

