struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<bool, 6> = array<bool, 6>(false, true, true, true, false, true);

var<private> global2: u32 = 21937u;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = Struct_1((select(global1[_wgslsmith_index_u32(99656u, 6u)], global1[_wgslsmith_index_u32(select(u_input.a, u_input.a, true), 6u)], true) | all(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 6u)], false, true))) == any(vec2<bool>(!global1[_wgslsmith_index_u32(u_input.a, 6u)], true)), vec2<u32>(_wgslsmith_div_u32(select(select(4294967295u, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 6u)]), 19019u, !global1[_wgslsmith_index_u32(4294967295u, 6u)]), u_input.a), u_input.a), vec2<f32>(1f, 1f), firstTrailingBit(0u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(108f)), 1185f)));
    let var_2 = ~(1u | (((u_input.a | u_input.a) << (_wgslsmith_mult_u32(44422u, 0u) % 32u)) << (_wgslsmith_mod_u32(var_0.b.x, 99210u) % 32u)));
    var var_3 = Struct_1(!select(global1[_wgslsmith_index_u32(~var_0.b.x, 6u)] & all(vec4<bool>(var_0.a, var_0.a, global1[_wgslsmith_index_u32(4294967295u, 6u)], false)), global1[_wgslsmith_index_u32(reverseBits(abs(59542u)), 6u)], false), select(_wgslsmith_add_vec2_u32(var_0.b, _wgslsmith_add_vec2_u32(vec2<u32>(19054u, 4294967295u), var_0.b << (vec2<u32>(0u, 167u) % vec2<u32>(32u)))), var_0.b, !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(19748u, 6u)], true)), !vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)]), select(vec2<bool>(var_0.a, false), vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.a, 6u)]))), var_0.c, firstTrailingBit(var_2) >> (var_0.b.x % 32u));
    var var_4 = Struct_1(false, vec2<u32>(31542u, countOneBits(1514u)), _wgslsmith_f_op_vec2_f32(-var_3.c), ~(~30752u));
    return var_3.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = select(!(!select(!vec4<bool>(arg_1.a, true, false, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(u_input.a, 6u)], arg_0.x), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 6u)], true, arg_1.a, arg_1.a), vec4<bool>(true, false, true, true), false))), vec4<bool>(func_3(), arg_1.a, arg_1.a, !(_wgslsmith_mult_u32(arg_1.d, arg_1.b.x) != _wgslsmith_add_u32(64195u, arg_1.b.x))), true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(221f))) * _wgslsmith_f_op_f32(step(arg_1.c.x, _wgslsmith_f_op_f32(-arg_1.c.x)))));
    let var_2 = Struct_1(all(vec2<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, arg_1.d), 6u)])), vec2<u32>(arg_1.d, arg_1.d), arg_1.c, min(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b.x, 1u, 0u, 70421u), ~(~vec4<u32>(6403u, arg_1.d, arg_1.d, arg_1.b.x))), ~(~reverseBits(arg_1.b.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + -187f)), _wgslsmith_f_op_f32(-1116f + -2085f))), -335f, -1965f));
    global2 = min(~_wgslsmith_div_u32(_wgslsmith_mod_u32(45180u, var_2.b.x ^ 18262u), _wgslsmith_dot_vec3_u32(vec3<u32>(39375u, 1290u, 24996u) << (vec3<u32>(4294967295u, var_2.d, 4294967295u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(36293u, var_2.b.x, arg_1.b.x), vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(var_2.b.x, 1u, 4294967295u)))), ~firstTrailingBit(~(var_2.b.x << (56978u % 32u))));
    return 92308u;
}

fn func_1(arg_0: i32) -> vec2<f32> {
    var var_0 = select(vec3<bool>(u_input.a > _wgslsmith_mod_u32(u_input.a, func_2(vec3<bool>(true, global1[_wgslsmith_index_u32(4998u, 6u)], false), Struct_1(false, vec2<u32>(1u, u_input.a), vec2<f32>(1000f, 266f), u_input.a))), !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, 4294967295u, u_input.a)), select(vec3<u32>(u_input.a, u_input.a, 4577u), vec3<u32>(82715u, u_input.a, 0u), vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)]))), 6u)], true), select(select(select(vec3<bool>(true, false, true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(38131u, 6u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)]), global1[_wgslsmith_index_u32(36696u, 6u)]), global1[_wgslsmith_index_u32(u_input.a, 6u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], false, true), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(52930u, 6u)], false)), true), vec3<bool>(false, false, !global1[_wgslsmith_index_u32(~81689u, 6u)]), !(!(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 6u)])))), true);
    var var_1 = reverseBits(reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~4294967295u, _wgslsmith_mod_u32(73588u, 23122u), abs(u_input.a)))) ^ ~(~(select(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false) >> (~vec4<u32>(u_input.a, 51178u, u_input.a, u_input.a) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1452f, 435f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1337f, 308f) - vec2<f32>(1000f, -1498f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1616f, 411f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-814f, 203f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 848f) - vec2<f32>(-1000f, -556f)), all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_1.x, 6u)])))))), select(var_0.yy, vec2<bool>(var_0.x, true), true)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = all(arg_1);
    var var_1 = Struct_1(!all(vec3<bool>(arg_1.x, arg_2.a, arg_2.a)), countOneBits(vec2<u32>(~16251u, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x - _wgslsmith_f_op_f32(-arg_2.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, arg_2.b.x, 12690u), ~(~vec4<u32>(u_input.a, 1u, 32516u, 109616u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 1u, u_input.a, arg_0), vec4<u32>(u_input.a, 1u, 0u, 4294967295u)) % vec4<u32>(32u)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x));
    global2 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.x, 42492u), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~countOneBits(arg_3.b), reverseBits(arg_3.b)), vec2<u32>(reverseBits(arg_0), _wgslsmith_add_u32(arg_3.b.x, u_input.a)) | countOneBits(~arg_3.b)));
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_2.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, _wgslsmith_f_op_f32(var_1.c.x + 360f)))));
    return i32(-1i) * -select(1i >> ((arg_3.d << (var_1.d % 32u)) % 32u), -2147483647i, global0[_wgslsmith_index_u32(~arg_0, 12u)] == ~12602i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], true, global1[_wgslsmith_index_u32(89626u, 6u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 6u)]), false))));
    var var_1 = func_4(31423u, var_0.yz, Struct_1(all(vec2<bool>(true, var_0.x)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(24072u, 1u), vec2<u32>(53095u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(49991u, u_input.a), vec2<u32>(4294967295u, 4799u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, 1782f)) - _wgslsmith_f_op_vec2_f32(func_1(2147483647i))), 153844u), Struct_1(true, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 96433u), vec2<u32>(60514u, u_input.a)) >> (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 2582f))), _wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(u_input.a, 12u)]))), 41083u)) & 13197i;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1835f, 294f, -1000f), vec3<f32>(-1608f, 865f, -1285f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2322f, 2119f, -438f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1229f, -950f, -856f), vec3<f32>(-827f, -1474f, -365f), global1[_wgslsmith_index_u32(1u, 6u)]))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(-832f, -382f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(927f - _wgslsmith_f_op_f32(trunc(324f))) * _wgslsmith_f_op_f32(f32(-1f) * -1263f)))));
    global0 = array<i32, 12>();
    let var_3 = Struct_1(false, vec2<u32>(~(~u_input.a), u_input.a), vec2<f32>(var_2.x, _wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(u_input.a, 12u)])).x), firstTrailingBit(abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 0u), 1u))));
    let var_4 = var_2;
    var var_5 = var_3;
    var var_6 = var_3;
    var var_7 = vec4<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_mult_i32(firstTrailingBit(4312i & -global0[_wgslsmith_index_u32(4294967295u, 12u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~max(72515u, 0u), var_3.d), 12u)]), min(-global0[_wgslsmith_index_u32(~4294967295u, 12u)], 1i), -19541i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(var_7.yy ^ countOneBits(min(vec2<i32>(2147483647i, var_7.x), vec2<i32>(-62038i, global0[_wgslsmith_index_u32(2921u, 12u)]))), firstTrailingBit(~(~var_7.xz))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_2, var_4), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4 * var_4)) + vec3<f32>(_wgslsmith_f_op_f32(floor(167f)), _wgslsmith_f_op_f32(step(var_3.c.x, -1001f)), _wgslsmith_f_op_f32(-717f * var_2.x))))), ~vec3<u32>(firstTrailingBit(~68287u), ~(~50365u), _wgslsmith_mod_u32(51921u, ~49068u)));
}

