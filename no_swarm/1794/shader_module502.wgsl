struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14>;

var<private> global1: u32 = 1u;

var<private> global2: array<u32, 18>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(1340f, 22285i, false, true), Struct_1(-539f, 11442i, false, false), Struct_1(-1208f, -1i, false, true), Struct_1(1461f, 5883i, false, true), Struct_1(317f, -23959i, false, true), Struct_1(1243f, 2147483647i, true, false), Struct_1(-233f, 0i, false, true), Struct_1(459f, i32(-2147483648), false, false), Struct_1(734f, 22065i, false, true), Struct_1(124f, i32(-2147483648), true, false), Struct_1(-331f, 2147483647i, false, false), Struct_1(1731f, i32(-2147483648), true, true), Struct_1(823f, -55287i, false, false), Struct_1(-352f, 41157i, true, false), Struct_1(1000f, 1i, true, false), Struct_1(-1788f, 15657i, false, true), Struct_1(322f, 6029i, false, false), Struct_1(-1086f, 1i, true, true), Struct_1(-1442f, 0i, false, false), Struct_1(-421f, 30180i, false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    global3 = array<Struct_1, 20>();
    let var_0 = select(select(!select(!vec2<bool>(arg_0, arg_2.b.d), vec2<bool>(arg_2.a.d, false), true), select(!(!vec2<bool>(true, arg_1.c)), select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_2.b.d, true), false), select(vec2<bool>(arg_0, arg_2.b.c), vec2<bool>(false, true), false), all(vec3<bool>(true, false, arg_1.d))), !(!vec2<bool>(arg_2.b.c, true))), arg_2.a.c), select(vec2<bool>(all(vec4<bool>(arg_2.a.d, true, true, arg_1.c)), true), !select(vec2<bool>(false, false), vec2<bool>(arg_2.a.c, arg_1.c), !arg_0), vec2<bool>(false || all(vec3<bool>(true, arg_0, false)), select(all(vec3<bool>(true, true, arg_1.c)), true, arg_0))), !arg_2.b.c);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.d.x, 64842u, ~abs(u_input.b)), 18u)];
    var var_2 = _wgslsmith_mod_i32(firstLeadingBit(i32(-1i) * -2147483647i), -31526i);
    let var_3 = Struct_2(arg_2.b, Struct_1(arg_1.a, ~(1i & arg_1.b) ^ ~arg_3, false, all(!vec4<bool>(true, arg_1.d, arg_1.d, false))), reverseBits(arg_2.c), arg_2.d);
    return -reverseBits(vec4<i32>(1i << (0u % 32u), 1i ^ -arg_3, countOneBits(countOneBits(-73919i)), arg_2.c.x));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(~_wgslsmith_div_i32(0i, 47559i), u_input.a), 13821i), _wgslsmith_sub_i32(firstTrailingBit(28123i), _wgslsmith_mult_i32(0i, u_input.a) << (~4294967295u % 32u)));
    var_0 = ~u_input.a & u_input.a;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 27332i, _wgslsmith_sub_i32(-u_input.a, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-65984i, 1424i, -5847i, 12961i), vec4<i32>(17843i, u_input.a, -2147483647i, u_input.a)), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)))), firstTrailingBit(reverseBits(func_3(true, Struct_1(153f, 75499i, true, true), Struct_2(global3[_wgslsmith_index_u32(1u, 20u)], Struct_1(-588f, u_input.a, true, true), vec3<i32>(66544i, -3413i, u_input.a), vec4<u32>(30491u, u_input.b, global2[_wgslsmith_index_u32(4404u, 18u)], u_input.b)), -11436i))) & firstTrailingBit(vec4<i32>(1i, 2147483647i, ~(-4577i), u_input.a & -30334i)));
}

fn func_1() -> f32 {
    var var_0 = vec3<i32>(func_2(), -16117i, _wgslsmith_mod_i32(17882i, 16538i));
    var_0 = vec3<i32>(-var_0.x, -_wgslsmith_mult_i32(countOneBits(firstTrailingBit(2147483647i)), -firstTrailingBit(u_input.a)), var_0.x);
    let var_1 = vec4<i32>(u_input.a, _wgslsmith_add_i32(abs(firstLeadingBit(countOneBits(2147483647i))), -1i), -2147483647i, _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(~var_0.xx, -vec2<i32>(u_input.a, 29654i)), (func_3(true, Struct_1(772f, u_input.a, false, false), Struct_2(Struct_1(-1000f, u_input.a, false, true), global3[_wgslsmith_index_u32(u_input.b, 20u)], vec3<i32>(23830i, u_input.a, u_input.a), vec4<u32>(u_input.b, u_input.b, u_input.b, 22999u)), 9218i).xx | vec2<i32>(0i, u_input.a)) & (~var_0.zx ^ _wgslsmith_add_vec2_i32(var_0.yz, vec2<i32>(u_input.a, 0i)))));
    let var_2 = _wgslsmith_f_op_f32(select(1384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1155f, -1105f, true))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-660f)) + _wgslsmith_f_op_f32(-213f * -1000f))))), any(vec2<bool>(!any(vec3<bool>(true, true, true)), true))));
    let var_3 = global3[_wgslsmith_index_u32(4294967295u, 20u)];
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1115f - var_2), -411f, false)))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = reverseBits(select(~reverseBits(vec4<i32>(u_input.a, u_input.a, -1i, 0i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-58316i, u_input.a, u_input.a, -2147483647i), vec4<i32>(~1i, _wgslsmith_mult_i32(u_input.a, u_input.a), 1i, 43107i)), !vec4<bool>(arg_1.x, true, true, any(vec2<bool>(arg_1.x, true)))));
    var var_1 = 1411f;
    let var_2 = all(!arg_1);
    global1 = ~1u;
    let var_3 = (var_0.x & 1i) >> (arg_0.x % 32u);
    return Struct_1(_wgslsmith_f_op_f32(ceil(-214f)), u_input.a, true, !(_wgslsmith_clamp_i32(var_0.x ^ var_3, -23724i, ~var_0.x) < -5365i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(-29035i)) & u_input.a;
    global0 = array<vec2<u32>, 14>();
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(sign(-1000f)) <= -691f;
    let var_3 = Struct_2(func_4(~vec3<u32>(~1u, 1u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 18u)], 14340u)), vec4<bool>(true, false, _wgslsmith_f_op_f32(func_1()) < _wgslsmith_f_op_f32(round(360f)), any(vec4<bool>(true, false, var_1, var_2)) | any(vec4<bool>(var_1, var_2, var_2, false)))), global3[_wgslsmith_index_u32(~u_input.b, 20u)], _wgslsmith_mod_vec3_i32((-vec3<i32>(u_input.a, var_0, u_input.a) >> (~vec3<u32>(u_input.b, u_input.b, 28271u) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, 7343i, u_input.a), vec3<i32>(u_input.a, u_input.a, var_0)), countOneBits(vec3<i32>(-2147483647i, 2147483647i, -2147483647i))), vec3<i32>(u_input.a, func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], 0u, 4294967295u)), vec4<bool>(true, true, true, true)).b, firstTrailingBit(-13798i))), ~max(firstLeadingBit(vec4<u32>(4294967295u, 5272u, 0u, global2[_wgslsmith_index_u32(u_input.b, 18u)])), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(55062u, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 18u)]), vec3<u32>(global2[_wgslsmith_index_u32(7745u, 18u)], 0u, 32405u)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(84666u, 18u)], 18u)], 18u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), 18u)], select(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)], var_2))));
    var var_4 = -140f;
    let var_5 = select(vec2<bool>(!(!(false & var_3.b.d)), true), vec2<bool>(u_input.b <= max(0u, 17217u), var_3.a.a != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1169f, var_3.a.a))), false);
    var var_6 = 17968i;
    let var_7 = func_4(firstTrailingBit(~vec3<u32>(4294967295u, 14205u, var_3.d.x)), !(!vec4<bool>(all(vec4<bool>(var_2, false, var_2, false)), true, true, var_1 != false)));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

