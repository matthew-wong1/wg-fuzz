struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<i32, 28> = array<i32, 28>(i32(-2147483648), -5627i, i32(-2147483648), -39800i, 0i, 8044i, 0i, -1i, 0i, 26457i, 8297i, i32(-2147483648), -1i, 2147483647i, -1221i, 13394i, -49134i, 2147483647i, -23010i, 0i, -30874i, -4289i, i32(-2147483648), 2147483647i, -1i, -1i, -1i, 0i);

var<private> global2: bool;

var<private> global3: vec2<u32> = vec2<u32>(1u, 25043u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = ~(~(~(~vec2<u32>(1640u, 0u))) >> (~(~select(vec2<u32>(66477u, global3.x), vec2<u32>(9448u, 52907u), vec2<bool>(true, true))) % vec2<u32>(32u)));
    global2 = all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(select(true, true, true), true), false), global3.x != (4294967295u | (global0[_wgslsmith_index_u32(var_0.x, 4u)] ^ var_0.x))));
    let var_1 = 1239f;
    var var_2 = abs(_wgslsmith_mod_i32(_wgslsmith_clamp_i32((global1[_wgslsmith_index_u32(19331u, 28u)] | -1314i) | -37627i, global1[_wgslsmith_index_u32(0u, 28u)], 1i), -1i));
    let var_3 = select(!(!vec3<bool>(true, false, u_input.c > 89730i)), vec3<bool>(true, _wgslsmith_clamp_i32(~(-2147483647i), u_input.b, -1i) == 2147483647i, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)))), true);
    return _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(global3.x, 28u)]) | countOneBits(vec2<i32>(-14154i, global1[_wgslsmith_index_u32(1u, 28u)]))), select(vec2<i32>(~global1[_wgslsmith_index_u32(1u, 28u)], -u_input.c), vec2<i32>(1i, global1[_wgslsmith_index_u32(51364u, 28u)]), vec2<bool>(true, !var_3.x)) << (~((vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 4u)], var_0.x) | vec2<u32>(var_0.x, 0u)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(4294967295u, 36317u))) % vec2<u32>(32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = -abs(vec4<i32>(max(global1[_wgslsmith_index_u32(global3.x, 28u)], -1i), 1i, -_wgslsmith_sub_i32(u_input.b, u_input.b), firstTrailingBit(-2147483647i)));
    let var_1 = select(vec3<i32>(-2147483647i, -u_input.c, func_3()) & ~_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 28u)], 108208i, global1[_wgslsmith_index_u32(global3.x, 28u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(-11163i, -2147483647i, -28521i), vec3<i32>(-36692i, u_input.b, 2147483647i))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -abs(-1613i), func_3()), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 28u)], var_0.x), 0i), firstLeadingBit(var_0.zzx ^ vec3<i32>(var_0.x, u_input.b, 26799i)))), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), vec3<bool>(var_0.x > var_0.x, any(vec4<bool>(false, true, true, false)), true), vec3<bool>(true, -531f != _wgslsmith_f_op_f32(floor(1173f)), false)));
    global3 = _wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(40343u), ~(~global3.x)), max(vec2<u32>(abs(122784u), ~(~global3.x)), ~(~vec2<u32>(19939u, 95256u))));
    global1 = array<i32, 28>();
    let var_2 = Struct_2(any(vec3<bool>(true, true, true)));
    return Struct_2(all(select(vec2<bool>(var_2.a, var_2.a), select(vec2<bool>(true, true), vec2<bool>(var_2.a, var_2.a), select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(false, true), vec2<bool>(var_2.a, var_2.a))), !(!vec2<bool>(var_2.a, var_2.a)))));
}

fn func_1() -> Struct_4 {
    global3 = select(~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global3.x, 102525u), global0[_wgslsmith_index_u32(global3.x, 4u)]), select(vec2<u32>(67422u, global3.x), vec2<u32>(23479u, global3.x), true)), _wgslsmith_div_vec2_u32(vec2<u32>(3624u, ~(~51558u)), ~(~vec2<u32>(94207u, 29016u))), true);
    var var_0 = func_2();
    global2 = true;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2561f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1036f)), _wgslsmith_f_op_f32(-1214f + 1000f), var_0.a)), -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f) * _wgslsmith_f_op_f32(f32(-1f) * -1128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, 720f, true)), 1217f))))), _wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(-238f * 990f));
    global2 = true;
    return Struct_4(Struct_1(vec3<u32>(global3.x, global0[_wgslsmith_index_u32(~0u, 4u)], select(~global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(8111u, global3.x, 4294967295u), vec3<u32>(global3.x, 44602u, global0[_wgslsmith_index_u32(4294967295u, 4u)])), var_0.a))), vec4<i32>(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(7998u, global3.x), 28u)], -2175i, -22515i, global1[_wgslsmith_index_u32(~(~global3.x), 28u)]) << (~abs(vec4<u32>(4294967295u, global3.x, global3.x, 4294967295u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = abs(77661u);
    var var_2 = global1[_wgslsmith_index_u32(~(4294967295u >> (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 84025u, global0[_wgslsmith_index_u32(global3.x, 4u)], 1u), vec4<u32>(49214u, 65033u, 4294967295u, 17973u)), 4u)] % 32u)) ^ (65070u ^ (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(3656u, 1u, 4294967295u, 4294967295u)) & 36215u)), 28u)];
    global0 = array<u32, 4>();
    var_2 = func_3();
    var var_3 = var_0.b.x;
    global1 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global3.x, (global3.x >> (1845u % 32u)) << (1u % 32u), global0[_wgslsmith_index_u32(~14163u, 4u)]) << (~var_0.a.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1842f, _wgslsmith_f_op_f32(-201f * -1335f)))))));
}

