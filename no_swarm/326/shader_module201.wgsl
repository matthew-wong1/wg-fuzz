struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(25288i, 44465i);

var<private> global1: array<Struct_2, 25>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<f32>, 2>;

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    global0 = ~(vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, global2.a, 2147483647i, arg_0)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global4.a, -29477i, -1i), vec4<i32>(u_input.b, -52844i, 19775i, u_input.b), vec4<i32>(0i, -7439i, -47163i, 2147483647i))), (20135i << (0u % 32u)) >> (u_input.c.x % 32u)) >> (vec2<u32>(~u_input.a >> (~u_input.d.x % 32u), u_input.c.x) % vec2<u32>(32u)));
    global1 = array<Struct_2, 25>();
    let var_0 = global4.b.xy;
    var var_1 = global4.b.yy;
    var var_2 = -vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -global4.a, _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(global0.x, global0.x))), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(-2147483647i, arg_0))), -(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, global2.a, arg_0, global2.a), vec4<i32>(-2147483647i, -31908i, global2.a, -2147483647i)) ^ (global0.x | -31265i)));
    return u_input.c.x;
}

fn func_2() -> vec4<u32> {
    global0 = vec2<i32>(~global2.a, global2.a);
    let var_0 = -473f;
    return vec4<u32>(~_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec3_u32(u_input.d, u_input.c.wzz)), (u_input.c.x & 67170u) | ~0u), u_input.a, _wgslsmith_mult_u32(abs(~22323u) << (~firstTrailingBit(4294967295u) % 32u), abs(~(~55730u))), select(_wgslsmith_clamp_u32(29124u ^ u_input.c.x, ~29550u, func_3(global4.a)) | _wgslsmith_dot_vec3_u32(u_input.c.zyw, u_input.c.zxx | u_input.c.yxy), u_input.d.x, true));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    global2 = Struct_1(~(countOneBits(2147483647i) & abs(u_input.b)) ^ global0.x, vec4<bool>(global2.b.x, true, true, !any(!arg_1.www)));
    let var_0 = vec3<i32>(global0.x, ~max(-global0.x, i32(-1i) * -15931i) | u_input.b, _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(global2.a, -32734i, global4.a, global2.a), vec4<i32>(global0.x, 2147483647i, 2147483647i, -1i), arg_1), _wgslsmith_add_vec4_i32(vec4<i32>(global4.a, global0.x, global4.a, global4.a), vec4<i32>(-27698i, 11002i, 73968i, global2.a))), -106925i, _wgslsmith_clamp_i32(-(~global2.a), 2005i, -41047i | countOneBits(u_input.b))));
    global0 = var_0.zz;
    global2 = Struct_1(12286i, vec4<bool>(true, all(vec4<bool>(59389u == u_input.c.x, true, global2.b.x, any(global2.b))), global2.b.x, any(global2.b) & true));
    global3 = array<vec2<f32>, 2>();
    return Struct_2(Struct_1(min(min(var_0.x, firstTrailingBit(global0.x)), 27072i), select(!vec4<bool>(false, global4.b.x, true, global4.b.x), vec4<bool>(all(vec2<bool>(global2.b.x, true)), false | arg_1.x, !global4.b.x, arg_1.x), ~arg_0.x >= arg_0.x)), true, max(_wgslsmith_dot_vec4_u32(arg_0, ~(~vec4<u32>(4294967295u, 4294967295u, 1u, 0u))), ~_wgslsmith_div_u32(arg_0.x | 1u, u_input.a)), Struct_1(u_input.b, select(select(select(arg_1, vec4<bool>(global2.b.x, global2.b.x, true, false), global4.b.x), !vec4<bool>(global4.b.x, global4.b.x, global2.b.x, false), vec4<bool>(global2.b.x, false, false, false)), !select(arg_1, global2.b, arg_1.x), select(vec4<bool>(global2.b.x, true, global4.b.x, global2.b.x), vec4<bool>(global4.b.x, false, global2.b.x, false), true))), Struct_1(abs(global4.a), select(!(!vec4<bool>(true, global2.b.x, global4.b.x, false)), !(!vec4<bool>(false, global2.b.x, true, true)), global2.b)));
}

fn func_1() -> Struct_2 {
    return func_4(func_2(), global4.b, ~max(~_wgslsmith_mult_u32(u_input.d.x, 1u), 4294967295u));
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = u_input.d.zz;
    let var_1 = vec4<i32>(arg_0.d.a, -10529i, ~(-6733i) >> (u_input.c.x % 32u), -(~(-16179i)) & (_wgslsmith_sub_i32(u_input.b, -global0.x) >> (arg_0.c % 32u)));
    var var_2 = Struct_2(Struct_1(27065i, func_1().a.b), false, min(firstLeadingBit(51803u), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(73221u, arg_0.c, 22526u), vec3<u32>(var_0.x, var_0.x, arg_0.c), global4.b.zyw), ~func_2().yxy)), func_4(u_input.c, func_4(u_input.c, vec4<bool>(global2.b.x, true, false, !global2.b.x), 0u).d.b, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_0.c, 47783u, arg_0.c) >> (u_input.d % vec3<u32>(32u))), u_input.c.yww)).d, arg_0.d);
    let var_3 = (i32(-1i) * -(~abs(var_1.x))) << (4974u % 32u);
    global4 = func_1().a;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(abs(max(4294967295u & u_input.a, abs(u_input.a))) == func_5(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-255f))))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-969f, -629f)), _wgslsmith_f_op_f32(select(-1331f, _wgslsmith_f_op_f32(f32(-1f) * -523f), true)), all(global4.b.xwz) && global4.b.x)));
    global3 = array<vec2<f32>, 2>();
    var var_1 = -17337i;
    var_0 = global4.b.zy;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1195f, -1034f), -2222f, _wgslsmith_f_op_f32(378f * 1265f), _wgslsmith_f_op_f32(1287f + -1140f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1043f, 760f, -207f), vec4<f32>(770f, -1100f, -1708f, 287f), global4.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(min(379f, -524f)), _wgslsmith_f_op_f32(-1435f - 1912f), -183f, _wgslsmith_f_op_f32(-1280f - 1526f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1255f, -752f, 911f, 191f) * vec4<f32>(-367f, -1180f, -1000f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1170f, 1692f, 601f, 258f) - vec4<f32>(-160f, 288f, -358f, -331f)))))));
    let var_3 = true;
    let var_4 = ~(u_input.a | func_5(global1[_wgslsmith_index_u32(u_input.c.x, 25u)]));
    global1 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(func_2().xww, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 12325u, 4619u), vec3<u32>(var_4, 1u, 0u)) ^ vec3<u32>(var_4, 18043u, 4294967295u), vec3<bool>(!global4.b.x, var_2.x <= -1221f, all(global4.b.xwy))), firstLeadingBit(~_wgslsmith_clamp_u32(1u, ~2628u, ~u_input.d.x)), 7498u | _wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(~u_input.c.x, min(var_4, 39333u))));
}

