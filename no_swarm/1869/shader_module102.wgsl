struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: vec4<u32> = vec4<u32>(31923u, 6309u, 1u, 4294967295u);

var<private> global2: array<vec2<f32>, 1>;

var<private> global3: array<Struct_2, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global2 = array<vec2<f32>, 1>();
    global2 = array<vec2<f32>, 1>();
    let var_0 = vec2<i32>(_wgslsmith_add_i32(-(arg_0.x ^ -arg_0.x), 1i), 2147483647i);
    let var_1 = vec3<f32>(1f, 1f, 1f);
    global0 = array<bool, 28>();
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = (-(~select(vec2<i32>(-2147483647i, -18954i), var_0.a.zz, vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.c, 28u)]))) & -vec2<i32>(1i, firstTrailingBit(0i))) ^ abs(var_0.a.xy);
    var var_2 = arg_1.d;
    let var_3 = !(true && !global0[_wgslsmith_index_u32(func_3(max(var_0.a.zyy, u_input.b.ywy)), 28u)]);
    let var_4 = Struct_2(Struct_1(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -35156i, -31216i), _wgslsmith_sub_vec3_i32(vec3<i32>(-20322i, 1i, -2147483647i), vec3<i32>(var_0.b, u_input.e.x, arg_1.a.x))), -15646i, 39522i), ~(i32(-1i) * -1i), 4294967295u | select(var_0.c << (72677u % 32u), arg_1.c, var_3), 568f), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-862f + -2219f))));
    return global3[_wgslsmith_index_u32(~(23919u >> ((abs(_wgslsmith_add_u32(var_4.a.c, var_4.a.c)) & _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d), vec3<u32>(var_4.a.c, 0u, var_0.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_1.c, 8171u), global1.yzz))) % 32u)), 10u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> Struct_2 {
    let var_0 = vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], select(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 28u)] | false, true)), global0[_wgslsmith_index_u32(arg_3, 28u)], 1264f == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(111f)), arg_1.b))));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.b);
    global1 = ~select(vec4<u32>(1u, ~4294967295u, 0u, ~arg_3), vec4<u32>(firstLeadingBit(arg_1.a.c), firstLeadingBit(global1.x), arg_3, 41780u >> (arg_3 % 32u)) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, 1u, 2675u, 17205u), vec4<u32>(1u, u_input.d, u_input.d, arg_3)) % vec4<u32>(32u)), vec4<bool>(any(vec4<bool>(false, var_0.x, false, var_0.x)), any(var_0), all(arg_2), global0[_wgslsmith_index_u32(~u_input.d >> (40358u % 32u), 28u)]));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - -701f) * -643f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1118f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * arg_1.b) + arg_1.b))));
    global3 = array<Struct_2, 10>();
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    global3 = array<Struct_2, 10>();
    global0 = array<bool, 28>();
    let var_0 = !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a.c, 0u), 28u)];
    let var_1 = arg_1;
    let var_2 = ~(~firstTrailingBit(reverseBits(~vec4<u32>(var_1.a.c, 8482u, 98474u, global1.x))));
    return Struct_2(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-func_2(-701f, Struct_1(u_input.b, -1i, 29871u, 1642f)).b)) - arg_0));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = func_5(-1000f, func_4(arg_3.a.a, func_2(_wgslsmith_f_op_f32(-1455f * 164f), arg_1), !(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.c, 28u)], true, true, global0[_wgslsmith_index_u32(arg_3.a.c, 28u)]), true)), _wgslsmith_sub_u32(u_input.d << (_wgslsmith_dot_vec3_u32(global1.zwx, global1.zww) % 32u), (global1.x << (global1.x % 32u)) ^ ~arg_1.c)));
    let var_1 = var_0.a;
    global0 = array<bool, 28>();
    let var_2 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -447f)) + _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(trunc(-1047f)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-653f - -192f), _wgslsmith_f_op_f32(-func_5(var_1.d, global3[_wgslsmith_index_u32(69055u, 10u)]).b))) == global0[_wgslsmith_index_u32(~arg_1.c, 28u)];
    let var_3 = u_input.b.x;
    return global3[_wgslsmith_index_u32(~arg_3.a.c, 10u)];
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~global1.zx;
    global1 = select(~vec4<u32>(~63168u >> (select(4294967295u, arg_0.a.c, global0[_wgslsmith_index_u32(arg_0.a.c, 28u)]) % 32u), select(~var_0.x, _wgslsmith_mult_u32(0u, arg_0.a.c), false), 0u, ~firstTrailingBit(u_input.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(22256u, 45145u, _wgslsmith_sub_u32(19970u << (var_0.x % 32u), global1.x << (4294967295u % 32u)), ~u_input.d), vec4<u32>(func_4(vec4<i32>(-40674i, u_input.e.x, 7611i, arg_0.a.b), Struct_2(arg_0.a, 102f), vec4<bool>(global0[_wgslsmith_index_u32(29746u, 28u)], false, true, false), global1.x).a.c & (u_input.d | arg_0.a.c), _wgslsmith_sub_u32(var_0.x, 48140u), 28120u, ~(~global1.x))), !vec4<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(46332u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)])), true, true, true));
    var var_1 = _wgslsmith_sub_vec4_u32(~max(vec4<u32>(global1.x, func_2(arg_0.b, Struct_1(vec4<i32>(arg_0.a.b, arg_0.a.a.x, 63104i, u_input.a.x), 1i, u_input.d, arg_0.a.d)).a.c, firstTrailingBit(var_0.x), func_5(arg_0.a.d, global3[_wgslsmith_index_u32(arg_0.a.c, 10u)]).a.c), _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, 1u, 65022u, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(61940u, 4294967295u, 1u, 13243u), vec4<u32>(arg_0.a.c, u_input.d, arg_0.a.c, 1687u)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(~0u, var_0.x << (123522u % 32u), var_0.x, abs(arg_0.a.c)), vec4<u32>(u_input.d ^ 1175u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 80009u), abs(vec3<u32>(arg_0.a.c, var_0.x, 24643u))), ~firstTrailingBit(31566u), func_4(vec4<i32>(1i, 1i, arg_0.a.a.x, u_input.e.x), Struct_2(Struct_1(vec4<i32>(u_input.b.x, 3504i, u_input.c, u_input.a.x), 0i, var_0.x, 512f), arg_0.b), vec4<bool>(true, global0[_wgslsmith_index_u32(global1.x, 28u)], global0[_wgslsmith_index_u32(var_0.x, 28u)], global0[_wgslsmith_index_u32(global1.x, 28u)]), 56883u).a.c | func_2(-1222f, arg_0.a).a.c)));
    var var_2 = !select(vec3<bool>(true, !global0[_wgslsmith_index_u32(arg_0.a.c | var_1.x, 28u)], true), select(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.a.c, 28u)]), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false, global0[_wgslsmith_index_u32(u_input.d, 28u)]), all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.c, 28u)], global0[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(10212u, 28u)], true), false))), global0[_wgslsmith_index_u32(func_4(select(arg_0.a.a, vec4<i32>(-5084i, -10084i, u_input.b.x, arg_0.a.b), global0[_wgslsmith_index_u32(1u, 28u)]), global3[_wgslsmith_index_u32(global1.x, 10u)], select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 28u)], global0[_wgslsmith_index_u32(20067u, 28u)], global0[_wgslsmith_index_u32(var_1.x, 28u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], true, false), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(27182u, 28u)])), 1u).a.c & ~_wgslsmith_dot_vec2_u32(global1.yx, vec2<u32>(69320u, global1.x)), 28u)]);
    var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 30857u >> (reverseBits(u_input.d) % 32u), 1u, u_input.d), ~(~(vec4<u32>(global1.x, arg_0.a.c, global1.x, 4294967295u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(96116u, 1u, 8507u, arg_0.a.c), vec4<u32>(var_0.x, 1u, 39600u, 29156u)))));
    return global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, var_1.x, 0u), 10u)];
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = select(-vec4<i32>(abs(33050i ^ u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_mult_vec3_i32(arg_1.a.a.yzy, vec3<i32>(-1i, -2147483647i, arg_0.x))), ~_wgslsmith_sub_i32(-19171i, -38223i), arg_0.x), u_input.b, select(vec4<bool>(!global0[_wgslsmith_index_u32(global1.x, 28u)] && !global0[_wgslsmith_index_u32(arg_1.a.c, 28u)], !global0[_wgslsmith_index_u32(global1.x, 28u)] & all(vec3<bool>(false, true, false)), all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 28u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(15817u, 28u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(arg_1.a.c, 28u)]))), (global0[_wgslsmith_index_u32(global1.x, 28u)] | false) | false), select(vec4<bool>(!global0[_wgslsmith_index_u32(0u, 28u)], true, all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false)), global0[_wgslsmith_index_u32(~global1.x, 28u)]), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 28u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], any(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a.c, 28u)], global0[_wgslsmith_index_u32(u_input.d, 28u)], global0[_wgslsmith_index_u32(global1.x, 28u)])), all(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(global1.x, 28u)], false)))), !(!(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_1.a.c, 28u)], global0[_wgslsmith_index_u32(u_input.d, 28u)])))));
    var var_1 = true;
    let var_2 = -107f;
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))) * var_2);
    return Struct_1(_wgslsmith_clamp_vec4_i32(firstLeadingBit(~arg_1.a.a), u_input.b, vec4<i32>(arg_0.x, -_wgslsmith_add_i32(-5629i, -27619i), 1i, ~63380i)), -24451i, global1.x, arg_1.a.d);
}

fn func_8(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = vec3<bool>(-func_4(~arg_2.a, Struct_2(Struct_1(u_input.b, u_input.e.x, u_input.d, -1358f), arg_2.d), vec4<bool>(true, arg_1, false, false), ~global1.x).a.b > arg_2.a.x, !(min(u_input.d, _wgslsmith_add_u32(5587u, arg_0.x)) <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 34812u, 0u), vec4<u32>(4294967295u, 4294967295u, 37365u, u_input.d))), false);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)))), arg_2.d), _wgslsmith_f_op_f32(-arg_2.d), func_6(Struct_2(arg_2, -381f)).a.d <= -1349f));
    var var_2 = func_4(select(vec4<i32>(_wgslsmith_clamp_i32(0i, 25110i, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, -7488i), reverseBits(-2147483647i), -u_input.e.x), select(vec4<i32>(arg_2.a.x, u_input.a.x, arg_2.b, arg_2.a.x), -vec4<i32>(u_input.b.x, -21962i, 0i, u_input.e.x), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], true, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(arg_2.c, 28u)])), any(select(var_0.xx, vec2<bool>(false, false), var_0.yy))) | func_4(~u_input.b, func_1(global0[_wgslsmith_index_u32(~u_input.d, 28u)], func_1(var_0.x, arg_2, vec4<f32>(var_1, var_1, var_1, var_1), Struct_2(arg_2, var_1)).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(374f, 116f, -3514f, arg_2.d) - vec4<f32>(arg_2.d, -678f, 828f, arg_2.d)), func_2(arg_2.d, Struct_1(vec4<i32>(u_input.e.x, u_input.b.x, 2147483647i, 6968i), 1i, 1u, 2389f))), vec4<bool>(false && global0[_wgslsmith_index_u32(4294967295u, 28u)], true, global0[_wgslsmith_index_u32(func_2(var_1, Struct_1(arg_2.a, 18461i, arg_2.c, 1000f)).a.c, 28u)], false), func_7(vec2<i32>(1i, 0i), global3[_wgslsmith_index_u32(10635u, 10u)]).c ^ firstLeadingBit(u_input.d)).a.a, func_4(arg_2.a, Struct_2(func_6(global3[_wgslsmith_index_u32(4294967295u, 10u)]).a, func_1(true, Struct_1(arg_2.a, -1i, global1.x, 1297f), vec4<f32>(var_1, 964f, arg_2.d, var_1), global3[_wgslsmith_index_u32(~arg_2.c, 10u)]).a.d), !vec4<bool>(arg_1, any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(global1.x, 28u)], true)), select(var_0.x, global0[_wgslsmith_index_u32(32543u, 28u)], false), !var_0.x), _wgslsmith_mod_u32(~(arg_2.c << (0u % 32u)), 4294967295u)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 28u)], !var_0.x, var_0.x, true), func_6(global3[_wgslsmith_index_u32(15528u, 10u)]).a.c).a.b;
    let var_3 = true;
    var var_4 = var_0.x & global0[_wgslsmith_index_u32(reverseBits(~(~(global1.x << (4294967295u % 32u)))), 28u)];
    return all(var_0.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.xzy;
    global2 = array<vec2<f32>, 1>();
    global2 = array<vec2<f32>, 1>();
    let var_1 = 4294967295u;
    global0 = array<bool, 28>();
    let var_2 = vec2<bool>(true, func_8(vec3<u32>(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 3340u, 45671u), vec4<u32>(4294967295u, 0u, var_0.x, 4294967295u)), ~u_input.d) & countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.x, 846u), global1.xww)), true, func_7(vec2<i32>(0i, u_input.c) & u_input.b.yx, func_6(func_1(global0[_wgslsmith_index_u32(var_0.x, 28u)], Struct_1(u_input.b, u_input.b.x, 1u, -136f), vec4<f32>(-333f, -1000f, 275f, -1822f), Struct_2(Struct_1(vec4<i32>(u_input.e.x, u_input.b.x, 33204i, -20672i), u_input.b.x, 4294967295u, -1256f), -563f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_mod_u32(var_0.x, ~4449u)), ~26760u);
}

