struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(78463u, 12638u, 13399u, 1u, 0u);

var<private> global1: Struct_2 = Struct_2(448f, vec2<i32>(0i, -8090i));

var<private> global2: bool = true;

var<private> global3: array<Struct_2, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = ~(~_wgslsmith_sub_i32(u_input.b, u_input.b));
    global2 = all(select(vec4<bool>(false, any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, true, true))), arg_1, false), !(!(!vec4<bool>(arg_1, arg_1, arg_1, true))), select(select(select(vec4<bool>(false, false, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1), !vec4<bool>(false, arg_1, false, arg_1), arg_1), select(!vec4<bool>(arg_1, arg_1, false, false), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), !arg_1), !vec4<bool>(arg_1, arg_1, arg_1, true))));
    var var_1 = !select(!vec4<bool>(false, !arg_1, arg_1, arg_1), select(select(!vec4<bool>(arg_1, arg_1, false, arg_1), !vec4<bool>(arg_1, true, true, arg_1), arg_1), select(!vec4<bool>(false, false, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, false, arg_1, arg_1), false), !vec4<bool>(arg_1, false, arg_1, true)), vec4<bool>(any(vec4<bool>(arg_1, false, true, true)), true, true, arg_1)), arg_1);
    let var_2 = _wgslsmith_dot_vec4_i32(~(-select(vec4<i32>(-26471i, global1.b.x, 0i, 5548i), vec4<i32>(-2147483647i, -69680i, var_0, var_0), vec4<bool>(true, arg_1, arg_1, arg_1))) << (vec4<u32>(~_wgslsmith_mult_u32(4294967295u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 93091u)), ~(~1u), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(14384u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)] % 32u), 5u)], 5u)]) % vec4<u32>(32u)), vec4<i32>(0i, firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2.b, global1.b), min(global1.b, vec2<i32>(0i, 24325i)))), ~(-2147483647i), 10982i));
    var var_3 = ~abs(_wgslsmith_div_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)]))), ~u_input.a));
    return global1.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-510f - _wgslsmith_f_op_f32(-arg_3.a)))), _wgslsmith_mod_vec2_i32(arg_2.a, _wgslsmith_mult_vec2_i32(-vec2<i32>(global1.b.x, 2147483647i), func_3(u_input.b, false, Struct_2(715f, arg_3.b))) ^ -vec2<i32>(u_input.b, -14447i)));
    global0 = array<u32, 5>();
    var var_1 = vec4<bool>(true, !arg_0.x && false, !((arg_1 <= abs(arg_2.a.x)) & arg_0.x), arg_0.x);
    var_1 = arg_0;
    global2 = true;
    return Struct_1(-(vec2<i32>(-global1.b.x, arg_3.b.x | arg_1) | _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(66642i, 1i), vec2<i32>(59899i, global1.b.x)), -arg_2.a)), vec3<bool>(false, arg_2.c.x, var_1.x), !vec3<bool>(false, false, _wgslsmith_f_op_f32(-1000f - -666f) > _wgslsmith_f_op_f32(-arg_3.a)), arg_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1544f + _wgslsmith_f_op_f32(1569f - arg_1)))), vec2<i32>(firstLeadingBit(arg_0.b.x), 1i));
    let var_1 = (-(-vec3<i32>(-2147483647i, var_0.b.x, var_0.b.x) & vec3<i32>(global1.b.x, 2147483647i, 2147483647i)) & ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, -31584i), vec3<i32>(19675i, 5937i, arg_0.b.x) >> (vec3<u32>(0u, 6279u, u_input.a.x) % vec3<u32>(32u)))) & (vec3<i32>(1i, global1.b.x, ~global1.b.x) & max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 28919i, -2147483647i), -vec3<i32>(-41163i, var_0.b.x, 18402i)), -countOneBits(vec3<i32>(46635i, arg_0.b.x, arg_2.a.x))));
    global2 = true;
    let var_2 = global0[_wgslsmith_index_u32(~(~4294967295u), 5u)];
    let var_3 = _wgslsmith_f_op_f32(101f - _wgslsmith_f_op_f32(trunc(var_0.a)));
    return global1.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_2) -> bool {
    global0 = array<u32, 5>();
    global2 = !arg_0.x && arg_0.x;
    var var_0 = _wgslsmith_f_op_f32(global1.a * 1053f);
    var var_1 = !(!(!vec4<bool>(true, arg_0.x, arg_0.x, false)));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(159f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(floor(-1325f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_3, _wgslsmith_f_op_f32(round(-218f)), func_2(vec4<bool>(true, false, var_1.x, false), 14738i, Struct_1(vec2<i32>(-18082i, global1.b.x), var_1.zyy, var_1.zyz, arg_0.x), global3[_wgslsmith_index_u32(0u, 5u)]))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))));
    return !arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.b, vec3<bool>(true, false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))))), !vec3<bool>(!any(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, true, true, true)), true), select(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f + global1.a)) > -889f, func_1(vec2<bool>(true, true), ~global1.b, _wgslsmith_f_op_f32(-global1.a), Struct_2(1367f, global1.b)) != true));
    let var_1 = min(abs(vec4<i32>(-1i) * -vec4<i32>(-42274i, 0i, 14761i, -3702i)), vec4<i32>(49893i, ~(~var_0.a.x), func_3(-22311i, _wgslsmith_f_op_f32(trunc(-962f)) >= _wgslsmith_f_op_f32(global1.a - 1632f), global3[_wgslsmith_index_u32(u_input.a.x, 5u)]).x, u_input.b));
    global1 = global3[_wgslsmith_index_u32(u_input.a.x, 5u)];
    let var_2 = var_0.b.zy;
    global1 = global3[_wgslsmith_index_u32(firstLeadingBit(abs(~(u_input.a.x & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(15882u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), vec4<u32>(12056u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 4294967295u, 0u))))), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b);
}

