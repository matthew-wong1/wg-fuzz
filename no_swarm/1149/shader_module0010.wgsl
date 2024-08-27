struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-65680i), Struct_1(-19000i), Struct_1(7507i), Struct_1(i32(-2147483648)), Struct_1(-13034i), Struct_1(0i), Struct_1(0i), Struct_1(-9502i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(-38739i), Struct_1(3350i), Struct_1(-7880i), Struct_1(19166i), Struct_1(0i), Struct_1(-29977i), Struct_1(-1i), Struct_1(46435i), Struct_1(35849i), Struct_1(-18346i), Struct_1(-1i));

var<private> global2: vec4<u32> = vec4<u32>(5221u, 2159u, 36887u, 90263u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    global2 = ~(~(~(~vec4<u32>(2364u, global2.x, u_input.d, 107193u) << (~vec4<u32>(u_input.d, 5153u, 36784u, 13009u) % vec4<u32>(32u)))));
    var var_0 = Struct_1(-_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-41033i, 4014i), u_input.c ^ u_input.c, u_input.b.yx << (global2.zw % vec2<u32>(32u))), vec2<i32>(firstLeadingBit(u_input.c.x), firstLeadingBit(0i))));
    global2 = countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global2.x, global2.x, u_input.e.x), firstTrailingBit(vec4<u32>(3533u, 38076u, global2.x, 32872u))), ~13153u, ~4294967295u, ~(~1u)) & ~vec4<u32>(u_input.e.x >> (u_input.e.x % 32u), u_input.e.x, _wgslsmith_div_u32(global2.x, u_input.d), global2.x));
    var var_1 = _wgslsmith_clamp_u32(~1294u, 1u, 11425u);
    global0 = array<vec3<i32>, 21>();
    return _wgslsmith_dot_vec2_i32(u_input.c, ~u_input.b.zx);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(u_input.a);
    var var_1 = _wgslsmith_f_op_f32(abs(-1049f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1028f))))))));
    var var_2 = select(select(!select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), arg_1), !vec2<bool>(arg_1, arg_1), !arg_1), select(vec2<bool>(arg_1, false && arg_1), select(!vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), true), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(all(vec4<bool>(true, false, true, arg_1)), arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), !vec2<bool>(true, arg_1)), arg_1), select(!select(!vec2<bool>(false, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(false, false), false), all(vec3<bool>(false, true, false))), select(vec2<bool>(!arg_1, true), vec2<bool>(true, true), vec2<bool>(arg_1, arg_1)), !vec2<bool>(arg_1 == arg_1, true)));
    let var_3 = ~arg_0.a;
    return !vec4<bool>(arg_1, true, true, false);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = global1[_wgslsmith_index_u32(global2.x, 21u)];
    var var_1 = func_4(Struct_1(-1i), !(func_3() <= (~1i ^ (var_0.a ^ -30244i))), Struct_1(-2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, u_input.d, 96045u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 0u, global2.x, 1u), vec4<u32>(45501u, 1u, global2.x, 45487u))), _wgslsmith_dot_vec3_u32(select(reverseBits(vec3<u32>(1u, 1u, u_input.e.x)), vec3<u32>(51291u, u_input.e.x, u_input.e.x), true), ~vec3<u32>(global2.x, global2.x, global2.x))), 21u)]);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -218f), arg_1.x));
}

fn func_1() -> u32 {
    global0 = array<vec3<i32>, 21>();
    global0 = array<vec3<i32>, 21>();
    global0 = array<vec3<i32>, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-266f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1505f, -712f, true)), -312f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -511f), -817f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -432f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(313f * -1184f)) - 1704f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1078f, -587f)), _wgslsmith_f_op_f32(f32(-1f) * -1267f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -911f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-954f)), _wgslsmith_f_op_f32(sign(1468f)))))))));
    var var_1 = u_input.e.x;
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.e.zx), _wgslsmith_mod_vec2_u32(countOneBits(global2.xy >> (vec2<u32>(19155u, u_input.d) % vec2<u32>(32u))), u_input.e.yy)), countOneBits(~(~(~u_input.e.zy))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(firstTrailingBit(func_1()), u_input.d, u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(select(global2.x, 10154u, false) << (u_input.e.x % 32u), 0u, ~global2.x), vec3<u32>(firstTrailingBit(1u), global2.x, 0u)));
    let var_0 = -33799i;
    var var_1 = select(!all(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), true)), !(!(1u <= _wgslsmith_clamp_u32(4294967295u, 0u, global2.x))), func_4(Struct_1(-18543i), false, global1[_wgslsmith_index_u32(26333u, 21u)], Struct_1(37417i ^ var_0)).x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f * -679f)))), -894f);
    let var_3 = !(global2.x != _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(0u), 0u, reverseBits(u_input.e.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(45116u, u_input.d), vec2<u32>(u_input.e.x, 0u)) | _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(26476u, global2.x, 0u))));
    var var_4 = _wgslsmith_clamp_u32(0u, ~countOneBits(50361u), global2.x);
    var var_5 = true;
    global0 = array<vec3<i32>, 21>();
    var var_6 = ~_wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(25382u, global2.x, 64852u, 38291u), vec4<u32>(4294967295u, 1u, 31772u, global2.x))) | min(reverseBits(vec4<u32>(1u, 23543u, global2.x, u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 41430u, global2.x, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 41652u))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.x, u_input.d, global2.x), ~vec4<u32>(u_input.e.x, u_input.e.x, 14227u, u_input.e.x)), vec4<u32>(global2.x, 0u, 1u, global2.x) ^ (vec4<u32>(global2.x, global2.x, global2.x, u_input.d) >> (vec4<u32>(59534u, global2.x, 0u, 49411u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(_wgslsmith_clamp_u32(79759u, global2.x, global2.x), 1u, 1u, u_input.d)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, _wgslsmith_mult_u32(var_6.x, global2.x), ~4294967295u, global2.x << (18364u % 32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 1720u, 1u, 62416u), ~vec4<u32>(global2.x, 4294967295u, 22335u, global2.x))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, var_6.x, 0u, global2.x), vec4<u32>(28852u, var_6.x, global2.x, global2.x)))), _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-var_2.x))), 29249i, firstLeadingBit(~vec4<u32>(u_input.d, abs(u_input.d), _wgslsmith_mod_u32(global2.x, 17441u), u_input.e.x)));
}

