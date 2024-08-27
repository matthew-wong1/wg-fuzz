struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<vec3<f32>, 6>;

var<private> global2: array<vec4<i32>, 14>;

var<private> global3: array<vec2<f32>, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global1 = array<vec3<f32>, 6>();
    var var_0 = _wgslsmith_f_op_f32(round(1542f));
    var_0 = _wgslsmith_f_op_f32(max(1491f, -334f));
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 23u)];
    var var_2 = !any(vec4<bool>(true, true, true, true));
    return 2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-736f, _wgslsmith_f_op_f32(695f - -512f), _wgslsmith_f_op_f32(-812f * -2125f), _wgslsmith_f_op_f32(1000f - -262f)) - vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_1 = 0i;
    let var_2 = Struct_2(Struct_1(firstLeadingBit(abs(vec3<u32>(53431u, 24166u, arg_1.a.x)) | arg_0.a), abs(~arg_1.b)), arg_1.a.x);
    let var_3 = _wgslsmith_sub_u32(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(601u, arg_0.a.x), var_2.a.a.yz), arg_1.a.x & 1u, 30298u, _wgslsmith_add_u32(4294967295u, 0u)), countOneBits(u_input.c | u_input.c)));
    global0 = array<Struct_1, 23>();
    return select(!(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))) | !all(vec4<bool>(false, false, false, true))), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))) | all(vec2<bool>(true, true)), false);
}

fn func_2() -> Struct_3 {
    global3 = array<vec2<f32>, 30>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 23u)];
    let var_1 = func_4(Struct_1(~vec3<u32>(0u, firstTrailingBit(4294967295u), ~0u), vec4<i32>(-1i) * -(vec4<i32>(var_0.b.x, 0i, -2147483647i, -1i) << (vec4<u32>(36103u, u_input.c.x, 11610u, 4294967295u) % vec4<u32>(32u)))), Struct_1(u_input.c.xxz, ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, u_input.b.x), vec2<i32>(-31863i, var_0.b.x)), var_0.b.x >> (1u % 32u), abs(7857i), func_3())));
    var var_2 = -43695i;
    var_0 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(27937u & _wgslsmith_div_u32(var_0.a.x, var_0.a.x), 1u), firstTrailingBit(var_0.a.x) >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a.x, u_input.c.x, 0u), ~4294967295u) % 32u), _wgslsmith_dot_vec3_u32(u_input.c.xyx, ~var_0.a) ^ 4294967295u), ~countOneBits(select(vec4<i32>(14746i, var_0.b.x, var_0.b.x, u_input.a) << (u_input.e % vec4<u32>(32u)), vec4<i32>(12673i, 2147483647i, 19350i, u_input.b.x), vec4<bool>(var_1, true, true, var_1))));
    return Struct_3(vec4<u32>(u_input.d, ~firstTrailingBit(45452u), _wgslsmith_dot_vec2_u32(var_0.a.xy, _wgslsmith_div_vec2_u32(~u_input.e.wz, firstTrailingBit(u_input.e.zy))), abs(11735u)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = func_2();
    let var_1 = -530f;
    var var_2 = global0[_wgslsmith_index_u32(~arg_1.a.x, 23u)];
    var var_3 = vec4<bool>(true, true, true, true);
    return var_1;
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = true;
    let var_1 = Struct_2(Struct_1(~(vec3<u32>(1u, 44626u, u_input.e.x) & vec3<u32>(23493u, u_input.c.x, u_input.c.x)), min(global2[_wgslsmith_index_u32(~u_input.d, 14u)] & (u_input.b << (vec4<u32>(u_input.c.x, u_input.e.x, 21941u, u_input.d) % vec4<u32>(32u))), vec4<i32>(-u_input.b.x, i32(-1i) * -32447i, u_input.b.x, u_input.a))), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c.x, ~u_input.c.x)), select(vec2<u32>(0u, 1u), (vec2<u32>(u_input.c.x, 99199u) ^ vec2<u32>(u_input.c.x, u_input.d)) << (select(vec2<u32>(41085u, u_input.e.x), vec2<u32>(u_input.e.x, 4294967295u), vec2<bool>(false, arg_2.x)) % vec2<u32>(32u)), true)));
    var var_2 = vec2<u32>(0u, ~abs(~u_input.c.x) >> (u_input.c.x % 32u));
    global2 = array<vec4<i32>, 14>();
    let var_3 = ~((var_2.x & ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 49437u), vec2<u32>(var_2.x, 4294967295u))) & 36089u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 30>();
    let var_0 = 14965u;
    global0 = array<Struct_1, 23>();
    var var_1 = vec2<bool>(true, true);
    let var_2 = func_5(-1502f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1741f)), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<u32>(69727u, u_input.d, 4294967295u), vec4<i32>(u_input.b.x, u_input.b.x, 73964i, u_input.b.x)), var_0), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.d), 23u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1119f - 247f) - 987f))), select(vec4<bool>(var_1.x, all(select(vec2<bool>(false, true), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x))), true, true), vec4<bool>(all(vec2<bool>(false, false)) | select(false, var_1.x, var_1.x), true, func_3() > _wgslsmith_mult_i32(u_input.b.x, 33753i), !(!var_1.x)), var_1.x & all(vec3<bool>(true, var_1.x, var_1.x))));
    var_1 = select(!vec2<bool>(var_1.x, all(!vec4<bool>(var_1.x, var_1.x, var_1.x, true))), vec2<bool>(true, true), vec2<bool>(!var_1.x, var_0 < 7956u));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, func_5(1623f, vec3<f32>(1545f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1763f, 637f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) - _wgslsmith_f_op_f32(f32(-1f) * -346f))), !vec4<bool>(var_1.x, true, true, true)).a.x), 23u)];
    let var_4 = global3[_wgslsmith_index_u32(var_2.a.x, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_4.x, 185f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))))), min(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(440u, var_2.a.x), var_3.a.xx), ~vec2<u32>(0u, var_2.a.x)), ~(~u_input.e.yw)) & var_3.a.zz, -vec2<i32>(2147483647i, 8271i));
}

