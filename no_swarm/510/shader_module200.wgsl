struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 14> = array<u32, 14>(32674u, 0u, 89781u, 31470u, 1u, 1u, 4294967295u, 0u, 79095u, 21140u, 4294967295u, 46268u, 44936u, 24783u);

var<private> global2: u32 = 27642u;

var<private> global3: vec4<f32> = vec4<f32>(-1153f, -1116f, 643f, -1407f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    let var_0 = 12507u;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(global0.a.x, -956f)) * _wgslsmith_f_op_vec2_f32(-global3.ww)), vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), global0.a.x), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), any(vec3<bool>(false, false, false)))))), u_input.a.x, vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(u_input.a, u_input.a)), global0.c.x | (-11620i << (~var_0 % 32u))));
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(global0.a, global0.a))))), vec2<f32>(1000f, -1410f)), countOneBits(-2627i), ~select(_wgslsmith_div_vec2_i32(select(vec2<i32>(2147483647i, -27240i), u_input.a.zz, vec2<bool>(false, true)), vec2<i32>(global0.c.x, global0.b)), vec2<i32>(-1428i & u_input.a.x, u_input.a.x), vec2<bool>(true, true)));
    let var_2 = var_1;
    global2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_add_u32(1u, ~var_0), ~abs(0u), 19965u), ~(countOneBits(min(vec4<u32>(var_0, 1u, var_0, 1u), vec4<u32>(42941u, global1[_wgslsmith_index_u32(13188u, 14u)], var_0, global1[_wgslsmith_index_u32(0u, 14u)]))) >> (vec4<u32>(39200u ^ var_0, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(71098u, 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 14u)], 14u)], 14u)], 14u)]), 4294967295u, ~global1[_wgslsmith_index_u32(var_0, 14u)]) % vec4<u32>(32u))));
    return min(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(var_0, global1[_wgslsmith_index_u32(var_0, 14u)]) << (vec2<u32>(21369u, var_0) % vec2<u32>(32u)), ~vec2<u32>(1u, 8090u)), vec2<u32>(1u, 1u), vec2<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 14u)], 0u)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(31649u, global1[_wgslsmith_index_u32(1u, 14u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 14u)], var_0)), ~var_0)), 4294967295u);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_u32(20707u, func_3());
    let var_1 = ~abs(_wgslsmith_mult_vec4_i32(u_input.a << (abs(vec4<u32>(global1[_wgslsmith_index_u32(0u, 14u)], 13407u, 59961u, 8592u)) % vec4<u32>(32u)), countOneBits(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 1i, global0.c.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)))), var_1.x, vec2<i32>(~(~abs(16439i)), global0.b));
    var var_3 = var_2;
    var var_4 = select(!vec2<bool>(true | all(vec3<bool>(true, true, true)), false), vec2<bool>(true, min(u_input.a.x & var_2.b, 0i) > -2147483647i), true);
    return Struct_1(var_2.a, _wgslsmith_add_i32(~countOneBits(_wgslsmith_mult_i32(var_3.b, var_2.b)), i32(-1i) * -6620i), select(vec2<i32>(~var_2.b, firstLeadingBit(u_input.a.x)), _wgslsmith_mult_vec2_i32(u_input.a.yx, var_2.c), true && all(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x))) << (~vec2<u32>(27447u >> (global1[_wgslsmith_index_u32(arg_0, 14u)] % 32u), global1[_wgslsmith_index_u32(30729u, 14u)]) % vec2<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(609f, global3.x, global0.a.x, 1000f) + vec4<f32>(arg_1.a.x, arg_1.a.x, -1000f, 631f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(919f, 1084f, arg_1.a.x, 516f), vec4<f32>(-505f, global3.x, global3.x, 1651f))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, global0.a.x, global3.x), vec4<f32>(global3.x, 356f, global0.a.x, -844f)))))));
    let var_0 = any(vec4<bool>(arg_0, arg_0, arg_0, !(arg_0 || true))) && true;
    let var_1 = func_2(countOneBits(func_3() | (global1[_wgslsmith_index_u32(reverseBits(1u), 14u)] >> (41214u % 32u))), ~_wgslsmith_mult_u32(1u, 1u));
    global2 = _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_3.x, global1[_wgslsmith_index_u32(1u, 14u)], 44972u, arg_3.x)) & _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 14u)], 14u)], arg_3.x, 0u, 41890u), vec4<u32>(arg_3.x, global1[_wgslsmith_index_u32(3095u, 14u)], 9758u, 4294967295u)), vec4<u32>(~arg_3.x, func_3(), _wgslsmith_sub_u32(arg_3.x, global1[_wgslsmith_index_u32(arg_3.x, 14u)]), 4294967295u)), 14u)], 66615u) << (28429u % 32u);
    let var_2 = vec4<u32>((max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3964u, 14u)], 14u)], 14u)], arg_3.x) & global1[_wgslsmith_index_u32(1u, 14u)]) ^ (global1[_wgslsmith_index_u32(~0u, 14u)] ^ arg_3.x), 4294967295u, _wgslsmith_dot_vec3_u32(min(~vec3<u32>(14847u, 34129u, global1[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_div_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(arg_3.x, 14u)], 4294967295u), vec3<u32>(arg_3.x, 4294967295u, global1[_wgslsmith_index_u32(52012u, 14u)]))), max(vec3<u32>(arg_3.x, arg_3.x, global1[_wgslsmith_index_u32(54489u, 14u)]), vec3<u32>(62990u, arg_3.x, global1[_wgslsmith_index_u32(4294967295u, 14u)])) >> (~vec3<u32>(arg_3.x, global1[_wgslsmith_index_u32(22952u, 14u)], 44440u) % vec3<u32>(32u))), ~(~_wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(arg_3.x, arg_3.x)))) & max(countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(5362u, arg_3.x, global1[_wgslsmith_index_u32(arg_3.x, 14u)], 0u), vec4<u32>(arg_3.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 14u)], 14u)], global1[_wgslsmith_index_u32(arg_3.x, 14u)], arg_3.x))), reverseBits(~(vec4<u32>(4294967295u, 0u, 0u, arg_3.x) >> (vec4<u32>(4294967295u, 4294967295u, 1u, 50773u) % vec4<u32>(32u)))));
    return arg_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = global0.c.x;
    let var_1 = select(_wgslsmith_clamp_u32(4294967295u, countOneBits(global1[_wgslsmith_index_u32(~48068u, 14u)]), ~arg_2 & _wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(arg_2, 14u)], 0u)), 1u, true || (1i <= (u_input.a.x << (arg_3 % 32u)))) > 26159u;
    return func_2(global1[_wgslsmith_index_u32(48926u, 14u)], _wgslsmith_mod_u32(min(~0u, ~28198u), arg_3) >> (907u % 32u));
}

fn func_1() -> i32 {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global3.wzw)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 426f, global0.a.x))))) * _wgslsmith_f_op_vec3_f32(step(global3.yyy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-338f, global3.x, global0.a.x)), vec3<f32>(global0.a.x, global3.x, global3.x))))), func_4(false, func_2(~(global1[_wgslsmith_index_u32(1u, 14u)] | global1[_wgslsmith_index_u32(66202u, 14u)]), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(79009u, 14u)], 14u)], 1u ^ global1[_wgslsmith_index_u32(1u, 14u)])), ~(-u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, 1u)), 14u)], select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17966u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 4294967295u, true))), min(21627u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(4320u, 14u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], 14u)] % 32u)), 14u)], 14u)]), firstLeadingBit(_wgslsmith_mod_u32((13009u << (global1[_wgslsmith_index_u32(34382u, 14u)] % 32u)) & 14611u, 0u)));
    var var_1 = ~(~(~(~abs(global1[_wgslsmith_index_u32(4294967295u, 14u)]))));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global3.x), global0.a.x);
    global1 = array<u32, 14>();
    let var_2 = !all(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global0.a.x, _wgslsmith_f_op_f32(select(global0.a.x, -325f, true)), 535f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 491f, global3.x, 847f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1000f + global3.x), -1382f, _wgslsmith_f_op_f32(ceil(1288f)), _wgslsmith_f_op_f32(global3.x - global0.a.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1284f), global3.x, _wgslsmith_f_op_f32(global0.a.x - 149f), -1673f))), false));
    var var_1 = Struct_1(global3.wy, u_input.a.x, _wgslsmith_clamp_vec2_i32(u_input.a.wx, _wgslsmith_clamp_vec2_i32(global0.c, u_input.a.wx, firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -2820i), vec2<i32>(global0.c.x, u_input.a.x)))), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, ~(-1i)), u_input.a.x)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1906f * 1000f), 192f), global0.a)))), _wgslsmith_mult_i32(func_1(), _wgslsmith_div_i32(-41508i, (global0.b | var_1.b) ^ global0.b)), (vec2<i32>(-u_input.a.x, 2147483647i | u_input.a.x) | ~_wgslsmith_mod_vec2_i32(global0.c, u_input.a.zw)) & firstTrailingBit(countOneBits(global0.c) << (countOneBits(vec2<u32>(0u, 1u)) % vec2<u32>(32u))));
    var var_2 = func_5(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(select(var_1.a.x, global0.a.x, false | any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-123f))) * _wgslsmith_f_op_f32(trunc(-389f)))), func_2(0u | global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~13801u, 44821u), 14u)], _wgslsmith_dot_vec3_u32(~vec3<u32>(54162u, global1[_wgslsmith_index_u32(121299u, 14u)], 3458u) << (vec3<u32>(4294967295u, 47522u, 11795u) % vec3<u32>(32u)), vec3<u32>(~global1[_wgslsmith_index_u32(22611u, 14u)], countOneBits(global1[_wgslsmith_index_u32(48056u, 14u)]), max(global1[_wgslsmith_index_u32(1u, 14u)], 16108u)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 14u)], 4294967295u), 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(11699u), 14u)], 14u)]);
    var_1 = Struct_1(var_2.a, func_4(true, func_4(max(60916u, global1[_wgslsmith_index_u32(41186u, 14u)]) != max(global1[_wgslsmith_index_u32(4085u, 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)]), Struct_1(var_2.a, ~u_input.a.x, vec2<i32>(u_input.a.x, 2147483647i)), reverseBits(u_input.a), vec2<u32>(1u, 1u) & ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)])), ~vec4<i32>(var_2.c.x, -var_2.c.x, 0i, u_input.a.x), reverseBits(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], 14u)], global1[_wgslsmith_index_u32(1u, 14u)])))).c.x, var_1.c);
    var var_3 = vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x * 1000f))), -587f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) * _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-global3.x)));
    global1 = array<u32, 14>();
    let var_4 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(1u, 14u)]), 14u)], 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1807f, -341f, 112f, 2478f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1347f, -1165f, -1000f, var_4.a.x)), false)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1563f, var_2.a.x, var_2.a.x, 841f))))), -1000f, func_3());
}

