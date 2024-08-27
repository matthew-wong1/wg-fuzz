struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(4294967295u, 4370u), vec2<u32>(1u, 0u), vec2<u32>(3743u, 1u), vec2<u32>(1u, 0u), vec2<u32>(72576u, 0u), vec2<u32>(20806u, 21146u), vec2<u32>(33775u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8578u, 0u));

var<private> global4: bool = true;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec4_i32(countOneBits(max(u_input.d, -vec4<i32>(u_input.d.x, u_input.a, u_input.a, 29012i))), vec4<i32>(_wgslsmith_sub_i32(-(38671i | u_input.a), 43863i), _wgslsmith_add_i32(8131i, _wgslsmith_div_i32(~u_input.d.x, u_input.d.x)), -u_input.a, -1i));
    var var_1 = Struct_1(1000f, ~max(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, 0u), abs(vec2<u32>(global0.b.x, arg_2.b.x))), vec2<u32>(~arg_2.b.x, ~38999u)), select(vec2<bool>(false == (arg_2.a == 213f), arg_2.c.x), select(!select(vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.c, arg_2.c), !select(vec2<bool>(false, arg_2.c.x), arg_2.c, false), all(vec3<bool>(arg_2.c.x, true, true))), true));
    return !global0.c;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global4 = any(!select(!(!vec4<bool>(global0.c.x, true, false, global0.c.x)), !(!vec4<bool>(false, true, global0.c.x, global0.c.x)), true | !global0.c.x));
    var var_0 = Struct_2(Struct_1(878f, vec2<u32>(_wgslsmith_clamp_u32(abs(global0.b.x), u_input.c.x | global0.b.x, _wgslsmith_div_u32(8110u, global0.b.x)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, u_input.c.x, 5782u, 32777u), vec4<u32>(global0.b.x, 20844u, global0.b.x, 18049u)), vec4<u32>(global0.b.x, 66562u, 38096u, global0.b.x) | vec4<u32>(49770u, u_input.b, u_input.b, 45175u))), func_3(_wgslsmith_div_f32(-644f, _wgslsmith_f_op_f32(arg_0.x - global0.a)), countOneBits(~vec4<u32>(3750u, 0u, 0u, u_input.b)), Struct_1(_wgslsmith_div_f32(332f, -574f), vec2<u32>(9525u, u_input.b), !vec2<bool>(global0.c.x, global0.c.x)), -719f)), vec3<i32>(-max(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), abs(-1i)), ~0i, u_input.a), Struct_1(_wgslsmith_f_op_f32(-global0.a), vec2<u32>(33297u, 4294967295u), vec2<bool>(false || all(vec2<bool>(global0.c.x, true)), false)));
    global4 = all(vec3<bool>(any(vec3<bool>(global0.c.x, false || global0.c.x, global0.c.x)), global0.c.x, any(select(select(vec4<bool>(global0.c.x, var_0.a.c.x, global0.c.x, false), vec4<bool>(true, false, var_0.a.c.x, var_0.c.c.x), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_0.c.c.x, var_0.c.c.x, global0.c.x), vec4<bool>(false, var_0.a.c.x, false, global0.c.x)), select(vec4<bool>(global0.c.x, true, global0.c.x, true), vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(135f))))), vec2<u32>(~(~1u), 79480u), select(vec2<bool>(var_0.b.x > -9619i, var_0.c.c.x), func_3(_wgslsmith_f_op_f32(-arg_0.x), firstTrailingBit(vec4<u32>(1u, u_input.b, 0u, 4294967295u)), var_0.a, _wgslsmith_f_op_f32(-arg_0.x)), var_0.c.c)), ~(reverseBits(var_0.b) | abs(reverseBits(var_0.b))), var_0.a);
    let var_2 = u_input.c;
    return var_0.a;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec4<f32>(-346f, _wgslsmith_f_op_f32(-global0.a), -415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f + global0.a))));
    global4 = var_0.c.x;
    let var_1 = !vec3<bool>(true, _wgslsmith_f_op_f32(-var_0.a) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) - _wgslsmith_f_op_f32(var_0.a * -1239f)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, global0.a, global0.a, global0.a))).c.x);
    let var_2 = -vec4<i32>(-_wgslsmith_mod_i32(u_input.d.x, 0i) ^ 36909i, firstTrailingBit(u_input.d.x), -26531i, _wgslsmith_clamp_i32(u_input.d.x, 1i, select(_wgslsmith_mod_i32(-1i, u_input.d.x), ~u_input.a, true)));
    var var_3 = var_2;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = global0.c.x;
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a)));
    let var_3 = Struct_2(arg_1, abs(vec3<i32>(1i, ~(-1i), -10185i) >> (select(~u_input.c, ~vec3<u32>(84485u, 9441u, u_input.c.x), !vec3<bool>(arg_1.c.x, false, arg_0.c.x)) % vec3<u32>(32u))), Struct_1(-2398f, global0.b, !(!select(vec2<bool>(global0.c.x, arg_1.c.x), vec2<bool>(arg_1.c.x, true), vec2<bool>(global0.c.x, global0.c.x)))));
    let var_4 = vec3<u32>(global0.b.x, ~max(firstLeadingBit(~global0.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 13225u) << (arg_1.b % vec2<u32>(32u)), ~vec2<u32>(13954u, 0u))), abs(~_wgslsmith_mult_u32(~4294967295u, global0.b.x)));
    return ~(~(~(vec2<u32>(5173u, 14981u) << (u_input.c.xx % vec2<u32>(32u))))) | abs(var_3.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.xy;
    let var_1 = Struct_1(-545f, func_4(func_1(), Struct_1(_wgslsmith_div_f32(global0.a, global0.a), global3[_wgslsmith_index_u32(40114u, 9u)], !func_3(global0.a, vec4<u32>(1u, var_0.x, u_input.c.x, 14142u), Struct_1(global0.a, vec2<u32>(global0.b.x, u_input.c.x), global0.c), global0.a))), vec2<bool>(select(global0.c.x, func_1().c.x, !select(false, false, global0.c.x)), !select(!global0.c.x, 34727u >= u_input.b, !global0.c.x)));
    var var_2 = var_1;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1210f * var_2.a)))))) == _wgslsmith_f_op_f32(min(-1574f, var_1.a));
    let var_3 = _wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0.b.x ^ var_1.b.x, 1u, 75196u, func_2(vec4<f32>(global0.a, -213f, 398f, global0.a)).b.x)), ~((vec4<u32>(0u, 36283u, u_input.c.x, 5315u) & vec4<u32>(var_1.b.x, 19444u, global0.b.x, 4294967295u)) | firstLeadingBit(vec4<u32>(25025u, 79802u, 4294967295u, global0.b.x)))) | ~select((vec4<u32>(1u, var_2.b.x, var_0.x, u_input.c.x) >> (vec4<u32>(1u, 3925u, u_input.b, var_1.b.x) % vec4<u32>(32u))) | countOneBits(vec4<u32>(var_1.b.x, 71585u, var_1.b.x, var_1.b.x)), ~(vec4<u32>(var_1.b.x, u_input.b, global0.b.x, 34463u) & vec4<u32>(u_input.c.x, var_2.b.x, 4294967295u, var_1.b.x)), select(!vec4<bool>(var_2.c.x, false, var_1.c.x, false), select(vec4<bool>(true, global0.c.x, false, global0.c.x), vec4<bool>(true, global0.c.x, global0.c.x, var_1.c.x), vec4<bool>(false, true, var_1.c.x, global0.c.x)), vec4<bool>(true, false, false, false)));
    let var_4 = Struct_2(var_1, u_input.d.zzz, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a, -1532f, 838f, var_1.a)))).a), var_2.b.x, _wgslsmith_sub_u32(~_wgslsmith_add_u32(min(4294967295u, 101500u), var_0.x), _wgslsmith_div_u32(1u >> (~var_3.x % 32u), var_3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1722f, var_1.a, global0.a)))))));
}

