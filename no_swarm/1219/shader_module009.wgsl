struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 20534i, i32(-2147483648), -9690i);

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-24784i, -42346i, -1i, 1696i), vec4<i32>(1i, 2147483647i, 0i, -36923i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> u32 {
    let var_0 = arg_0.x;
    global0 = global1.b & reverseBits(global1.b);
    global0 = arg_1;
    let var_1 = Struct_1(vec4<i32>(-global0.x, global1.b.x, arg_1.x, global0.x), vec4<i32>(i32(-1i) * -19588i, _wgslsmith_sub_i32(global1.b.x, ~(~(-1i))), _wgslsmith_clamp_i32(abs(2147483647i), ~(arg_1.x << (4294967295u % 32u)), 66806i), ~max(firstLeadingBit(1i), ~(-43818i))));
    var var_2 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_div_i32(-min(global1.a.x, -2147483647i), min(_wgslsmith_clamp_i32(global1.a.x, arg_1.x, arg_1.x), abs(-1i))), -2147483647i));
    return _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, abs(u_input.a)), ~firstLeadingBit(u_input.a), reverseBits(u_input.a)) & u_input.a, ~select(abs(0u) | max(1u, u_input.a), 0u, all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_3(arg_2.a);
    global1 = Struct_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_3.x >> (u_input.a % 32u), arg_3.x, -10753i, arg_0.x), global1.a), vec4<i32>(_wgslsmith_mod_i32(-select(arg_2.a, arg_0.x, true), var_0.a), _wgslsmith_dot_vec4_i32(global1.b, ~vec4<i32>(2147483647i, 3070i, -1i, -1580i)), 43624i, 11714i));
    var var_1 = ~(~vec3<u32>(70459u, 4294967295u ^ ~u_input.a, func_3(vec4<f32>(120f, arg_1.b, arg_1.b, 1503f), _wgslsmith_div_vec4_i32(global1.a, vec4<i32>(arg_1.a.b.x, global0.x, arg_0.x, global0.x)), vec3<f32>(673f, 169f, arg_1.b))));
    global1 = Struct_1(-reverseBits(~vec4<i32>(arg_3.x, var_0.a, global0.x, 27533i)) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, u_input.a, u_input.a, 16604u), vec4<u32>(u_input.a, 0u, u_input.a, var_1.x), vec4<u32>(4294967295u, var_1.x, u_input.a, 0u)) | vec4<u32>(var_1.x, var_1.x, u_input.a, var_1.x), reverseBits(vec4<u32>(20228u, u_input.a, u_input.a, u_input.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) % vec4<u32>(32u)), vec4<i32>(-5593i ^ abs(arg_0.x), global1.a.x, select(-51510i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, -2147483647i, arg_0.x), ~global1.b), !any(vec4<bool>(false, true, true, true))), global1.b.x));
    var_1 = min(vec3<u32>(~(countOneBits(var_1.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(47682u, u_input.a, var_1.x, var_1.x), vec4<u32>(var_1.x, u_input.a, u_input.a, 4294967295u))), ~abs(0u), ~_wgslsmith_add_u32(u_input.a, ~u_input.a)), abs(vec3<u32>(1u, 0u >> (u_input.a % 32u), u_input.a) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, u_input.a, u_input.a) << (vec3<u32>(10699u, var_1.x, u_input.a) % vec3<u32>(32u)), min(vec3<u32>(0u, 67043u, 4294967295u), vec3<u32>(u_input.a, 1u, 4921u)), vec3<u32>(18947u, var_1.x, u_input.a))));
    return arg_1.a;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = 1086f;
    global0 = ~((abs(_wgslsmith_sub_vec4_i32(arg_0.a, global1.a)) & _wgslsmith_add_vec4_i32(global1.a, vec4<i32>(1i, global1.a.x, global0.x, global1.a.x) | vec4<i32>(62460i, arg_0.a.x, -2147483647i, arg_0.a.x))) ^ -vec4<i32>(global1.a.x, firstTrailingBit(-50726i), ~global1.b.x, -global1.a.x));
    var var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, reverseBits(1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, global1.a.x), max(arg_0.a.x, -2147483647i)), ~global1.b.x), vec4<i32>(func_2(vec2<i32>(global0.x, global1.a.x), Struct_2(arg_0, -146f), Struct_3(2147483647i), ~vec3<i32>(global1.a.x, 49794i, 27989i)).a.x ^ ~global1.a.x, ~arg_0.a.x, ~(-34191i), _wgslsmith_add_i32(-(~global1.b.x), _wgslsmith_mod_i32(2147483647i, global0.x))));
    global1 = func_2(reverseBits(vec2<i32>(global0.x << (~17176u % 32u), _wgslsmith_mult_i32(1i, 53450i))), Struct_2(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1438f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f)))), Struct_3(~_wgslsmith_div_i32(reverseBits(3972i), firstTrailingBit(1i))), _wgslsmith_sub_vec3_i32(~min(global0.yxz, arg_0.b.zxw), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(2147483647i, arg_0.a.x), -40209i)) & -vec3<i32>(1i, 1i, global1.a.x));
    global1 = func_2(max(_wgslsmith_sub_vec2_i32(arg_0.b.yy | vec2<i32>(arg_0.a.x, 56551i), abs(global0.wx)), vec2<i32>(arg_0.a.x ^ -7119i, arg_0.b.x)) ^ -vec2<i32>(3796i, _wgslsmith_clamp_i32(arg_0.b.x, arg_0.b.x, global0.x)), Struct_2(Struct_1(vec4<i32>(global0.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, -2147483647i, global0.x, global1.b.x), vec4<i32>(arg_0.a.x, global1.a.x, 0i, global1.a.x)), 2147483647i << (u_input.a % 32u)), func_2(vec2<i32>(global1.a.x, 21276i), Struct_2(Struct_1(global1.a, vec4<i32>(38019i, arg_0.b.x, 2147483647i, arg_0.a.x)), 456f), Struct_3(31626i), ~vec3<i32>(-15983i, 0i, -2147483647i)).a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(772f)))))), Struct_3(arg_0.a.x), vec3<i32>(global0.x >> ((1u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(0u, u_input.a))) % 32u), ~(~global0.x), _wgslsmith_mod_i32(firstTrailingBit(arg_0.a.x ^ arg_0.b.x), ~_wgslsmith_mod_i32(arg_0.b.x, 838i))));
    return select(!vec4<bool>(!all(vec4<bool>(false, false, true, false)), !all(vec4<bool>(false, true, true, true)), !all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), select(vec4<bool>(false, !any(vec2<bool>(true, true)), !any(vec4<bool>(true, true, true, true)), countOneBits(u_input.a) < ~u_input.a), !vec4<bool>(any(vec3<bool>(true, false, false)), false, true, all(vec4<bool>(false, false, true, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true))), true);
}

fn func_1() -> f32 {
    global1 = Struct_1(abs(_wgslsmith_div_vec4_i32(-global1.b, global1.a)), global1.b);
    let var_0 = !select(vec4<bool>(true, true, true, true), !func_4(func_2(global0.xw, Struct_2(Struct_1(vec4<i32>(global0.x, global0.x, -2147483647i, global1.a.x), global1.b), -221f), Struct_3(1123i), global1.b.zzy)), _wgslsmith_div_f32(-1666f, _wgslsmith_f_op_f32(round(-776f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) * _wgslsmith_f_op_f32(min(1085f, 1000f))));
    var var_1 = countOneBits(~func_2(vec2<i32>(global0.x, -68662i) & -vec2<i32>(-1i, global1.b.x), Struct_2(Struct_1(global1.a, global1.b), -1092f), Struct_3(~(-11923i)), -min(global1.a.yxy, global1.b.yyz)).b.x);
    let var_2 = -2147483647i;
    let var_3 = Struct_1(~global1.a, ~global1.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) + 752f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_1())))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-447f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), var_1.x);
    let var_3 = global0.xww;
    var var_4 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(exp2(var_2.x))), -821f);
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 - _wgslsmith_f_op_vec3_f32(var_2 * vec3<f32>(302f, _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -791f)))));
    var var_6 = Struct_3(max(-_wgslsmith_mod_i32(firstLeadingBit(-32095i), global0.x), max(-global0.x, ~_wgslsmith_div_i32(global1.a.x, 3156i))));
    var var_7 = func_2(global0.zy, Struct_2(Struct_1(global1.b, global1.b << (vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(abs(var_2.x))), Struct_3(_wgslsmith_clamp_i32(abs(_wgslsmith_clamp_i32(0i, 40238i, 1i)), -1i, select(global1.a.x, 1i, func_4(Struct_1(global1.a, vec4<i32>(21731i, var_3.x, var_6.a, -7759i))).x))), (vec3<i32>(-1i) * -(vec3<i32>(global1.b.x, 27979i, 1i) & vec3<i32>(40146i, global1.a.x, var_6.a))) << (max(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), min(~vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(u_input.a, 4294967295u, 97186u))) % vec3<u32>(32u)));
    var var_8 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(u_input.a, abs(u_input.a)), -449f, 45347u, _wgslsmith_f_op_f32(sign(var_2.x)));
}

