struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 25>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<bool> {
    return !arg_0.a.b;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = global0.c;
    let var_1 = Struct_3(Struct_1(260f, select(vec3<bool>(any(vec4<bool>(global2.x, false, arg_0.b.x, global0.b.b.x)), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 25u)], true)), global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<bool>(global2.x, true, true), global2.zzx), vec2<i32>(global0.c.c.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-3934i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, global0.b.c.x, arg_0.c.x), vec3<i32>(global0.a.c.x, 8575i, 72086i)), arg_2.x))), arg_0, global0.c);
    var var_2 = Struct_3(global0.a, arg_0, Struct_2(arg_0, Struct_1(1001f, !global0.a.b, vec2<i32>(-19095i, ~(-27487i))), abs(countOneBits(select(vec3<i32>(2147483647i, var_1.c.a.c.x, arg_0.c.x), vec3<i32>(3499i, 30651i, 2147483647i), var_1.c.a.b)))));
    global0 = var_1;
    let var_3 = Struct_3(var_2.b, Struct_1(_wgslsmith_div_f32(var_0.a.a, -142f), func_1(Struct_3(Struct_1(arg_1, global2.zww, arg_2.zz), var_2.b, Struct_2(Struct_1(arg_1, global0.a.b, vec2<i32>(-2147483647i, arg_2.x)), arg_0, vec3<i32>(arg_0.c.x, 5489i, 45737i))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(178f, arg_0.a, global0.b.a, var_2.a.a), vec4<f32>(735f, arg_1, 349f, var_2.c.b.a)))))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(max(var_2.a.c, vec2<i32>(arg_2.x, arg_2.x)), vec2<i32>(var_1.b.c.x, 1i)), vec2<i32>(i32(-1i) * -5940i, abs(1i)))), Struct_2(global0.a, Struct_1(_wgslsmith_f_op_f32(sign(global0.c.a.a)), var_2.c.a.b, vec2<i32>(0i ^ var_2.b.c.x, -1i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(36204i, 0i, -36321i), vec3<i32>(1i, var_1.b.c.x, arg_2.x) << (u_input.a.zzy % vec3<u32>(32u)), -var_2.c.c)));
    return !(!(!vec4<bool>(false, !global2.x, false, true)));
}

fn func_2() -> bool {
    var var_0 = global0.b;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a + var_0.a)), vec3<bool>(true, true, true), _wgslsmith_add_vec2_i32(var_0.c, _wgslsmith_div_vec2_i32(global0.c.a.c, -var_0.c))), Struct_1(_wgslsmith_f_op_f32(-global0.b.a), select(vec3<bool>(var_0.b.x, false, global2.x), var_0.b, 1099f > global0.a.a), var_0.c), Struct_2(Struct_1(1077f, !vec3<bool>(false, false, var_0.b.x), vec2<i32>(1i, var_0.c.x) >> (u_input.a.yz % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(trunc(var_0.a)), vec3<bool>(select(false, true, false), u_input.d != u_input.d, true), -vec2<i32>(-28404i, -2147483647i) | vec2<i32>(77790i, global0.a.c.x)), ~select(~global0.c.c, vec3<i32>(46479i, 27757i, 1i), !global0.b.b.x)));
    let var_2 = global0.c.b.a;
    var_1 = Struct_3(global0.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.a))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.a), -202f)), var_1.a.b, -global0.b.c), Struct_2(global0.b, var_1.b, select(vec3<i32>(-79353i, var_1.a.c.x, _wgslsmith_sub_i32(0i, global0.c.a.c.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.c.x, -4711i, -1i) & vec3<i32>(var_0.c.x, -2147483647i, 2147483647i), vec3<i32>(var_1.a.c.x, var_1.b.c.x, var_0.c.x)), vec3<bool>(!var_0.b.x, global0.b.b.x, false && global2.x))));
    global2 = !select(!vec4<bool>(!global2.x, u_input.d > 0u, false, true), select(vec4<bool>(any(vec2<bool>(global0.c.a.b.x, var_1.b.b.x)), false, true, global2.x && false), select(!vec4<bool>(true, global2.x, false, false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(57260u, 25u)], true, var_0.b.x), vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(global0.b.b.x, false, false, global2.x)), true), any(vec4<bool>(var_0.b.x, global0.c.b.b.x, global1[_wgslsmith_index_u32(8904u, 25u)], false))), func_3(Struct_1(1140f, !global0.b.b, var_1.b.c), var_0.a, countOneBits(reverseBits(global0.c.c))));
    return !func_1(Struct_3(global0.a, var_1.b, var_1.c), vec4<f32>(-1000f, global0.c.b.a, 2105f, -1557f)).x;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 2147483647i ^ arg_1.c.x;
    global1 = array<bool, 25>();
    var_0 = reverseBits(arg_2.c.x);
    global2 = vec4<bool>(all(!global2.wxz), true, false, !(!(!(u_input.b.x == 29518u))));
    global1 = array<bool, 25>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.c.a, global0.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(-764f - _wgslsmith_div_f32(global0.a.a, -940f)), global0.c.a.b, _wgslsmith_sub_vec2_i32(global0.a.c, select(vec2<i32>(-33795i, global0.c.a.c.x), global0.c.c.zx, vec2<bool>(false, true)))), global0.b, global0.c.c));
    global1 = array<bool, 25>();
    var var_0 = Struct_3(func_4(true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global0.b.a) * _wgslsmith_f_op_f32(-global0.b.a)), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true), func_1(Struct_3(Struct_1(global0.b.a, vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 25u)], global2.x, true), global0.b.c), global0.c.a, Struct_2(global0.b, Struct_1(575f, global2.zzy, vec2<i32>(0i, global0.c.c.x)), vec3<i32>(-24309i, 12649i, -1i))), vec4<f32>(-799f, -131f, global0.c.b.a, -430f)), func_2()), _wgslsmith_clamp_vec2_i32(global0.b.c, vec2<i32>(-37841i, 1i), global0.b.c) ^ (vec2<i32>(global0.a.c.x, -12356i) << (u_input.a.zy % vec2<u32>(32u)))), global0.c, global0.c.b), Struct_1(_wgslsmith_f_op_f32(ceil(global0.c.a.a)), global0.a.b, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.b.c ^ vec2<i32>(-1i, global0.a.c.x), countOneBits(vec2<i32>(global0.b.c.x, global0.a.c.x)), -global0.b.c), ~_wgslsmith_sub_vec2_i32(global0.c.b.c, vec2<i32>(global0.c.b.c.x, global0.c.b.c.x)))), global0.c);
    var var_1 = global0.c;
    let var_2 = func_3(Struct_1(var_1.b.a, func_1(Struct_3(func_4(var_1.b.b.x, global0.c.b, var_0.c, var_0.c.b), func_4(global2.x, Struct_1(var_0.c.b.a, vec3<bool>(false, false, global2.x), var_1.c.yy), global0.c, Struct_1(global0.c.a.a, global0.b.b, var_1.a.c)), Struct_2(Struct_1(global0.a.a, var_1.a.b, vec2<i32>(var_0.c.b.c.x, var_0.a.c.x)), var_1.b, var_0.c.c)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.c.b.a, global0.b.a, -161f, var_0.b.a)))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -var_1.b.c, global0.a.c)), -1000f, ~var_0.c.c);
    global2 = vec4<bool>(any(vec3<bool>(false, global0.b.a < -1399f, true)) | false, func_4(u_input.a.x >= ~u_input.c, Struct_1(1090f, var_2.xxz, ~global0.a.c), Struct_2(Struct_1(1200f, vec3<bool>(var_0.a.b.x, false, true), vec2<i32>(0i, 12407i)), func_4(false, global0.c.a, global0.c, global0.a), vec3<i32>(var_1.b.c.x, 1i, global0.c.a.c.x)), Struct_1(_wgslsmith_f_op_f32(floor(global0.b.a)), var_2.wwx, ~var_0.b.c)).b.x && func_4(var_0.c.b.b.x && !var_2.x, func_4(1u == u_input.c, func_4(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], var_0.c.a, var_0.c, var_1.b), Struct_2(Struct_1(408f, var_1.a.b, vec2<i32>(global0.a.c.x, var_1.b.c.x)), Struct_1(var_1.b.a, vec3<bool>(true, global1[_wgslsmith_index_u32(62785u, 25u)], false), var_1.a.c), var_0.c.c), var_1.b), var_0.c, Struct_1(_wgslsmith_f_op_f32(max(global0.b.a, -2486f)), vec3<bool>(var_0.a.b.x, var_0.a.b.x, false), ~var_0.b.c)).b.x, any(vec4<bool>(max(12911u, u_input.d) > u_input.d, false, true | any(var_2.yy), (u_input.a.x & 4294967295u) <= (497u ^ u_input.a.x))), true);
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.b.a))))), vec3<bool>(any(var_2), !func_1(Struct_3(Struct_1(var_1.b.a, vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false, var_0.b.b.x), vec2<i32>(42947i, global0.b.c.x)), Struct_1(211f, global2.xzy, var_1.a.c), Struct_2(Struct_1(global0.b.a, var_2.wyx, var_0.a.c), var_0.a, var_0.c.c)), vec4<f32>(var_1.a.a, global0.c.a.a, 317f, var_1.b.a)).x, global0.b.b.x), ~var_1.b.c), global0.b, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(abs(var_3.a.a)), 1u, max(~(~u_input.a.zzy), vec3<u32>(u_input.b.x ^ ~u_input.b.x, u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 35456u), u_input.d))), abs(42797u));
}

