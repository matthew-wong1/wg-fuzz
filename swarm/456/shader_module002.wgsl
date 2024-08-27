struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1699f, 947f, 665f);

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 17>;

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>, arg_3: bool) -> vec3<f32> {
    global2 = array<Struct_3, 17>();
    let var_0 = firstTrailingBit(vec3<u32>(arg_0.a.a.x, arg_0.a.a.x << (~(~4294967295u) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.a.x, arg_1) >> (~vec2<u32>(arg_0.a.a.x, arg_1) % vec2<u32>(32u)), vec2<u32>(arg_1, abs(27531u)))));
    var var_1 = firstLeadingBit(var_0);
    var var_2 = global2[_wgslsmith_index_u32(var_1.x, 17u)];
    var_2 = global2[_wgslsmith_index_u32(1u, 17u)];
    return arg_2.yyy;
}

fn func_2(arg_0: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global0.x - -1000f), _wgslsmith_f_op_f32(223f - _wgslsmith_f_op_f32(ceil(1531f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, 1186f))))))), global3.yx)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_1(vec2<u32>(1u, 0u), vec3<i32>(-23627i, 34299i, u_input.a), 40020u, global3.yyy, vec2<i32>(u_input.a, u_input.a))), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global0.x, 1168f, global0.x))), !global3.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -193f, 303f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -611f, global1.b.a), vec3<f32>(arg_0.x, global0.x, global1.d), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1922f, global1.a, global1.b.a)), true)), global3.zzw)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.a, global1.c.a, 821f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, global1.d) - vec3<f32>(var_0.x, var_0.x, 833f)))))));
    global3 = !vec4<bool>(select(global1.c.b.x, true | (true || global3.x), all(select(vec2<bool>(false, global1.c.b.x), global3.ww, false))), !all(vec2<bool>(false, true)), false, !any(vec3<bool>(false, global3.x, true)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -244f), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.b.a)), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_1(vec2<u32>(10123u, 11614u), vec3<i32>(-2147483647i, u_input.a, u_input.a), 1u, global3.wyx, vec2<i32>(u_input.a, -333i))), 1u, _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1000f, 448f, var_1.x), vec4<f32>(var_1.x, 889f, -286f, var_1.x)), true)).x)), _wgslsmith_f_op_f32(f32(-1f) * -154f));
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 17u)];
    return true;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(-364f)), select(global1.c.b, vec4<bool>(false, -37940i >= -u_input.a, false, !(-8975i >= u_input.a)), global1.c.b));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1005f)), _wgslsmith_f_op_f32(min(1453f, 1448f)))))));
    let var_2 = Struct_4(Struct_1(~vec2<u32>(1u, max(4294967295u, 27410u)), vec3<i32>(_wgslsmith_div_i32(min(arg_0.x, arg_0.x), 10863i | u_input.a), u_input.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, arg_0.x, -31234i), vec4<i32>(u_input.a, -2147483647i, 30918i, -17639i))), ~(~69852u), global3.zwx, abs(abs(arg_0.xy))));
    let var_3 = 31059i;
    let var_4 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(~var_2.a.c, 0u, ~var_2.a.c << (~4294967295u % 32u)), 552u), _wgslsmith_add_vec3_i32(firstLeadingBit(~var_2.a.b), vec3<i32>(~(-14354i >> (0u % 32u)), u_input.a, -20789i)), var_2.a.c, select(vec3<bool>(var_1, all(!vec3<bool>(global1.c.b.x, var_2.a.d.x, var_1)), any(global3.xwy)), arg_2.b.zzz, vec3<bool>(global3.x, false, !all(var_2.a.d))), _wgslsmith_add_vec2_i32(abs(arg_0.zx & vec2<i32>(-1i, var_2.a.b.x)), vec2<i32>(~1i, -var_2.a.b.x) ^ vec2<i32>(1i, 1i)));
    return global2[_wgslsmith_index_u32(~(var_2.a.a.x << (var_4.c % 32u)), 17u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    var var_0 = firstTrailingBit(~select(vec2<u32>(47477u, 18777u), vec2<u32>(1u, 1u), select(!vec2<bool>(global1.b.b.x, false), select(arg_0.c.b.yw, vec2<bool>(true, arg_0.c.b.x), vec2<bool>(arg_0.b.b.x, true)), true)));
    var_0 = _wgslsmith_add_vec2_u32(~vec2<u32>(var_0.x, _wgslsmith_add_u32(var_0.x, ~var_0.x)), ~(~(~(~vec2<u32>(var_0.x, 35536u)))));
    global3 = !(!global1.c.b);
    global3 = select(!(!select(vec4<bool>(global3.x, global1.c.b.x, false, global1.c.b.x), vec4<bool>(arg_0.b.b.x, arg_1.c.b.x, global1.b.b.x, true), true)), vec4<bool>(true, !any(vec4<bool>(true, false, arg_1.c.b.x, true)), all(func_1(~vec3<i32>(0i, 0i, -47104i), _wgslsmith_f_op_f32(-arg_0.c.a), func_1(vec3<i32>(-2205i, u_input.a, u_input.a), 353f, Struct_2(global0.x, global1.b.b)).b).b.b.xw), true), false);
    let var_1 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, min(0u, 1u), ~var_0.x), max(_wgslsmith_mult_vec3_u32(vec3<u32>(62941u, 4847u, 20922u), vec3<u32>(0u, var_0.x, 59998u)), vec3<u32>(107044u, 45901u, 68766u) << (vec3<u32>(1u, var_0.x, var_0.x) % vec3<u32>(32u)))));
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-293f, global0.x)) + _wgslsmith_f_op_f32(-2113f + -307f))) - _wgslsmith_f_op_f32(1f - global0.x)), _wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(1u, 17u)], func_1(_wgslsmith_mult_vec3_i32(max(vec3<i32>(19702i, u_input.a, u_input.a), vec3<i32>(-1i, 1i, 0i)), vec3<i32>(-1i, 2147483647i, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1921f), global1.b))), global0.x);
    var var_0 = -_wgslsmith_mod_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 24156i, u_input.a), min(vec3<i32>(5791i, u_input.a, -41815i), vec3<i32>(18884i, u_input.a, -5378i)), max(vec3<i32>(u_input.a, 10798i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~abs(vec3<i32>(2147483647i, 322i, u_input.a)) << (vec3<u32>(1u, 4678u, ~7455u) % vec3<u32>(32u)));
    global3 = global1.c.b;
    var var_1 = Struct_4(Struct_1(~min(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 5427u), vec2<u32>(4294967295u, 4294967295u))), vec3<i32>(var_0.x, _wgslsmith_mod_i32(-1i, abs(2147483647i)), 28970i), select(~_wgslsmith_div_u32(1u, 21229u), _wgslsmith_div_u32(~4294967295u, 1u), true), select(global1.b.b.wzz, global1.b.b.wxy, global1.b.b.x), vec2<i32>(2147483647i, _wgslsmith_mod_i32(~(-73655i), 1i))));
    var_0 = countOneBits(~(select(abs(var_1.a.b), vec3<i32>(u_input.a, var_0.x, var_0.x), !var_1.a.d) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.a.x, var_1.a.c, 0u), vec3<u32>(var_1.a.c, 1u, var_1.a.a.x)) % vec3<u32>(32u))));
    var_1 = Struct_4(var_1.a);
    var var_2 = select(select(global1.b.b.xyy, vec3<bool>(true, all(!vec3<bool>(var_1.a.d.x, var_1.a.d.x, true)), !global1.c.b.x), 367f >= global0.x), !global3.zyx, func_1(var_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f) - _wgslsmith_f_op_f32(global1.d - 2394f))), Struct_2(_wgslsmith_div_f32(-1013f, _wgslsmith_f_op_f32(f32(-1f) * -1720f)), !select(vec4<bool>(false, global3.x, global3.x, global1.c.b.x), global1.c.b, global3.x))).c.b.yyw);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(0u, var_1.a.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a.x, 51819u, ~13776u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.a.a.x, 1u), vec3<u32>(43975u, 55251u, var_1.a.c))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a.x & 37517u, var_1.a.a.x), ~vec2<u32>(4294967295u, var_1.a.a.x)), var_1.a.a.x), var_1.a.e, _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(0u, var_1.a.c, var_1.a.c))), _wgslsmith_mult_vec3_u32(vec3<u32>(~58012u, 51468u, max(var_1.a.a.x, var_1.a.c)), vec3<u32>(_wgslsmith_add_u32(var_1.a.a.x, 0u), var_1.a.c, 81664u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, global0.x, -537f))))))), global1.a);
}

