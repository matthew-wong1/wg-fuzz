struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, false, false, true, true, true, true, true, true, true, false, false, true, true, true, true, true, false, false);

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(0i, -17014i, 53566i, 21808i), vec4<i32>(3069i, 0i, -34025i, -11433i), vec4<i32>(0i, i32(-2147483648), 5565i, 2147483647i), vec4<i32>(2147483647i, 0i, 2147483647i, -9338i), vec4<i32>(-16680i, 2147483647i, 2147483647i, 50033i), vec4<i32>(0i, 53102i, -32448i, i32(-2147483648)), vec4<i32>(-49837i, -39776i, 38488i, 0i), vec4<i32>(-28901i, 0i, 11425i, 0i), vec4<i32>(74884i, -3729i, -1i, 36307i), vec4<i32>(i32(-2147483648), 16703i, -1179i, -5469i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(1532i, -62435i, 2147483647i, -14971i), vec4<i32>(1i, 0i, -5507i, 1i), vec4<i32>(-1i, 3555i, 28436i, -32827i), vec4<i32>(34095i, 2147483647i, -1i, 2147483647i), vec4<i32>(2147483647i, 1i, 10212i, -1i), vec4<i32>(1i, 0i, -16312i, 61170i), vec4<i32>(0i, 1i, -18173i, -26500i), vec4<i32>(33324i, 23928i, -2990i, -1i), vec4<i32>(-59696i, 0i, 1i, 8576i), vec4<i32>(1i, i32(-2147483648), 49801i, -1i), vec4<i32>(i32(-2147483648), 3421i, i32(-2147483648), -33882i), vec4<i32>(-2983i, -1i, 33316i, 49743i), vec4<i32>(1i, -24357i, 0i, -1i), vec4<i32>(-36899i, 42122i, 1i, i32(-2147483648)), vec4<i32>(62471i, -1i, -21562i, 0i), vec4<i32>(-4023i, 1i, 1i, i32(-2147483648)), vec4<i32>(-39909i, -36297i, 18790i, -1i));

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 0u, 8385u);

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = ~0u;
    var var_1 = Struct_2(arg_0, ~_wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.b.x)), -global1[_wgslsmith_index_u32(abs(global2.x), 28u)]));
    let var_2 = u_input.d.x;
    let var_3 = var_1.a.b;
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1865f + _wgslsmith_div_f32(var_1.a.a.x, -1074f)), 1293f) - 593f)));
    return ~_wgslsmith_mult_vec2_u32(vec2<u32>(8488u, abs(~4294967295u)), max(~global2.yx, global2.xy));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = func_3(Struct_1(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(343f, -552f)) - _wgslsmith_f_op_f32(194f * _wgslsmith_f_op_f32(f32(-1f) * -942f))), global0[_wgslsmith_index_u32(global2.x, 19u)]));
    var var_1 = select(select(!vec3<bool>(!arg_2, true, global3.c), select(select(select(vec3<bool>(global3.c, false, global0[_wgslsmith_index_u32(1u, 19u)]), vec3<bool>(arg_0.b.c, true, true), false), !vec3<bool>(false, global3.c, arg_0.b.c), true), select(select(vec3<bool>(arg_3.a.c, false, arg_2), vec3<bool>(arg_0.b.c, global0[_wgslsmith_index_u32(var_0.x, 19u)], false), vec3<bool>(false, arg_0.b.c, global3.c)), vec3<bool>(arg_3.a.c, true, global0[_wgslsmith_index_u32(var_0.x, 19u)]), arg_3.a.a.x < -451f), all(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 19u)], false, arg_2, true))), vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 19u)], arg_0.b.c, arg_2)), true, true)), select(!vec3<bool>(!global0[_wgslsmith_index_u32(14213u, 19u)], global0[_wgslsmith_index_u32(global2.x >> (global2.x % 32u), 19u)], true), vec3<bool>(select(true, true, select(true, arg_0.b.c, false)), !arg_0.b.c, !(!arg_3.a.c)), vec3<bool>(select(true, arg_3.a.c, all(vec2<bool>(false, false))), true, !global0[_wgslsmith_index_u32(var_0.x, 19u)] | global3.c)), vec3<bool>(!((arg_1 >> (var_0.x % 32u)) == -10959i), select(arg_0.b.c, all(select(vec2<bool>(arg_3.a.c, true), vec2<bool>(arg_0.b.c, true), vec2<bool>(true, true))), true), true));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 19u)];
    var var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(u_input.d), vec3<i32>(arg_1, -1i, arg_0.a.x) | u_input.a), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, arg_3.b.x, -5473i), arg_3.b.wyx)), select(_wgslsmith_mult_vec3_i32(~vec3<i32>(60618i, arg_3.b.x, arg_3.b.x), vec3<i32>(arg_0.a.x, arg_3.b.x, -2147483647i)), -vec3<i32>(-7921i, arg_0.a.x, u_input.c), !(!vec3<bool>(false, false, arg_0.b.c)))) ^ _wgslsmith_sub_vec3_i32(reverseBits(-vec3<i32>(arg_1, arg_0.a.x, 0i)), arg_3.b.yyy);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global3.a))))) * arg_3.a.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-137f + arg_3.a.a.x))), true);
    return _wgslsmith_div_f32(arg_3.a.b, _wgslsmith_f_op_f32(var_4.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(537f))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_3(u_input.a.xz, Struct_1(vec4<f32>(global3.b, global3.a.x, -265f, global3.b), 453f, global0[_wgslsmith_index_u32(global2.x, 19u)])), u_input.c, false, Struct_2(Struct_1(global3.a, global3.b, false), vec4<i32>(u_input.a.x, -21112i, u_input.b.x, u_input.a.x)))), global3.a.x)), global3.a.x, all(select(arg_1, vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 19u)], false), false)))), false)));
    let var_1 = abs(arg_2.x);
    let var_2 = false;
    let var_3 = select(_wgslsmith_sub_i32(-2060i, u_input.b.x), ~(-(i32(-1i) * -14432i)), all(vec4<bool>(arg_1.x, global3.c, true, var_2)) && global0[_wgslsmith_index_u32(~0u, 19u)]) >= 2147483647i;
    global1 = array<vec4<i32>, 28>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global3.a.zzw), vec3<f32>(var_0, -1015f, global3.b), true))))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    global1 = array<vec4<i32>, 28>();
    global2 = vec3<u32>(~(global2.x ^ ~global2.x), 0u & global2.x, ~(reverseBits(global2.x) << (~36351u % 32u)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x * 107f)), _wgslsmith_f_op_f32(exp2(global3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -941f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global3.a.x, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(select(global3.a, global3.a, true)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global3.a * vec4<f32>(global3.b, -1049f, arg_1.x, -236f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(global2.x, 14331u), select(vec4<bool>(false, false, global3.c, false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(global2.x, 19u)], true), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(global2.x, 19u)])), ~global2.yx)).x, _wgslsmith_f_op_f32(-global3.a.x)))), _wgslsmith_f_op_f32(ceil(1f)) > _wgslsmith_f_op_f32(1040f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1209f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global3.a.yw, _wgslsmith_f_op_vec2_f32(global3.a.yw - _wgslsmith_f_op_vec2_f32(abs(global3.a.yw)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a.yx * global3.a.wy))))));
    var var_1 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global3.b)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global3.a.zwz * global3.a.yzw), _wgslsmith_f_op_vec3_f32(func_1(select(global2.yz, ~vec2<u32>(global2.x, 48193u), global0[_wgslsmith_index_u32(~259u, 19u)]), !vec4<bool>(global3.c, global3.c, global0[_wgslsmith_index_u32(25357u, 19u)], global3.c), vec2<u32>(_wgslsmith_sub_u32(68616u, 12294u), global2.x))))));
    var var_2 = !any(select(!(!vec3<bool>(true, global3.c, true)), vec3<bool>(true, !var_1.c, true), var_1.c));
    var var_3 = Struct_2(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1484f, 1000f, global3.b) + vec3<f32>(var_0.x, 1008f, var_0.x)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.a.x, global3.a.x)), _wgslsmith_div_vec3_f32(global3.a.zzx, var_1.a.xzz))))), vec4<i32>(firstLeadingBit(-(u_input.d.x << (0u % 32u))), 11518i, u_input.b.x, _wgslsmith_mod_i32(u_input.d.x, 28040i)));
    let var_4 = vec4<bool>(func_4(176f, _wgslsmith_f_op_vec3_f32(-var_1.a.zwy)).c, !any(vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 19u)], true)) & (_wgslsmith_f_op_f32(-var_1.a.x) < _wgslsmith_f_op_f32(floor(346f))), global3.c, -1i != var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b, global2.x, var_3.a.a.x);
}

