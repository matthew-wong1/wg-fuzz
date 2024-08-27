struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(3171i, Struct_1(true, 277f, vec3<i32>(-27768i, 1i, 30405i)), Struct_1(true, 2017f, vec3<i32>(31703i, -1i, 0i)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.c.c.x, global0.c.c.x, global0.c.c.x, global0.a), vec4<i32>(-29152i, global0.a, -37213i, global0.b.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.c.x, 1i, global0.a, 2147483647i), vec4<i32>(global0.a, 19000i, -34055i, -1i))), -(~(~vec4<i32>(0i, global0.a, global0.a, -50546i)))), global0.c, global0.c);
    var var_1 = _wgslsmith_f_op_f32(trunc(-524f));
    let var_2 = global0.c.c;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -858f);
    var var_4 = -firstLeadingBit(firstTrailingBit(vec3<i32>(var_0.b.c.x, var_2.x, _wgslsmith_dot_vec3_i32(var_0.c.c, global0.c.c))));
    return _wgslsmith_add_vec4_i32(select(~firstLeadingBit(firstTrailingBit(vec4<i32>(global0.a, var_2.x, 1i, var_2.x))), ~vec4<i32>(reverseBits(global0.a), -49090i, -15219i, ~var_2.x), select(vec4<bool>(true, !global0.c.a, true, global0.b.a), !vec4<bool>(global0.c.a, false, var_0.c.a, var_0.c.a), vec4<bool>(var_0.c.a & true, global0.b.a, var_0.c.a | false, true))), vec4<i32>(~(-_wgslsmith_div_i32(-2147483647i, -52842i)), firstTrailingBit(reverseBits(_wgslsmith_clamp_i32(global0.c.c.x, 0i, var_0.b.c.x))), global0.c.c.x, _wgslsmith_div_i32(abs(_wgslsmith_div_i32(var_0.a, 2147483647i)), -16939i)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(-_wgslsmith_dot_vec4_i32(func_3(), firstTrailingBit(vec4<i32>(global0.b.c.x, -1i, global0.a, global0.a))), Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(global0.c.a, true, true), select(vec3<bool>(global0.c.a, true, false), vec3<bool>(global0.b.a, true, global0.b.a), vec3<bool>(global0.c.a, true, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.c.b)))), max(global0.c.c, abs(global0.b.c) ^ (vec3<i32>(global0.b.c.x, 2147483647i, -2147483647i) | global0.c.c))), global0.b);
    global0 = Struct_2(global0.b.c.x, global0.c, global0.c);
    let var_0 = (-global0.c.c.yy | ~func_3().zw) ^ global0.b.c.xy;
    let var_1 = false;
    let var_2 = Struct_1(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-270f + -231f) * global0.c.b), _wgslsmith_add_vec3_i32(min(vec3<i32>(var_0.x, global0.c.c.x, 1i), vec3<i32>(var_0.x, -24857i, -2147483647i) >> (u_input.a.xxy % vec3<u32>(32u))) >> ((vec3<u32>(u_input.a.x, u_input.a.x, 44031u) | min(u_input.a.wwy, u_input.a.xwz)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 1i, global0.b.c.x) & vec3<i32>(var_0.x, 6233i, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(30991i, global0.b.c.x, var_0.x), vec3<i32>(global0.c.c.x, -2147483647i, global0.c.c.x)))));
    return Struct_1(true, _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-global0.c.b)), select(vec3<i32>(var_0.x, ~var_0.x, abs(_wgslsmith_mult_i32(2147483647i, 0i))), var_2.c, !vec3<bool>(true, var_2.c.x == -28509i, var_2.a)));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = global0.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 182f, arg_1.c.b, arg_1.b.b) + vec4<f32>(-356f, 1551f, 1003f, var_0.b)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(498f, 1056f, 1000f, var_1.b))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(var_0.b + global0.b.b), _wgslsmith_f_op_f32(round(-859f)), var_1.b) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))), !arg_1.c.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-960f + 223f), _wgslsmith_f_op_f32(step(1355f, var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b))))));
    let var_3 = vec4<i32>(arg_1.a, 44120i, ~arg_1.c.c.x, global0.c.c.x & var_1.c.x);
    var var_4 = firstTrailingBit(~(u_input.a.x >> (82895u % 32u)));
    return func_2();
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = ~vec2<u32>(~76786u, ~_wgslsmith_dot_vec2_u32(~u_input.a.xy, ~u_input.a.ww));
    let var_1 = select(select(vec3<bool>(false, arg_0.c.a, false), !(!vec3<bool>(false, global0.b.a, arg_0.c.a)), arg_0.b.a), vec3<bool>(false, all(vec4<bool>(global0.b.c.x != -6711i, true, global0.c.a, true)), true), !vec3<bool>(select(arg_0.c.a | false, func_1(arg_0.c.b, Struct_2(12i, Struct_1(true, global0.b.b, global0.b.c), Struct_1(global0.b.a, -1000f, global0.c.c))).a, true), !global0.c.a, global0.c.a));
    let var_2 = func_1(-1417f, Struct_2(func_2().c.x, func_2(), func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.b))), arg_0))).a;
    global0 = arg_0;
    let var_3 = vec3<bool>(true, !(!(~global0.a <= func_1(arg_0.c.b, Struct_2(0i, global0.b, Struct_1(global0.c.a, global0.b.b, arg_0.b.c))).c.x)), true);
    return 31232i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mod_i32(func_4(Struct_2(global0.a << (u_input.a.x % 32u), func_1(742f, Struct_2(5421i, Struct_1(global0.c.a, 1792f, vec3<i32>(global0.c.c.x, 0i, global0.c.c.x)), Struct_1(true, global0.c.b, vec3<i32>(2147483647i, 2147483647i, global0.b.c.x)))), func_2())), min(global0.b.c.x, reverseBits(reverseBits(global0.c.c.x)))), func_1(-663f, Struct_2(_wgslsmith_mult_i32(-2147483647i, -global0.c.c.x), Struct_1(global0.b.a & true, _wgslsmith_f_op_f32(round(360f)), -vec3<i32>(1i, global0.b.c.x, global0.c.c.x)), Struct_1(true, _wgslsmith_f_op_f32(ceil(global0.c.b)), global0.b.c))), func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1000f)))), Struct_2(~countOneBits(-7946i), global0.c, global0.c)));
    var_0 = Struct_2(-2147483647i, func_2(), var_0.c);
    var_0 = Struct_2(-14449i, func_1(_wgslsmith_f_op_f32(step(-1908f, 415f)), Struct_2(abs(min(-1i, var_0.c.c.x)), Struct_1(true, var_0.c.b, var_0.c.c ^ global0.b.c), global0.c)), global0.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-368f, global0.c.b, -598f), vec3<f32>(1078f, -1243f, var_0.b.b), vec3<bool>(global0.b.a, global0.c.a, false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b, 501f, global0.b.b)))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(399f, 349f, 1000f) - vec3<f32>(892f, -1180f, -798f)))))));
    let var_2 = max(_wgslsmith_mult_vec3_i32(global0.b.c, -global0.b.c), select(~(-vec3<i32>(global0.c.c.x, global0.a, var_0.a)), vec3<i32>(var_0.b.c.x, var_0.a, global0.b.c.x), var_0.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, var_2.x) ^ vec2<i32>(var_2.x, var_0.a), vec2<i32>(var_2.x, 23495i)) ^ select(var_2.xy, _wgslsmith_sub_vec2_i32(var_2.zy, var_0.b.c.yz), select(vec2<bool>(false, var_0.c.a), vec2<bool>(false, true), false))), -11165i, _wgslsmith_mod_vec3_i32(global0.c.c, _wgslsmith_sub_vec3_i32(~select(var_2, var_2, false), func_1(-1000f, Struct_2(var_0.a, Struct_1(var_0.c.a, var_0.c.b, var_2), global0.b)).c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b - _wgslsmith_f_op_f32(-var_0.c.b)) * global0.c.b), _wgslsmith_f_op_f32(-global0.b.b)), ~abs(abs(vec4<i32>(-11404i, var_2.x, -2147483647i, global0.c.c.x)) << ((u_input.a >> (vec4<u32>(u_input.a.x, u_input.a.x, 69297u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

