struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<f32, 24> = array<f32, 24>(-229f, 691f, -975f, -535f, -1344f, -645f, -892f, 472f, -224f, -787f, -1028f, 1499f, 157f, 711f, 425f, -734f, 768f, -371f, -324f, -1734f, 137f, 341f, 1009f, 358f);

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, true)));

var<private> global4: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(~1u, 25u)];
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 24u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-164f, 466f, arg_2))))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 24u)] * _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~arg_0, 24u)]))))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(22087u, 24u)]));
    global1 = ~1i;
    var var_2 = var_0.a.x;
    global3 = array<Struct_3, 25>();
    return select(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, arg_0), vec2<u32>(19163u, 1u))), arg_0, all(var_0.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: bool, arg_3: i32) -> Struct_2 {
    global3 = array<Struct_3, 25>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 24u)];
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1318f)) - global2[_wgslsmith_index_u32(~u_input.b, 24u)]) - 1161f))), _wgslsmith_f_op_f32(680f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(218f)) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(86907u, 24u)])), -1574f))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(u_input.b, vec4<i32>(u_input.c, arg_3, u_input.a.x, u_input.c), arg_1), ~4294967295u, _wgslsmith_mult_u32(u_input.d, u_input.b)), vec3<u32>(~4294967295u, ~u_input.d, 0u)) | u_input.b, 24u)]);
    global1 = _wgslsmith_dot_vec3_i32(min(~vec3<i32>(_wgslsmith_div_i32(arg_3, 1i), arg_3, u_input.c), _wgslsmith_div_vec3_i32(~(vec3<i32>(1i, arg_3, u_input.c) ^ u_input.a), u_input.a)), firstTrailingBit(abs(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, u_input.c, u_input.a.x), vec3<i32>(arg_3, arg_3, 14788i)), ~u_input.c))));
    var var_2 = select(~(~reverseBits(vec4<u32>(0u, 1u, u_input.d, u_input.d))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(20097u, 1u, 1u, u_input.d), min(vec4<u32>(u_input.d, 4294967295u, u_input.b, u_input.d), vec4<u32>(0u, 73322u, 4294967295u, u_input.b))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 1u, u_input.d), vec4<u32>(u_input.b, u_input.d, 32871u, u_input.d), vec4<u32>(u_input.d, 19554u, 1u, 11094u))), vec4<bool>(u_input.b > firstTrailingBit(~36612u), all(vec2<bool>(any(vec2<bool>(true, arg_2)), arg_1)), true, arg_2));
    return Struct_2(-278f, Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(var_2.x, var_2.x, var_2.x) & var_2.zwy) | (abs(vec3<u32>(25272u, var_2.x, u_input.b)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, var_2.x, var_2.x), vec3<u32>(61050u, var_2.x, u_input.b)) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(7289u, 82580u), 24u)] * -283f), reverseBits(u_input.a)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> vec2<u32> {
    global3 = array<Struct_3, 25>();
    let var_0 = func_2(vec2<bool>(all(vec2<bool>(true, arg_0 > -2469f)), (_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(53737u, 24u)])) >= arg_0) && true), true, (0u | _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, 50214u), u_input.d)) <= ~1u, -_wgslsmith_clamp_i32(firstTrailingBit(arg_1.x), 2147483647i, arg_1.x));
    global2 = array<f32, 24>();
    let var_1 = select(vec4<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true)), true), select(vec4<bool>(true, !all(vec2<bool>(true, true)), max(6571u, var_0.b.a.x) == 21318u, _wgslsmith_dot_vec2_u32(var_0.b.a.xz, var_0.b.a.yy) > u_input.d), vec4<bool>(any(vec4<bool>(true, true, true, true)), (u_input.a.x & 73097i) < 1i, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), false && any(vec3<bool>(false, true, false))), true), !(!(u_input.a.x == u_input.a.x)));
    var var_2 = func_2(!vec2<bool>(false, var_1.x), true, true, 17103i).b;
    return max(var_0.b.a.xy, var_0.b.a.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 24>();
    let var_0 = _wgslsmith_div_vec2_u32(func_1(global2[_wgslsmith_index_u32(u_input.d, 24u)], select(u_input.a, u_input.a, vec3<bool>(true, false, true))) & ~(~vec2<u32>(1u, u_input.b)), ~vec2<u32>(countOneBits(u_input.b), 47507u >> (u_input.b % 32u))) ^ abs(select(vec2<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.b, 18699u, u_input.d))), min(min(vec2<u32>(0u, 0u), vec2<u32>(89468u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(24210u, u_input.b), vec2<u32>(0u, u_input.b))), vec2<bool>(true, true)));
    global2 = array<f32, 24>();
    var var_1 = Struct_3(select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), all(vec3<bool>(false, false, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(64629u > u_input.d, 1i == u_input.c, any(vec3<bool>(true, true, true)))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 24u)])))) - 302f);
    global3 = array<Struct_3, 25>();
    let var_3 = var_1.a;
    var var_4 = vec4<i32>(-u_input.a.x & _wgslsmith_mult_i32(~(-17005i), ~_wgslsmith_mod_i32(u_input.a.x, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(0i, -2147483647i), countOneBits(abs(vec2<i32>(u_input.c, -10477i)))), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mod_i32(u_input.a.x, select(-10384i, 7512i, var_1.a.x))), u_input.c);
    let var_5 = func_2(var_1.a.yx, true, all(!vec4<bool>(var_3.x || false, true, true, var_3.x)), func_2(var_1.a.yy, true, select(select(false, any(vec4<bool>(var_1.a.x, var_3.x, true, true)), var_3.x), true, true), u_input.c).b.d.x).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(51725u, 82190u), vec2<u32>(abs(var_0.x), _wgslsmith_mult_u32(4294967295u, var_0.x))), func_1(584f, var_4.yxx)), vec3<u32>(var_0.x & var_5.a.x, (countOneBits(21553u) << (u_input.d % 32u)) << (~abs(1u) % 32u), abs(var_0.x)), var_5.a.x, ~min(~(vec2<u32>(0u, 24161u) | var_5.a.yx), ~countOneBits(vec2<u32>(44361u, 91230u))));
}

