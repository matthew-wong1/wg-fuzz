struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32> = vec4<i32>(1i, -1280i, -35488i, 23497i);

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<f32, 13> = array<f32, 13>(-535f, 888f, -384f, 460f, 681f, 946f, 188f, 746f, -1535f, -1055f, -1178f, -781f, -1013f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> bool {
    var var_0 = vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, arg_0.x, 7213u))), reverseBits(u_input.a.x)) | u_input.b.xw;
    var var_1 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true))), !(global3[_wgslsmith_index_u32(u_input.b.x, 13u)] < 838f))));
    global3 = array<f32, 13>();
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13796u, ~17804u, _wgslsmith_mult_u32(~4294967295u, arg_0.x) >> ((arg_0.x >> (arg_0.x % 32u)) % 32u)), vec4<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(select(max(arg_0.yy, u_input.a.zw), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, 1u), vec2<u32>(arg_0.x, 8598u)), vec2<bool>(false, true)), _wgslsmith_div_vec2_u32(firstLeadingBit(u_input.a.zx), _wgslsmith_sub_vec2_u32(vec2<u32>(24549u, 60218u), vec2<u32>(94688u, u_input.b.x)))), reverseBits(1u), ~4294967295u)), 1u)];
    let var_3 = Struct_1(-min(1i, -(~481i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(-var_2.b), global0.d), ~firstTrailingBit(global0.d >> (arg_0.x % 32u))), global0.c, 1i);
    return true;
}

fn func_2() -> Struct_1 {
    global1 = -((firstLeadingBit(min(vec4<i32>(global0.a, -1i, global0.b, global1.x), vec4<i32>(global0.b, 24981i, 1i, -2147483647i))) | min(vec4<i32>(global1.x, global1.x, global0.d, global0.a) ^ vec4<i32>(2147483647i, global1.x, 31300i, global1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 2147483647i, 11770i, global1.x), vec4<i32>(global1.x, 57305i, 21886i, global0.b)))) << (vec4<u32>(~17822u, select(~u_input.a.x, ~u_input.b.x, true), 4294967295u, u_input.a.x) % vec4<u32>(32u)));
    let var_0 = !vec4<bool>(func_3(abs(vec4<u32>(u_input.a.x, 0u, u_input.b.x, 42195u) << (u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 13u)] + global3[_wgslsmith_index_u32(4294967295u, 13u)]))), !(true & all(vec4<bool>(true, true, false, true))), (~global0.b != -4838i) && (all(vec2<bool>(true, false)) && true), true);
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(5631u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), 1u)];
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(0u, 13u)])) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(42054u, 13u)] + global3[_wgslsmith_index_u32(u_input.a.x, 13u)])))), 1117f, var_0.x)), -2031f);
    let var_3 = Struct_1(1i, ~var_1.d, countOneBits(vec2<i32>(var_1.d, var_1.d & 42138i)), -2369i);
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), 1u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> bool {
    global3 = array<f32, 13>();
    var var_0 = select(global1.wxw, global1.wwz, !vec3<bool>(u_input.b.x != u_input.b.x, true, ~arg_2 <= 1u));
    global2 = array<Struct_1, 1>();
    global0 = Struct_1(_wgslsmith_mod_i32(var_0.x, -2147483647i), 1357i, global0.c, 2147483647i);
    global0 = Struct_1(max(global0.b, global0.c.x), ~_wgslsmith_clamp_i32(-23145i, global0.a, -1568i), vec2<i32>(1i, _wgslsmith_mod_i32(-_wgslsmith_add_i32(1i, var_0.x), _wgslsmith_dot_vec3_i32(global1.zzz, ~vec3<i32>(global0.a, 1i, 0i)))), 2147483647i);
    return any(select(vec4<bool>(false, true, arg_0, !(false && arg_0)), vec4<bool>(arg_0, true, arg_2 >= 1u, (arg_2 < 0u) || (arg_0 | true)), !(!select(false, true, false))));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = select(vec4<bool>(!(!(false && arg_0)), false || (u_input.a.x >= ~8298u), true, !arg_0), select(vec4<bool>(!(!arg_0), true || arg_0, !all(vec4<bool>(false, true, true, arg_0)), arg_0), !select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0), arg_0), !arg_0), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 13u)]) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-395f + 125f)))), func_4((all(vec3<bool>(arg_0, arg_0, true)) | true) & arg_0, func_2(), u_input.a.x));
    global3 = array<f32, 13>();
    var var_1 = 0u;
    var_1 = u_input.a.x;
    let var_2 = u_input.a;
    return firstTrailingBit(reverseBits(select((2496i ^ global1.x) | global0.b, _wgslsmith_dot_vec2_i32(global1.zz | vec2<i32>(7314i, global1.x), func_2().c), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(3848i, global0.b), _wgslsmith_div_vec2_i32(global0.c, vec2<i32>(global1.x, global0.d))), vec2<i32>(select(global0.c.x, global1.x, false), select(global1.x, -25245i, false)))) & func_1(select(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), true, true));
    global3 = array<f32, 13>();
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-15335i, countOneBits(2147483647i)), -_wgslsmith_sub_i32(~global0.b, global0.b << (u_input.b.x % 32u)), _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(-11244i, global1.x, 69327i), global1.yyy), ~global1.wxw >> (vec3<u32>(31766u, 1u, 6920u) % vec3<u32>(32u)))), ~_wgslsmith_mult_vec3_i32(global1.wyz, global1.wwz));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 13u)], 514f)))), _wgslsmith_f_op_f32(-1730f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(194f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(17977u, 13u)]) - global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(43005u, u_input.a.x), 13u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(253f, _wgslsmith_div_f32(-2582f, -1000f), true)))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~25250u), 11530u), 13u)]);
    var_0 = 0i;
    var var_3 = func_2();
    var_1 = abs(global1.ywx);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.a), vec3<u32>(~1u, u_input.a.x, 1u), vec2<i32>(-2147483647i << ((~u_input.a.x ^ 1u) % 32u), ~(0i | -var_3.a)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 13u)] * global3[_wgslsmith_index_u32(4294967295u, 13u)]) - _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(0u, 13u)]))))), _wgslsmith_f_op_f32(-1177f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(17624u, 13u)])), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(9468u, u_input.a.x), 13u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.a.x), 13u)])), -367f));
}

