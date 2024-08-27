struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = select(vec2<bool>(all(vec2<bool>(any(vec3<bool>(true, true, false)), true)), true && all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(!all(vec2<bool>(true, true)), !any(vec4<bool>(false, true, true, false))), vec2<bool>(false, any(vec2<bool>(true, true)))), !vec2<bool>(true, true || (-13972i != arg_0)));
    var_0 = !(!select(select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), var_0.x), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true)), vec2<bool>(u_input.a > u_input.a, 54277u != u_input.b), all(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, true, true, var_0.x)))));
    return !select(select(!(!vec4<bool>(true, var_0.x, false, true)), vec4<bool>(0u > u_input.c, select(false, var_0.x, var_0.x), true, var_0.x), var_0.x), select(!select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, true, true)), select(!vec4<bool>(var_0.x, true, var_0.x, true), !vec4<bool>(var_0.x, true, false, var_0.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x)), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x))), any(vec2<bool>(true, true)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec4<i32> {
    global0 = array<i32, 3>();
    var var_0 = vec2<bool>(arg_1.x, arg_1.x);
    global0 = array<i32, 3>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2250f), 626f, 508f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(112f))))))));
    var var_2 = min(vec2<u32>(firstTrailingBit(25298u), 0u), ~vec2<u32>(u_input.c, 6409u));
    return _wgslsmith_sub_vec4_i32(~(-arg_0), select(vec4<i32>(min(-26291i, max(-43586i, global0[_wgslsmith_index_u32(u_input.c, 3u)])), -1i, ~arg_0.x, ~countOneBits(-1i)), ~arg_0, arg_1));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(743f, 398f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-959f, -254f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-423f, 219f) + vec2<f32>(659f, 176f)))), func_4(vec4<i32>(_wgslsmith_sub_i32(u_input.a, global0[_wgslsmith_index_u32(7062u, 3u)]), _wgslsmith_clamp_i32(11856i, arg_0, u_input.a), countOneBits(-29197i), -36231i), func_3(~arg_0)), vec4<bool>(false, !arg_1.x, !(!arg_1.x), false & all(vec3<bool>(false, arg_1.x, arg_1.x))), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(arg_0, arg_0)) | vec2<i32>(0i, u_input.a), vec2<i32>(1i, 1i) & firstLeadingBit(vec2<i32>(u_input.a, u_input.a)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-200f, -1060f) + vec2<f32>(386f, -1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-471f, 522f), vec2<f32>(1051f, 662f), true)), vec2<bool>(arg_1.x, true)))), _wgslsmith_add_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 9466i, 42844i, -1i), vec4<i32>(-2147483647i, 1i, -2147483647i, 1i), vec4<i32>(24070i, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 3u)], -75581i)), reverseBits(vec4<i32>(-644i, global0[_wgslsmith_index_u32(u_input.b, 3u)], -26003i, global0[_wgslsmith_index_u32(u_input.c, 3u)])), any(vec4<bool>(true, arg_1.x, arg_1.x, false))), vec4<i32>(_wgslsmith_div_i32(arg_0, u_input.a), -2147483647i, ~(-2147483647i), 0i)), vec4<bool>(arg_1.x, false, true, func_3(~(-24451i)).x), ~(~vec2<i32>(0i, u_input.a))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(703f, 385f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-114f, 1000f) - vec2<f32>(-452f, 325f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(838f, -651f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(838f, 289f))))), vec4<i32>(-1i) * -select(vec4<i32>(arg_0, 44228i, 21400i, -2147483647i), vec4<i32>(arg_0, global0[_wgslsmith_index_u32(u_input.b, 3u)], u_input.a, -1580i), vec4<bool>(arg_1.x, true, arg_1.x, false)), select(func_3(1i), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_1.x, arg_1.x, true), func_3(-10636i)), vec4<bool>(func_3(-36584i).x, u_input.c <= u_input.b, true, false || arg_1.x)), _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(u_input.a, 1i)), abs(-vec2<i32>(2147483647i, -11472i)))));
    var_0 = Struct_2(Struct_1(var_0.a.a, var_0.c.b, !var_0.b.c, var_0.b.d), var_0.b, var_0.c);
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(min(0u, 0u), 4294967295u, u_input.b), ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(18287u, u_input.b, 4294967295u), vec3<u32>(35289u, 1u, u_input.c)))) << (_wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 25428u, u_input.c), ~vec3<u32>(45029u, u_input.c, 45667u), vec3<u32>(u_input.c, 15752u, u_input.b) << (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u))), select(vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, u_input.b)), 4294967295u ^ u_input.b), (vec3<u32>(u_input.b, 4294967295u, 0u) & vec3<u32>(u_input.c, u_input.c, u_input.b)) << (vec3<u32>(34438u, 31193u, 47477u) % vec3<u32>(32u)), var_0.b.c.x)) % vec3<u32>(32u));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, 625f, var_0.c.a.x)), vec3<f32>(var_0.a.a.x, var_0.b.a.x, var_0.b.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(858f, var_0.a.a.x, var_0.c.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(246f, var_0.b.a.x, var_0.b.a.x), vec3<f32>(-464f, var_0.c.a.x, -607f)))))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1510f, -1105f, _wgslsmith_f_op_f32(-790f + _wgslsmith_f_op_f32(var_0.a.a.x + var_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(171f, var_0.a.a.x, 562f, -1381f), vec4<f32>(var_0.b.a.x, var_0.a.a.x, -1145f, -308f))) + vec4<f32>(-1688f, 552f, var_0.b.a.x, var_0.b.a.x))))), Struct_1(vec2<f32>(1f, 1f), var_0.a.b, vec4<bool>(var_0.b.c.x, any(select(var_0.b.c, vec4<bool>(true, var_0.b.c.x, var_0.a.c.x, false), var_0.b.c)), !any(vec3<bool>(false, arg_1.x, true)), select(!var_0.b.c.x, true, false)), var_0.b.b.yy));
    var var_3 = !var_2.c.c.x;
    return Struct_4(true, abs(var_0.c.b.xzx) | -_wgslsmith_mod_vec3_i32(var_0.c.b.wwz, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 1i, 23915i), vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 3u)], -4294i, var_0.c.d.x))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> Struct_2 {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_0 = func_2(max(reverseBits(i32(-1i) * -6052i), -1i), vec2<bool>(false, 30225i == u_input.a));
    var var_1 = arg_0.a;
    let var_2 = all(vec3<bool>(((true && arg_0.c.c.x) && false) || (all(var_1.c.wy) & func_2(-1i, vec2<bool>(arg_0.a.c.x, arg_0.b.c.x)).a), false || any(vec4<bool>(arg_1, true, var_0.a, arg_1)), var_1.c.x));
    return arg_0;
}

fn func_5(arg_0: Struct_2) -> i32 {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_0 = arg_0.c.c.x;
    var var_1 = true;
    let var_2 = func_1(func_1(Struct_2(func_1(Struct_2(Struct_1(arg_0.a.a, arg_0.a.b, arg_0.c.c, arg_0.a.d), arg_0.c, arg_0.c), func_3(2147483647i).x, vec4<i32>(-11407i, 27398i, 37621i, u_input.a)).c, arg_0.a, func_1(arg_0, false, arg_0.a.b).b), arg_0.a.c.x, vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4208u, 3u)], -25141i, global0[_wgslsmith_index_u32(u_input.b, 3u)], arg_0.c.b.x), arg_0.a.b)), arg_0.c.c.x, arg_0.c.b).c.c;
    return -_wgslsmith_sub_i32(arg_0.c.d.x, -25075i) & 8545i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_1(Struct_2(Struct_1(vec2<f32>(1285f, -199f), vec4<i32>(-15184i, global0[_wgslsmith_index_u32(u_input.b, 3u)], -2147483647i, -2147483647i), vec4<bool>(true, true, false, true), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 3u)])), Struct_1(vec2<f32>(805f, -1328f), vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.c, 3u)], -17587i), vec4<bool>(true, true, false, true), vec2<i32>(-1i, 37856i)), Struct_1(vec2<f32>(-1098f, 1246f), vec4<i32>(u_input.a, -31750i, global0[_wgslsmith_index_u32(4294967295u, 3u)], 2147483647i), vec4<bool>(true, true, false, true), vec2<i32>(-514i, 88353i))), false, _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(64083u, 3u)], -20095i, 2147483647i, 3212i), vec4<i32>(-52495i, 0i, global0[_wgslsmith_index_u32(83207u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)])))) & -2147483647i);
}

