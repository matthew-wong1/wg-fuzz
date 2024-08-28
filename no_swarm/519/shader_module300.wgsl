struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, false));

var<private> global1: array<Struct_4, 5>;

var<private> global2: f32;

var<private> global3: f32;

var<private> global4: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = select(vec3<bool>(all(global0.a), firstLeadingBit(u_input.a.x >> (u_input.c % 32u)) == ~u_input.a.x, all(vec4<bool>(global4.x, false, global4.x, global4.x)) && false), vec3<bool>(global4.x, global4.x, true), global4.x);
    let var_1 = Struct_2(~(~_wgslsmith_mult_u32(u_input.c, firstLeadingBit(u_input.c))), Struct_1(var_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(812f, _wgslsmith_f_op_f32(select(-1000f, 1673f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f + _wgslsmith_f_op_f32(-2332f - 1000f)))), global0.a.x);
    global0 = Struct_1(!(!var_1.b.a));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x), -1797f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x)))) - var_1.c.x);
    global3 = _wgslsmith_f_op_f32(floor(var_1.c.x));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.x)));
}

fn func_2() -> i32 {
    var var_0 = abs(select(vec4<i32>(abs(u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), abs(29305i), u_input.a.x), _wgslsmith_mod_vec4_i32(-vec4<i32>(-4985i, u_input.a.x, u_input.a.x, -1i), abs(vec4<i32>(-1i, -2147483647i, -39878i, u_input.a.x))), !(!vec4<bool>(true, global4.x, false, global0.a.x)))) | vec4<i32>(min(-73498i, -(~(-2147483647i))), ~_wgslsmith_mult_i32(min(1i, u_input.a.x), _wgslsmith_add_i32(5084i, u_input.a.x)), 1i, abs(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, 0i), 2147483647i)));
    let var_1 = Struct_2(u_input.c, Struct_1(vec3<bool>(!any(vec4<bool>(true, global0.a.x, global0.a.x, false)), any(!vec3<bool>(global4.x, false, global4.x)), global4.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(707f)))), -1000f, _wgslsmith_f_op_f32(func_3())), any(select(vec3<bool>(any(global4.yy), any(global0.a), global4.x || global0.a.x), select(vec3<bool>(global0.a.x, true, true), select(global0.a, global0.a, global0.a.x), global0.a), u_input.b == abs(u_input.b))));
    var var_2 = global1[_wgslsmith_index_u32(max(1u, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(30741u, var_1.a), vec2<u32>(u_input.b, var_1.a), global0.a.x), vec2<u32>(var_1.a, 1u))) & 1u, 5u)];
    var var_3 = _wgslsmith_clamp_u32(~u_input.c, 1u, ~44451u >> (_wgslsmith_sub_u32(103361u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, var_2.b, var_1.a, 21254u), vec4<u32>(var_2.b, u_input.b, 8386u, u_input.b))) % 32u)) ^ max(_wgslsmith_clamp_u32(abs(var_2.b) << (0u % 32u), var_1.a, _wgslsmith_add_u32(u_input.b ^ u_input.b, min(1u, 4294967295u))), _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(var_1.a, u_input.c)), vec2<u32>(~1u, ~var_2.b)));
    let var_4 = -var_2.c.yy;
    return 0i;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = ~max(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(1i, u_input.a.x) << (14631u % 32u)), reverseBits(-1i));
    let var_1 = Struct_4(!(!select(select(vec4<bool>(false, global4.x, false, global0.a.x), vec4<bool>(global4.x, true, false, arg_0), arg_2), vec4<bool>(global0.a.x, global0.a.x, false, false), !vec4<bool>(true, arg_2, true, true))), _wgslsmith_div_u32(u_input.b, ~126166u), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -4957i, func_2()), firstTrailingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(var_0, -30471i, u_input.a.x), vec3<i32>(13506i, u_input.a.x, var_0)))));
    var var_2 = 100763u;
    var var_3 = Struct_3(Struct_1(select(select(select(global0.a, global0.a, global4.x), var_1.a.www, global4.x || arg_2), vec3<bool>(false || var_1.a.x, 36965i == var_0, true), arg_2)));
    var var_4 = true;
    return Struct_1(select(select(!select(vec3<bool>(global4.x, var_3.a.a.x, false), vec3<bool>(false, true, global0.a.x), true), var_1.a.zzw, var_1.a.xyz), vec3<bool>(!any(vec3<bool>(true, false, false)), true, var_1.a.x), select(vec3<bool>(select(var_3.a.a.x, arg_0, false), any(vec4<bool>(var_3.a.a.x, false, var_1.a.x, var_1.a.x)), true), global0.a, !all(var_1.a.xx))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = arg_1;
    let var_1 = select(var_0.a.a, vec3<bool>(false, !(~(-2147483647i) != _wgslsmith_div_i32(u_input.a.x, -1i)), global0.a.x), any(select(var_0.a.a.yx, vec2<bool>(false, func_1(var_0.a.a.x, vec2<u32>(41550u, 57656u), arg_1.a.a.x).a.x), select(!vec2<bool>(arg_1.a.a.x, false), var_0.a.a.zz, select(arg_2.a.yz, vec2<bool>(false, true), vec2<bool>(true, global0.a.x))))));
    let var_2 = Struct_3(func_1(global0.a.x, vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(14484u), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(46110u, 39820u, u_input.b, u_input.c), vec4<u32>(u_input.c, 38050u, u_input.b, u_input.b))), u_input.b << (reverseBits(u_input.c) % 32u)), true));
    let var_3 = !func_1(true, select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, 43657u)), vec2<u32>(u_input.b, _wgslsmith_add_u32(4294967295u, u_input.c)), vec2<bool>(true | arg_2.a.x, u_input.b < u_input.c)), !all(select(var_0.a.a, vec3<bool>(arg_0, true, true), global4.x))).a.yz;
    global1 = array<Struct_4, 5>();
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-388f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1522f) * _wgslsmith_f_op_f32(step(-138f, 213f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 5>();
    var var_0 = Struct_3(Struct_1(vec3<bool>(true, global4.x, all(vec3<bool>(global4.x, true, global4.x)))));
    let var_1 = u_input.c;
    var var_2 = global0.a.x;
    var var_3 = global1[_wgslsmith_index_u32(abs(~u_input.b), 5u)];
    let x = u_input.a;
    s_output = func_4(var_3.a.x, Struct_3(Struct_1(vec3<bool>(!global4.x, !var_0.a.a.x, false))), func_1(any(var_3.a.xx), select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(81802u, 1u), vec2<u32>(var_3.b, 7081u) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), vec2<u32>(var_3.b, var_1)), vec2<u32>(~var_1, var_3.b), !(!vec2<bool>(var_0.a.a.x, var_0.a.a.x))), 90386u == u_input.c));
}

