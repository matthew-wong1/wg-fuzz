struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, true, true, true, false, false);

var<private> global1: array<u32, 28> = array<u32, 28>(1672u, 1u, 0u, 0u, 12166u, 4294967295u, 78010u, 1u, 913u, 2437u, 12276u, 41219u, 1u, 44333u, 29513u, 70895u, 1u, 4294967295u, 4294967295u, 0u, 1u, 4294967295u, 0u, 39735u, 65832u, 14201u, 68735u, 52915u);

var<private> global2: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    global0 = array<bool, 6>();
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(-648f, global2.d, -627f, arg_2.x))))));
    let var_1 = arg_1;
    let var_2 = vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(select(arg_1.c.x, 0u, true)) & (~4294967295u >> (~4294967295u % 32u)), _wgslsmith_clamp_u32(arg_0, u_input.a ^ global1[_wgslsmith_index_u32(1u, 28u)], u_input.a)), _wgslsmith_div_u32(4294967295u, ~65874u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(10337u, 1u, 12341u, global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<u32>(arg_0, 26731u, global2.c.x, arg_1.c.x)), ~firstLeadingBit(vec4<u32>(50506u, 9632u, global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_1.c.x, 28u)], arg_0, 4294967295u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global2.c.x, var_1.c.x, 4294967295u)), 4810u), _wgslsmith_add_u32(~92350u, u_input.a), max(global2.c.x, 1u), 19838u)), 57223u);
    var var_3 = !(false & !var_1.b.x);
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<i32>) -> bool {
    global1 = array<u32, 28>();
    var var_0 = ~vec4<u32>(122319u, _wgslsmith_mod_u32(1u, ~_wgslsmith_mult_u32(0u, u_input.a)), ~func_3(arg_0.c.x, arg_0, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 2024f, global2.d, global2.d)))), 1u);
    return any(!global2.b.xy);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    var var_0 = firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_clamp_u32(countOneBits(0u), ~firstTrailingBit(40487u), ~1u), abs(u_input.a)));
    let var_1 = global2.b;
    var var_2 = ~vec4<u32>(min(abs(firstLeadingBit(27274u)), ~(u_input.a ^ u_input.a)), _wgslsmith_div_u32(_wgslsmith_add_u32(~4294967295u, 0u), ~52773u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 28u)] << (reverseBits(global1[_wgslsmith_index_u32(1u, 28u)]) % 32u), ~firstTrailingBit(17088u & u_input.a));
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1395f)) * _wgslsmith_div_f32(global2.d, global2.d)) >= global2.d, global2.a.x < ~(-54914i), false, arg_2);
    var var_4 = arg_0.x;
    return Struct_2(Struct_1(vec4<i32>(u_input.b, global2.a.x, 1i, u_input.b) | vec4<i32>(select(-18080i, u_input.b, false), _wgslsmith_add_i32(-1i, 2147483647i), 1i | u_input.b, ~u_input.b), select(select(select(var_3.wzx, global2.b, arg_1.x), !arg_1, arg_0), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(9479u, 6u)]), true), reverseBits(vec3<u32>(56979u ^ u_input.a, abs(41926u), 5432u)), 1450f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d, -1942f)), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -57469i, -33135i, u_input.b), global2.a ^ vec4<i32>(1i, u_input.b, 2147483647i, global2.a.x)) & global2.a, vec3<bool>(global0[_wgslsmith_index_u32(~var_2.x, 6u)], select(arg_2, all(var_3.xw), arg_1.x), true), _wgslsmith_clamp_vec3_u32(global2.c, ~vec3<u32>(var_2.x, 13649u, 0u), vec3<u32>(_wgslsmith_div_u32(global2.c.x, 441u), global2.c.x, global2.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.d)))), Struct_1(vec4<i32>(25515i, reverseBits(min(2147483647i, -46005i)), select(~u_input.b, global2.a.x & 2147483647i, !global0[_wgslsmith_index_u32(1u, 6u)]), min(~global2.a.x, ~(-38808i))), select(vec3<bool>(true, global2.b.x, all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 6u)], arg_0.x))), var_3.yxw, true), vec3<u32>(_wgslsmith_dot_vec2_u32(~global2.c.zz, ~vec2<u32>(76543u, global1[_wgslsmith_index_u32(5520u, 28u)])), global2.c.x, 1u), -2108f));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(global2.a, arg_1.a.a, vec4<i32>(0i, 7546i, -25643i | u_input.b, abs(24516i))), !arg_1.d.b, _wgslsmith_clamp_vec3_u32(~arg_1.c.c, ~vec3<u32>(global2.c.x, global2.c.x, 8188u), global2.c), -1140f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - 408f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) + arg_1.a.d), !arg_2.x)), Struct_1(max(arg_1.c.a, -_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a.x, 2147483647i, 1i, 2147483647i), global2.a, global2.a)), arg_1.c.b, arg_1.a.c, arg_1.d.d), arg_1.a);
    var var_1 = select(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(2617u, 6u)], false, arg_1.a.b.x, arg_1.c.b.x), select(vec4<bool>(true, arg_2.x, global2.b.x, var_0.c.b.x), vec4<bool>(arg_2.x, arg_1.c.b.x, false, false), var_0.c.b.x), select(vec4<bool>(false, global2.b.x, global2.b.x, arg_1.a.b.x), vec4<bool>(global2.b.x, true, true, true), false)), !vec4<bool>(any(var_0.d.b.yx), !global0[_wgslsmith_index_u32(u_input.a, 6u)], arg_2.x, !var_0.c.b.x), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.c.x, 6u)], false, false, true), !vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.c.x, 6u)], true, arg_1.a.b.x, global0[_wgslsmith_index_u32(arg_0, 6u)]), arg_1.c.b.x), vec4<bool>(arg_1.a.c.x != var_0.c.c.x, -1i > var_0.a.a.x, false, true), select(!vec4<bool>(arg_1.a.b.x, false, arg_2.x, arg_2.x), !vec4<bool>(arg_2.x, false, arg_2.x, false), vec4<bool>(true, true, arg_1.c.b.x, var_0.d.b.x)))), select(!vec4<bool>(!global0[_wgslsmith_index_u32(44320u, 6u)], arg_2.x & global0[_wgslsmith_index_u32(arg_0, 6u)], global2.b.x, -1808f >= arg_1.a.d), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, var_0.c.b.x, arg_1.a.b.x), vec4<bool>(true, false, true, false)), vec4<bool>(false && arg_1.a.b.x, true, u_input.b >= arg_1.a.a.x, func_4(vec3<bool>(true, global2.b.x, false), arg_1.d.b, global0[_wgslsmith_index_u32(2126u, 6u)]).a.b.x), true), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(arg_1.c.c.x << (4294967295u % 32u), arg_1.d.c.x, var_0.c.c.x & var_0.d.c.x), 6u)]), select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, false, false), !vec4<bool>(arg_1.d.b.x, true, false, false)), select(!vec4<bool>(global2.b.x, false, arg_1.a.b.x, false), !vec4<bool>(true, true, false, arg_1.d.b.x), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.c.c.x, 6u)], global2.b.x, false, arg_2.x), vec4<bool>(arg_2.x, false, false, false), vec4<bool>(arg_2.x, global0[_wgslsmith_index_u32(u_input.a, 6u)], arg_1.a.b.x, true))), !vec4<bool>(false, var_0.c.b.x, true, arg_2.x)), !select(!vec4<bool>(true, arg_1.d.b.x, var_0.c.b.x, arg_2.x), !vec4<bool>(arg_2.x, global2.b.x, false, false), vec4<bool>(true, true, true, true)), !var_0.a.b.x));
    let var_2 = ~vec4<u32>(9043u, 29444u, _wgslsmith_mult_u32(26148u, func_4(var_1.ywz, arg_2, !global0[_wgslsmith_index_u32(var_0.c.c.x, 6u)]).d.c.x), ~(~(arg_1.a.c.x | arg_1.c.c.x)));
    var var_3 = reverseBits(~arg_1.c.c.x);
    return Struct_1(_wgslsmith_add_vec4_i32(countOneBits(arg_1.c.a), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(arg_1.a.a.x, -15198i)) | _wgslsmith_mult_i32(17933i, 31651i), -arg_1.c.a.x, 3326i)), global2.b, global2.c, _wgslsmith_f_op_f32(func_4(!(!vec3<bool>(global2.b.x, global2.b.x, true)), func_4(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], true, false), vec3<bool>(global2.b.x, true, arg_1.c.b.x), arg_2.x & true).c.b, false | arg_2.x).b * 1207f));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    global2 = func_5(~firstLeadingBit(~global1[_wgslsmith_index_u32(0u << (u_input.a % 32u), 28u)]), func_4(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0 ^ 1u, 6u)], func_2(Struct_1(global2.a, vec3<bool>(arg_1, true, true), global2.c, arg_2.x), vec4<u32>(0u, arg_0, 20620u, 0u), -11488i, global2.a), arg_1), vec3<bool>(all(vec4<bool>(arg_1, true, arg_1, arg_1)), true, any(vec4<bool>(global2.b.x, arg_1, true, global2.b.x))), select(global2.b, global2.b, !global2.b.x)), vec3<bool>(any(vec2<bool>(false, true)), true, true), global0[_wgslsmith_index_u32(u_input.a, 6u)]), vec3<bool>(true, all(global2.b) || true, !arg_1));
    global2 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(0i), 5072i | u_input.b, _wgslsmith_div_i32(-global2.a.x, _wgslsmith_div_i32(u_input.b, 0i)), min(i32(-1i) * -65318i, 76213i)), global2.a), !select(func_5(31134u, func_4(global2.b, global2.b, true), global2.b).b, select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 6u)]), vec3<bool>(true, true, true), all(vec2<bool>(false, global2.b.x))), arg_1), abs(_wgslsmith_mult_vec3_u32(~global2.c, global2.c | global2.c) >> (((vec3<u32>(0u, 66834u, global2.c.x) << (vec3<u32>(global1[_wgslsmith_index_u32(global2.c.x, 28u)], 0u, arg_0) % vec3<u32>(32u))) ^ vec3<u32>(20893u, 4294967295u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_div_f32(global2.d, arg_2.x));
    let var_0 = func_4(!vec3<bool>(true, any(select(global2.b, global2.b, true)), func_4(func_4(vec3<bool>(global2.b.x, global0[_wgslsmith_index_u32(1u, 6u)], global2.b.x), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global2.b.x, false), false).c.b, global2.b, !global0[_wgslsmith_index_u32(arg_0, 6u)]).d.b.x), vec3<bool>(true, any(select(func_5(0u, Struct_2(Struct_1(global2.a, vec3<bool>(global2.b.x, true, global0[_wgslsmith_index_u32(37985u, 6u)]), vec3<u32>(u_input.a, 4294967295u, global2.c.x), -1603f), 1007f, Struct_1(global2.a, global2.b, global2.c, -477f), Struct_1(vec4<i32>(-35305i, -3080i, u_input.b, u_input.b), vec3<bool>(arg_1, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27018u, 28u)], 6u)]), vec3<u32>(global2.c.x, u_input.a, 78233u), 1987f)), global2.b).b.zx, vec2<bool>(false, true), global2.b.x)), false), any(!vec2<bool>(!global2.b.x, false)));
    var var_1 = global2.b.x;
    let var_2 = Struct_1(func_4(select(!(!vec3<bool>(global2.b.x, true, false)), !vec3<bool>(true, global2.b.x, global2.b.x), select(var_0.c.b, vec3<bool>(false, global0[_wgslsmith_index_u32(global2.c.x, 6u)], true), vec3<bool>(global2.b.x, false, false))), !global2.b, func_2(var_0.a, ~(~vec4<u32>(79861u, arg_0, u_input.a, 4294967295u)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, -1048i), func_5(65465u, Struct_2(Struct_1(vec4<i32>(-19916i, -1985i, var_0.d.a.x, 1i), var_0.c.b, global2.c, arg_2.x), arg_2.x, var_0.c, var_0.c), var_0.a.b).a.x), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, 55024i, u_input.b), var_0.a.a)))).c.a, !global2.b, select(_wgslsmith_mod_vec3_u32(global2.c, select(vec3<u32>(4294967295u, 56770u, 80558u), var_0.c.c, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], true, global2.b.x))), firstTrailingBit(vec3<u32>(u_input.a, 46241u, var_0.a.c.x)), select(var_0.a.b, select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.c.x, 6u)], global2.b.x, true), global2.b, true), select(vec3<bool>(arg_1, true, false), var_0.c.b, false))) << (var_0.d.c % vec3<u32>(32u)), _wgslsmith_div_f32(var_0.d.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1457f - global2.d))));
    return func_4(global2.b, global2.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.c.x, ~(global1[_wgslsmith_index_u32(1u, 28u)] & 24616u)), 28u)], !global0[_wgslsmith_index_u32(u_input.a, 6u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1488f, 531f)), _wgslsmith_f_op_f32(846f * global2.d), global2.d), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, 1565f, -267f) * vec3<f32>(global2.d, global2.d, global2.d))))) * vec3<f32>(global2.d, 2044f, global2.d)));
    var var_1 = 2147483647i;
    global1 = array<u32, 28>();
    global0 = array<bool, 6>();
    global1 = array<u32, 28>();
    let var_2 = func_4(global2.b, vec3<bool>(!func_4(vec3<bool>(true, var_0.d.b.x, false), func_1(12050u, false, vec3<f32>(global2.d, global2.d, -2908f)).a.b, global2.b.x).a.b.x, func_4(global2.b, vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true, true), true).d.b.x, !global2.b.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits((var_0.a.c.xx << (global2.c.xy % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(global2.c.zx, var_0.d.c.zx)), global2.c.yy), 6u)]).d.a.wxz;
    var var_3 = vec4<i32>(var_2.x, _wgslsmith_sub_i32(var_2.x, -749i), global2.a.x, func_1(4294967295u, !var_0.d.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.d, 940f, 153f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.d.d, -163f, global2.d))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-311f, -145f, var_0.b) + vec3<f32>(1000f, var_0.b, 905f))), false))).a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.c.xz, -var_3.x, abs(~(~var_2.yx)), 69838u, ((global2.c >> (global2.c % vec3<u32>(32u))) | (_wgslsmith_div_vec3_u32(global2.c, var_0.a.c) ^ _wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(1u, 28u)], 4692u), global2.c))) ^ var_0.c.c);
}

