struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = abs(firstTrailingBit(abs(firstLeadingBit(-vec3<i32>(-9386i, -50594i, -1i)))));
    var var_1 = arg_0;
    let var_2 = abs(~1u);
    var var_3 = Struct_2(var_1.a, countOneBits(arg_0.b), _wgslsmith_f_op_f32(abs(arg_0.c)));
    var_1 = Struct_2(Struct_1(vec4<i32>(1i, var_0.x, -2147483647i, firstTrailingBit(~30005i)), any(!vec4<bool>(arg_0.a.b, true, arg_0.a.b, true)), ~var_0), max(vec3<i32>(arg_0.a.a.x, var_3.b.x, var_1.a.a.x | -2147483647i), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(1i, -1062i, 0i)), vec3<i32>(u_input.a, -2147483647i, var_3.a.c.x))) & vec3<i32>(~max(0i, var_3.a.a.x), -8234i, 35358i), -367f);
    return var_3.c;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-398f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f + -270f) - _wgslsmith_f_op_f32(select(380f, -1262f, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -808f, 805f));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(u_input.a, 0i, 56680i, 2147483647i), false, vec3<i32>(u_input.a, -1i, 26483i)), vec3<i32>(-2147483647i, u_input.a, u_input.a), var_0.x))), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -588f), 787f, _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(750f - var_0.x))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1054f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, 1016f, 419f), vec4<f32>(801f, var_0.x, var_0.x, -952f))))))));
    var var_1 = select(!vec4<bool>(any(vec3<bool>(true, false, true)), true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, true)), any(vec2<bool>(true, true)), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), true), vec4<bool>(var_0.x < var_0.x, false, any(vec2<bool>(true, true)), select(false, false, true))), all(vec4<bool>(u_input.a < -2147483647i, u_input.a > -2147483647i, true, true))), vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), false)), !all(vec3<bool>(false, true, false)), true && select(true, any(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, false))), false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-338f)) * _wgslsmith_f_op_f32(abs(739f))))));
    return Struct_1(vec4<i32>(36345i, i32(-1i) * -1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(6386i, u_input.a & -47701i), select(u_input.a, i32(-1i) * -4707i, select(true, var_1.x, true)), i32(-1i) * -35484i), -u_input.a), true, ~vec3<i32>(-2147483647i, -18402i, u_input.a | select(u_input.a, u_input.a, false)));
}

fn func_1() -> bool {
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = 4294967295u;
    var var_3 = ~min(1i, ~(-10635i)) > _wgslsmith_add_i32(var_0.a.x, var_1.c.x);
    let var_4 = ~firstLeadingBit(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(4294967295u, var_2, 0u, u_input.b)), firstLeadingBit(vec4<u32>(4294967295u, var_2, 4897u, 69784u))));
    return 1132u > (var_4.x ^ var_4.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(595f, -1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(693f, -1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(367f, 131f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1143f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(637f, -887f) * vec2<f32>(-1209f, -570f)), !vec2<bool>(true, arg_1.b)))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(316f + _wgslsmith_f_op_f32(-567f + -853f)), 815f), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -651f))), -1518f)));
    let var_1 = vec4<u32>(8530u, firstTrailingBit(6227u), 4294967295u, arg_0.x);
    let var_2 = 117506u;
    var var_3 = !(!vec3<bool>(!arg_1.b, all(vec2<bool>(arg_1.b, arg_1.b)), true));
    let var_4 = Struct_2(arg_1, arg_1.c, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(u_input.a, 21481i);
    let var_1 = func_4(_wgslsmith_add_vec2_u32(vec2<u32>(~(~1u), _wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(u_input.b, 4294967295u))), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(1u, u_input.b)) & vec2<u32>(4294967295u, 36658u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 2426u) & vec2<u32>(0u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.b, u_input.b))))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(select(25704i, 30949i, true), u_input.a, u_input.a ^ u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-32504i, u_input.a, u_input.a, u_input.a), ~vec4<i32>(u_input.a, -6091i, u_input.a, u_input.a), ~vec4<i32>(-18738i, u_input.a, -14655i, u_input.a))), !func_1(), ((vec3<i32>(1i, -1i, u_input.a) >> (vec3<u32>(u_input.b, u_input.b, 11882u) % vec3<u32>(32u))) & ~vec3<i32>(0i, u_input.a, u_input.a)) ^ select(~vec3<i32>(u_input.a, u_input.a, u_input.a), firstLeadingBit(vec3<i32>(-11640i, -2147483647i, u_input.a)), true)));
    var_0 = var_1.a.x;
    var var_2 = Struct_2(Struct_1(~var_1.a, !(~u_input.b != 2805u), select(abs(select(var_1.a.yxy, var_1.a.xwx, vec3<bool>(false, true, var_1.b))), var_1.c, _wgslsmith_f_op_f32(sign(-391f)) > -1219f)), (vec3<i32>(6561i, var_1.c.x, 0i) << (reverseBits(vec3<u32>(0u, 4294967295u, 6643u) | vec3<u32>(u_input.b, 4294967295u, 34199u)) % vec3<u32>(32u))) | ~var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-246f))))));
    var var_3 = false;
    var_0 = 8489i;
    var_3 = all(vec4<bool>(var_2.c <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * _wgslsmith_f_op_f32(exp2(var_2.c))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)) <= _wgslsmith_f_op_f32(-var_2.c), false));
    var_3 = max(select(select(1u & u_input.b, _wgslsmith_sub_u32(57784u, 1u), true), countOneBits(u_input.b), true), ~43537u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 11476u, 42981u, 1u), abs(vec4<u32>(u_input.b, u_input.b, 1u, 3145u)))) == u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(56926u, 4294967295u)), vec2<u32>(u_input.b, 4294967295u)), ~firstLeadingBit(abs(vec2<u32>(u_input.b, u_input.b)))), _wgslsmith_sub_vec3_u32(max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), max(vec3<u32>(2419u, u_input.b, u_input.b), vec3<u32>(67009u, u_input.b, u_input.b)), ~vec3<u32>(11892u, 45922u, u_input.b)), abs(~vec3<u32>(1u, u_input.b, u_input.b))), ~_wgslsmith_add_vec3_u32(vec3<u32>(24644u, u_input.b, 26314u), vec3<u32>(u_input.b, u_input.b, u_input.b))));
}

