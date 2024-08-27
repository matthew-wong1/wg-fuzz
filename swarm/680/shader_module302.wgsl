struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<f32, 3> = array<f32, 3>(-100f, 389f, -2019f);

var<private> global2: array<i32, 17>;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(-366f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, ~u_input.c | (37842u << (0u % 32u)), ~u_input.c), ~(~select(vec4<u32>(u_input.c, u_input.c, u_input.c, 55029u), vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), vec4<bool>(true, true, false, false)))));
    var var_1 = max(~1u, 10584u);
    global4 = global0[_wgslsmith_index_u32(u_input.c, 24u)];
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~_wgslsmith_add_u32(13515u, u_input.c))), u_input.c), 3u)];
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, arg_2) * _wgslsmith_f_op_f32(sign(arg_2)))))));
    return arg_0;
}

fn func_2() -> vec2<u32> {
    global2 = array<i32, 17>();
    let var_0 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 17u)], ~(~(-1i)), -39111i & -u_input.b.x, min(u_input.a.x, func_3(-2147483647i, vec3<i32>(global2[_wgslsmith_index_u32(1u, 17u)], u_input.a.x, u_input.a.x), global3.a))), abs(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 17u)] >> (u_input.c % 32u), u_input.a.x, -10750i, -u_input.a.x))), countOneBits(25131i));
    var var_1 = _wgslsmith_dot_vec2_i32(-(~(-vec2<i32>(-36121i, 8704i))) & u_input.a, firstTrailingBit(~countOneBits(vec2<i32>(u_input.a.x, var_0)) & u_input.a));
    let var_2 = ~(_wgslsmith_add_i32(var_0, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a) ^ (u_input.a.x >> (u_input.c % 32u))) << (4294967295u % 32u));
    global3 = Struct_1(global3.a);
    return ~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(1u, 106662u)), 37804u), _wgslsmith_mult_u32(~10570u << (u_input.c % 32u), _wgslsmith_sub_u32(41125u, 7280u)));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~91399u, 24u)];
    var var_1 = _wgslsmith_clamp_vec2_i32(reverseBits(u_input.a) << ((_wgslsmith_div_vec2_u32(arg_0, arg_0) ^ func_2()) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-21371i, 0i, -11825i), vec3<i32>(24894i, u_input.a.x, 2147483647i)), i32(-1i) * -18420i), abs(-1838i)), u_input.a) ^ (-u_input.b ^ vec2<i32>(abs(-2147483647i), u_input.b.x | _wgslsmith_mod_i32(14996i, 22333i)));
    var_0 = global0[_wgslsmith_index_u32(1u, 24u)];
    var_1 = _wgslsmith_div_vec2_i32(abs(~vec2<i32>(u_input.a.x, 1i)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_0.x, 17u)], -56000i), u_input.b | u_input.b), vec2<i32>(global2[_wgslsmith_index_u32(~u_input.c, 17u)], i32(-1i) * -21164i)) & u_input.a);
    let var_2 = -23278i == global2[_wgslsmith_index_u32(~u_input.c, 17u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(func_2().x, 3u)])) + 611f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_f32(func_1(vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(1u), 1u), 1u)));
    let var_2 = 2147483647i;
    let var_3 = Struct_1(-1717f);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 3u)]), -749f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + _wgslsmith_div_f32(global3.a, var_3.a)), _wgslsmith_f_op_f32(func_1(~vec2<u32>(4294967295u, 4294967295u))), !all(vec4<bool>(true, false, true, false))))));
    global0 = array<Struct_1, 24>();
    let var_5 = Struct_1(-1374f);
    var var_6 = global0[_wgslsmith_index_u32(func_2().x, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(floor(-1045f))), global2[_wgslsmith_index_u32(max(u_input.c, 0u) & firstTrailingBit(firstTrailingBit(u_input.c)), 17u)], vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, 49348u, u_input.c)), min(vec3<u32>(u_input.c, 1u, 4294967295u), firstTrailingBit(vec3<u32>(1u, u_input.c, u_input.c)))), _wgslsmith_sub_u32(u_input.c, abs(~39014u)), firstLeadingBit(1u)), 48504u << (~firstTrailingBit(~u_input.c) % 32u));
}

