struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 12> = array<u32, 12>(11600u, 32894u, 42143u, 0u, 70007u, 73864u, 4294967295u, 1u, 41734u, 57670u, 0u, 1u);

var<private> global2: array<bool, 2> = array<bool, 2>(false, true);

var<private> global3: vec2<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, 0i, u_input.a)) ^ ~vec4<i32>(53660i, u_input.a, global3.x, -39264i), ~(~vec4<i32>(6590i, u_input.b, u_input.b, 2147483647i))), vec4<i32>(_wgslsmith_mult_i32(u_input.a, ~(-4133i)), -global3.x, 0i, global3.x)));
    var var_1 = ~(~vec4<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(1u, 12u)]), 1u, 4294967295u, firstTrailingBit(0u)));
    var var_2 = global0.yww;
    let var_3 = Struct_2(Struct_1(arg_0, global0.yzx));
    let var_4 = Struct_2(var_3.a);
    return vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(min(39151u, reverseBits(var_4.a.a.x)), var_1.x), ~(~abs(54414u))), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(firstLeadingBit(abs(arg_0.x)), global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.a.x, 4294967295u, var_1.x), arg_0.ywz)), 12u)]), 12u)]);
}

fn func_2() -> Struct_4 {
    global0 = vec4<bool>(true, !global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(countOneBits(1u), 12u)], 2u)], global2[_wgslsmith_index_u32(~(~(42398u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14441u, 12u)], 12u)]) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6775u, 12u)], 12u)], 12u)], 12u)], 32588u), func_3(vec4<u32>(9841u, 30430u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11149u, 12u)], 12u)], 12u)], 12u)]))) % 32u)), 2u)], global0.x);
    let var_0 = select(vec2<bool>(!any(global0.xzz), all(!(!global0.xy))), global0.yx, global0.x);
    var var_1 = global0.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 1u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)]), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 23844u, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)])), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13369u, 12u)], 12u)], 1u)), vec4<u32>(4294967295u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 12u)], 41133u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 24284u), vec2<u32>(14389u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)])), global1[_wgslsmith_index_u32(~161287u, 12u)])), !vec3<bool>(select(var_0.x, false, global0.x), !global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63405u, 12u)], 12u)], 12u)], 2u)], all(vec4<bool>(var_0.x, true, true, global0.x)))));
    global1 = array<u32, 12>();
    return Struct_4(select(vec3<bool>(false, all(!vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 2u)], true, false)), any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 2u)], var_2.a.b.x)) | (var_2.a.a.x >= var_2.a.a.x)), global0.wzz, var_2.a.b.x), -1i, vec4<bool>(var_2.a.b.x, var_2.a.b.x, !all(!vec2<bool>(false, var_2.a.b.x)), false), _wgslsmith_div_vec2_i32(~(-vec2<i32>(u_input.b, global3.x)), ~(-select(vec2<i32>(u_input.b, global3.x), vec2<i32>(u_input.a, u_input.b), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53014u, 12u)], 2u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-126f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1008f)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec2<u32>) -> i32 {
    global2 = array<bool, 2>();
    global0 = arg_1.c;
    global3 = abs(arg_1.d);
    var var_0 = func_2();
    var_0 = Struct_4(select(!vec3<bool>(true, !global0.x, false), var_0.a, global1[_wgslsmith_index_u32(61312u, 12u)] >= ~(~global1[_wgslsmith_index_u32(0u, 12u)])), i32(-1i) * -26893i, arg_1.c, -(~max(_wgslsmith_sub_vec2_i32(var_0.d, arg_1.d), vec2<i32>(var_0.b, var_0.d.x))), var_0.e);
    return -55950i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, 4253i), ~(global3.x ^ min(-4645i, u_input.a))), 1i, -(-16481i & u_input.a), u_input.b);
    global2 = array<bool, 2>();
    var var_1 = _wgslsmith_clamp_vec4_i32(select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.a, 9722i, var_0.x), vec4<i32>(var_0.x, -60843i, var_0.x, -4383i), vec4<i32>(u_input.a, -2147483647i, 0i, 34328i)), vec4<i32>(81074i, global3.x, global3.x, global3.x)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(18612i, 72816i, global3.x, 0i), vec4<i32>(var_0.x, u_input.a, var_0.x, 0i))), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, func_1(vec2<f32>(1703f, -961f), Struct_4(vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18235u, 12u)], 2u)], true, global2[_wgslsmith_index_u32(19297u, 2u)]), u_input.a, vec4<bool>(global0.x, true, global0.x, false), var_0.zx, 574f), vec2<u32>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(9261u, 12u)]))), u_input.a, -(i32(-1i) * -7377i), global3.x), !vec4<bool>(false, !global0.x, true, global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 12u)], 2u)])), ~vec4<i32>(-1i, u_input.a, countOneBits(func_2().b), ~min(1i, u_input.b)), -select(firstTrailingBit(select(vec4<i32>(global3.x, -1i, -37163i, var_0.x), vec4<i32>(2147483647i, -29563i, var_0.x, global3.x), vec4<bool>(global2[_wgslsmith_index_u32(38615u, 2u)], false, true, true))), vec4<i32>(-1i) * -vec4<i32>(var_0.x, var_0.x, var_0.x, 9497i), vec4<bool>(global2[_wgslsmith_index_u32(~37857u, 2u)], true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(ceil(-1072f));
    let var_3 = func_2().e;
    var_1 = reverseBits(abs(firstTrailingBit(vec4<i32>(-var_0.x, -8001i, abs(0i), var_1.x << (4294967295u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(1u, 12u)], 22492u, 0u))));
}

