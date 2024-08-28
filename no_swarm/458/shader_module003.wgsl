struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(101f, -1063f, false);

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = select(~vec4<u32>(arg_0.x, ~(~4294967295u), 1u, 37220u), arg_0, all(vec3<bool>(-1216f != _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(trunc(-795f)) < global0.a, true)));
    var var_1 = ~arg_1.x;
    global1 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_mod_i32(u_input.a, ~2147483647i);
    var_1 = 4294967295u;
    return arg_2.b;
}

fn func_2(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(402f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f))), global0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a)))));
    global1 = array<Struct_1, 28>();
    var var_1 = global0.c;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global0.a))), false);
    let var_2 = global1[_wgslsmith_index_u32(1u, 28u)];
    return vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(1u, ~0u, max(46933u, 1u), _wgslsmith_mult_u32(1u, 16751u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(86600u, 4294967295u)), vec2<u32>(1u, 1u))), Struct_1(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1838f, var_2.a)), select(var_2.c, var_2.c, false)))), -231f, _wgslsmith_f_op_f32(max(1830f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-847f, -1793f, global0.c)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-590f)))), true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, 1u, 4294967295u, 1u), vec2<u32>(30675u, 69831u), global1[_wgslsmith_index_u32(4294967295u, 28u)])) + _wgslsmith_f_op_f32(var_0.x + -110f)))))));
}

fn func_4(arg_0: vec4<f32>) -> f32 {
    let var_0 = global0.c;
    var var_1 = vec3<u32>(firstLeadingBit(~abs(0u)) | (~_wgslsmith_dot_vec4_u32(vec4<u32>(11258u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u)) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 26741u, 1u), vec3<u32>(1u, 0u, 8126u)), ~9187u)), 1u, 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-941f, arg_0.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.wy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1549f)))))));
    let var_3 = _wgslsmith_mult_vec3_u32(abs(select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 17000u, 0u), vec3<u32>(5069u, 16225u, 3681u)) | (vec3<u32>(52187u, var_1.x, var_1.x) & vec3<u32>(var_1.x, var_1.x, 1u)), ~(~vec3<u32>(var_1.x, var_1.x, var_1.x)), global0.c)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(~var_1.x, firstTrailingBit(var_1.x)), 4294967295u >> (firstLeadingBit(var_1.x) % 32u)), 53885u >> (~min(var_1.x, 5647u) % 32u), _wgslsmith_dot_vec2_u32(~var_1.yz, var_1.yz)));
    let var_4 = !(!vec4<bool>(true, true, !global0.c && !global0.c, global0.c));
    return arg_0.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1158f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(u_input.a, 1i))))))), !arg_0);
    var var_1 = true;
    var_1 = true;
    let var_2 = abs(vec3<i32>(abs(-2147483647i), 0i, -_wgslsmith_mult_i32(arg_2, ~13329i)));
    var_1 = true;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b, arg_3.a, arg_0.a)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-278f))) * _wgslsmith_f_op_f32(trunc(func_1(arg_1, global1[_wgslsmith_index_u32(0u, 28u)], u_input.a, Struct_1(728f, global0.a, arg_2.x)).a))), _wgslsmith_f_op_f32(select(-1426f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -757f), arg_0.b, arg_0.c)), true)), -901f));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 28u)];
    let var_1 = firstLeadingBit(vec4<u32>(~1u, 4294967295u, firstLeadingBit(_wgslsmith_sub_u32(~0u, 1u)), firstLeadingBit(~(~15435u))));
    global0 = arg_3;
    let var_2 = min(-(min(-vec3<i32>(4142i, -1i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a))) << (firstLeadingBit(_wgslsmith_div_vec3_u32(var_1.wyz, vec3<u32>(var_1.x, 89322u, var_1.x))) % vec3<u32>(32u))), vec3<i32>(u_input.a, ~u_input.a, reverseBits(1i) >> (_wgslsmith_div_u32(var_1.x, 4294967295u) % 32u)) & (-(vec3<i32>(4661i, u_input.a, u_input.a) & vec3<i32>(0i, -15870i, 52906i)) ^ max(~vec3<i32>(1i, u_input.a, 19475i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-1i, -23268i, 6625i)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - -915f) - -639f)))), _wgslsmith_f_op_vec4_f32(func_2(~vec2<i32>(_wgslsmith_mult_i32(var_2.x, 1i), -var_2.x))).x, all(vec2<bool>(true, !(true & arg_0.c))));
}

fn func_6(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - func_5(arg_2, !global0.c, select(vec3<bool>(global0.c, global0.c, global0.c), !vec3<bool>(true, arg_2.c, global0.c), true), arg_2).b), 1449f, arg_2.c);
    var var_1 = false;
    var_0 = Struct_1(1000f, 619f, var_0.c);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(-1823f, arg_2.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<f32>(var_0.b, arg_2.a, 1903f, 825f)))) * arg_1.x)), 126f, var_0.c);
    let var_2 = max(u_input.a, ~u_input.a);
    return func_1(arg_2.c, func_1(!select(any(vec2<bool>(false, false)), all(vec3<bool>(true, false, false)), true), func_1(true, global1[_wgslsmith_index_u32(min(~78330u, 11513u), 28u)], _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(1i, u_input.a)), vec2<i32>(6473i, -64070i) | vec2<i32>(1i, var_2)), func_1(var_0.c, func_5(Struct_1(arg_2.a, arg_2.b, false), false, vec3<bool>(false, false, var_0.c), arg_2), min(var_2, -7427i), global1[_wgslsmith_index_u32(countOneBits(1u), 28u)])), _wgslsmith_mult_i32(arg_0, -2432i), global1[_wgslsmith_index_u32(~(~(~4294967295u)), 28u)]), _wgslsmith_add_i32(6664i, var_2), arg_2);
}

fn func_7(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(global0.a)), _wgslsmith_f_op_f32(-arg_2.a), !all(vec3<bool>(arg_0, arg_2.c, arg_2.c & true)));
    global1 = array<Struct_1, 28>();
    var var_1 = 4294967295u;
    let var_2 = !select(vec4<bool>(all(select(vec2<bool>(true, global0.c), vec2<bool>(false, global0.c), vec2<bool>(var_0.c, global0.c))), false, global0.c, _wgslsmith_f_op_f32(f32(-1f) * -776f) == _wgslsmith_f_op_f32(step(global0.b, arg_1.x))), select(!select(vec4<bool>(global0.c, arg_2.c, arg_0, false), vec4<bool>(true, true, var_0.c, false), vec4<bool>(false, arg_0, var_0.c, arg_2.c)), vec4<bool>(!global0.c, false, all(vec4<bool>(global0.c, var_0.c, var_0.c, var_0.c)), u_input.a <= 9449i), vec4<bool>(var_0.c, -1i > u_input.a, true, true)), vec4<bool>(arg_0, func_6(max(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(arg_1.yy * vec2<f32>(2270f, var_0.a)), arg_2).c, all(select(vec2<bool>(var_0.c, false), vec2<bool>(true, var_0.c), false)), global0.c));
    var_0 = func_1(!(!arg_2.c), func_6(~firstTrailingBit(countOneBits(9908i)), _wgslsmith_f_op_vec2_f32(-arg_1.xx), arg_2), 0i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(u_input.a, u_input.a))).x), arg_1.x, arg_0));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(func_7(false, vec3<f32>(427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2293f)) - _wgslsmith_f_op_f32(-2824f + global0.a)), -1919f), func_6(88186i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 1375f)))), func_5(func_1(true, global1[_wgslsmith_index_u32(11060u, 28u)], u_input.a, global1[_wgslsmith_index_u32(0u, 28u)]), false, select(vec3<bool>(false, false, true), vec3<bool>(true, false, global0.c), vec3<bool>(true, true, global0.c)), Struct_1(1218f, global0.a, false)))), select(4294967295u, ~1u, global0.c) & (_wgslsmith_dot_vec2_u32(~vec2<u32>(24088u, 0u), abs(vec2<u32>(4294967295u, 1u))) & (min(51236u, 6751u) >> (0u % 32u))), ~(~1u));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(4294967295u, 0u, global0.c), 1u), 28u)];
    var_1 = func_6(reverseBits(~(~_wgslsmith_mod_i32(19642i, u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 1000f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1750f, -1033f))), vec2<f32>(1253f, -475f), !vec2<bool>(var_1.c, true)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-272f, -509f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_f_op_f32(-global0.a), true));
    var var_2 = vec4<bool>(true, global0.c, false, false);
    global1 = array<Struct_1, 28>();
    var var_3 = var_2.zy;
    var_1 = Struct_1(func_5(Struct_1(var_1.a, -1000f, !(!var_1.c)), var_3.x, !vec3<bool>(!var_2.x, -1i == u_input.a, var_2.x), func_1(var_0.x > var_0.x, global1[_wgslsmith_index_u32(var_0.x, 28u)], countOneBits(u_input.a), func_5(global1[_wgslsmith_index_u32(var_0.x, 28u)], !var_3.x, select(var_2.yww, var_2.wxx, var_2.wzw), Struct_1(global0.b, var_1.b, var_1.c)))).b, var_1.a, !func_1(select(var_3.x & true, global0.c, global0.c), func_5(global1[_wgslsmith_index_u32(select(15352u, 48211u, var_1.c), 28u)], all(vec2<bool>(var_3.x, false)), var_2.zwz, Struct_1(285f, -2187f, true)), -1968i << (var_0.x % 32u), func_5(global1[_wgslsmith_index_u32(~var_0.x, 28u)], true, var_2.wyz, global1[_wgslsmith_index_u32(1u, 28u)])).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(681f, _wgslsmith_f_op_f32(global0.b - global0.a), -2077f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, var_1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a, var_1.a), vec2<f32>(-1000f, var_1.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.b)))) * vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-7632i, -2147483647i), vec2<i32>(-33796i, u_input.a)))).x, -792f)), min(min(min(vec4<i32>(0i, u_input.a, 2147483647i, -15803i), vec4<i32>(2147483647i, -6248i, 0i, u_input.a)), vec4<i32>(u_input.a, u_input.a, 2002i, 31322i)), abs(vec4<i32>(u_input.a, 10610i, 1i, 30937i))) << (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 10238u, 34734u), vec4<u32>(17328u, 58271u, 51593u, var_0.x))) % vec4<u32>(32u)));
}

