struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, true, true, false), vec3<i32>(-22331i, -7897i, 19109i), false, Struct_1(vec4<bool>(true, false, true, true), 1000f, vec2<bool>(true, false)));

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, false, false, false), vec3<i32>(-20601i, 60615i, -5687i), true, Struct_1(vec4<bool>(false, true, true, false), -1379f, vec2<bool>(false, false)));

var<private> global2: array<i32, 19> = array<i32, 19>(-1i, 48507i, i32(-2147483648), -1i, -38630i, 10069i, 2147483647i, -21706i, 1541i, 0i, 2147483647i, -64425i, 1i, 18045i, 0i, 0i, -9735i, 2147483647i, 0i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = ~vec4<u32>(min(~u_input.b, 1u), firstTrailingBit(100774u), 4294967295u, _wgslsmith_mult_u32(1u, 62638u)) ^ ~(~(firstLeadingBit(vec4<u32>(4294967295u, 58560u, 91889u, 23776u)) << (firstLeadingBit(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 1u)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 392f, global0.d.b) + vec3<f32>(-1946f, -134f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(194f, 1398f, global0.d.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.d.b, 273f, 1182f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, 1025f, global1.d.b) * vec3<f32>(874f, global0.d.b, global1.d.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(539f, global1.d.b, 539f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 141f, arg_0.b), vec3<f32>(-1334f, global1.d.b, arg_0.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1072f, 653f, global1.d.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, global0.d.b, -243f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.b, global1.d.b, arg_0.b) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(280f, global1.d.b, 1056f), vec3<f32>(global0.d.b, 542f, 1000f)))))));
    let var_2 = var_1.xy;
    global2 = array<i32, 19>();
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -713f, -173f, global0.d.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 161f, var_2.x, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(min(419f, -967f)), _wgslsmith_div_f32(606f, global1.d.b), _wgslsmith_f_op_f32(var_2.x - -665f), -1205f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(481f, 2076f, var_2.x, -1351f) * vec4<f32>(1000f, global1.d.b, global1.d.b, 1096f))))))));
    return _wgslsmith_f_op_vec4_f32(-var_3);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec3<bool> {
    global0 = Struct_2(select(vec4<bool>(true, firstTrailingBit(arg_1.x) >= -2147483647i, all(vec2<bool>(global0.a.x, global1.a.x)), global0.c), vec4<bool>(global0.d.c.x, all(!vec3<bool>(false, true, global1.c)), global1.b.x > min(global0.b.x, arg_1.x), global1.a.x), global1.c), global0.b, 78921u <= ~u_input.b, global1.d);
    let var_0 = Struct_2(select(!(!(!global0.a)), !(!global0.a), any(vec3<bool>(!global1.a.x, arg_2.x >= u_input.b, global0.b.x == -1i))), global0.b, true, global1.d);
    global1 = Struct_2(!global1.a, _wgslsmith_add_vec3_i32(vec3<i32>((global2[_wgslsmith_index_u32(arg_2.x, 19u)] & -1i) << (max(0u, 4294967295u) % 32u), ~(arg_1.x >> (12793u % 32u)), -2147483647i), ~(~global0.b)), global1.c, global0.d);
    let var_1 = Struct_2(!vec4<bool>(true | (0u < arg_0), global0.d.a.x, false, false), abs(global0.b), all(vec2<bool>(true, false | var_0.c)) & false, global1.d);
    var var_2 = -(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(u_input.b, 19u)], 0i), ~vec3<i32>(-8875i, var_0.b.x, global2[_wgslsmith_index_u32(arg_2.x, 19u)]))) << (select(~(~vec3<u32>(arg_2.x, 4294967295u, arg_2.x)), vec3<u32>(arg_0, _wgslsmith_mult_u32(10951u, u_input.b), _wgslsmith_mod_u32(u_input.b, 51062u)), global0.a.x) % vec3<u32>(32u)));
    return select(vec3<bool>(-21307i < firstTrailingBit(~global1.b.x), var_1.d.a.x, any(!vec4<bool>(var_0.c, true, true, true)) && false), !vec3<bool>(any(!vec3<bool>(global0.d.c.x, true, global0.a.x)), true, false), select(!any(vec4<bool>(true, true, false, global1.c)), all(!vec3<bool>(true, var_1.d.c.x, var_1.a.x)), global1.c) | !(!(var_0.c | global1.c)));
}

fn func_2() -> Struct_2 {
    var var_0 = firstLeadingBit(u_input.b) >> (u_input.b % 32u);
    let var_1 = func_4(u_input.b, ~countOneBits(vec3<i32>(0i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(6616u, 1u), 19u)], -27544i)), vec2<u32>(~min(u_input.b, max(u_input.b, 10851u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 54628u) >> (~vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u)))), _wgslsmith_f_op_vec4_f32(func_3(global0.d)));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1246f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(1382f, global1.d.b))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.b, -268f)))) - vec2<f32>(_wgslsmith_f_op_f32(step(825f, 499f)), -870f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2246f, global0.d.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.d.b, global0.d.b))))));
    global2 = array<i32, 19>();
    return Struct_2(!vec4<bool>(global1.c, true, !(!var_1.x), all(select(vec4<bool>(global1.d.a.x, false, global1.c, false), global0.d.a, vec4<bool>(global1.d.c.x, global0.a.x, true, true)))), -_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.b.x, u_input.a, global0.b.x) & vec3<i32>(global1.b.x, -8658i, global0.b.x), global1.b), global1.b), var_1.x, global0.d);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1935f))), arg_0.d.b));
    let var_1 = arg_2;
    var var_2 = arg_2;
    global0 = Struct_2(vec4<bool>((-13302i == abs(u_input.a)) & false, global2[_wgslsmith_index_u32(43944u, 19u)] > -19805i, true, global0.d.c.x), vec3<i32>(global2[_wgslsmith_index_u32(select(~_wgslsmith_div_u32(0u, u_input.b), 2955u, !(!global0.a.x)), 19u)], _wgslsmith_clamp_i32(~(67053i & arg_0.b.x), _wgslsmith_dot_vec3_i32(~var_2.b, firstLeadingBit(arg_0.b)), 1i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.b.x, var_1.b.x, var_2.b.x, arg_0.b.x) >> (arg_1 % vec4<u32>(32u)), countOneBits(vec4<i32>(var_2.b.x, global0.b.x, arg_2.b.x, -24804i))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global2[_wgslsmith_index_u32(11738u, 19u)], 22318i), vec4<i32>(global1.b.x, var_2.b.x, global0.b.x, arg_2.b.x))))), select(!any(global1.d.a.ww), ~global2[_wgslsmith_index_u32(arg_1.x, 19u)] > -2147483647i, false), global1.d);
    let var_3 = Struct_2(var_1.a, ~arg_0.b, false, var_1.d);
    return vec4<bool>(var_2.d.c.x, func_4(~_wgslsmith_mod_u32(u_input.b, countOneBits(30305u)), vec3<i32>(-24247i, ~(-22390i), select(-var_1.b.x, global2[_wgslsmith_index_u32(arg_1.x, 19u)], true)), ~max(~arg_1.xz, arg_1.zy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.b, var_2.d.b, var_2.d.b, _wgslsmith_f_op_f32(ceil(global0.d.b))))).x, false, any(arg_0.a.xy));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !arg_2.a.x;
    var var_1 = vec3<i32>(global1.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(-vec4<i32>(global1.b.x, -43156i, -27444i, 1i), vec4<i32>(u_input.a, arg_2.b.x, arg_0.b.x, arg_2.b.x)), firstLeadingBit(abs(vec4<i32>(-49590i, global0.b.x, global2[_wgslsmith_index_u32(37289u, 19u)], 0i)))), _wgslsmith_add_vec4_i32(firstTrailingBit(min(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], -2147483647i, -2147483647i, -1i), vec4<i32>(u_input.a, arg_0.b.x, 5594i, 78012i))), vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(u_input.b, 19u)], abs(0i), arg_0.b.x))), arg_2.b.x);
    let var_2 = _wgslsmith_div_f32(967f, arg_0.d.b);
    let var_3 = max(~1i, -4452i);
    global2 = array<i32, 19>();
    return Struct_1(!func_5(arg_0, _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(1u, u_input.b, 1932u, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 12982u)), arg_0), -2186f, func_5(func_2(), max(~vec4<u32>(19739u, u_input.b, 1u, 104644u) >> ((vec4<u32>(5095u, 1u, 12443u, u_input.b) << (vec4<u32>(1u, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(62576u, 43336u, 60655u, u_input.b) << (vec4<u32>(4294967295u, u_input.b, 42632u, u_input.b) % vec4<u32>(32u)))), Struct_2(vec4<bool>(arg_1.c.x || global1.d.a.x, all(vec2<bool>(true, false)), !global1.d.c.x, true), ~vec3<i32>(global2[_wgslsmith_index_u32(70761u, 19u)], -2147483647i, global1.b.x) & firstTrailingBit(arg_2.b), any(vec3<bool>(global0.a.x, true, global1.a.x)), Struct_1(arg_2.d.a, _wgslsmith_f_op_f32(round(var_2)), vec2<bool>(true, false)))).yz);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    global2 = array<i32, 19>();
    let var_0 = !vec4<bool>(false, true, global0.a.x, global1.a.x);
    var var_1 = func_6(Struct_2(!global1.a, vec3<i32>(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 15094u), 19u)], 6815i, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, -u_input.a)), false, Struct_1(func_5(Struct_2(global0.d.a, vec3<i32>(44509i, global2[_wgslsmith_index_u32(u_input.b, 19u)], 9022i), false, global1.d), select(vec4<u32>(u_input.b, arg_0.x, u_input.b, 40867u), vec4<u32>(arg_0.x, u_input.b, 5050u, 0u), true), func_2()), _wgslsmith_f_op_f32(round(-980f)), !func_5(Struct_2(vec4<bool>(global1.a.x, false, global1.a.x, global0.d.c.x), vec3<i32>(global1.b.x, -10000i, global1.b.x), true, global0.d), vec4<u32>(u_input.b, u_input.b, arg_1, 4294967295u), Struct_2(global1.d.a, vec3<i32>(global1.b.x, 1i, u_input.a), var_0.x, Struct_1(global0.a, 213f, vec2<bool>(true, true)))).yx)), global1.d, func_2());
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global1.d.b - global1.d.b), 1493f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(ceil(-852f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1569f, var_1.b, var_1.b, -494f), vec4<f32>(-1259f, 796f, -1016f, global0.d.b))))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.d.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.d.b * -706f))), global1.d.b, _wgslsmith_f_op_f32(var_1.b - var_1.b))));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1259f), vec2<bool>(false, !(var_0.x || global1.a.x)));
    return global1.d.b;
}

fn func_7(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    global0 = Struct_2(select(func_6(func_2(), Struct_1(func_2().a, global1.d.b, !vec2<bool>(arg_2.x, true)), func_2()).a, !select(func_6(Struct_2(vec4<bool>(true, arg_2.x, false, true), global1.b, global0.a.x, Struct_1(vec4<bool>(arg_0.x, global1.d.c.x, true, false), global0.d.b, arg_2.zy)), Struct_1(arg_0, global1.d.b, arg_2.xx), Struct_2(arg_0, vec3<i32>(u_input.a, global1.b.x, 1i), true, global1.d)).a, func_6(Struct_2(vec4<bool>(false, global1.a.x, false, arg_0.x), global1.b, global0.d.a.x, Struct_1(vec4<bool>(global1.c, false, global1.a.x, arg_2.x), -801f, arg_2.yz)), global0.d, Struct_2(arg_2, global1.b, false, Struct_1(global1.a, 712f, vec2<bool>(arg_2.x, global0.c)))).a, false), global0.d.a), global1.b, select(firstTrailingBit(firstLeadingBit(2945u)), _wgslsmith_mult_u32(u_input.b, u_input.b), arg_2.x) <= (abs(u_input.b) | _wgslsmith_sub_u32(firstTrailingBit(u_input.b), 20440u)), Struct_1(!select(func_2().d.a, arg_2, !vec4<bool>(false, global0.a.x, global1.c, global0.a.x)), global0.d.b, vec2<bool>(any(vec3<bool>(true, true, true)), global0.d.c.x)));
    let var_0 = vec2<u32>(52186u, ~(~(1u >> (1u % 32u))));
    var var_1 = Struct_2(arg_2, _wgslsmith_add_vec3_i32(global0.b, global0.b), true, func_6(func_2(), Struct_1(func_2().d.a, _wgslsmith_div_f32(global0.d.b, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_2, 1000f, vec2<bool>(global1.a.x, false)))).x), global1.d.a.yx), func_2()));
    global0 = Struct_2(!vec4<bool>(!(!var_1.a.x), _wgslsmith_mod_u32(var_0.x, var_0.x) >= (u_input.b | 4294967295u), func_6(func_2(), func_2().d, Struct_2(vec4<bool>(global1.d.c.x, var_1.c, global1.d.a.x, false), global1.b, false, Struct_1(vec4<bool>(false, arg_2.x, arg_2.x, false), 1000f, vec2<bool>(true, global1.a.x)))).c.x, false), ~_wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(global0.b, vec3<i32>(var_1.b.x, global1.b.x, u_input.a)), ~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a, global2[_wgslsmith_index_u32(8560u, 19u)]), global0.b)), true, func_6(Struct_2(select(vec4<bool>(false, false, true, global1.a.x), func_6(Struct_2(vec4<bool>(true, true, var_1.c, var_1.c), global0.b, true, Struct_1(vec4<bool>(true, arg_2.x, var_1.a.x, global1.c), global1.d.b, vec2<bool>(global0.a.x, false))), Struct_1(vec4<bool>(true, true, global0.d.a.x, false), var_1.d.b, arg_0.ww), Struct_2(vec4<bool>(false, arg_2.x, global1.c, arg_0.x), vec3<i32>(u_input.a, 1i, global1.b.x), global0.a.x, global1.d)).a, arg_2), ~(vec3<i32>(-15650i, -11271i, u_input.a) | var_1.b), any(global1.d.a) & all(arg_0), global0.d), Struct_1(global0.d.a, global0.d.b, vec2<bool>(417f == var_1.d.b, true)), func_2()));
    var var_2 = max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(8389i, -1i, global2[_wgslsmith_index_u32(u_input.b, 19u)]), vec3<i32>(arg_1, 48490i, 2147483647i)), -14407i) >> (var_0 % vec2<u32>(32u)), firstTrailingBit(var_1.b.xx));
    return Struct_2(func_5(Struct_2(global0.a, -global1.b, func_2().d.a.x, global0.d), abs(min(vec4<u32>(1u, 4294967295u, u_input.b, var_0.x), vec4<u32>(var_0.x, 0u, 1u, var_0.x))), func_2()), vec3<i32>(abs(_wgslsmith_mult_i32(abs(global2[_wgslsmith_index_u32(u_input.b, 19u)]), reverseBits(global2[_wgslsmith_index_u32(u_input.b, 19u)]))), -2698i, -2147483647i), !select(var_1.d.a.x, func_4(~30156u, ~global1.b, vec2<u32>(25970u, 6200u), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.b, global1.d.b, global1.d.b, -1388f), vec4<f32>(-1434f, global0.d.b, global1.d.b, 1183f))).x, all(vec4<bool>(var_1.c, arg_2.x, true, global0.d.c.x))), Struct_1(vec4<bool>(true, all(arg_0.xy), arg_2.x, !var_1.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.b) - -307f))), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(0u, u_input.b, 67717u), u_input.b)) + global0.d.b) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.b) * global1.d.b), all(global0.d.a.wxx), true, true), ~(~0i), global1.d.a);
    var var_0 = vec2<i32>(16634i, _wgslsmith_sub_i32(u_input.a, abs(global2[_wgslsmith_index_u32(15947u, 19u)])));
    let var_1 = global0.d;
    var var_2 = -622f;
    var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -292f, var_1.b)), vec3<f32>(820f, 1000f, -2960f))) * vec3<f32>(var_1.b, -185f, _wgslsmith_f_op_f32(-var_1.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1007f, 667f, global0.d.b), vec3<f32>(-447f, 748f, -1257f))), vec3<f32>(-1116f, var_1.b, -839f)))), -global1.b.x | 2147483647i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.d.b, -127f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.d.b, -641f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -454f) - vec2<f32>(var_1.b, -289f)))))));
}

