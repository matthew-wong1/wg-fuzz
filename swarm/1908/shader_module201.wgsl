struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = vec3<f32>(-1271f, 1586f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-284f, 1f)));
    var var_1 = vec4<bool>(select(!(true & all(vec3<bool>(false, false, true))), true, !(!any(vec2<bool>(false, true)))), any(vec3<bool>(true, var_0.x >= 532f, all(vec2<bool>(false, false)))) && !all(vec3<bool>(true, false, false)), true, !(!(!any(vec3<bool>(true, true, true)))));
    var var_2 = -_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.e.x, u_input.c.x), _wgslsmith_mult_i32(~arg_0.x, -u_input.e.x) >> (4294967295u % 32u));
    var var_3 = vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x), arg_1.a.x, u_input.b.x, ~59331u) >> ((~vec4<u32>(2778u, 69685u >> (1u % 32u), arg_1.a.x, 1u) & ~(firstLeadingBit(vec4<u32>(u_input.b.x, arg_1.a.x, u_input.b.x, 31504u)) << (countOneBits(vec4<u32>(arg_1.a.x, u_input.b.x, u_input.b.x, arg_1.a.x)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_4 = arg_1;
    return vec2<bool>(true, ~(~(~arg_1.a.x)) >= _wgslsmith_clamp_u32(arg_1.a.x, _wgslsmith_dot_vec3_u32(var_3.ywx, vec3<u32>(1u, arg_1.a.x, var_4.a.x) & u_input.b), max(~arg_1.a.x, u_input.b.x)));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: u32) -> vec3<u32> {
    return ~firstTrailingBit(~vec3<u32>(abs(u_input.b.x), u_input.b.x >> (19998u % 32u), 4294967295u));
}

fn func_2(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = true;
    let var_1 = Struct_1(func_4(u_input.a.x, select(func_3(abs(vec4<i32>(arg_0.x, arg_0.x, u_input.d, 0i)), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 48201u))), vec2<bool>(true, true), select(vec2<bool>(true, true), !vec2<bool>(var_0, true), all(vec2<bool>(var_0, var_0)))), _wgslsmith_div_u32(u_input.b.x & 73155u, _wgslsmith_div_u32(31923u, 1770u)) ^ abs(u_input.b.x << (50181u % 32u))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2713f))), false))));
    let var_3 = var_1;
    var_2 = _wgslsmith_f_op_f32(round(-522f));
    return min(u_input.a, _wgslsmith_div_vec4_i32(-vec4<i32>(countOneBits(arg_0.x), countOneBits(2147483647i), -26332i | u_input.c.x, _wgslsmith_mod_i32(u_input.d, -33726i)), vec4<i32>(2147483647i, -2147483647i >> (~var_3.a.x % 32u), abs(~u_input.e.x), -25036i)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = select(!(!vec4<bool>(all(arg_0), u_input.b.x > u_input.b.x, arg_0.x, true)), select(!select(!vec4<bool>(arg_0.x, true, arg_2, true), select(vec4<bool>(arg_2, arg_0.x, true, arg_0.x), vec4<bool>(arg_2, false, false, true), arg_2), arg_2), vec4<bool>(true, func_3(vec4<i32>(u_input.d, 0i, 0i, 0i), Struct_1(u_input.b)).x | (arg_0.x && arg_0.x), arg_0.x, !arg_0.x), vec4<bool>(func_3(vec4<i32>(-6355i, arg_1.x, 23267i, u_input.c.x), Struct_1(u_input.b)).x, !any(vec4<bool>(true, false, false, arg_0.x)), false, true)), select(!select(select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_2, false), vec4<bool>(false, true, true, false)), !vec4<bool>(arg_0.x, true, arg_2, arg_0.x), arg_0.x), select(!select(vec4<bool>(arg_2, arg_2, true, arg_0.x), vec4<bool>(false, true, true, arg_0.x), arg_0.x), select(!vec4<bool>(true, false, arg_2, false), !vec4<bool>(arg_0.x, arg_2, false, arg_0.x), all(vec4<bool>(false, true, arg_0.x, arg_2))), !vec4<bool>(true, arg_0.x, false, arg_0.x)), vec4<bool>(_wgslsmith_mult_i32(arg_1.x, 0i) != -1i, arg_0.x, reverseBits(u_input.b.x) <= func_4(-5394i, vec2<bool>(false, arg_2), 0u).x, false)));
    let var_1 = Struct_1(~vec3<u32>(~u_input.b.x, ~u_input.b.x, ~u_input.b.x) ^ (~(~vec3<u32>(0u, 116882u, 0u)) & u_input.b));
    let var_2 = !(!var_0.wx);
    var var_3 = select(select(vec3<bool>(select(var_1.a.x != u_input.b.x, true, true), !var_0.x | !var_0.x, select(true, false, !arg_2)), vec3<bool>(var_2.x, any(!var_0.zx), var_2.x), !vec3<bool>(arg_2, true, 36951u <= u_input.b.x)), !(!(!(!var_0.zzz))), arg_0);
    var var_4 = var_1;
    return Struct_1(firstLeadingBit(vec3<u32>(abs(4294967295u), 4294967295u, 1u) & vec3<u32>(9266u, ~var_1.a.x, firstTrailingBit(1u))));
}

fn func_1() -> Struct_1 {
    let var_0 = !(!any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), true)));
    let var_1 = func_5(vec3<bool>(var_0, true, var_0), ~(-func_2(vec2<i32>(-2147483647i, -2147483647i)) ^ (abs(u_input.a) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 17740i, 0i), u_input.a))), var_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_5(!vec3<bool>(false, false, !any(vec3<bool>(true, false, false))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.e, u_input.a.xx), -reverseBits(vec2<i32>(8925i, u_input.e.x))), ~min(-34036i, u_input.a.x) & 13863i, 54960i, -28350i), any(vec4<bool>(!select(true, true, true), false, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))))));
    var_0 = Struct_1(select(vec3<u32>(~(u_input.b.x ^ u_input.b.x), u_input.b.x, 0u), u_input.b, true));
    var_0 = Struct_1(_wgslsmith_mult_vec3_u32(~(_wgslsmith_div_vec3_u32(vec3<u32>(25436u, u_input.b.x, 20743u), var_0.a) | func_5(vec3<bool>(false, true, true), u_input.a, false).a), vec3<u32>(~3964u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, u_input.b.x, 37733u), vec3<u32>(1u, 47451u, 22601u)), ~var_0.a), var_0.a.x)));
    var_0 = Struct_1(min(select(var_0.a ^ u_input.b, firstTrailingBit(countOneBits(var_0.a)), vec3<bool>(true, true, true)), ~select(u_input.b, ~vec3<u32>(48351u, var_0.a.x, var_0.a.x), vec3<bool>(true, true, true))));
    var var_1 = countOneBits(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, var_0.a.x, 1u, _wgslsmith_clamp_u32(6646u, u_input.b.x, 1u))), vec4<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, 39117u), u_input.b.zz)), u_input.b.x, var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec2_u32(var_0.a.yy, countOneBits(var_1.wy))), min(~(~_wgslsmith_div_vec4_u32(vec4<u32>(38313u, var_0.a.x, 0u, var_1.x), vec4<u32>(var_1.x, 47099u, 2660u, 29504u))), min(min(vec4<u32>(14827u, u_input.b.x, var_1.x, 62241u), vec4<u32>(u_input.b.x, var_0.a.x, u_input.b.x, 35416u)) & vec4<u32>(24951u, 1u, 18120u, 45781u), vec4<u32>(var_1.x, 1u, abs(var_0.a.x), _wgslsmith_div_u32(var_0.a.x, 1u)))));
}

