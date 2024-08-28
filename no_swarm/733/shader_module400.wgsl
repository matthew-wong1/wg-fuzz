struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec2<i32>(2147483647i, i32(-2147483648)), vec4<i32>(35205i, 2147483647i, 30899i, -46687i), vec3<i32>(-1i, -1i, 1i));

var<private> global1: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_div_i32(27433i, ~global0.a), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(max(vec2<i32>(-36026i, global0.d.x), abs(vec2<i32>(global0.d.x, global0.d.x))), -countOneBits(vec2<i32>(global0.c.x, -12542i))), u_input.c.zy), vec4<i32>(-24709i, 0i, max(u_input.b.x, ~(-9249i) << (_wgslsmith_clamp_u32(1u, u_input.e, 1u) % 32u)), (-68824i ^ global0.d.x) >> (~35691u % 32u)), -u_input.c.yxy);
    let var_1 = ~(vec2<u32>(~(~0u), 4294967295u) ^ firstLeadingBit(select(~vec2<u32>(34994u, 70153u), firstTrailingBit(vec2<u32>(u_input.e, 16003u)), vec2<bool>(true, true))));
    global0 = Struct_1(~(-_wgslsmith_div_i32(u_input.b.x, var_0.c.x)), ~firstTrailingBit(~reverseBits(vec2<i32>(43024i, -18086i))), reverseBits(select(~vec4<i32>(var_0.a, var_0.d.x, 1i, -2147483647i), -vec4<i32>(global0.a, global0.d.x, 44740i, 1i), all(vec2<bool>(true, false)))) << (vec4<u32>(4294967295u, abs(firstLeadingBit(111529u)), reverseBits(0u) & ~u_input.d, u_input.a) % vec4<u32>(32u)), vec3<i32>(2147483647i, ~(_wgslsmith_add_i32(u_input.c.x, -2147483647i) ^ var_0.c.x), _wgslsmith_mult_i32(max(i32(-1i) * -2147483647i, ~var_0.a), var_0.d.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(733f, -1400f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-402f, -307f)))))));
    var var_3 = var_0;
    return _wgslsmith_sub_vec2_u32(~reverseBits(abs(vec2<u32>(var_1.x, 4294967295u))), var_1) << (vec2<u32>(18193u, 0u) % vec2<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: u32) -> vec3<i32> {
    global0 = Struct_1(u_input.b.x, -global0.d.zy, u_input.c >> (countOneBits(~(~vec4<u32>(4294967295u, u_input.e, arg_2, u_input.d))) % vec4<u32>(32u)), min(global0.d, global0.c.xyw));
    global1 = firstLeadingBit(countOneBits(~(-17926i)));
    global1 = -2147483647i;
    let var_0 = func_3() << (vec2<u32>(u_input.d, func_3().x) % vec2<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(2918i, countOneBits(arg_1))), -_wgslsmith_mod_i32(arg_1, global0.c.x), 19317i), vec2<i32>(~(-2147483647i), ~(-countOneBits(arg_1))), -vec4<i32>(1i, 7380i, _wgslsmith_div_i32(u_input.c.x, 2147483647i), global0.c.x) & _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_1, arg_1, u_input.b.x) << (vec4<u32>(13214u, var_0.x, 0u, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(4190i, 47333i, -2147483647i, -29806i), vec4<i32>(arg_1, arg_1, global0.b.x, -65001i), vec4<i32>(2147483647i, 2341i, 108749i, u_input.b.x))), firstTrailingBit(vec4<i32>(-2278i, 0i, global0.c.x, global0.c.x))), select(countOneBits(~countOneBits(global0.d)), u_input.c.wwy ^ _wgslsmith_div_vec3_i32(vec3<i32>(1i, global0.d.x, global0.b.x), select(global0.d, global0.c.xzw, arg_0)), false));
    return firstTrailingBit(reverseBits(_wgslsmith_clamp_vec3_i32(~firstTrailingBit(vec3<i32>(var_1.d.x, global0.c.x, u_input.b.x)), u_input.c.yyy, global0.d)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = vec3<bool>(false, true, select(true, true, !(-2147483647i > u_input.c.x)) || !(!any(vec2<bool>(false, true))));
    let var_1 = Struct_1(-1i, vec2<i32>(-2147483647i, ~(~(-13824i))), vec4<i32>(~(-min(-4203i, 2147483647i)), 1i, (i32(-1i) * -arg_0.d.x) >> (8328u % 32u), -12048i), vec3<i32>(~(_wgslsmith_dot_vec2_i32(global0.b, vec2<i32>(0i, global0.b.x)) & countOneBits(u_input.c.x)), countOneBits(-51714i), -1i));
    global1 = func_2((var_0.x | false) != all(var_0), _wgslsmith_dot_vec4_i32(var_1.c, vec4<i32>(global0.a << (733u % 32u), global0.a, abs(2147483647i), -arg_1.x) << (vec4<u32>(_wgslsmith_mod_u32(350u, 12441u), u_input.a, ~u_input.e, u_input.e) % vec4<u32>(32u))), u_input.d).x;
    let var_2 = 0i;
    global1 = u_input.b.x;
    return -(_wgslsmith_sub_vec2_i32(min(abs(u_input.b), -var_1.c.yx), vec2<i32>(var_1.a ^ arg_0.d.x, -2147483647i)) >> (vec2<u32>(25625u, u_input.a | func_3().x) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_1(-1i, vec2<i32>(global0.c.x, -(u_input.c.x | global0.d.x)) & func_4(Struct_1(1i, global0.d.yz, vec4<i32>(-24612i, u_input.b.x, 4660i, global0.b.x) ^ global0.c, firstLeadingBit(global0.c.xwx)), firstLeadingBit(func_2(true, 46097i, arg_1.x))), ~(-vec4<i32>(-2707i, -global0.a, global0.b.x, 1i)), u_input.c.wyz >> (arg_1 % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_2 = Struct_1(global0.c.x, _wgslsmith_sub_vec2_i32(~firstLeadingBit(select(u_input.b, u_input.b, vec2<bool>(false, false))), vec2<i32>(_wgslsmith_sub_i32(func_2(false, var_0.a, 10750u).x, select(u_input.c.x, global0.a, true)), 1i)), global0.c, global0.d);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 557f)))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(-438f)), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.x)))), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(343f * _wgslsmith_f_op_f32(f32(-1f) * -1106f))))));
    var var_4 = ~(u_input.e << (min(1u, firstTrailingBit(~arg_1.x)) % 32u));
    return 1160f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), -1000f, _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1039f, 1393f, 719f), vec3<f32>(-953f, -1815f, 435f)), vec3<u32>(0u, u_input.e, u_input.e) << (vec3<u32>(28715u, 123939u, u_input.e) % vec3<u32>(32u))))))));
    global0 = Struct_1(~(-u_input.c.x), vec2<i32>(u_input.b.x, -(firstLeadingBit(u_input.c.x) ^ global0.b.x)), countOneBits(vec4<i32>(-2147483647i | ~u_input.b.x, 22201i, ~4892i ^ func_4(Struct_1(u_input.c.x, u_input.b, u_input.c, u_input.c.wxy), global0.c.xzz).x, -(i32(-1i) * -2147483647i))), -select(max(-vec3<i32>(6970i, 17044i, 30184i), ~global0.c.zwy), global0.c.zyy | abs(u_input.c.xwz), all(vec3<bool>(true, true, true))));
    let var_1 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), vec3<bool>(false, all(vec2<bool>(true, var_0.x > var_0.x)), all(vec2<bool>(true, true))), true);
    var var_2 = _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(-1i));
    let var_3 = all(!select(select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, true, true, true), var_1.x), select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(true, true, var_1.x, var_1.x), u_input.d < 108050u), vec4<bool>(true, select(var_1.x, var_1.x, var_1.x), var_1.x, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), 629f);
}

