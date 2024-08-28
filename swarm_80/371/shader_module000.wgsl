struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: bool,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 20>;

var<private> global2: vec3<u32>;

var<private> global3: array<i32, 18> = array<i32, 18>(0i, 65956i, i32(-2147483648), -48608i, -49936i, 0i, -33175i, -38075i, -1433i, -5127i, 1i, 2147483647i, -8175i, 44071i, 4142i, i32(-2147483648), -64509i, i32(-2147483648));

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    var var_0 = 2147483647i;
    let var_1 = 2954u;
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, 4566u, 31066u), 18u)];
    var var_2 = firstLeadingBit(20078i);
    global2 = vec3<u32>(~_wgslsmith_mult_u32(global2.x, 40592u), _wgslsmith_clamp_u32(var_1, _wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(21320u, 20u)]), _wgslsmith_add_u32(9840u, reverseBits(u_input.b.x))), ~(~(~global1[_wgslsmith_index_u32(1u, 20u)])));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec2<u32>(~global2.x, ~u_input.b.x);
    let var_1 = Struct_4(arg_0, u_input.c, any(!vec4<bool>(false, select(arg_0.c, true, true), 1000f >= arg_0.b, all(vec4<bool>(arg_0.c, true, arg_1.x, arg_1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 948f, arg_0.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, arg_0.b, -465f, 180f))), _wgslsmith_f_op_vec4_f32(func_3()), vec4<bool>(true, !arg_1.x, true, !arg_1.x)))), Struct_2(Struct_1(_wgslsmith_sub_i32(5143i, 18566i << (var_0.x % 32u)), -firstLeadingBit(vec3<i32>(arg_0.a.a, -2147483647i, arg_0.a.a))), _wgslsmith_f_op_f32(-1072f * _wgslsmith_f_op_vec4_f32(func_3()).x), all(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, arg_1.x), arg_0.c))));
    let var_2 = var_1.d.zz;
    global3 = array<i32, 18>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1472f * -1122f), 1670f), _wgslsmith_f_op_vec4_f32(func_3()).x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f))))), var_1.d.x, var_2.x, arg_0.b);
    return _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~16307i, 1i, firstLeadingBit(32221i)), abs(-(~max(var_1.a.a.a, -14468i))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = arg_2.zyz;
    var var_1 = ~_wgslsmith_clamp_i32(13803i, func_2(Struct_2(Struct_1(u_input.c.x, vec3<i32>(global3[_wgslsmith_index_u32(0u, 18u)], u_input.c.x, 19410i)), -344f, true), arg_2.yzz), firstLeadingBit(~(~(-28206i))));
    var_0 = select(!select(select(select(arg_2.zxz, vec3<bool>(false, arg_2.x, true), var_0.x), !arg_2.zzx, !var_0.x), arg_2.xwz, !(!arg_2.x)), !select(arg_2.zzz, vec3<bool>(!arg_2.x, !arg_2.x, true && var_0.x), var_0.x), arg_2.xxy);
    let var_2 = Struct_2(Struct_1(2147483647i << (countOneBits(~4294967295u) % 32u), max(abs(u_input.c), u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-156f)) * _wgslsmith_f_op_f32(-242f + arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(807f - arg_1.x))))), any(select(select(arg_2.xxz, !arg_2.zxz, select(vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, arg_2.x))), select(arg_2.xxy, !vec3<bool>(false, false, var_0.x), true), arg_0 > -1436i)));
    let var_3 = Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_2.a.a, arg_0, var_2.a.b.x), u_input.c.x, 2147483647i) >> (select(_wgslsmith_clamp_vec3_u32(u_input.b.ywy, vec3<u32>(arg_3, 22168u, u_input.b.x), u_input.b.zzz), u_input.b.yxy, var_0.x) % vec3<u32>(32u)), ~var_2.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-760f - 662f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.b)), _wgslsmith_f_op_f32(trunc(-715f))))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(false || all(vec3<bool>(true, true, true))), -firstTrailingBit(-u_input.c.x) < -1i, !(!(global3[_wgslsmith_index_u32(global2.x, 18u)] < u_input.c.x) != true));
    global1 = array<u32, 20>();
    global3 = array<i32, 18>();
    let var_1 = vec3<f32>(1651f, _wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2990f, 903f), _wgslsmith_f_op_f32(660f - 296f), all(vec4<bool>(var_0, var_0, var_0, var_0))))))));
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1));
    let var_4 = func_1(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 425f) - var_3)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(var_3, vec3<f32>(var_3.x, var_3.x, -229f)))))) - _wgslsmith_f_op_vec3_f32(var_3 - var_3)), vec4<bool>(true, any(select(!vec4<bool>(true, true, var_0, var_0), select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(var_0, true, true, var_0), vec4<bool>(var_0, var_0, var_0, var_0)), vec4<bool>(var_0, var_0, var_0, var_0))), true, any(!(!vec4<bool>(true, true, true, var_0)))), firstTrailingBit(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(61849u, global1[_wgslsmith_index_u32(global2.x, 20u)]) << (1u % 32u), 20u)]));
    global0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1619f, -736f, 205f, var_3.x)))))) - vec4<f32>(-200f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_3.x, var_3.x)))), var_1.x, -784f)), 30236i, -vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(5591u), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], 12758u)), 18u)], global3[_wgslsmith_index_u32(~(~43826u), 18u)]), firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-23885i, 0i, u_input.c.x, global3[_wgslsmith_index_u32(global2.x, 18u)]), vec4<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2220u, 20u)], 20u)], 18u)], var_4.a, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 18u)], 0i)), ~vec4<i32>(1i, 0i, -2147483647i, 52820i))) << (u_input.b.x % 32u), -928f);
}

