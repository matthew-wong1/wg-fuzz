struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(9931u), Struct_1(88139u), Struct_1(1222u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(25473u), Struct_1(1u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(23186u), Struct_1(14742u), Struct_1(0u), Struct_1(1u), Struct_1(19304u), Struct_1(60647u));

var<private> global2: array<Struct_1, 15>;

var<private> global3: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    var var_0 = i32(-1i) * -1i;
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) << (u_input.a.x % 32u));
    global2 = array<Struct_1, 15>();
    let var_2 = countOneBits(~_wgslsmith_sub_vec2_i32(arg_0, ~(arg_0 >> (vec2<u32>(0u, arg_2.a) % vec2<u32>(32u)))));
    var var_3 = Struct_1(4294967295u);
    return 2147483647i;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(false, any(vec2<bool>(true, true)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false)))), select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), any(vec4<bool>(true, true, true, true))), vec3<bool>(u_input.a.x == 27074u, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), false), select(!any(vec3<bool>(false, true, true)), false, true)), select(!vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true), select(vec3<bool>(true, true, all(vec3<bool>(false, false, false))), vec3<bool>(u_input.a.x == u_input.a.x, true, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, any(vec3<bool>(true, false, true))), vec3<bool>(true, arg_0.a <= 1u, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    var var_1 = -474f;
    global2 = array<Struct_1, 15>();
    let var_2 = select(select(select(vec4<bool>(true, false == var_0.x, true, var_0.x && false), !(!vec4<bool>(false, false, false, var_0.x)), !(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))), vec4<bool>(true, !(!var_0.x), all(!vec2<bool>(var_0.x, var_0.x)), true), select(select(vec4<bool>(false, var_0.x, false, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true), vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, false, true), !any(var_0.xx))), select(vec4<bool>(false, !var_0.x, var_0.x, true), !vec4<bool>(true, arg_0.a > arg_0.a, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true), all(select(!vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, true, true)))), !vec4<bool>(all(vec4<bool>(false, false, true, var_0.x)), all(!vec3<bool>(var_0.x, true, var_0.x)), false, var_0.x));
    let var_3 = arg_1.x;
    return Struct_1(_wgslsmith_div_u32(~(~4294967295u), 66308u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> vec4<bool> {
    global1 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_mult_u32(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 30365u, u_input.a.x), vec3<u32>(arg_1.a, 14737u, 64454u))), countOneBits(~(~0u))) < 12401u;
    global3 = true & var_0;
    let var_1 = arg_2.x;
    global3 = var_0;
    return vec4<bool>(true || (abs(~1i) < (global0.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(38880u, u_input.a.x, 1u), vec3<u32>(arg_0.a, 4294967295u, u_input.a.x)) % 32u))), var_0, !var_0 || (!var_0 & (!var_0 | all(vec3<bool>(var_0, var_0, false)))), all(vec4<bool>(var_0, select(all(vec4<bool>(true, false, var_0, false)), false, all(vec3<bool>(true, var_0, false))), true, !var_0)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_1(~(u_input.a.x | u_input.a.x) << (u_input.a.x % 32u)), func_3(global1[_wgslsmith_index_u32(14933u, 18u)], vec3<i32>(~30366i, global0.x, -func_2(vec2<i32>(70740i, 0i), vec3<u32>(53239u, u_input.a.x, 53514u), Struct_1(u_input.a.x)))), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, -25179i, 0i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -6738i, -1i, global0.x), vec4<i32>(global0.x, global0.x, 11741i, -21507i))), global0.x);
    let var_1 = func_3(Struct_1(reverseBits(~u_input.a.x >> (20559u % 32u))), firstLeadingBit(~vec3<i32>(global0.x, 2147483647i, global0.x) & vec3<i32>(global0.x, global0.x, global0.x)) | _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 0i, global0.x), vec3<i32>(global0.x, global0.x, global0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, -2044i, global0.x), abs(vec3<i32>(47626i, 2147483647i, -1019i)))));
    let var_2 = func_3(Struct_1(var_1.a | ~(~48625u)), select(~vec3<i32>(global0.x, 2147483647i, global0.x), -min(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, -2147483647i, global0.x)), select(vec3<bool>(var_0.x, var_0.x, true), var_0.yxy, select(vec3<bool>(false, false, false), var_0.yxx, vec3<bool>(var_0.x, var_0.x, var_0.x)))) ^ _wgslsmith_clamp_vec3_i32(abs(~vec3<i32>(global0.x, global0.x, 1i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, -76633i, global0.x), vec3<i32>(global0.x, global0.x, -29006i)), vec3<i32>(global0.x, global0.x, global0.x) | vec3<i32>(34420i, 15489i, global0.x)), ~firstLeadingBit(vec3<i32>(-2147483647i, global0.x, global0.x))));
    var var_3 = max(~countOneBits(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2.a, var_1.a, var_1.a), vec4<u32>(42656u, 4294967295u, u_input.a.x, 0u)))), ~select(~(~vec4<u32>(var_1.a, 1u, 1u, var_1.a)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 50556u, u_input.a.x, var_1.a), reverseBits(vec4<u32>(4294967295u, 28722u, u_input.a.x, var_2.a))), !func_4(var_2, Struct_1(var_2.a), vec4<i32>(16446i, 17493i, -8937i, 40143i), -45071i).x));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(var_2.a), 22003u), 15u)];
    return Struct_1(1843u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    let var_0 = func_1();
    let var_1 = func_4(func_1(), Struct_1(24721u), vec4<i32>(firstLeadingBit(max(-11698i, global0.x)), global0.x, -1i, select(-7077i, -global0.x, all(vec4<bool>(false, true, true, true)))), -global0.x).x || (abs(_wgslsmith_clamp_u32(22529u, ~8368u, func_1().a)) <= 82103u);
    var var_2 = 1u;
    var var_3 = !(!vec2<bool>(true, var_1));
    var var_4 = vec3<i32>(global0.x, -56060i, global0.x);
    let var_5 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1015f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f) - _wgslsmith_div_f32(-398f, 287f)))))));
    var var_6 = func_3(Struct_1(u_input.a.x), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(select(~vec3<i32>(-1i, global0.x, var_4.x), vec3<i32>(global0.x, -1i, global0.x) ^ vec3<i32>(global0.x, var_4.x, global0.x), !vec3<bool>(true, var_3.x, false)), vec3<i32>(1i, -1774i, 1i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-15491i, -27826i, var_4.x), vec3<i32>(global0.x, global0.x, global0.x))), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-20746i, global0.x, global0.x), vec3<i32>(1i, -1i, global0.x)), countOneBits(var_4.x), var_4.x))));
    let var_7 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_4.zy, ~(vec3<u32>(4294967295u, 1u, 4294967295u) << (vec3<u32>(4294967295u, 21801u, u_input.a.x) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(var_6.a, 15u)]) & global0.x, vec3<u32>(func_3(Struct_1(4294967295u), firstLeadingBit(vec3<i32>(var_4.x, 1i, var_4.x))).a ^ ~min(var_0.a, 16958u), 1u, var_6.a), -(-_wgslsmith_mult_vec2_i32(var_4.zz, vec2<i32>(2147483647i, var_4.x)) >> (vec2<u32>(firstTrailingBit(u_input.a.x), 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(932f, _wgslsmith_f_op_f32(f32(-1f) * -788f), _wgslsmith_f_op_f32(min(1715f, 234f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_7, var_7, var_7)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-811f, var_7, -877f) + vec3<f32>(-261f, 1019f, -676f)))), var_3.x)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1129f, var_5.x, 1736f) + vec3<f32>(var_7, var_5.x, var_5.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2359f, -340f, var_5.x) * vec3<f32>(-760f, var_7, var_5.x)))))));
}

