struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<bool, 6>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = 1f;
    var var_1 = select(vec3<bool>(all(select(vec3<bool>(true, false, false), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(36607u, 6u)]), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(52366u, 6u)], false))), all(!(!vec2<bool>(false, arg_0))), true), select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)] | true, !arg_0, u_input.c.x >= u_input.a), !vec3<bool>(all(vec2<bool>(arg_0, arg_0)), true, false), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_0, false, global1[_wgslsmith_index_u32(7697u, 6u)]), true), select(vec3<bool>(true, true, false), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 6u)], true), vec3<bool>(global1[_wgslsmith_index_u32(59454u, 6u)], arg_0, true)), select(vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], arg_0, arg_0), false)), true)), false);
    let var_2 = reverseBits(firstTrailingBit(~(~arg_2)));
    let var_3 = Struct_3(abs(reverseBits(u_input.c.yyy)), !(-1000f < var_0));
    global0 = abs(abs(u_input.b));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, (u_input.a >> (u_input.c.x % 32u)) << (var_3.a.x % 32u)) | u_input.c.xw, (vec2<u32>(~u_input.a, 19624u) ^ ~u_input.c.xx) << (max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 78029u), vec2<u32>(u_input.a, u_input.a), u_input.c.zz), ~_wgslsmith_mult_vec2_u32(u_input.c.wy, vec2<u32>(0u, u_input.a))) % vec2<u32>(32u)));
}

fn func_2() -> Struct_3 {
    global0 = u_input.b ^ reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x) >> ((u_input.c.wxy ^ u_input.c.xyz) % vec3<u32>(32u)), u_input.b));
    global1 = array<bool, 6>();
    var var_0 = any(!vec2<bool>(select(4294967295u, 0u, global1[_wgslsmith_index_u32(23854u, 6u)]) > (9911u ^ u_input.c.x), false));
    return Struct_3(abs(vec3<u32>(func_3(true, 44629i, -33663i), ~(u_input.c.x ^ u_input.c.x), u_input.a)), all(vec4<bool>((global0.x > 1i) || all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~30715u & max(63539u, u_input.a), 6u)], true && (global1[_wgslsmith_index_u32(u_input.a, 6u)] & global1[_wgslsmith_index_u32(u_input.a, 6u)]), any(select(vec4<bool>(global1[_wgslsmith_index_u32(50665u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], false, global1[_wgslsmith_index_u32(74144u, 6u)], true), global1[_wgslsmith_index_u32(10881u, 6u)])))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    let var_0 = Struct_2(~1u, vec3<bool>(!all(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 6u)])), all(!vec4<bool>(arg_0.b, global1[_wgslsmith_index_u32(43509u, 6u)], false, global1[_wgslsmith_index_u32(4790u, 6u)])), arg_1.b), arg_1.a.x);
    var var_1 = u_input.d;
    global0 = u_input.b & _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(65074i, -2556i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, 0i, global0.x), vec4<i32>(51725i, 40264i, -2147483647i, global0.x)), ~global0.x)));
    var_1 = i32(-1i) * -2147483647i;
    global0 = u_input.b;
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>) -> vec3<i32> {
    var var_0 = select(!(!select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], arg_0.b), arg_1.b.yx, vec2<bool>(arg_0.b, true))), arg_1.b.zz, arg_1.b.x);
    var_0 = !arg_1.b.xx;
    var var_1 = Struct_2(arg_1.a, !vec3<bool>(arg_0.b, !var_0.x, false), func_3(!(select(false, false, global1[_wgslsmith_index_u32(arg_0.a.x, 6u)]) | true), 8247i, global0.x ^ (countOneBits(global0.x) ^ _wgslsmith_mult_i32(-1i, global0.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_2.x)))))));
    var var_3 = func_2();
    return _wgslsmith_mult_vec3_i32(vec3<i32>(abs(~(~(-1i))), -1i, -5059i), firstLeadingBit(reverseBits(~u_input.b ^ -u_input.b)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = reverseBits(vec2<i32>(-25533i, _wgslsmith_clamp_i32(u_input.d, u_input.b.x, -(u_input.d & global0.x))));
    global0 = _wgslsmith_mod_vec3_i32(func_5(func_4(func_2(), Struct_3(arg_0, true), 949f), Struct_2(func_4(Struct_3(u_input.c.zwy, true), func_4(Struct_3(vec3<u32>(arg_0.x, arg_2.c, 0u), true), Struct_3(arg_0, false), 1000f), -480f).a.x, !(!vec3<bool>(arg_2.b.x, false, true)), ~min(arg_0.x, u_input.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-893f - -714f), -621f, _wgslsmith_f_op_f32(1000f - 783f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-492f, 667f, -1397f), vec3<f32>(-1499f, -270f, -910f)))))))), abs(u_input.b));
    let var_1 = u_input.c.wz;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f))) + vec2<f32>(_wgslsmith_f_op_f32(-1997f - 995f), -843f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-512f, -1565f) - vec2<f32>(-389f, -1320f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(283f, 199f)), arg_2.b.x)))), select(select(select(arg_1.xx, !vec2<bool>(false, global1[_wgslsmith_index_u32(25195u, 6u)]), true), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 6u)], true), select(vec2<bool>(arg_1.x, arg_2.b.x), arg_1.yz, false), vec2<bool>(global1[_wgslsmith_index_u32(60103u, 6u)], global1[_wgslsmith_index_u32(arg_2.c, 6u)])), arg_2.b.x), arg_2.b.zx, !(!(!arg_2.b.x)))));
    let var_3 = arg_2;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~(-7230i), _wgslsmith_div_i32(global0.x, 24754i), min(u_input.d, -2147483647i)), ~select(u_input.b, vec3<i32>(2147483647i, 4315i, u_input.b.x), true)), vec3<i32>(2147483647i, u_input.d, _wgslsmith_div_i32(func_1(vec3<u32>(u_input.a, 126535u, 21630u), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), Struct_2(1u, vec3<bool>(global1[_wgslsmith_index_u32(2810u, 6u)], global1[_wgslsmith_index_u32(31555u, 6u)], true), u_input.a)), abs(-28691i))), ~_wgslsmith_add_vec3_i32(reverseBits(u_input.b), vec3<i32>(2147483647i, 21804i, u_input.d) ^ vec3<i32>(u_input.d, 1i, global0.x)));
    var var_0 = Struct_3(abs(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.zxw, vec3<u32>(u_input.a, 1u, u_input.c.x), vec3<u32>(4294967295u, u_input.a, 78490u)), _wgslsmith_add_vec3_u32(u_input.c.www, u_input.c.wyz))) << (~u_input.c.xzy % vec3<u32>(32u)), any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)], false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 6u)], true, false), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(21u, 6u)]), global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)]))) && false);
    var var_1 = vec4<bool>(var_0.b, global1[_wgslsmith_index_u32(var_0.a.x, 6u)], any(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], false, true), !vec3<bool>(var_0.b, var_0.b, false), select(vec3<bool>(var_0.b, global1[_wgslsmith_index_u32(132725u, 6u)], var_0.b), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 6u)]), vec3<bool>(true, true, var_0.b)))), var_0.b);
    var_1 = !(!select(vec4<bool>(select(true, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(var_0.a.x, 6u)]), global1[_wgslsmith_index_u32(u_input.c.x, 6u)], !var_0.b, false), vec4<bool>(true, func_4(Struct_3(u_input.c.wzx, true), Struct_3(u_input.c.yxx, var_1.x), -2100f).b, global1[_wgslsmith_index_u32(~u_input.a, 6u)], var_0.b), any(var_1.yzz)));
    var var_2 = _wgslsmith_mult_u32(49429u, u_input.c.x);
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(u_input.d), ~global0.x, -2i, global0.x), -(vec4<i32>(u_input.d, 1i, 14866i, -20901i) | vec4<i32>(991i, 0i, -5412i, -1416i))), _wgslsmith_mult_vec4_i32(vec4<i32>(select(u_input.b.x, u_input.b.x, true), _wgslsmith_add_i32(1i, 85776i), 1i, u_input.d), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b.x, global0.x, global0.x, u_input.b.x), vec4<i32>(-13473i, -2147483647i, 0i, global0.x) ^ vec4<i32>(-18796i, 0i, -2147483647i, u_input.d), vec4<i32>(-15782i, global0.x, global0.x, 1i) | vec4<i32>(u_input.b.x, global0.x, global0.x, -30375i)))), ~(~(u_input.c.x >> (~42496u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-633f)) * 1511f))));
    var var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-14508i, _wgslsmith_sub_u32(~(~var_3.b) | u_input.c.x, var_3.b), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_3.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1187f + _wgslsmith_f_op_f32(var_3.c * var_3.c)) * 1478f)));
}

