struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 10> = array<u32, 10>(1u, 0u, 0u, 5149u, 9841u, 3627u, 37292u, 28317u, 64595u, 15108u);

var<private> global2: array<vec3<i32>, 15>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 0u), 10u)]), 10u)], _wgslsmith_clamp_u32(~u_input.c.x, ~u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.b, ~u_input.b), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(u_input.c.x, u_input.a)))), abs(-1i), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true))), false), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.c.xy, vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(53267u, 10u)])), vec2<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(53034u, 10u)]), global1[_wgslsmith_index_u32(0u, 10u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 486f, -182f, 1231f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-670f, 364f, 403f, 918f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, -1646f, -1305f, -1157f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-499f, 1000f, 537f, -233f) - vec4<f32>(493f, -592f, 1209f, 1179f))))));
    let var_1 = Struct_1(vec4<u32>(38020u, 91667u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 27889u, global1[_wgslsmith_index_u32(var_0.a.x, 10u)]), ~var_0.d), var_0.d.x), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.b), vec2<i32>(var_0.b, 2147483647i)), var_0.b)), ~vec2<i32>(var_0.b, var_0.b)), !select(vec3<bool>(false, all(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x)), all(var_0.c.yz)), vec3<bool>(var_0.c.x && false, var_0.e.x == var_0.e.x, !var_0.c.x), select(var_0.c, !var_0.c, !var_0.c)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.a.wzx, u_input.b, u_input.b), var_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_div_f32(var_0.e.x, var_0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -540f), 605f) * _wgslsmith_div_vec4_f32(vec4<f32>(-409f, 1019f, -838f, var_0.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1074f, -1085f, var_0.e.x, var_0.e.x))))));
    var var_2 = max(i32(-1i) * -_wgslsmith_mult_i32(-2147483647i, firstLeadingBit(var_0.b)), var_1.b);
    let var_3 = -var_0.b;
    global2 = array<vec3<i32>, 15>();
    return ~abs(~max(_wgslsmith_dot_vec4_u32(u_input.c, var_1.a), min(u_input.b.x, 4294967295u)));
}

fn func_2(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = Struct_1(~vec4<u32>(abs(func_3()), ~934u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~global1[_wgslsmith_index_u32(3450u, 10u)], 19072u), 10u)], 4294967295u), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1961i, -2147483647i, -3971i, 2147483647i), vec4<i32>(0i, 0i, -6092i, 5986i)) & 1i, 0i), select(vec3<bool>(true, true, false), arg_0.wxz, arg_0.zwy), u_input.c.zzx, vec4<f32>(_wgslsmith_f_op_f32(round(-974f)), _wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(abs(-777f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-951f * 126f))));
    let var_1 = var_0.e.wyx;
    var var_2 = 8663i < _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-15850i, 2147483647i, var_0.b), var_0.b, 32279i), 1i ^ (560i << (_wgslsmith_add_u32(u_input.c.x, var_0.d.x) % 32u)));
    global1 = array<u32, 10>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.e.x)));
    return vec3<u32>(countOneBits(var_0.d.x), ~_wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_0.d.x, global1[_wgslsmith_index_u32(u_input.b.x, 10u)], var_0.d.x), firstLeadingBit(reverseBits(0u))), u_input.c.x);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(arg_0.a.d, vec3<u32>(63836u, 4294967295u, arg_0.a.a.x)), 1u >> (arg_0.a.a.x % 32u)), _wgslsmith_div_u32(abs(u_input.c.x), 1u >> (~arg_3 % 32u)), arg_0.a.a.x, _wgslsmith_dot_vec3_u32((u_input.c.xxz << (vec3<u32>(39342u, 76497u, 4110u) % vec3<u32>(32u))) & ~vec3<u32>(arg_0.a.a.x, global1[_wgslsmith_index_u32(arg_3, 10u)], 20768u), func_2(vec4<bool>(false, false, arg_0.a.c.x, true)))), _wgslsmith_dot_vec3_i32(abs(global2[_wgslsmith_index_u32(max(arg_0.a.d.x, 1u), 15u)]), global2[_wgslsmith_index_u32(arg_0.a.a.x, 15u)]) >> (arg_3 % 32u), select(vec3<bool>(false, true, !(!arg_0.a.c.x)), arg_0.a.c, arg_0.a.c.x), u_input.c.yxw ^ arg_0.a.d, _wgslsmith_f_op_vec4_f32(-arg_2));
    let var_1 = true;
    var var_2 = var_0;
    var var_3 = var_0.e.x;
    let var_4 = Struct_1(var_2.a, var_0.b, !vec3<bool>(true, true, var_1), _wgslsmith_add_vec3_u32(~u_input.b, _wgslsmith_sub_vec3_u32(u_input.c.yzx >> (firstTrailingBit(u_input.c.yyw) % vec3<u32>(32u)), ~countOneBits(vec3<u32>(5168u, 19307u, arg_3)))), var_0.e);
    return var_2.b;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x * arg_1.e.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.e.x, arg_1.e.x, -961f), _wgslsmith_f_op_vec3_f32(arg_1.e.wzx - arg_1.e.ywx))));
    global0 = arg_1.c.x;
    global1 = array<u32, 10>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, -551f, 1372f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1062f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-arg_1.e.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-1156f)), 378f, _wgslsmith_div_f32(251f, -176f)));
    return Struct_2(Struct_1(vec4<u32>(~(~1u), 4294967295u, global1[_wgslsmith_index_u32(arg_1.d.x, 10u)] | 1u, 39828u), func_1(Struct_2(arg_1), _wgslsmith_f_op_f32(arg_1.e.x * 112f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 499f, var_1.x, arg_1.e.x) * vec4<f32>(var_2.x, var_1.x, arg_1.e.x, var_2.x))), 4294967295u), vec3<bool>(arg_1.c.x, true, any(!vec4<bool>(true, arg_1.c.x, arg_1.c.x, true))), arg_1.a.zyw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, arg_1.e.x, arg_1.e.x, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-1i, Struct_1(u_input.c, ~(-func_1(Struct_2(Struct_1(u_input.c, -3855i, vec3<bool>(true, true, false), vec3<u32>(4294967295u, u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<f32>(-1032f, -579f, -637f, -509f))), -1022f, vec4<f32>(-365f, 209f, -873f, 313f), u_input.a)), vec3<bool>(true, true, true), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, 81242u) | ~4294967295u, u_input.a, ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-193f, -455f, 596f, 1367f), vec4<f32>(397f, -1000f, -1007f, -1000f)))))), 2184u);
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(~0u, 10u)]), ~abs(4294967295u), 1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(56504u, 6804u, 4294967295u, global1[_wgslsmith_index_u32(var_0.a.a.x, 10u)])), ~var_0.a.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(75823u, 54542u, 14905u, 0u), var_0.a.a) % vec4<u32>(32u))), 10u)]), -(func_4(var_0.a.b, var_0.a, var_0.a.a.x).a.b ^ 1i), select(select(!(!vec3<bool>(var_0.a.c.x, true, var_0.a.c.x)), var_0.a.c, !(1800f >= var_0.a.e.x)), !(!(!var_0.a.c)), !all(select(vec4<bool>(var_0.a.c.x, true, false, var_0.a.c.x), vec4<bool>(true, true, true, var_0.a.c.x), var_0.a.c.x))), var_0.a.a.zxy, var_0.a.e);
    var_1 = Struct_1(~vec4<u32>(min(~4294967295u, u_input.b.x), ~var_0.a.d.x >> (~var_1.a.x % 32u), 10379u, _wgslsmith_mod_u32(var_1.d.x, 1u)), var_1.b, select(!(!vec3<bool>(false, false, var_0.a.c.x)), vec3<bool>(any(vec3<bool>(true, true, true)), func_4(-2147483647i, func_4(33592i, var_0.a, 30199u).a, select(global1[_wgslsmith_index_u32(1u, 10u)], 0u, true)).a.c.x, !(!var_0.a.c.x)), vec3<bool>(true, true, any(vec4<bool>(var_1.c.x, var_0.a.c.x, var_1.c.x, var_0.a.c.x)))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.b.x, 4294967295u, global1[_wgslsmith_index_u32(35032u, 10u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(5794u, var_1.a.x, u_input.b.x, 22192u), ~var_1.a, max(var_1.a, var_0.a.a))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.d.x, 4294967295u), 0u), 0u), _wgslsmith_f_op_vec4_f32(abs(var_0.a.e)));
    var var_2 = (~(select(vec2<i32>(84562i, 21052i), vec2<i32>(var_1.b, var_0.a.b), vec2<bool>(var_1.c.x, var_1.c.x)) ^ abs(vec2<i32>(var_1.b, var_1.b))) >> (select(~var_1.a.wx, ~var_1.d.xy, var_0.a.c.yy) % vec2<u32>(32u))) ^ select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, var_0.a.b, 2147483647i), abs(global2[_wgslsmith_index_u32(0u, 15u)])), 1i), vec2<i32>(_wgslsmith_mod_i32(1i, 2147483647i), var_0.a.b), any(select(select(vec4<bool>(var_1.c.x, false, var_0.a.c.x, var_0.a.c.x), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, var_1.c.x, false, true), vec4<bool>(var_1.c.x, var_0.a.c.x, false, var_1.c.x), var_1.c.x), vec4<bool>(true, var_1.c.x, false, var_1.c.x))));
    global0 = !any(var_0.a.c.yx);
    let var_3 = func_4(~_wgslsmith_div_i32(-1i, func_1(func_4(var_2.x, var_0.a, 6832u), -480f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.e.x, var_1.e.x, 544f, -828f)), 29685u)), func_4(-17085i, Struct_1(~(~var_1.a), i32(-1i) * -var_2.x, var_0.a.c, abs(_wgslsmith_mod_vec3_u32(var_0.a.a.yxz, vec3<u32>(1u, 4294967295u, 33988u))), _wgslsmith_f_op_vec4_f32(sign(var_1.e))), ~22083u).a, u_input.b.x & abs(_wgslsmith_sub_u32(76826u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(1u, var_0.a.a.x)))));
    var var_4 = func_4(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-19995i, var_0.a.b, -1i, -27212i), countOneBits(vec4<i32>(-9668i, 2147483647i, -24046i, 1i))), 27719i), 5045i), var_0.a, var_0.a.d.x);
    let var_5 = func_4(_wgslsmith_add_i32(-1i, func_4(~(-52209i), var_3.a, 4294967295u).a.b), Struct_1(vec4<u32>(_wgslsmith_mod_u32(~0u, 13172u), var_4.a.a.x << (_wgslsmith_mult_u32(var_0.a.d.x, 4294967295u) % 32u), 26311u, u_input.b.x), (var_0.a.b << (813u % 32u)) | var_3.a.b, !(!var_1.c), var_1.a.xwx, _wgslsmith_f_op_vec4_f32(-var_1.e)), 0u).a;
    var_2 = select(vec2<i32>(~(-var_0.a.b), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~global2[_wgslsmith_index_u32(var_4.a.a.x, 15u)], vec3<i32>(-34656i, 30878i, 19254i)), func_1(func_4(2147483647i, var_0.a, var_0.a.a.x), var_4.a.e.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.e.x, -630f, var_3.a.e.x)), ~var_0.a.a.x))), select(~(reverseBits(vec2<i32>(var_2.x, -42044i)) ^ (vec2<i32>(24596i, var_0.a.b) | vec2<i32>(var_2.x, var_0.a.b))), vec2<i32>(-1i) * -(~vec2<i32>(1i, var_1.b)), !(!var_4.a.c.xx)), func_4(~(i32(-1i) * -32473i), Struct_1(min(_wgslsmith_add_vec4_u32(vec4<u32>(39202u, 1u, global1[_wgslsmith_index_u32(39735u, 10u)], 11258u), var_1.a), vec4<u32>(4294967295u, var_0.a.a.x, 73487u, global1[_wgslsmith_index_u32(var_1.d.x, 10u)])), 2147483647i, var_4.a.c, var_5.a.xxz, vec4<f32>(var_3.a.e.x, var_3.a.e.x, _wgslsmith_f_op_f32(var_1.e.x * 2329f), var_4.a.e.x)), var_5.a.x & 1u).a.c.xx);
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(var_3.a.d.xy, min(var_3.a.d.yy, var_1.a.yy), var_0.a.c.zx), ~(~vec2<u32>(global1[_wgslsmith_index_u32(var_0.a.d.x, 10u)], var_4.a.a.x)), func_4(-80801i, Struct_1(u_input.c, min(var_4.a.b, 0i), !var_0.a.c, func_2(vec4<bool>(true, var_3.a.c.x, var_5.c.x, false)), vec4<f32>(-693f, 1000f, var_1.e.x, var_1.e.x)), min(abs(var_5.d.x), _wgslsmith_mult_u32(4294967295u, u_input.c.x))).a.c.xy), var_5.b, 2147483647i);
}

