struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(30678u, 1u, 0u, 51682u, 0u, 25071u, 4294967295u, 1u, 23231u, 4294967295u, 0u, 15657u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, _wgslsmith_clamp_i32(arg_0, u_input.d, u_input.a), _wgslsmith_add_i32(21030i, _wgslsmith_mult_i32(-18402i, arg_0)), -2147483647i), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(arg_0, 7786i, u_input.e, u_input.e) ^ vec4<i32>(-2147483647i, 59522i, arg_0, arg_0)), -vec4<i32>(arg_0, 2147483647i, -2147483647i, arg_0) & select(vec4<i32>(0i, arg_0, u_input.a, arg_0), vec4<i32>(u_input.d, -2147483647i, arg_0, arg_0), false))), reverseBits(u_input.e));
    global0 = array<u32, 12>();
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(~max(u_input.e, -1i), 1i), arg_0);
    var var_2 = Struct_1(-u_input.a > -_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, var_0), u_input.e), 13636i, -(vec2<i32>(arg_0, arg_0) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.e), vec2<i32>(u_input.d, var_0))) ^ ~vec2<i32>(_wgslsmith_add_i32(var_0, u_input.a), countOneBits(u_input.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(895f * 448f), _wgslsmith_f_op_f32(ceil(-991f))) - 1f) < 1f, -79362i, _wgslsmith_clamp_vec2_i32(var_2.c >> (~(~vec2<u32>(41363u, 12263u)) % vec2<u32>(32u)), -(_wgslsmith_mod_vec2_i32(var_2.c, var_2.c) | (vec2<i32>(-19908i, u_input.c) << (vec2<u32>(55239u, 0u) % vec2<u32>(32u)))), max(vec2<i32>(u_input.e, 0i), _wgslsmith_sub_vec2_i32(var_2.c, vec2<i32>(6643i, u_input.d))) << (~vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], 4294967295u) % vec2<u32>(32u))));
    return !(select(true, var_3.a, true) || true);
}

fn func_2(arg_0: f32) -> vec2<i32> {
    global0 = array<u32, 12>();
    var var_0 = ~global0[_wgslsmith_index_u32(~52533u, 12u)];
    let var_1 = _wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(-1i, 1i, u_input.d, -11934i)), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, 1i, u_input.d), vec4<i32>(u_input.a, 8812i, u_input.d, u_input.a)) ^ vec4<i32>(1i, 31178i, u_input.d, 2147483647i)) & ((-vec4<i32>(2147483647i, u_input.d, 2147483647i, u_input.e) | vec4<i32>(u_input.c, u_input.d, u_input.a, 70424i)) & vec4<i32>(_wgslsmith_mod_i32(u_input.c, 21050i), 2279i ^ u_input.c, u_input.c << (global0[_wgslsmith_index_u32(u_input.b, 12u)] % 32u), ~40683i)));
    var_0 = ~(~0u);
    let var_2 = Struct_1(false & func_3(-firstLeadingBit(var_1.x)), -(~(-1i)), var_1.yy);
    return vec2<i32>(firstLeadingBit(-23695i), var_2.b);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    let var_0 = Struct_1(9386i == arg_3, i32(-1i) * -2147483647i, reverseBits(_wgslsmith_mod_vec2_i32(func_2(_wgslsmith_f_op_f32(-arg_0)), ~(~vec2<i32>(-1i, 0i)))));
    global0 = array<u32, 12>();
    let var_1 = var_0;
    let var_2 = select(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_1), vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(1u, 1u)) << (~(~vec2<u32>(0u, arg_1)) % vec2<u32>(32u)), vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 12u)]), (true | (true && var_1.a)) | true) & firstLeadingBit(min(vec2<u32>(global0[_wgslsmith_index_u32(44763u, 12u)], firstLeadingBit(arg_1)), ~vec2<u32>(93219u, 0u)));
    var var_3 = var_1;
    return 45888u;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = ~firstLeadingBit(~firstLeadingBit(vec3<i32>(-18419i, -1i, 0i)) >> (~vec3<u32>(1u, 4294967295u, arg_0.x) % vec3<u32>(32u)));
    var var_2 = ~abs(vec2<i32>(i32(-1i) * -43713i, _wgslsmith_mod_i32(20309i, -26165i) & -arg_3.b));
    var_2 = -_wgslsmith_mod_vec2_i32(-reverseBits(arg_3.c), var_0.c);
    global0 = array<u32, 12>();
    return Struct_1(true, _wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(1i, 18290i, 1i, 9178i))), (vec4<i32>(71819i, 1i, -10403i, 1i) & vec4<i32>(9465i, arg_3.b, var_1.x, -2147483647i)) >> (min(vec4<u32>(global0[_wgslsmith_index_u32(0u, 12u)], 70137u, 0u, 4294967295u), vec4<u32>(arg_2.x, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(5792u, 12u)], 125392u)) % vec4<u32>(32u))) >> (((_wgslsmith_sub_u32(arg_2.x, 73258u) << ((1u & arg_2.x) % 32u)) ^ ~8441u) % 32u), max(vec2<i32>(abs(abs(var_0.b)), _wgslsmith_sub_i32(var_0.b, arg_1.b)), ~var_1.zz & max(vec2<i32>(arg_1.c.x, u_input.a), vec2<i32>(var_2.x, -4138i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 12>();
    var var_0 = func_4(~vec3<u32>(u_input.b, 1u, func_1(599f, u_input.b, vec4<i32>(u_input.c, u_input.e, u_input.d, u_input.c), u_input.d) >> (56285u % 32u)), Struct_1(false, -25360i, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.d), vec2<i32>(u_input.c, -2147483647i), vec2<i32>(-2147483647i, u_input.a)), reverseBits(vec2<i32>(u_input.a, 0i))) << (~countOneBits(vec2<u32>(45005u, 1u)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(44665u, 12u)]))), ~((vec2<u32>(1u, u_input.b) & vec2<u32>(54157u, global0[_wgslsmith_index_u32(u_input.b, 12u)])) | (vec2<u32>(global0[_wgslsmith_index_u32(0u, 12u)], 4294967295u) | vec2<u32>(u_input.b, u_input.b)))), Struct_1(true, max(_wgslsmith_mult_i32(~0i, u_input.e), ~_wgslsmith_sub_i32(u_input.a, -26598i)), reverseBits(vec2<i32>(0i & u_input.d, reverseBits(19885i)))));
    var_0 = func_4(vec3<u32>(0u, select(~countOneBits(u_input.b), 1u, !any(vec3<bool>(true, true, true))), ~(~countOneBits(23116u))), func_4(~vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(6109u, 12u)], 54757u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), vec3<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(1u, 12u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17902u, 12u)] >> (14166u % 32u), 12u)]), Struct_1(all(vec4<bool>(false, false, true, var_0.a)) || false, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(29077i, 1i, -4756i, 0i), vec4<i32>(u_input.a, -2147483647i, 0i, var_0.b), vec4<i32>(3113i, u_input.d, u_input.e, var_0.c.x)), select(vec4<i32>(-3583i, -10034i, -71252i, -2147483647i), vec4<i32>(u_input.d, var_0.c.x, -1i, u_input.e), var_0.a)), ~max(var_0.c, vec2<i32>(-1i, -2147483647i))), vec2<u32>(4294967295u, 0u), func_4(vec3<u32>(1u, 1u, 1u), func_4(~vec3<u32>(global0[_wgslsmith_index_u32(1110u, 12u)], 1611u, 0u), func_4(vec3<u32>(u_input.b, 12855u, 4294967295u), Struct_1(var_0.a, u_input.d, var_0.c), vec2<u32>(1u, global0[_wgslsmith_index_u32(25263u, 12u)]), Struct_1(var_0.a, 57193i, vec2<i32>(u_input.d, u_input.a))), ~vec2<u32>(4294967295u, 1u), func_4(vec3<u32>(global0[_wgslsmith_index_u32(47157u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), Struct_1(false, var_0.b, vec2<i32>(var_0.c.x, 0i)), vec2<u32>(global0[_wgslsmith_index_u32(0u, 12u)], 28982u), Struct_1(var_0.a, 0i, var_0.c))), ~select(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 12u)]), vec2<u32>(u_input.b, u_input.b), vec2<bool>(var_0.a, false)), func_4(firstLeadingBit(vec3<u32>(0u, u_input.b, 19416u)), func_4(vec3<u32>(global0[_wgslsmith_index_u32(27593u, 12u)], 4294967295u, global0[_wgslsmith_index_u32(29598u, 12u)]), Struct_1(true, u_input.c, var_0.c), vec2<u32>(u_input.b, 37670u), Struct_1(false, 2147483647i, var_0.c)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 12u)]), func_4(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 12u)], 0u), Struct_1(var_0.a, u_input.d, var_0.c), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u), Struct_1(true, var_0.c.x, var_0.c))))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, u_input.b), ~vec2<u32>(u_input.b, 17803u), true), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), ~vec2<u32>(global0[_wgslsmith_index_u32(13980u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]))) << (firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 1u) & vec2<u32>(u_input.b, u_input.b), min(vec2<u32>(81160u, 0u), vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(58956u, 12u)])))) % vec2<u32>(32u)), Struct_1(var_0.a, var_0.b, vec2<i32>(~0i & var_0.c.x, 5408i)));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1655f) - -1146f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-949f, 1731f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-418f * -383f)))))));
    var_0 = func_4(vec3<u32>(select(~u_input.b, ~u_input.b, all(vec2<bool>(true, true))), u_input.b | 1u, u_input.b), func_4(((vec3<u32>(global0[_wgslsmith_index_u32(1u, 12u)], 5880u, global0[_wgslsmith_index_u32(u_input.b, 12u)]) >> (vec3<u32>(32184u, u_input.b, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(global0[_wgslsmith_index_u32(27870u, 12u)], u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)]) % vec3<u32>(32u))) << (max(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(44676u, 12u)]) >> (vec3<u32>(1u, u_input.b, 55724u) % vec3<u32>(32u))) % vec3<u32>(32u)), func_4(~_wgslsmith_add_vec3_u32(vec3<u32>(76391u, u_input.b, u_input.b), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22051u, 12u)], 12u)], 12u)], 4294967295u, 1u)), Struct_1(var_0.a & var_0.a, var_0.b >> (global0[_wgslsmith_index_u32(20289u, 12u)] % 32u), -vec2<i32>(-2147483647i, u_input.d)), firstLeadingBit(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], u_input.b)), Struct_1(!var_0.a, _wgslsmith_sub_i32(var_0.c.x, -1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-275i, 3095i), vec2<i32>(2147483647i, 1i)))), ~(~vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 12u)]) >> (abs(vec2<u32>(u_input.b, 16438u)) % vec2<u32>(32u))), Struct_1(global0[_wgslsmith_index_u32(~1u, 12u)] == (u_input.b | 25957u), -17590i, vec2<i32>(_wgslsmith_sub_i32(41733i, 2147483647i), -21371i))), ~select(~(~vec2<u32>(1u, u_input.b)), vec2<u32>(_wgslsmith_sub_u32(u_input.b, 0u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), func_3(abs(u_input.c))), func_4(abs(~(vec3<u32>(global0[_wgslsmith_index_u32(10708u, 12u)], u_input.b, global0[_wgslsmith_index_u32(u_input.b, 12u)]) | vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(0u, 12u)], 57715u))), func_4(~(~vec3<u32>(14039u, u_input.b, 29566u)), Struct_1(!var_0.a, 1i, vec2<i32>(u_input.a, var_0.b)), abs(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], u_input.b), false)), Struct_1(!var_0.a, _wgslsmith_mult_i32(u_input.e, var_0.b), var_0.c)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(37045u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 12u)])), u_input.b) ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 19475u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 10456u), vec2<u32>(39950u, global0[_wgslsmith_index_u32(0u, 12u)]))), Struct_1(true, -firstLeadingBit(u_input.a), vec2<i32>(~var_0.b, -u_input.e))));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~global0[_wgslsmith_index_u32(~u_input.b, 12u)], 12340u), min(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b, 40225u)), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89146u, 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91597u, 12u)], 12u)], 32113u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(25867u, 12u)], 85099u, 4294967295u), vec3<u32>(25270u, 8348u, 1u)))) >= _wgslsmith_mod_u32(u_input.b, u_input.b);
    var_3 = any(!(!select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), vec2<bool>(false, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.d, 1i, 50703i), vec4<i32>(4816i, -15520i, 0i, u_input.c))), var_0.b));
}

