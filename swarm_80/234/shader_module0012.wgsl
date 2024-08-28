struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<u32, 6>;

var<private> global2: array<vec3<bool>, 21>;

var<private> global3: vec4<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(-516f, -403f)), -2147483647i << (global1[_wgslsmith_index_u32(firstTrailingBit(12353u), 6u)] % 32u), vec4<i32>(-1i << (~u_input.a % 32u), select(-13261i, 1i, true), 1i, -1717i) >> (~select(select(vec4<u32>(u_input.a, 0u, u_input.a, global1[_wgslsmith_index_u32(12509u, 6u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 4294967295u, 7146u, u_input.a), true), select(vec4<u32>(25639u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(95046u, 6u)], 0u), false), true) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f * global0[_wgslsmith_index_u32(1u, 30u)])));
    var var_1 = firstTrailingBit(select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(49372u, u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], u_input.a) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) >> (~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 4294967295u) % vec2<u32>(32u)), (abs(vec2<u32>(1u, u_input.a)) >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22890u, 6u)], 6u)], 6u)], 0u) % vec2<u32>(32u))) ^ vec2<u32>(max(u_input.a, 0u), _wgslsmith_mod_u32(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(501u, 6u)], 6u)])), any(vec2<bool>(true, true)) && all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false))));
    var var_2 = vec2<u32>(firstLeadingBit(max(_wgslsmith_mod_u32(_wgslsmith_mod_u32(60504u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 6u)], 6u)]), reverseBits(global1[_wgslsmith_index_u32(u_input.a, 6u)])), 84456u)), _wgslsmith_div_u32(var_1.x, abs(~19820u)));
    var var_3 = abs(firstTrailingBit(select(vec3<u32>(52353u, global1[_wgslsmith_index_u32(u_input.a, 6u)], var_2.x) & vec3<u32>(0u, var_2.x, 1u), vec3<u32>(var_1.x, 4805u, 93534u) >> (vec3<u32>(1u, 4294967295u, 42202u) % vec3<u32>(32u)), vec3<bool>(true, true, true))) | ~vec3<u32>(~31069u, _wgslsmith_div_u32(1u, 20727u), 0u));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.x, 1u), 1u), 30u)] + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 30u)], global3.x)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.a, global0[_wgslsmith_index_u32(abs(4294967295u), 30u)])))), 848f, _wgslsmith_f_op_f32(1f - -1000f));
    return var_0.c;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(-1733f, -23646i, _wgslsmith_mod_vec4_i32(~select(vec4<i32>(arg_1.x, 4454i, arg_1.x, 2147483647i), vec4<i32>(-28029i, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, true, false)) ^ vec4<i32>(0i, -44144i, arg_1.x, _wgslsmith_add_i32(-29470i, arg_1.x)), select(vec4<i32>(83489i, arg_1.x, -2147483647i, -33611i ^ arg_1.x), ~func_3(), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-global3.x));
    let var_1 = true;
    var var_2 = var_0;
    let var_3 = _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, countOneBits(9594u)), vec3<u32>(firstTrailingBit(4294967295u), ~1u, 0u))), reverseBits(countOneBits(select(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(9559u, 6u)], 49238u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 130096u), vec3<u32>(1u, 0u, 53740u)), !var_1))));
    global2 = array<vec3<bool>, 21>();
    return Struct_1(1012f, _wgslsmith_dot_vec2_i32(abs(max(vec2<i32>(2147483647i, var_2.c.x) & arg_1.zx, vec2<i32>(arg_1.x, 0i))), ~(~max(vec2<i32>(arg_1.x, 2147483647i), vec2<i32>(arg_1.x, var_2.c.x)))), ~vec4<i32>(var_2.c.x, 7266i, _wgslsmith_div_i32(~16218i, ~(-2147483647i)), abs(_wgslsmith_sub_i32(var_0.c.x, 10734i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.x, 789f), var_2.a, true))) - _wgslsmith_f_op_f32(f32(-1f) * -1083f)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = abs(-44478i) << (u_input.a % 32u);
    let var_1 = Struct_1(-325f, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-31927i, firstLeadingBit(1i), -2147483647i, -1i), vec4<i32>(-arg_0, arg_0, arg_1, arg_3.b >> (u_input.a % 32u))), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -21918i), arg_3.c.xyw, vec3<i32>(arg_1, arg_0, 0i)), arg_3.c.wyy)), vec4<i32>(~(~4120i), -1i, 7725i, _wgslsmith_sub_i32(~1i, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f - global3.x))) - -445f));
    let var_2 = true;
    let var_3 = ~max(~_wgslsmith_sub_u32(34628u, u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 0u, 78433u, 4294967295u), vec4<u32>(35186u, 4294967295u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 6u)], 6u)]) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41653u, 6u)], 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(31639u, 6u)]) % vec4<u32>(32u))) & ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(102954u, 1u, 1u), 6u)]);
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, var_3), ~vec2<u32>(u_input.a, u_input.a)), 6u)], 30u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global3.x)))) + 992f)), _wgslsmith_f_op_f32(f32(-1f) * -626f), func_2(~(~global1[_wgslsmith_index_u32(select(var_3, 60699u, true), 6u)]), vec3<i32>(max(-arg_3.b, 1i), -var_1.b ^ (arg_1 ^ -2147483647i), var_1.b)).d, 602f);
    return 0i;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(27177u, 27851u, 4294967295u, global1[_wgslsmith_index_u32(1u, 6u)])), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 58243u, 68657u, u_input.a))), ~firstTrailingBit(vec4<u32>(arg_2.x, 4294967295u, u_input.a, 1u))), vec4<u32>(_wgslsmith_mult_u32(0u, 1u), reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]) >> (~global1[_wgslsmith_index_u32(u_input.a, 6u)] % 32u), arg_2.x, _wgslsmith_mod_u32(arg_2.x, ~u_input.a)), ~vec4<u32>(global1[_wgslsmith_index_u32(~9426u, 6u)], _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, u_input.a, 7181u), vec3<u32>(0u, arg_2.x, u_input.a)), ~6421u, firstLeadingBit(arg_2.x)));
    var_0 = ~(~(~(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 6u)], 25802u, 4294967295u, u_input.a)) | (vec4<u32>(15638u, 4294967295u, var_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2819u, 6u)], 6u)]) >> (~vec4<u32>(arg_2.x, 1u, global1[_wgslsmith_index_u32(arg_2.x, 6u)], var_0.x) % vec4<u32>(32u)))));
    let var_1 = !vec4<bool>(false, all(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1335u, arg_2.x, global1[_wgslsmith_index_u32(u_input.a, 6u)]), ~vec4<u32>(1u, arg_2.x, 1u, var_0.x)), 21u)]), !(!(arg_1.b <= -12164i)), all(vec4<bool>(true, true, true, true)));
    global1 = array<u32, 6>();
    global0 = array<f32, 30>();
    return Struct_1(1f, i32(-1i) * -min(-arg_1.c.x, countOneBits(arg_0.b)), vec4<i32>(-2147483647i, arg_1.c.x, arg_0.c.x, arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-436f, 1164f)), -177f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_f_op_f32(-725f - _wgslsmith_f_op_f32(sign(arg_1.d))), false))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    global2 = array<vec3<bool>, 21>();
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(16955u, arg_0.x), 30u)]), max(_wgslsmith_div_i32(9757i, -2147483647i), 1i), vec4<i32>(1i, func_4(reverseBits(-75037i), _wgslsmith_mult_i32(48268i, 0i), vec4<bool>(true, false, false, arg_1), func_2(33737u, vec3<i32>(-2147483647i, 0i, -24919i))), ~16793i, -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2230f + 705f), global3.x)) * _wgslsmith_f_op_f32(trunc(global3.x)))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-481f)))), func_4(-2147483647i, func_3().x ^ _wgslsmith_clamp_i32(1i, 30651i, -21530i), vec4<bool>(select(false, false, true), all(vec2<bool>(arg_1, true)), select(true, true, true), arg_1), Struct_1(_wgslsmith_f_op_f32(1685f - -291f), 42987i, firstLeadingBit(vec4<i32>(-1i, 70171i, -662i, 15589i)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10007u, 30u)]))), _wgslsmith_sub_vec4_i32(-(vec4<i32>(-45397i, -18177i, -20647i, 80i) >> (vec4<u32>(global1[_wgslsmith_index_u32(71064u, 6u)], u_input.a, 55384u, 42830u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(8925i, -12092i, -18393i, -2147483647i), countOneBits(vec4<i32>(1i, 1i, 2147483647i, 17268i)))), func_2(~u_input.a, _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1i, 0i, -1i)), ~vec3<i32>(-23066i, -2147483647i, 42932i))).a), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(10642u, global1[_wgslsmith_index_u32(arg_0.x, 6u)], 38341u, 19711u)), _wgslsmith_div_vec4_u32(arg_0, vec4<u32>(18740u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]))), reverseBits(abs(global1[_wgslsmith_index_u32(u_input.a, 6u)])), ~min(u_input.a, u_input.a)), ((8937u ^ arg_0.x) ^ ~u_input.a) >> (_wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(14400u, 11966u)) % 32u)));
    var var_1 = !global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(22054u, reverseBits(global1[_wgslsmith_index_u32(4294967295u, 6u)])) & _wgslsmith_div_u32(select(arg_0.x, arg_0.x, arg_1), arg_0.x)), 21u)];
    global2 = array<vec3<bool>, 21>();
    var var_2 = var_0.b << ((_wgslsmith_dot_vec2_u32(arg_0.xz, ~vec2<u32>(30085u, 0u)) >> (_wgslsmith_mult_u32(countOneBits(21944u) << (~global1[_wgslsmith_index_u32(63778u, 6u)] % 32u), ~(~59113u)) % 32u)) % 32u);
    return func_2(_wgslsmith_clamp_u32(16348u, max(global1[_wgslsmith_index_u32(u_input.a, 6u)], arg_0.x), ~0u), var_0.c.wwz);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    return -453f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_6(func_1(~(vec4<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(4294967295u, 6u)], u_input.a) << (vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(5412u, 6u)], 68810u) % vec4<u32>(32u))), all(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], 484f, _wgslsmith_div_f32(global3.x, -1169f))), !(!any(vec2<bool>(false, true))))), 1i, -vec4<i32>(26553i, -_wgslsmith_add_i32(1i, 13544i), i32(-1i) * -1i, ~0i << (firstTrailingBit(1u) % 32u)), func_5(Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 30u)] * global3.x), ~_wgslsmith_sub_i32(0i, 91i), _wgslsmith_sub_vec4_i32(vec4<i32>(43515i, -2147483647i, 2147483647i, 7057i), -vec4<i32>(-2147483647i, 2147483647i, 0i, -36342i)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1841f, 526f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(2032u, 5823u, 53420u, 83903u)), 30u)]))), Struct_1(_wgslsmith_f_op_f32(func_6(func_2(28144u, vec3<i32>(7393i, 2147483647i, 2530i)), global3.wyz, all(global2[_wgslsmith_index_u32(u_input.a, 21u)]))), -_wgslsmith_mod_i32(-25418i, -19225i), -min(vec4<i32>(0i, -8240i, 21172i, -7207i), vec4<i32>(2147483647i, -5285i, -1i, 34677i)), _wgslsmith_f_op_f32(abs(global3.x))), vec2<u32>(~firstTrailingBit(31347u), global1[_wgslsmith_index_u32(25278u, 6u)])).a);
    let var_1 = _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.a), 30u)]));
    var var_2 = Struct_1(-598f, -((_wgslsmith_add_i32(18973i, -1i) << (1u % 32u)) << (_wgslsmith_add_u32(1u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54253u, 6u)], 6u)], 1u) % 32u)), abs(var_0.c), 355f);
    let var_3 = false;
    let var_4 = func_2(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~0u, 6u)], select(46369u >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 6u)], 6u)] % 32u), 52249u, all(vec4<bool>(false, var_3, false, var_3))), 53501u), vec3<i32>(var_0.c.x, _wgslsmith_mult_i32(-min(var_2.c.x, var_2.b), ~(1i | var_2.b)), firstLeadingBit(~(-1i))));
    global1 = array<u32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-317f, global0[_wgslsmith_index_u32(u_input.a, 30u)], var_2.d, -901f)), vec4<i32>(-2130i, -25503i, 8625i, func_5(Struct_1(_wgslsmith_f_op_f32(-578f * global0[_wgslsmith_index_u32(u_input.a, 30u)]), var_4.c.x, var_2.c, _wgslsmith_f_op_f32(ceil(var_2.d))), func_2(46406u, vec3<i32>(-2147483647i, var_0.c.x, 731i)), vec2<u32>(~111353u, u_input.a)).c.x), vec3<i32>(-var_2.b, -1i, 1i), abs(~(vec4<u32>(6455u, 1463u, global1[_wgslsmith_index_u32(94693u, 6u)], 18342u) | _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 6u)]), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 6u)], 4294967295u, 0u)))), _wgslsmith_f_op_vec3_f32(global3.zxw - global3.xyz));
}

