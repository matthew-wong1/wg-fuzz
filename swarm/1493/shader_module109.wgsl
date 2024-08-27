struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, false, false, true, true, false, false, true, true, true, false, true);

var<private> global1: vec3<i32>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_3;

var<private> global4: vec2<f32> = vec2<f32>(1019f, -604f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> f32 {
    global2 = select(vec3<bool>(global2.x, false, global2.x), !(!vec3<bool>(global0[_wgslsmith_index_u32(29790u, 12u)], true, global0[_wgslsmith_index_u32(46483u, 12u)] & global0[_wgslsmith_index_u32(1u, 12u)])), select(!select(!vec3<bool>(true, global2.x, false), vec3<bool>(global2.x, global0[_wgslsmith_index_u32(0u, 12u)], true), vec3<bool>(global2.x, global2.x, true)), vec3<bool>(!(global3.a <= 40066i), false, global0[_wgslsmith_index_u32(1u, 12u)]), select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(26212u, 12u)], global2.x)), !select(vec3<bool>(global0[_wgslsmith_index_u32(26545u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], global2.x), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 12u)], true), vec3<bool>(false, true, false)), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(1352u, 12u)], global2.x)))));
    global2 = !(!(!vec3<bool>(global2.x, true, true)));
    var var_0 = global3.b;
    var_0 = -(~vec4<i32>(_wgslsmith_sub_i32(-30225i, global3.a), -(~global1.x), -7397i, i32(-1i) * -2147483647i));
    var_0 = select(~global3.b, -(_wgslsmith_div_vec4_i32(countOneBits(global3.b), vec4<i32>(var_0.x, global3.a, var_0.x, 2650i)) << (vec4<u32>(1u, 1u, 0u, firstLeadingBit(1u)) % vec4<u32>(32u))), all(!vec4<bool>(!global0[_wgslsmith_index_u32(0u, 12u)], true, !global0[_wgslsmith_index_u32(21961u, 12u)], true)));
    return _wgslsmith_f_op_f32(-global4.x);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    global0 = array<bool, 12>();
    global1 = global3.b.zxz;
    var var_0 = Struct_5(countOneBits(_wgslsmith_mult_i32(~arg_1.x, u_input.c)), Struct_1(vec3<bool>(arg_2, false, !all(vec4<bool>(true, false, false, true))), 1i | (i32(-1i) * -arg_1.x)), !all(select(select(vec3<bool>(global0[_wgslsmith_index_u32(50682u, 12u)], true, false), vec3<bool>(global2.x, arg_0, true), false), vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], true))));
    var var_1 = -vec3<i32>((94354i ^ u_input.a) >> (~1u % 32u), ~var_0.b.b, i32(-1i) * -_wgslsmith_div_i32(-833i, arg_1.x));
    global0 = array<bool, 12>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.x)));
}

fn func_2(arg_0: Struct_5) -> vec3<u32> {
    let var_0 = arg_0.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.x * 180f), global4.x)), global4.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, vec2<i32>(arg_0.a, -2147483647i), false))), _wgslsmith_f_op_f32(global4.x * -253f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) + _wgslsmith_f_op_f32(global4.x - global4.x)), global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1574f - global4.x) - -111f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x + -2111f), _wgslsmith_f_op_f32(var_1.x + 149f)), 1664f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), global4.x)))));
    let var_3 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.b.a.x, -vec2<i32>(11033i, 0i), false)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -524f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), -1074f);
    global2 = vec3<bool>((_wgslsmith_dot_vec4_u32(vec4<u32>(7796u, 1u, 1u, 9502u), vec4<u32>(5935u, 4294967295u, 8275u, 4294967295u)) < reverseBits(1u)) | true, arg_0.b.a.x, true);
    return ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~4294967295u, ~14239u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 18651u, 1u)), max(~vec3<u32>(1u, 1u, 1u), vec3<u32>(countOneBits(1u), ~45258u, _wgslsmith_mod_u32(0u, 27120u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 12u)], false), vec4<bool>(global2.x, global0[_wgslsmith_index_u32(48477u, 12u)], global2.x, global2.x), false), select(vec4<bool>(global0[_wgslsmith_index_u32(8570u, 12u)], global2.x, global2.x, global2.x), vec4<bool>(global2.x, global0[_wgslsmith_index_u32(1u, 12u)], global2.x, false), false), true), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], true, global0[_wgslsmith_index_u32(36385u, 12u)]), vec4<bool>(true, true, global2.x, true), true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(9759u, 12u)], false), global2.x), !global0[_wgslsmith_index_u32(1u, 12u)]));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global4.x, -329f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2542f) * _wgslsmith_f_op_f32(574f * global4.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f + global4.x) * -221f))) - _wgslsmith_f_op_f32(func_1()));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(13235u, 1u), 0u, select(~14526u, 0u, true) << (1u % 32u)), ~(~firstLeadingBit(func_2(Struct_5(11800i, Struct_1(vec3<bool>(global2.x, global0[_wgslsmith_index_u32(61918u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), u_input.c), global0[_wgslsmith_index_u32(6931u, 12u)])))));
    let var_3 = max(abs(~(~(vec2<u32>(11628u, 2783u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, ~abs(41947u)), ~_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(85400u, 0u), vec2<u32>(28546u, 1164u), var_0.x), ~vec2<u32>(0u, 4294967295u)) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 7532u), vec2<u32>(1u, 0u)) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(140858u, 12u)], ~_wgslsmith_clamp_vec2_i32(global1.xz, _wgslsmith_mod_vec2_i32(~global3.b.xw, max(vec2<i32>(-8538i, global3.a), vec2<i32>(u_input.b.x, global3.a))), -firstLeadingBit(u_input.b)), global2.x));
    global1 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(~(~(-vec3<i32>(-10990i, 16588i, -37523i)))), _wgslsmith_mod_vec3_i32(u_input.d, -vec3<i32>(-global1.x, ~global1.x, _wgslsmith_dot_vec4_i32(global3.b, vec4<i32>(74720i, u_input.a, -1i, global1.x)))), -_wgslsmith_mult_vec3_i32(u_input.d, abs(u_input.d) << (select(vec3<u32>(25480u, var_3.x, var_3.x), vec3<u32>(var_3.x, 39290u, var_3.x), var_0.xzx) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x);
}

