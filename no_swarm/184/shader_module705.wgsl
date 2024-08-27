struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: array<f32, 7> = array<f32, 7>(-210f, 656f, 1636f, -1858f, 485f, -714f, 1300f);

var<private> global2: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(5988u, 1u), vec2<u32>(0u, 24090u), vec2<u32>(37495u, 25401u), vec2<u32>(1u, 20419u), vec2<u32>(23784u, 1u), vec2<u32>(4294967295u, 37482u), vec2<u32>(47631u, 1u), vec2<u32>(0u, 13901u), vec2<u32>(4294967295u, 0u));

var<private> global3: array<f32, 6>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(arg_1.yyw, vec3<u32>(arg_1.x, u_input.a, 0u)), 6u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1304f - -637f), 1000f))));
    global0 = array<vec4<bool>, 29>();
    let var_1 = true;
    global2 = array<vec2<u32>, 9>();
    let var_2 = Struct_2(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.a.x), vec2<i32>(arg_0.a.x, 12657i)) << (57281u % 32u), select(arg_0.a.x, countOneBits(_wgslsmith_clamp_i32(arg_0.a.x, arg_0.a.x, 21956i)), false), 1i), Struct_1(~_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.a.x, -1i, 1i, -32039i), vec4<i32>(24401i, arg_0.a.x, arg_0.a.x, arg_0.a.x)), 368i, arg_1.xw), Struct_1(vec4<i32>(arg_0.a.x, _wgslsmith_dot_vec2_i32(arg_0.a, vec2<i32>(arg_0.a.x, 1i)), -2147483647i, ~_wgslsmith_dot_vec2_i32(arg_0.a, vec2<i32>(arg_0.a.x, arg_0.a.x))), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, 4026i, arg_0.a.x, 27956i), vec4<i32>(-2147483647i, arg_0.a.x, arg_0.a.x, arg_0.a.x))), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.x, 0u), ~(global2[_wgslsmith_index_u32(0u, 9u)] << (global2[_wgslsmith_index_u32(u_input.a, 9u)] % vec2<u32>(32u))))), vec4<u32>(1u, 4294967295u, select(abs(~arg_1.x), select(684u, 1u, true) & 42067u, false), ~_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(0u, u_input.a, 18969u, u_input.a))));
    return var_2.b.a;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(~12662u, 1u), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(u_input.a, u_input.a), u_input.a), 9u)]));
    let var_1 = Struct_1(~(-func_3(Struct_5(vec2<i32>(-22332i, 1i)), vec4<u32>(42003u, var_0.x, u_input.a, u_input.a))) << ((select(vec4<u32>(var_0.x, 0u, 4294967295u, 78309u), reverseBits(vec4<u32>(u_input.a, 0u, u_input.a, 37845u)), global0[_wgslsmith_index_u32(abs(u_input.a), 29u)]) | ~abs(vec4<u32>(4294967295u, u_input.a, var_0.x, u_input.a))) % vec4<u32>(32u)), _wgslsmith_clamp_i32(~1i, -35521i, 2147483647i), min(global2[_wgslsmith_index_u32(~var_0.x, 9u)], ~global2[_wgslsmith_index_u32(firstTrailingBit(120560u), 9u)]));
    global1 = array<f32, 7>();
    var var_2 = _wgslsmith_mult_vec2_u32(var_1.c, ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 2719u), select(vec2<u32>(u_input.a, 4294967295u), var_1.c, vec2<bool>(false, false)), select(var_1.c, var_0, false)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, var_0.x), vec2<u32>(33655u, var_1.c.x), vec2<u32>(0u, 4294967295u) | vec2<u32>(var_1.c.x, var_0.x))));
    global3 = array<f32, 6>();
    return 14078i;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = !select(select(vec2<bool>(arg_0, global1[_wgslsmith_index_u32(4294967295u, 7u)] < 1501f), !(!vec2<bool>(false, arg_0)), !vec2<bool>(arg_0, false)), select(vec2<bool>(true, true), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false)), true), arg_0);
    var var_1 = select(!global0[_wgslsmith_index_u32(1u, 29u)], vec4<bool>(arg_0, arg_0, var_0.x, arg_0), true);
    let var_2 = arg_3.x;
    var_1 = select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)) ^ reverseBits(_wgslsmith_div_u32(u_input.a, u_input.a)), 70983u), 29u)], vec4<bool>(!select(any(vec2<bool>(var_1.x, false)), u_input.a == 4294967295u, var_0.x & arg_0), false, !any(vec2<bool>(true, true)), true), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(u_input.a), _wgslsmith_sub_u32(countOneBits(min(u_input.a, 39102u)), _wgslsmith_sub_u32(~u_input.a, u_input.a))), 29u)]);
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.zw);
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, 780f, arg_1.x, -382f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -449f), var_3.x, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 7u)], arg_1.x)), arg_2.x)) * vec4<f32>(_wgslsmith_f_op_f32(round(901f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), global3[_wgslsmith_index_u32(~u_input.a, 6u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x * arg_1.x), arg_1.x), arg_2.x)), max(vec3<i32>(var_2, 23205i, 1i), firstTrailingBit(vec3<i32>(var_2, -18538i, 2147483647i)) | -countOneBits(vec3<i32>(var_2, -2147483647i, arg_3.x))), Struct_1(vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(var_2, 1i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(22596i, -41243i, var_2, var_2), vec4<i32>(arg_3.x, 0i, var_2, -1i)), _wgslsmith_sub_i32(func_3(Struct_5(vec2<i32>(arg_3.x, arg_3.x)), vec4<u32>(u_input.a, 0u, 71723u, 1u)).x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_2), arg_3)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_3, vec2<i32>(arg_3.x, arg_3.x)), _wgslsmith_mult_i32(arg_3.x, var_2), _wgslsmith_sub_i32(5874i, 1i))), var_2, reverseBits(_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(~u_input.a, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], vec2<u32>(4294967295u, u_input.a)))));
}

fn func_1() -> u32 {
    global3 = array<f32, 6>();
    let var_0 = func_4(0i == select(i32(-1i) * -2147483647i, func_2(-1340f), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(13088u, 6u)], 255f) != _wgslsmith_f_op_f32(round(790f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(244f, 1170f, 625f, global3[_wgslsmith_index_u32(u_input.a, 6u)])) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 6u)], 844f, -413f, 128f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(0u, 6u)], 764f, 997f, 123f), vec4<f32>(1564f, -243f, global1[_wgslsmith_index_u32(u_input.a, 7u)], 1795f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(256f, 938f, global1[_wgslsmith_index_u32(u_input.a, 7u)], -577f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1152f, 845f, -209f, 1618f), vec4<f32>(global3[_wgslsmith_index_u32(1u, 6u)], -1465f, -242f, -267f))), true)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 6u)], global3[_wgslsmith_index_u32(0u, 6u)], 1643f, global3[_wgslsmith_index_u32(4294967295u, 6u)])))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1764f, global1[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(5116u, 6u)], global1[_wgslsmith_index_u32(u_input.a, 7u)])) + vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 6u)], global3[_wgslsmith_index_u32(0u, 6u)], 1000f, 1348f)) * vec4<f32>(global3[_wgslsmith_index_u32(u_input.a ^ u_input.a, 6u)], -694f, global1[_wgslsmith_index_u32(u_input.a, 7u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 6u)] + global1[_wgslsmith_index_u32(u_input.a, 7u)])))), vec2<i32>(countOneBits(-67600i), ~_wgslsmith_div_i32(min(2147483647i, 2147483647i), i32(-1i) * -9035i)));
    var var_1 = u_input.a;
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.c.x, u_input.a, u_input.a, var_0.c.c.x), vec4<u32>(u_input.a, var_0.c.c.x, u_input.a, 4294967295u)), var_0.c.c.x), var_0.c.c.x) >> (vec2<u32>(11602u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(~var_0.c.c.x, 9u)], abs(var_0.c.c)), abs(global2[_wgslsmith_index_u32(111578u, 9u)] ^ vec2<u32>(46698u, 0u)))) % vec2<u32>(32u));
    let var_3 = 600f;
    return 0u;
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: i32) -> Struct_5 {
    let var_0 = firstLeadingBit(vec3<u32>(37989u, select(arg_1.c.x | func_4(true, vec4<f32>(-1192f, arg_1.e, global3[_wgslsmith_index_u32(arg_2.x, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<f32>(159f, arg_0, arg_1.e, arg_1.e), vec2<i32>(arg_1.d, arg_1.d)).c.c.x, ~_wgslsmith_dot_vec3_u32(arg_1.c.wwx, arg_1.c.wzz), true), _wgslsmith_dot_vec2_u32(~(~arg_2.zy), vec2<u32>(~arg_2.x, max(13633u, 0u)))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.b, var_0.x, u_input.a), 7u)]))))));
    global1 = array<f32, 7>();
    global0 = array<vec4<bool>, 29>();
    var var_2 = _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(func_4(false, vec4<f32>(global3[_wgslsmith_index_u32(arg_1.c.x, 6u)], -190f, -130f, arg_1.e), vec4<f32>(-104f, -678f, global3[_wgslsmith_index_u32(arg_1.b, 6u)], -2877f), vec2<i32>(arg_1.d, -83886i)).c.c.x) >> ((1u | var_0.x) % 32u), ~(~arg_2.x << (1u % 32u))), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-213f, -1000f)) - 199f)), true));
    return Struct_5(vec2<i32>(_wgslsmith_div_i32(2147483647i, -373i) << (var_0.x % 32u), arg_1.d) ^ ~_wgslsmith_add_vec2_i32(select(vec2<i32>(arg_3, 0i), vec2<i32>(arg_3, -20705i), vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_3), vec2<i32>(-2147483647i, arg_1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(firstLeadingBit(~firstLeadingBit(-12825i)) <= (_wgslsmith_mult_i32(-1i, 1i) | _wgslsmith_dot_vec3_i32(~vec3<i32>(41955i, -88615i, -17953i), min(vec3<i32>(-2147483647i, -42795i, -1i), vec3<i32>(-2147483647i, 2147483647i, 2147483647i)))));
    let var_1 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -746f), Struct_4(vec3<u32>(~abs(u_input.a), 4294967295u, u_input.a), 0u, abs(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 88716u), vec4<u32>(u_input.a, 20300u, 67667u, u_input.a)), vec4<u32>(1u, u_input.a, u_input.a, 8442u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 29u)])), -(~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 7u)])))), vec3<u32>(0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 28393u, u_input.a), ~vec4<u32>(u_input.a, 25950u, 10091u, 5533u)), firstLeadingBit(_wgslsmith_div_u32(func_1(), ~u_input.a))), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-13437i, -3340i), vec2<i32>(1i, 44280i)), 1i), -22729i) << (u_input.a % 32u));
    var var_2 = Struct_4(~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 39785u, u_input.a), vec3<u32>(u_input.a, 60260u, u_input.a)))), 54008u, vec4<u32>(u_input.a, ~15716u, u_input.a, ~u_input.a), func_4(false, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(1u, 6u)])) * _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a >> (4294967295u % 32u), 7u)], _wgslsmith_f_op_f32(908f + 955f)), -285f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1592f))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-913f, func_4(false, vec4<f32>(global1[_wgslsmith_index_u32(45186u, 7u)], global3[_wgslsmith_index_u32(0u, 6u)], -990f, global1[_wgslsmith_index_u32(1995u, 7u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 6u)], 300f, global1[_wgslsmith_index_u32(13274u, 7u)], 357f), var_1.a).a.x, global3[_wgslsmith_index_u32(reverseBits(u_input.a), 6u)], -1374f), _wgslsmith_f_op_vec4_f32(-func_4(false, vec4<f32>(-409f, 1000f, 505f, global3[_wgslsmith_index_u32(70683u, 6u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(u_input.a, 6u)], -1103f, 2152f), vec2<i32>(var_1.a.x, var_1.a.x)).a))), vec2<i32>(-2147483647i, reverseBits(var_1.a.x))).b.x, global3[_wgslsmith_index_u32(~17161u, 6u)]);
    global0 = array<vec4<bool>, 29>();
    global3 = array<f32, 6>();
    let var_3 = Struct_1(min(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, var_2.d, var_2.d, var_2.d)), vec4<i32>(var_2.d, func_5(-1000f, Struct_4(vec3<u32>(1u, var_2.b, var_2.c.x), 45655u, var_2.c, var_1.a.x, global3[_wgslsmith_index_u32(var_2.a.x, 6u)]), var_2.c.zwz, -40618i).a.x, select(var_2.d, -30340i, true), -var_1.a.x)), vec4<i32>(select(var_1.a.x, var_1.a.x ^ var_2.d, true), 0i, ~(-var_2.d), abs(var_2.d | 17397i))), var_1.a.x, func_4(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(3665u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 6u)], 1000f, -199f), vec4<f32>(425f, global1[_wgslsmith_index_u32(var_2.c.x, 7u)], global1[_wgslsmith_index_u32(u_input.a, 7u)], 178f), vec4<bool>(false, true, false, false))))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.e)), -892f, global3[_wgslsmith_index_u32(u_input.a, 6u)], 1f)), vec4<f32>(global3[_wgslsmith_index_u32(var_2.c.x, 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f)), 1446f, _wgslsmith_f_op_f32(331f + 1000f)), _wgslsmith_mod_vec2_i32(-max(var_1.a, vec2<i32>(-17183i, var_2.d)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(var_2.d, var_2.d), var_1.a, true), -vec2<i32>(var_2.d, -1i)))).c.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(min(30243u, u_input.a), 7u)], _wgslsmith_f_op_f32(min(420f, 829f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3[_wgslsmith_index_u32(var_3.c.x, 6u)], global3[_wgslsmith_index_u32(0u, 6u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 7u)], var_2.e) * vec2<f32>(-1143f, 996f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e, global3[_wgslsmith_index_u32(u_input.a, 6u)]))))), vec3<f32>(493f, var_2.e, -1000f), 12927u);
}

