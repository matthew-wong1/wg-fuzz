struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(64369u, vec4<i32>(-43393i, 88772i, -5958i, -22749i), vec2<f32>(-446f, 1692f), vec4<i32>(-63205i, -50249i, 0i, -33251i), vec3<u32>(25269u, 14926u, 0u));

var<private> global1: array<bool, 21> = array<bool, 21>(true, true, true, false, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, true, false);

var<private> global2: array<bool, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(u_input.a, ~arg_1.d, _wgslsmith_f_op_vec2_f32(-arg_1.c), global0.b, select(~firstLeadingBit(arg_1.e), arg_3.e, global2[_wgslsmith_index_u32(~max(4294967295u, ~global0.a), 27u)]));
    global1 = array<bool, 21>();
    let var_1 = ~_wgslsmith_div_i32(max(var_0.d.x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(16117i, arg_0.d.x), arg_3.b.zx))), -(~(~(-7227i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -996f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - -1264f) * _wgslsmith_f_op_f32(global0.c.x * global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1000f))) - 164f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1448f) + _wgslsmith_f_op_f32(-arg_3.c.x)), var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, arg_3.c.x)) * -200f))));
    global1 = array<bool, 21>();
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.e.xz), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 4294967295u)), var_0.e.yz >> (firstTrailingBit(arg_1.e.zz) % vec2<u32>(32u))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_add_u32(func_3(Struct_1(max(0u, 6374u), vec4<i32>(30093i, global0.b.x, 6354i, global0.d.x), global0.c, global0.b, vec3<u32>(u_input.a, 1u, 27799u) | global0.e), Struct_1(_wgslsmith_clamp_u32(1u, 31000u, 0u), global0.b, vec2<f32>(global0.c.x, -630f), vec4<i32>(global0.b.x, -1311i, global0.b.x, global0.d.x), ~global0.e), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.c.x)))), Struct_1(u_input.a, global0.b, _wgslsmith_f_op_vec2_f32(floor(global0.c)), vec4<i32>(global0.d.x, -43929i, 1i, global0.b.x), vec3<u32>(0u, global0.e.x, global0.e.x))), 4294967295u), ~vec4<i32>(global0.d.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, -33714i), global0.d.wz), -1i, -(-2147483647i << (u_input.a % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, 374f) + global0.c.x), _wgslsmith_f_op_f32(-global0.c.x)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0.c + vec2<f32>(-1122f, global0.c.x)), vec2<f32>(-885f, 1180f)))))), vec4<i32>(i32(-1i) * -(1i >> (u_input.a % 32u)), ~select(53983i >> (1u % 32u), ~6047i, true), -1i, global0.b.x >> (_wgslsmith_div_u32(4294967295u, abs(u_input.a)) % 32u)), ~countOneBits(_wgslsmith_mult_vec3_u32(global0.e, select(global0.e, global0.e, vec3<bool>(false, true, global1[_wgslsmith_index_u32(global0.a, 21u)])))));
    let var_1 = Struct_1(~u_input.a, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-2147483647i, -2147483647i, global0.b.x, 0i)), vec4<i32>(_wgslsmith_mult_i32(38867i, global0.d.x), var_0.d.x, ~(-6938i), 42928i)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-955i, 22302i, global0.b.x, var_0.b.x), global0.d, !vec4<bool>(global2[_wgslsmith_index_u32(global0.a, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(5615u, 27u)], global1[_wgslsmith_index_u32(0u, 21u)])), vec4<i32>(~global0.d.x, -18814i, -2147483647i, -1i & var_0.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-461f, _wgslsmith_f_op_f32(sign(806f))), var_0.c, !vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.e.x, 27u)])))), ~vec4<i32>(1i, abs(-5453i >> (var_0.a % 32u)), var_0.b.x, _wgslsmith_mult_i32(1i, -19393i)), ~vec3<u32>(23441u, global0.e.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.e, vec3<u32>(u_input.a, 0u, 57419u), global0.e), var_0.e)));
    var var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(select(vec2<i32>(var_1.d.x, global0.b.x), vec2<i32>(22931i, var_0.d.x), vec2<bool>(false, true))), abs(-var_0.d.wz)), vec2<i32>(var_1.b.x, -reverseBits(var_1.d.x))), vec2<i32>(var_1.d.x, global0.b.x));
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global0.c.x)) * 448f) >= _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -1917f)), select(true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(global2[_wgslsmith_index_u32(18946u, 27u)], false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], false, global2[_wgslsmith_index_u32(global0.a, 27u)], true))) && global1[_wgslsmith_index_u32(~global0.a, 21u)], select(6161i, _wgslsmith_clamp_i32(var_2.x, 26291i, global0.b.x), false) >= (_wgslsmith_clamp_i32(38675i, -54002i, 1i) | _wgslsmith_clamp_i32(var_0.b.x, var_0.b.x, 63133i))));
    var var_4 = !all(!(!select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(1u, 27u)], false), false)));
    return 36731i;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_1(arg_3.a, _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(-21575i, global0.d.x), _wgslsmith_mod_i32(arg_3.d.x, global0.d.x), ~9300i, ~arg_0), vec4<i32>(2147483647i, 2147483647i, 5397i, arg_2.x) ^ global0.b, vec4<i32>(_wgslsmith_mod_i32(arg_2.x, global0.d.x), countOneBits(arg_3.d.x), global0.b.x, _wgslsmith_sub_i32(-global0.b.x, i32(-1i) * -2147483647i))), _wgslsmith_f_op_vec2_f32(-global0.c), reverseBits(arg_3.b) ^ vec4<i32>(~(-arg_3.d.x), arg_3.b.x, global0.d.x, 46483i ^ _wgslsmith_div_i32(arg_2.x, 0i)), global0.e);
    let var_0 = 18998u;
    global0 = Struct_1(u_input.a, vec4<i32>(min(1i, 38262i), -1i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.d.x, -1i, arg_0, global0.d.x), vec4<i32>(arg_0, -70707i, 1i, arg_3.b.x))), abs(-12795i)) & arg_3.d, _wgslsmith_f_op_vec2_f32(sign(arg_1.zx)), (max(reverseBits(arg_3.d), global0.d) >> (firstTrailingBit(min(vec4<u32>(3746u, u_input.a, 23441u, var_0), vec4<u32>(global0.a, 4294967295u, 48063u, var_0))) % vec4<u32>(32u))) ^ max((global0.b & arg_2) << (~vec4<u32>(global0.a, 17006u, 5033u, 0u) % vec4<u32>(32u)), firstLeadingBit(arg_3.d)), global0.e);
    let var_1 = true;
    let var_2 = !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a >> (abs(~arg_3.a) % 32u), 27u)], true);
    return arg_3;
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 21>();
    var var_0 = global0.c.x;
    var var_1 = func_4(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-741f, -423f, 935f), vec3<f32>(-652f, global0.c.x, 1139f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(424f, global0.c.x, global0.c.x))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(409f, -1000f, -967f), vec3<f32>(global0.c.x, 1226f, global0.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -1095f, -659f)), !select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 21u)], false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(65708u, 27u)], global1[_wgslsmith_index_u32(17662u, 21u)]))))), _wgslsmith_div_vec4_i32(firstLeadingBit(min(-global0.b, global0.d)), vec4<i32>(global0.b.x, _wgslsmith_dot_vec3_i32(global0.d.zwx, global0.b.wzx), abs(global0.b.x), -18020i) >> (~(vec4<u32>(77069u, 0u, global0.a, 0u) | vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), Struct_1(abs(~firstLeadingBit(global0.e.x)), vec4<i32>(~_wgslsmith_div_i32(global0.b.x, global0.d.x), _wgslsmith_mult_i32(~(-3667i), global0.d.x), func_2(), ~_wgslsmith_mult_i32(-1i, global0.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.c - vec2<f32>(-410f, global0.c.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c.x, 423f), global0.c, global1[_wgslsmith_index_u32(12623u, 21u)])) + _wgslsmith_f_op_vec2_f32(-global0.c))), global0.d, firstLeadingBit(countOneBits(global0.e))));
    global0 = func_4(global0.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), 1000f, global0.c.x)), ~vec4<i32>(global0.d.x, countOneBits(min(-22412i, var_1.d.x)), var_1.d.x, -6985i), func_4(1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1312f * 260f), _wgslsmith_f_op_f32(global0.c.x * var_1.c.x), global0.c.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1003f, 1289f), vec3<f32>(-1000f, global0.c.x, -1677f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, -756f, global0.c.x), vec3<f32>(global0.c.x, -627f, -455f), vec3<bool>(global1[_wgslsmith_index_u32(var_1.a, 21u)], true, false))))), vec4<i32>(var_1.d.x, 7391i, countOneBits(max(global0.d.x, -13561i)), 0i), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, 43430u), global0.e >> (vec3<u32>(global0.a, 0u, var_1.e.x) % vec3<u32>(32u))), -firstLeadingBit(var_1.d), var_1.c, var_1.d << (firstTrailingBit(vec4<u32>(1u, 0u, 1u, global0.a)) % vec4<u32>(32u)), _wgslsmith_mod_vec3_u32(~var_1.e, vec3<u32>(global0.a, var_1.a, global0.a)))));
    global1 = array<bool, 21>();
    return func_4(var_1.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.x, 541f), -264f), _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(-global0.c.x)), 179f)), select(select(global0.d, ~(~global0.d), !vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(var_1.e.x, 27u)])), reverseBits(vec4<i32>(var_1.d.x, global0.d.x, min(2147483647i, 17105i), global0.b.x)), select(all(!vec2<bool>(global1[_wgslsmith_index_u32(10033u, 21u)], false)), global1[_wgslsmith_index_u32(u_input.a >> (firstLeadingBit(global0.e.x) % 32u), 21u)], global1[_wgslsmith_index_u32(30242u, 21u)])), Struct_1(u_input.a, _wgslsmith_div_vec4_i32(~var_1.d << (select(vec4<u32>(4294967295u, 61836u, global0.a, global0.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], true)) % vec4<u32>(32u)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.x, -2147483647i, -2147483647i, -9979i), global0.d, var_1.d)), _wgslsmith_f_op_vec2_f32(select(var_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(908f, -437f)), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 27u)])))), vec4<i32>(global0.d.x, global0.d.x, var_1.b.x, var_1.b.x) ^ -select(vec4<i32>(23895i, global0.d.x, -44488i, -27937i), var_1.b, false), vec3<u32>(min(var_1.e.x, ~u_input.a), 0u, _wgslsmith_dot_vec2_u32(global0.e.yy, vec2<u32>(var_1.e.x, var_1.a)))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(floor(-214f)), false)), -1539f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-234f, global0.c.x, arg_2.c.x) * vec3<f32>(arg_2.c.x, 1172f, 807f)))))), vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(arg_0 - global0.c.x), _wgslsmith_f_op_f32(-arg_2.c.x)));
    var var_1 = select(arg_3.d.xz, vec2<i32>(arg_3.b.x, arg_1.d.x << (~1u % 32u)), vec2<bool>(_wgslsmith_f_op_f32(-1000f - var_0.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -349f)), true));
    global0 = arg_1;
    global1 = array<bool, 21>();
    var var_2 = arg_3;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-global0.b);
    var var_1 = Struct_1(1u, -vec4<i32>(~firstTrailingBit(-1i), func_5(_wgslsmith_div_f32(-1000f, -279f), func_1(), func_1(), func_4(global0.d.x, vec3<f32>(global0.c.x, -1350f, 1262f), vec4<i32>(-2147483647i, var_0.x, 12374i, var_0.x), Struct_1(global0.e.x, global0.d, global0.c, vec4<i32>(-25672i, 12317i, global0.d.x, 6746i), global0.e))), -1i, _wgslsmith_div_i32(abs(2147483647i), ~29873i)), global0.c, _wgslsmith_div_vec4_i32(firstLeadingBit(~firstLeadingBit(vec4<i32>(var_0.x, 367i, 40403i, global0.b.x))), vec4<i32>(var_0.x, var_0.x, _wgslsmith_mod_i32(global0.d.x, -1i), -(global0.d.x >> (u_input.a % 32u)))), _wgslsmith_mod_vec3_u32(~global0.e, vec3<u32>(firstLeadingBit(global0.a | global0.a), 1u, reverseBits(firstLeadingBit(u_input.a)))));
    var var_2 = max(u_input.a, countOneBits(4294967295u));
    global0 = func_4(35055i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -1000f, 857f) - vec3<f32>(-1283f, global0.c.x, -257f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, var_1.c.x, global0.c.x))))), vec4<i32>(var_1.d.x, 1i, -53906i, var_0.x), func_4(-33757i, vec3<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(min(global0.c.x, 433f))))), global0.b >> (vec4<u32>(_wgslsmith_sub_u32(global0.a, 4294967295u), ~42301u, _wgslsmith_mult_u32(global0.a, 1u), 4294967295u >> (var_1.e.x % 32u)) % vec4<u32>(32u)), Struct_1(u_input.a, var_1.d, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(489f, -3266f)))), ~vec4<i32>(var_1.d.x, var_0.x, -13373i, -1i), vec3<u32>(1u, 4294967295u, var_1.a) >> ((vec3<u32>(44408u, u_input.a, var_1.e.x) | vec3<u32>(16409u, 0u, 28297u)) % vec3<u32>(32u)))));
    var var_3 = ~((global0.d.x & ((-34939i & var_0.x) & (var_1.b.x >> (global0.a % 32u)))) | -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-856f, var_1.c.x))))), global0.d.x, vec4<i32>(~(i32(-1i) * -var_1.d.x), global0.d.x, (var_0.x & -35064i) >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 1u), u_input.a | global0.a) % 32u), -firstTrailingBit(~var_0.x)), ~var_1.d.zyx);
}

