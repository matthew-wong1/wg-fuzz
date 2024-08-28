struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(45666u, 74998u);

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-261f, 297f, -229f), vec3<f32>(249f, 661f, 1860f), vec3<f32>(1000f, -1359f, 815f), vec3<f32>(-1110f, 224f, -185f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<f32> {
    global0 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(select(firstTrailingBit(vec2<u32>(u_input.a, 75051u) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), max(vec2<u32>(10967u, u_input.a), vec2<u32>(28336u, global0.x)), vec2<u32>(global0.x, u_input.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<u32>(~1u, 1u)), countOneBits(vec2<u32>(0u, 0u)));
    let var_0 = select(26830i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.e ^ u_input.c, 1i, -20040i, _wgslsmith_mod_i32(-2147483647i, u_input.e))), vec4<i32>(u_input.c, _wgslsmith_sub_i32(u_input.e, -29400i), u_input.d, -u_input.b.x) | vec4<i32>(u_input.e, u_input.e, abs(u_input.e), u_input.e)), false);
    var var_1 = Struct_3(Struct_2(-_wgslsmith_mod_i32(countOneBits(u_input.d), max(u_input.d, var_0)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-228f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(533f, 1376f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(534f - -885f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1039f - -795f) - 1393f)), ~(~1i) << (((global0.x & u_input.a) ^ ~global0.x) % 32u)), countOneBits(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(var_0, -2147483647i, -1i, 0i) >> (vec4<u32>(u_input.a, 50591u, global0.x, 44307u) % vec4<u32>(32u))), ~vec4<i32>(6276i, 0i, u_input.d, -21898i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -44801i, 43557i, var_0), vec4<i32>(u_input.b.x, -5720i, var_0, 2147483647i)) << (firstTrailingBit(vec4<u32>(4294967295u, 10863u, 0u, 64225u)) % vec4<u32>(32u)))), Struct_1(firstTrailingBit(vec2<u32>(global0.x, global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-281f, 1544f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1031f)))));
    let var_2 = vec4<bool>(any(vec3<bool>(true, all(vec2<bool>(true, true)), false)), ((all(vec2<bool>(false, false)) || true) || all(vec4<bool>(true, true, true, true))) & !(abs(51526i) != _wgslsmith_mult_i32(-1i, u_input.e)), false, all(select(vec3<bool>(true, true, select(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))));
    let var_3 = var_1.c;
    return var_1.a.b;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_2(max(~firstLeadingBit(select(-32929i, arg_1.c, false)), _wgslsmith_div_i32(~7573i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, arg_2.x, -14568i), vec4<i32>(-35183i, -2147483647i, arg_1.c, u_input.c)), arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-802f - 779f), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(2033f - arg_1.b.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) + vec4<f32>(-1000f, arg_1.b.x, 1309f, -425f))) * _wgslsmith_f_op_vec4_f32(func_3())), -1i);
    let var_1 = arg_1;
    let var_2 = Struct_1(countOneBits(abs(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, global0.x)), arg_0 ^ 1u))), -1402f, _wgslsmith_f_op_f32(-var_1.b.x));
    var var_3 = var_2;
    let var_4 = min(firstLeadingBit(var_3.a), firstLeadingBit(~vec2<u32>(~var_3.a.x, reverseBits(20125u))));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> bool {
    let var_0 = select(select(select(vec3<bool>(true, all(vec2<bool>(arg_3, false)), all(vec2<bool>(true, arg_3))), !(!vec3<bool>(arg_3, true, arg_3)), true), !(!(!vec3<bool>(true, true, arg_3))), select(vec3<bool>(true, all(vec4<bool>(arg_3, arg_3, arg_3, arg_3)), arg_3 && true), !(!vec3<bool>(false, arg_3, false)), select(!vec3<bool>(false, arg_3, false), select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, false, true)), arg_3))), vec3<bool>(false, arg_3, (_wgslsmith_div_u32(0u, arg_1.a.x) >= arg_2.c.a.x) || arg_3), !(!(!vec3<bool>(true, arg_3, arg_3))));
    global1 = arg_2.c.a.x;
    var var_1 = _wgslsmith_clamp_vec3_i32(arg_2.b.yxz, _wgslsmith_sub_vec3_i32(~select(arg_2.b.zyz, ~vec3<i32>(u_input.e, arg_0.c, -41208i), !var_0), arg_2.b.wwx), arg_2.b.zxy & vec3<i32>(_wgslsmith_mod_i32(-44931i, arg_0.c), -1i, _wgslsmith_div_i32(arg_0.a, ~2147483647i)));
    var var_2 = ~_wgslsmith_clamp_vec2_u32(arg_2.c.a, arg_1.a, arg_1.a);
    let var_3 = Struct_2(var_1.x, arg_2.a.b, ~(~select(reverseBits(9296i), 1i, true)));
    return arg_3;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = any(vec2<bool>(false, func_4(func_2(3973u, Struct_2(-16899i, vec4<f32>(-2062f, -454f, 115f, 149f), 0i), vec2<i32>(4522i, -31582i) >> (arg_1.zz % vec2<u32>(32u))), Struct_1(vec2<u32>(0u, arg_1.x), 1407f, -2680f), Struct_3(Struct_2(-1i, vec4<f32>(1000f, -2385f, 913f, 214f), 0i), min(vec4<i32>(-1144i, u_input.e, u_input.d, 2147483647i), vec4<i32>(72334i, 0i, -1i, u_input.c)), Struct_1(vec2<u32>(53455u, arg_0), 1000f, -891f)), false)));
    var var_1 = arg_1.yy;
    var_1 = vec2<u32>(~(global0.x & 102668u), ~(~0u));
    global2 = array<vec3<f32>, 4>();
    global0 = arg_1.xy << (~_wgslsmith_clamp_vec2_u32(firstTrailingBit(~arg_1.yx), vec2<u32>(~1u, ~global0.x), arg_1.zy) % vec2<u32>(32u));
    return abs(firstTrailingBit(vec4<u32>(u_input.a, 0u, _wgslsmith_clamp_u32(~arg_1.x, ~4294967295u, abs(0u)), arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(vec2<u32>(_wgslsmith_sub_u32(global0.x, 7528u), u_input.a));
    var var_0 = _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(51195u, global0.x, global0.x, u_input.a), vec4<u32>(global0.x, 3161u, u_input.a, 4294967295u)), vec3<u32>(u_input.a, global0.x, 33826u) >> (vec3<u32>(22037u, 1u, 1u) % vec3<u32>(32u)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(64996u, u_input.a, u_input.a, global0.x), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, global0.x, 35594u, 1u), vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<bool>(true, true, true, true)), vec4<u32>(0u, u_input.a, 76476u, 4294967295u) >> (vec4<u32>(u_input.a, 30316u, u_input.a, 1u) % vec4<u32>(32u))))), 4u)] + _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(global0.x, 4u)] + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -452f), func_2(global0.x, Struct_2(u_input.d, vec4<f32>(-1000f, 1491f, 812f, -276f), 1i), vec2<i32>(u_input.b.x, 1i) & vec2<i32>(u_input.d, u_input.b.x)).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-370f - 2133f) * -1112f))));
    var var_1 = vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(func_1(1u, vec3<u32>(4294967295u, global0.x, 1u)).ww, select(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 8114u), vec2<bool>(false, false)))) | func_1(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 20961u, global0.x), reverseBits(vec3<u32>(global0.x, 67961u, 46255u)))).x, global0.x);
    let var_2 = true;
    global0 = var_1.xx;
    let var_3 = vec4<bool>(!var_2, _wgslsmith_clamp_i32(u_input.b.x >> (~var_1.x % 32u), -28761i, ~(-u_input.e)) >= _wgslsmith_mod_i32(-54149i, abs(u_input.e)), (_wgslsmith_sub_i32(u_input.b.x, ~u_input.e) & u_input.d) <= ~firstTrailingBit(abs(u_input.c)), true);
    var_1 = ~vec3<u32>(~max(1u, 1u), _wgslsmith_clamp_u32(u_input.a, var_1.x, _wgslsmith_sub_u32(reverseBits(u_input.a), max(0u, 15180u))), u_input.a);
    let var_4 = func_2(abs(~(~0u)), func_2(global0.x, Struct_2(_wgslsmith_add_i32(u_input.e, ~(-43967i)), vec4<f32>(1000f, _wgslsmith_f_op_f32(min(-1000f, -162f)), _wgslsmith_f_op_f32(-var_0.x), var_0.x), u_input.b.x), firstLeadingBit(u_input.b ^ vec2<i32>(u_input.b.x, 0i))), u_input.b);
    var_1 = ~(~(~(~vec3<u32>(28442u, 40286u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1055f, 5031u);
}

