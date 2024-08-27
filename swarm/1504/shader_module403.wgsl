struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 86167u, vec3<i32>(0i, -18394i, 26348i), -1i), vec2<bool>(false, false), Struct_1(vec2<i32>(52391i, -289i), 4294967295u, vec3<i32>(2147483647i, 1i, i32(-2147483648)), i32(-2147483648)), vec3<bool>(true, true, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_2(global0.a, !(!global0.d.yz), Struct_1(global0.a.c.xx, select(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.c.b, global0.a.b, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.c.b, u_input.b, u_input.a), vec3<u32>(global0.a.b, 31373u, 4294967295u), vec3<u32>(1u, 1u, 0u))), ~(~global0.a.b), all(!global0.d)), global0.c.c, global0.c.c.x), !global0.d);
    return ~0u;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>) -> vec2<f32> {
    let var_0 = Struct_2(global0.a, vec2<bool>(false | all(!vec4<bool>(global0.b.x, true, false, global0.d.x)), (~19234u << (global0.a.b % 32u)) <= _wgslsmith_add_u32(_wgslsmith_add_u32(70574u, 1u), u_input.b)), global0.a, global0.d);
    let var_1 = Struct_2(Struct_1(~((vec2<i32>(-449i, -15911i) ^ vec2<i32>(22738i, u_input.c)) | arg_1.zz), 0u, -arg_1.ywx, 2147483647i), vec2<bool>(global0.b.x || (abs(0i) == u_input.d), true), Struct_1(vec2<i32>(reverseBits(2147483647i) << (firstTrailingBit(61392u) % 32u), u_input.c), 0u, global0.c.c, i32(-1i) * -2147483647i), global0.d);
    let var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 1330i), var_0.c.a), ~_wgslsmith_mod_i32(2147483647i, arg_0.x), -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.a.c, var_1.a.c), vec3<i32>(u_input.d, -47455i, var_0.c.d))), -arg_1);
    return vec2<f32>(_wgslsmith_f_op_f32(-519f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-2877f)), -1564f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-480f, 187f)) + -242f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(498f, -1770f)))) + 1163f));
}

fn func_2() -> vec3<i32> {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(global0.c.c, vec4<i32>((global0.c.a.x >> (31692u % 32u)) << (~32533u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -37983i), vec2<i32>(global0.a.d, 1i)) >> (func_3(vec2<bool>(true, true)) % 32u), countOneBits(~(-22207i)), 1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(819f, -169f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1936f, -2302f), vec2<f32>(-1000f, 1535f)))))), any(global0.b)));
    let var_2 = global0.c.a;
    let var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c.c.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-16711i, 0i, var_2.x)), global0.c.c), u_input.c), max(_wgslsmith_mult_vec3_i32(global0.a.c, global0.a.c), global0.c.c) >> (firstLeadingBit(vec3<u32>(global0.a.b, 32588u, u_input.b)) % vec3<u32>(32u)), ~vec3<i32>(countOneBits(-1i), -global0.a.a.x, u_input.c)), ~_wgslsmith_mod_vec3_i32(global0.a.c, _wgslsmith_div_vec3_i32(global0.a.c, countOneBits(global0.a.c))));
    let var_4 = u_input.a;
    return global0.c.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<u32>) -> bool {
    let var_0 = global0.a;
    let var_1 = _wgslsmith_dot_vec2_u32(arg_3.xx & ~(firstTrailingBit(arg_3.zy) >> (vec2<u32>(arg_1.a.b, global0.a.b) % vec2<u32>(32u))), ~vec2<u32>(arg_0.a.b, ~(~75292u)));
    global0 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a.c.yz, var_0.c.yz), vec2<i32>(arg_0.c.c.x, 0i)), arg_1.c.a), var_0.b, ~var_0.c, -reverseBits(_wgslsmith_add_i32(-9183i, arg_1.a.a.x))), select(select(global0.d.yy, !select(vec2<bool>(false, arg_1.d.x), arg_0.b, true), arg_1.d.yy), select(!select(vec2<bool>(false, false), arg_1.d.zz, vec2<bool>(global0.b.x, true)), select(!vec2<bool>(true, arg_1.d.x), vec2<bool>(global0.b.x, false), any(arg_1.d)), arg_1.c.d < arg_0.a.d), true), arg_1.c, select(vec3<bool>(true, all(select(vec3<bool>(global0.b.x, false, true), arg_1.d, arg_0.d)), false), !select(select(arg_1.d, global0.d, true), arg_0.d, any(vec2<bool>(true, true))), !(all(vec3<bool>(true, true, arg_1.b.x)) & true)));
    global0 = Struct_2(global0.a, global0.b, global0.a, !global0.d);
    let var_2 = global0.a.a.x;
    return !arg_0.b.x;
}

fn func_6(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(global0.a.d, reverseBits(~countOneBits(-global0.a.a.x)), _wgslsmith_sub_i32(firstTrailingBit(abs(~(-1i))), abs(_wgslsmith_mult_i32(~arg_1.x, global0.c.d))), (max(1i, ~(-1719i)) ^ global0.a.d) | -arg_2.x);
    var var_1 = Struct_2(global0.c, select(global0.b, global0.b, !all(select(vec4<bool>(global0.b.x, true, arg_0, global0.d.x), vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(global0.b.x, arg_0, global0.d.x, global0.d.x)))), arg_3, vec3<bool>(true, global0.d.x, false));
    let var_2 = arg_0;
    var_1 = Struct_2(Struct_1(vec2<i32>(u_input.c, arg_2.x), 1u, _wgslsmith_mod_vec3_i32(vec3<i32>(-global0.a.a.x, var_1.c.a.x, _wgslsmith_div_i32(global0.a.a.x, arg_2.x)), vec3<i32>(1i, i32(-1i) * -65215i, -1i)), abs(-6121i ^ (arg_1.x >> (4294967295u % 32u)))), vec2<bool>(func_5(Struct_2(Struct_1(vec2<i32>(-8842i, -2147483647i), var_1.a.b, arg_3.c, arg_1.x), select(global0.d.yz, global0.b, var_2), arg_3, select(var_1.d, var_1.d, false)), Struct_2(Struct_1(global0.a.a, 5941u, arg_3.c, -17131i), vec2<bool>(arg_0, var_2), var_1.c, select(vec3<bool>(false, var_1.d.x, var_2), vec3<bool>(var_2, var_1.b.x, var_2), global0.d)), vec4<i32>(1i, 30315i, var_0.x, -30705i), select(firstTrailingBit(vec3<u32>(global0.c.b, 1u, var_1.a.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(arg_3.b, 44319u, u_input.a)), !vec3<bool>(arg_0, true, false))), all(!vec3<bool>(var_2, var_1.b.x, true))), global0.a, !select(select(select(vec3<bool>(true, true, var_2), global0.d, var_2), select(vec3<bool>(var_1.d.x, var_1.d.x, false), global0.d, vec3<bool>(var_1.b.x, global0.d.x, var_2)), any(vec4<bool>(var_1.b.x, false, false, arg_0))), vec3<bool>(select(false, arg_0, var_2), !var_1.b.x, true), vec3<bool>(var_2, var_1.d.x, all(vec4<bool>(false, var_2, arg_0, false)))));
    var_0 = ~countOneBits(~arg_1);
    return Struct_2(global0.a, select(!(!(!vec2<bool>(true, var_1.d.x))), vec2<bool>(true, true), arg_0), var_1.c, vec3<bool>(all(!(!global0.d.yy)), !(!arg_0), true));
}

fn func_1() -> Struct_2 {
    let var_0 = func_6(func_5(Struct_2(Struct_1(vec2<i32>(u_input.d, global0.a.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 27009u), vec2<u32>(11159u, 39174u)), func_2(), _wgslsmith_mod_i32(1i, global0.a.c.x)), select(select(vec2<bool>(global0.d.x, global0.b.x), global0.d.xz, vec2<bool>(true, global0.d.x)), vec2<bool>(global0.d.x, global0.d.x), !vec2<bool>(global0.b.x, global0.d.x)), global0.a, select(vec3<bool>(global0.b.x, false, global0.b.x), vec3<bool>(false, global0.d.x, global0.d.x), !global0.d)), Struct_2(Struct_1(~vec2<i32>(u_input.c, global0.a.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(22359u, 4294967295u, 69378u, global0.a.b), vec4<u32>(u_input.a, 0u, u_input.b, 1u)), vec3<i32>(u_input.d, -1i, -2147483647i), _wgslsmith_dot_vec3_i32(global0.a.c, vec3<i32>(14024i, 23719i, -9500i))), vec2<bool>(any(vec4<bool>(global0.d.x, global0.b.x, false, global0.d.x)), global0.b.x && false), global0.c, vec3<bool>(true, global0.d.x, u_input.d <= u_input.c)), reverseBits(vec4<i32>(global0.a.c.x, global0.c.d, -1i, 0i)) & _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.d, global0.c.a.x, 27194i, -2147483647i), min(vec4<i32>(u_input.d, -58572i, 16681i, 18980i), vec4<i32>(33122i, 0i, 32753i, -1321i))), vec3<u32>(0u, firstLeadingBit(_wgslsmith_mod_u32(1u, u_input.a)), abs(global0.a.b))), vec4<i32>(-1i) * -(vec4<i32>(u_input.c, -1i, 36414i, -17661i) & firstLeadingBit(vec4<i32>(-14969i, u_input.d, -2147483647i, u_input.c))), _wgslsmith_mult_vec2_i32(vec2<i32>(-50618i, abs(firstLeadingBit(-1i))), global0.a.c.yz), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(54669i, u_input.c), -vec2<i32>(global0.a.d, u_input.d) & global0.a.a), ~_wgslsmith_add_u32(reverseBits(0u), 47483u), global0.c.c << (abs(reverseBits(vec3<u32>(15317u, u_input.a, u_input.b))) % vec3<u32>(32u)), u_input.d));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, 893f)))), 1f, global0.b.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 2120f), _wgslsmith_f_op_f32(-463f * 1529f))) + _wgslsmith_f_op_f32(floor(638f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1095f, -814f) + -1051f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f)), true)))));
    let var_2 = _wgslsmith_f_op_f32(sign(-123f));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_4 = var_0.c;
    return func_6(func_5(var_0, Struct_2(func_6(false, select(vec4<i32>(-1i, -2147483647i, 54716i, 0i), vec4<i32>(global0.c.c.x, var_0.a.d, var_4.a.x, 10198i), vec4<bool>(global0.d.x, true, global0.b.x, var_0.d.x)), ~var_4.c.yx, global0.c).c, func_6(true, _wgslsmith_mult_vec4_i32(vec4<i32>(11999i, global0.a.a.x, u_input.d, -43145i), vec4<i32>(1i, -2147483647i, var_4.d, var_4.c.x)), vec2<i32>(1i, 50690i), Struct_1(vec2<i32>(var_4.d, 70894i), u_input.b, var_0.c.c, -85i)).d.yz, func_6(false || global0.b.x, -vec4<i32>(12154i, 1i, -1i, 0i), global0.c.a, func_6(global0.b.x, vec4<i32>(792i, global0.a.d, global0.a.a.x, 7714i), vec2<i32>(u_input.d, -1i), Struct_1(vec2<i32>(33373i, u_input.d), u_input.a, global0.c.c, var_0.c.a.x)).c).a, global0.d), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.d, -2388i, -8463i, 22945i), vec4<i32>(-1i, 37432i, 12852i, global0.c.a.x)) ^ -vec4<i32>(2147483647i, 0i, global0.c.d, var_0.c.a.x), -(vec4<i32>(-2147483647i, global0.a.d, -24693i, global0.c.a.x) << (vec4<u32>(global0.a.b, 1u, u_input.b, 4294967295u) % vec4<u32>(32u)))), vec3<u32>(~var_4.b, _wgslsmith_add_u32(23761u, var_0.c.b), 45628u) | abs(~vec3<u32>(0u, 49491u, 42207u))), -(vec4<i32>(var_0.c.d, 12610i, -26863i, -18969i) & firstTrailingBit(vec4<i32>(1i, 26641i, var_4.d, 1i))) | ~(-vec4<i32>(global0.a.c.x, -10154i, -2147483647i, -9271i) ^ reverseBits(vec4<i32>(-2147483647i, -51261i, var_0.c.d, 15626i))), vec2<i32>(func_6(true, _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c, -1i, var_0.c.c.x, 50692i), ~vec4<i32>(3591i, 2147483647i, 70118i, var_4.d)), abs(var_0.c.a), func_6(var_0.d.x, firstLeadingBit(vec4<i32>(-2147483647i, var_0.c.a.x, -23239i, u_input.c)), vec2<i32>(u_input.d, var_0.c.c.x), func_6(global0.b.x, vec4<i32>(-7694i, global0.c.c.x, var_0.a.a.x, var_4.d), vec2<i32>(44277i, -26824i), var_4).a).a).a.a.x, global0.a.c.x), Struct_1(vec2<i32>(0i, func_6(var_0.d.x, _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.c.x, -6883i, 2147483647i, u_input.d), vec4<i32>(-2681i, -19322i, var_4.d, var_0.c.c.x)), var_4.c.yz, var_4).a.a.x), max(abs(25627u >> (global0.a.b % 32u)), var_0.c.b | _wgslsmith_dot_vec2_u32(vec2<u32>(71052u, global0.c.b), vec2<u32>(var_4.b, 4294967295u))), func_2(), ~(_wgslsmith_mod_i32(global0.c.d, -2147483647i) >> (u_input.a % 32u))));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global0 = Struct_2(Struct_1(abs(_wgslsmith_mult_vec2_i32(arg_0.yy, global0.c.a)), _wgslsmith_mult_u32(arg_1.c.b ^ ~global0.c.b, 4294967295u), -((vec3<i32>(1i, arg_2.c.c.x, arg_1.c.d) << (vec3<u32>(22597u, 0u, arg_2.a.b) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, arg_2.c.a.x, 1i), vec3<i32>(2147483647i, 0i, global0.c.a.x))), reverseBits(global0.a.a.x & arg_1.a.c.x)), !(!arg_2.b), Struct_1(~_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.d, arg_1.a.c.x), -arg_1.c.c.xx, abs(vec2<i32>(60291i, global0.a.c.x))), _wgslsmith_mult_u32(10672u, 59837u), select(vec3<i32>(arg_0.x, arg_2.a.d, arg_0.x), ~arg_0, all(vec4<bool>(arg_1.d.x, true, true, global0.b.x))) ^ vec3<i32>(~(-1i), -2147483647i ^ global0.c.d, arg_2.c.c.x), global0.c.a.x), select(select(global0.d, vec3<bool>(select(true, arg_1.b.x, false), global0.d.x, arg_2.d.x), select(vec3<bool>(false, false, arg_1.d.x), vec3<bool>(false, global0.d.x, arg_2.d.x), true || arg_1.b.x)), arg_1.d, vec3<bool>(arg_2.b.x, !any(arg_2.d.zx), true)));
    var var_0 = Struct_1(vec2<i32>(~(_wgslsmith_mult_i32(global0.a.c.x, -3542i) ^ 1i), firstLeadingBit(global0.a.a.x)), _wgslsmith_clamp_u32(20962u, _wgslsmith_add_u32(arg_1.c.b & (arg_3 << (1u % 32u)), 24962u), 63931u), min(firstTrailingBit(func_1().c.c), vec3<i32>(arg_1.a.a.x, global0.a.c.x, abs(9143i >> (arg_1.a.b % 32u)))), arg_0.x & arg_2.c.c.x);
    let var_1 = arg_2;
    global0 = Struct_2(func_6(arg_2.b.x, ~abs(vec4<i32>(0i, arg_2.c.d, -42344i, -29807i)) & ~(-vec4<i32>(global0.c.c.x, u_input.c, -2147483647i, global0.c.c.x)), -arg_1.c.c.yy, func_6(!func_6(false, vec4<i32>(u_input.c, 2147483647i, 2147483647i, -73697i), vec2<i32>(2147483647i, -12474i), arg_2.c).d.x, _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_0.d, var_1.a.c.x, -2147483647i, 72672i)), vec4<i32>(var_1.c.c.x, -1373i, u_input.d, var_1.c.c.x)), (var_1.c.a ^ vec2<i32>(var_0.d, var_0.a.x)) ^ max(vec2<i32>(arg_1.c.c.x, var_1.c.c.x), vec2<i32>(4838i, arg_1.c.d)), arg_1.a).c).a, !func_6(var_1.d.x, _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(var_1.a.a.x, arg_0.x, var_0.a.x, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0.c.c.x, u_input.d, 20176i), vec4<i32>(var_1.c.d, var_1.c.c.x, 1i, -2147483647i))), vec2<i32>(2147483647i, arg_1.a.d) << (vec2<u32>(arg_2.a.b, var_1.a.b) % vec2<u32>(32u)), Struct_1(arg_1.c.a, ~u_input.b, global0.a.c, _wgslsmith_sub_i32(var_0.d, arg_2.c.d))).b, func_6(any(!func_6(global0.b.x, vec4<i32>(-2147483647i, -817i, u_input.c, -6163i), vec2<i32>(15288i, -5278i), global0.c).d.xx), vec4<i32>(-_wgslsmith_sub_i32(arg_2.c.a.x, var_0.a.x), _wgslsmith_div_i32(~(-10497i), arg_1.c.c.x), select(var_1.a.d ^ global0.a.a.x, ~(-2147483647i), true), -arg_2.a.a.x), min(func_1().a.a, -vec2<i32>(u_input.d, -43977i)), arg_1.c).a, !arg_1.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    return Struct_2(func_1().c, vec2<bool>(false, func_1().d.x), func_6(select(var_1.d.x && true, true, arg_2.d.x), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-22724i, 1i, 2147483647i, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_2.c.c.x, global0.c.c.x, -67701i), vec4<i32>(arg_2.c.a.x, -4476i, arg_0.x, -1i))), vec4<i32>(-var_1.c.d, var_1.a.d, _wgslsmith_div_i32(2147483647i, -1i), arg_2.c.c.x << (0u % 32u))), min(abs(arg_2.c.a), (vec2<i32>(var_0.a.x, var_1.c.a.x) & arg_2.a.c.zx) & -vec2<i32>(-13421i, global0.c.a.x)), var_1.a).c, !select(arg_1.d, func_6(func_5(arg_2, Struct_2(Struct_1(vec2<i32>(arg_2.a.c.x, -25120i), var_1.a.b, vec3<i32>(global0.c.c.x, 0i, arg_1.a.c.x), -5986i), global0.b, Struct_1(arg_0.xx, arg_2.c.b, arg_0, arg_2.a.d), vec3<bool>(true, true, arg_2.b.x)), vec4<i32>(2147483647i, 1187i, arg_1.a.a.x, -14301i), vec3<u32>(0u, var_0.b, 59664u)), select(vec4<i32>(u_input.c, -8786i, 42057i, var_0.a.x), vec4<i32>(-1i, global0.c.c.x, 19205i, var_1.a.d), vec4<bool>(arg_1.d.x, true, true, var_1.b.x)), arg_2.c.c.xy, Struct_1(vec2<i32>(var_1.a.d, 0i), u_input.a, vec3<i32>(-50469i, -2147483647i, arg_1.c.c.x), -13802i)).d, all(func_1().d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(-(-(~global0.c.c) & global0.c.c), func_1(), Struct_2(Struct_1(global0.a.a, firstLeadingBit(4294967295u), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 6490i, global0.a.a.x) << (vec3<u32>(u_input.b, u_input.a, 0u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(global0.a.c, vec3<i32>(24303i, global0.c.a.x, 2147483647i))), -max(2147483647i, global0.a.a.x)), select(global0.b, vec2<bool>(true, func_1().b.x), -1i == global0.c.c.x), Struct_1((global0.c.c.zz >> (vec2<u32>(global0.a.b, u_input.b) % vec2<u32>(32u))) >> ((vec2<u32>(1u, global0.c.b) << (vec2<u32>(u_input.a, global0.a.b) % vec2<u32>(32u))) % vec2<u32>(32u)), 1u, ~(-global0.a.c), 31627i), !select(func_6(false, vec4<i32>(0i, 19709i, global0.c.a.x, u_input.c), global0.a.c.zz, Struct_1(global0.a.c.zz, 55844u, vec3<i32>(global0.c.c.x, -34516i, 3263i), -67937i)).d, vec3<bool>(global0.b.x, global0.d.x, global0.b.x), true)), ~u_input.a);
    let var_0 = Struct_2(func_7(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(global0.c.a.x, global0.a.a.x, 11962i), vec3<i32>(u_input.d, 54848i, 82311i)), Struct_2(global0.a, !select(vec2<bool>(true, false), vec2<bool>(false, true), global0.b), Struct_1(_wgslsmith_div_vec2_i32(global0.c.c.xx, global0.c.c.zx), ~19362u, _wgslsmith_sub_vec3_i32(vec3<i32>(global0.c.c.x, u_input.d, 11416i), global0.a.c), 0i >> (u_input.a % 32u)), vec3<bool>(false, func_5(Struct_2(global0.c, vec2<bool>(false, false), Struct_1(global0.c.c.yz, 1u, vec3<i32>(u_input.c, 2147483647i, u_input.d), 45679i), global0.d), Struct_2(Struct_1(vec2<i32>(5213i, 0i), u_input.a, vec3<i32>(-2147483647i, -17274i, global0.a.a.x), -2147483647i), vec2<bool>(global0.d.x, true), Struct_1(global0.a.c.yz, global0.c.b, vec3<i32>(2147483647i, u_input.d, 2147483647i), -59778i), vec3<bool>(true, global0.d.x, global0.d.x)), vec4<i32>(u_input.d, global0.c.a.x, 24648i, 2147483647i), vec3<u32>(u_input.b, 1u, 7856u)), func_7(vec3<i32>(-2147483647i, u_input.c, -34664i), Struct_2(Struct_1(vec2<i32>(u_input.c, global0.c.c.x), u_input.b, vec3<i32>(0i, 2147483647i, u_input.d), -2147483647i), global0.d.xx, global0.c, vec3<bool>(false, false, true)), Struct_2(Struct_1(global0.c.a, global0.a.b, global0.c.c, 0i), vec2<bool>(true, global0.d.x), global0.a, global0.d), u_input.a).b.x)), func_1(), u_input.a).a, vec2<bool>(u_input.a >= _wgslsmith_div_u32(u_input.a, 30080u), ~func_1().a.a.x <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -18722i, u_input.c, -2147483647i) | vec4<i32>(2147483647i, -2147483647i, 43613i, u_input.c), max(vec4<i32>(4738i, 15174i, u_input.d, global0.c.a.x), vec4<i32>(global0.a.c.x, global0.c.c.x, u_input.d, global0.c.a.x)))), func_6(all(global0.d), vec4<i32>(-u_input.d, -50747i, ~u_input.c, u_input.d), ~(-select(vec2<i32>(u_input.c, 2147483647i), global0.c.a, vec2<bool>(false, global0.d.x))), func_7(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, -2147483647i), global0.c.c), Struct_2(global0.a, global0.b, global0.a, global0.d), func_1(), global0.a.b).c).c, !select(!(!global0.d), vec3<bool>(func_1().d.x, false, true), func_5(Struct_2(Struct_1(vec2<i32>(-53819i, -2147483647i), 0u, vec3<i32>(u_input.c, u_input.c, -1i), u_input.d), global0.b, global0.c, vec3<bool>(false, global0.d.x, true)), func_6(true, vec4<i32>(global0.a.d, 1i, u_input.c, -1i), global0.a.c.xx, Struct_1(global0.c.a, 37089u, vec3<i32>(49922i, u_input.c, u_input.c), -12986i)), vec4<i32>(0i, -37868i, global0.c.d, global0.c.c.x), vec3<u32>(u_input.a, u_input.a, global0.a.b))));
    global0 = Struct_2(Struct_1(firstTrailingBit(vec2<i32>(var_0.c.c.x, global0.c.a.x)) | _wgslsmith_sub_vec2_i32(func_1().a.a, vec2<i32>(global0.a.a.x, -2147483647i)), _wgslsmith_clamp_u32(var_0.a.b, min(select(92453u, u_input.a, var_0.b.x), _wgslsmith_div_u32(4294967295u, u_input.a)), 64145u & select(1u, 21336u, true)), countOneBits(vec3<i32>(-1i, 1i, max(-58335i, -21646i))), ~func_2().x), global0.b, global0.c, !select(vec3<bool>(true, true, any(vec3<bool>(var_0.b.x, true, var_0.d.x))), vec3<bool>(global0.d.x != global0.d.x, !var_0.d.x, false), vec3<bool>(false, global0.b.x, true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1821f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(790f - -1118f) + 1191f), 326f))));
    var var_2 = var_0.c;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1132f, 340f), _wgslsmith_f_op_vec2_f32(func_4(abs(vec3<i32>(30559i, 29581i, -50i)), ~vec4<i32>(-22474i, 9996i, var_2.a.x, global0.a.d))).x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-190f - -1006f))));
    var var_3 = vec2<bool>(true, !(!global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1000f * -1329f), -1071f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), vec4<u32>(~var_0.a.b, ~23012u, ~max(~var_2.b, var_0.c.b), ~u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-470f, -197f)), -1118f)), _wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(1520f * 781f)), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-410f, 530f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1069f, -1000f, 2002f, 1256f)), vec4<f32>(2525f, -326f, -435f, -1118f), !global0.b.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -868f, -1270f, -153f), vec4<f32>(-511f, -524f, 173f, 683f))), vec4<bool>(true, global0.d.x, var_0.b.x, var_0.c.c.x == var_0.a.a.x)))), _wgslsmith_div_vec2_u32(~(~firstTrailingBit(vec2<u32>(var_2.b, var_0.a.b))), abs(~vec2<u32>(17368u, 4294967295u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b, global0.a.b), vec2<u32>(var_2.b, u_input.a)) % vec2<u32>(32u)))), var_2.b);
}

