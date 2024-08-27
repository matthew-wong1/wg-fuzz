struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(4294967295u, 4294967295u, 0u, 16188u), vec4<u32>(64670u, 24986u, 119685u, 4294967295u), vec4<u32>(4294967295u, 32228u, 18051u, 1u), vec4<u32>(7637u, 0u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(0u, 57468u, 4294967295u, 1u), vec4<u32>(1u, 4474u, 10838u, 0u), vec4<u32>(16235u, 26975u, 14106u, 6820u), vec4<u32>(4294967295u, 65195u, 47343u, 0u), vec4<u32>(0u, 4143u, 13811u, 80636u), vec4<u32>(1u, 19606u, 0u, 44739u), vec4<u32>(14380u, 4847u, 1u, 47685u));

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global4 = Struct_1((_wgslsmith_clamp_u32(53057u, 17633u, abs(18688u)) < _wgslsmith_dot_vec4_u32(u_input.a >> (u_input.a % vec4<u32>(32u)), u_input.a)) || ((true | any(vec4<bool>(global2.c.x, false, global4.b.x, false))) != all(vec3<bool>(global2.c.x, true, global4.a))), global2.b, global4.c, vec4<i32>(global4.d.x, -(~5700i), _wgslsmith_add_i32(-4440i, global4.d.x), global4.d.x));
    let var_0 = ~(u_input.b ^ (_wgslsmith_div_u32(4294967295u, min(46515u, u_input.a.x)) << (~_wgslsmith_mult_u32(1u, 1540u) % 32u)));
    var var_1 = select(u_input.a.x, ~(firstTrailingBit(u_input.b) << ((4294967295u ^ var_0) % 32u)) & ~_wgslsmith_clamp_u32(0u, 34922u, 1u), any(select(select(vec4<bool>(global4.b.x, global2.b.x, false, global2.a), vec4<bool>(global2.b.x, global2.a, global4.c.x, false), vec4<bool>(global4.b.x, true, global2.c.x, false)), !vec4<bool>(global4.b.x, global2.b.x, global2.b.x, global2.a), select(!vec4<bool>(global4.c.x, global2.c.x, false, global2.a), !vec4<bool>(global4.c.x, global4.a, global2.b.x, false), !vec4<bool>(true, true, global4.a, true)))));
    global1 = array<vec2<bool>, 8>();
    global0 = array<vec4<u32>, 12>();
    return global4.d.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.d.xzy, vec3<i32>(arg_0.d.x, 1i, global4.d.x)), min(global4.d.wxw, vec3<i32>(abs(max(arg_0.d.x, 13971i)), func_3() << (select(u_input.a.x, u_input.a.x, global2.b.x) % 32u), 1i)));
    let var_1 = any(!arg_0.b);
    let var_2 = Struct_1(all(select(!select(vec3<bool>(true, true, false), arg_0.b, vec3<bool>(true, var_1, true)), vec3<bool>(global2.c.x, true, false || global2.c.x), arg_0.b)), select(vec3<bool>(arg_0.c.x || false, true, true), !(!vec3<bool>(true, global2.a, arg_0.c.x)), true), vec2<bool>(_wgslsmith_f_op_f32(floor(-1071f)) != -1000f, false), select((vec4<i32>(var_0.x, -2147483647i, 15758i, 2147483647i) & ~global2.d) >> (~(~vec4<u32>(1u, 0u, 1u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global4.d.x, global4.d.x, -2147483647i, global4.d.x)), -vec4<i32>(29350i, var_0.x, global2.d.x, arg_0.d.x)), any(arg_0.b.xz)));
    global1 = array<vec2<bool>, 8>();
    let var_3 = u_input.a.yyy;
    return Struct_1(any(vec3<bool>(any(global2.b) && true, all(arg_0.b), true)), vec3<bool>(!arg_0.b.x, (min(var_3.x, u_input.a.x) >> (var_3.x % 32u)) > ~1u, true), select(arg_0.c, select(select(!global2.c, vec2<bool>(true, true), select(vec2<bool>(var_2.b.x, false), vec2<bool>(global2.c.x, false), global4.a)), select(select(vec2<bool>(false, false), var_2.c, global2.b.x), global4.b.xy, true), true), any(vec4<bool>(true, !arg_0.c.x, true, var_1))), _wgslsmith_mod_vec4_i32(max(abs(select(arg_0.d, vec4<i32>(-1i, var_0.x, global2.d.x, -1i), vec4<bool>(var_2.b.x, arg_0.c.x, true, true))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-3088i, var_2.d.x, var_2.d.x, -29982i), ~vec4<i32>(48448i, arg_0.d.x, -27931i, var_2.d.x), var_2.d)), vec4<i32>(-35945i, firstLeadingBit(-arg_0.d.x), global4.d.x, i32(-1i) * -15918i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_1(true, global2.b, func_2(Struct_1(!(!global2.a), vec3<bool>(false, true, all(global4.b.xx)), !(!arg_0.b.zx), max(vec4<i32>(-1i, -2147483647i, global2.d.x, -27398i), vec4<i32>(global2.d.x, arg_1.d.x, global4.d.x, 21258i)) << (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.b) % vec4<u32>(32u)))).b.zy, _wgslsmith_mod_vec4_i32(-global4.d, _wgslsmith_add_vec4_i32(max(arg_1.d, arg_1.d), global4.d)));
    let var_1 = ~u_input.a.x;
    global0 = array<vec4<u32>, 12>();
    let var_2 = 4294967295u;
    global3 = -229f;
    return reverseBits(u_input.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(reverseBits(u_input.a.x ^ u_input.b), u_input.b, u_input.b, ~min(77716u, 0u)), vec4<u32>(func_4(func_2(arg_1), arg_1, global2.b), u_input.b << (u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 14208u, 49278u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.b, 12u)])), select(u_input.b, ~u_input.a.x, true)), true), vec4<u32>(0u, 4294967295u >> ((abs(34233u) >> (u_input.b % 32u)) % 32u), ~1u, _wgslsmith_mod_u32(44973u, ~firstTrailingBit(0u))));
    global4 = Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(arg_1.c.x, true), arg_0.b.yy)), vec3<bool>(arg_0.c.x, false, false), !global4.c, -vec4<i32>(i32(-1i) * -var_0.d.x, -2147483647i, reverseBits(_wgslsmith_mult_i32(arg_1.d.x, arg_1.d.x)), _wgslsmith_dot_vec4_i32(arg_0.d, firstTrailingBit(vec4<i32>(arg_0.d.x, arg_0.d.x, 53974i, 2147483647i)))));
    return Struct_1(-2147483647i > -global4.d.x, func_2(arg_1).b, select(select(var_0.b.zx, vec2<bool>(true, true), select(select(global1[_wgslsmith_index_u32(u_input.b, 8u)], global4.b.zy, var_0.c), vec2<bool>(true, false), func_2(Struct_1(true, vec3<bool>(arg_1.a, true, false), vec2<bool>(true, true), arg_0.d)).b.xx)), !(!select(vec2<bool>(true, arg_0.a), global1[_wgslsmith_index_u32(u_input.b, 8u)], vec2<bool>(global2.c.x, global2.a))), all(vec4<bool>(!var_0.b.x, arg_0.a, global2.a, arg_0.b.x))), _wgslsmith_clamp_vec4_i32(reverseBits(-vec4<i32>(0i, -1i, -2147483647i, -1i)), vec4<i32>(global2.d.x, var_0.d.x, arg_1.d.x, ~(~1i)), arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1443f;
    var var_1 = u_input.a.x >> (u_input.a.x % 32u);
    global4 = func_1(Struct_1(false, global2.b, select(vec2<bool>(global2.c.x & global4.c.x, u_input.b == u_input.a.x), select(select(vec2<bool>(global4.b.x, true), global4.c, true), global4.b.xy, !global4.c.x), all(vec4<bool>(false, false, true, false))), abs(min(vec4<i32>(global2.d.x, global2.d.x, global2.d.x, -44795i), -global2.d))), Struct_1(any(!(!vec4<bool>(true, global4.b.x, true, global4.a))), !global4.b, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a.x, 12483u | u_input.a.x), 8u)], -((global4.d & vec4<i32>(-1i, global4.d.x, -2147483647i, global2.d.x)) ^ global2.d)));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-292f + _wgslsmith_f_op_f32(f32(-1f) * -171f))))));
    var var_2 = _wgslsmith_sub_vec3_i32(select(global4.d.xzx, max(global4.d.yyx, global4.d.zxw | global4.d.wxw), !vec3<bool>(false, true, !global4.c.x)), vec3<i32>(countOneBits(select(-2147483647i, global4.d.x, false)) | global2.d.x, func_2(Struct_1(global2.c.x, !vec3<bool>(false, true, global2.a), vec2<bool>(false, global4.b.x), vec4<i32>(7493i, -43907i, global4.d.x, 2147483647i))).d.x, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(global4.d.x ^ abs(-global4.d.x), global2.d.x), -56384i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(-766f, _wgslsmith_f_op_f32(f32(-1f) * -445f))), 1f, -1654f))), -881f, 1201f);
}

