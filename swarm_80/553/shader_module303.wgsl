struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-318f, 168f, -209f, -700f, -1000f, 620f, 1007f, -192f, -676f, 1195f, 1039f, 1000f, 714f, -546f, 231f, -994f, 887f, -1000f, -1261f, 282f, -292f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> bool {
    global0 = array<f32, 21>();
    return false;
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(true, vec2<i32>(_wgslsmith_div_i32(abs(-u_input.a), ~reverseBits(arg_0)), abs(u_input.a)), -arg_0, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -1i ^ arg_0), vec2<i32>(reverseBits(arg_0), u_input.a))));
    var var_1 = vec4<u32>(abs(_wgslsmith_add_u32(4294967295u ^ u_input.b.x, max(2772u, 41123u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.b, select(vec4<u32>(0u, 36955u, 4294967295u, 50087u), u_input.b, vec4<bool>(var_0.a, false, true, true))), vec4<u32>(abs(32530u), 7870u, max(u_input.b.x, 0u), u_input.b.x)) ^ ~u_input.b.x, _wgslsmith_mult_u32(~(~u_input.b.x | 4294967295u), u_input.b.x & u_input.b.x), _wgslsmith_sub_u32(countOneBits(firstTrailingBit(~1u)), 1u));
    return _wgslsmith_mult_u32(~(abs(var_1.x ^ u_input.b.x) & 33068u), var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = u_input.b.wyx;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -253f)));
    let var_3 = select(!select(vec4<bool>(all(vec2<bool>(var_0, arg_1.a)), false && arg_0.a, arg_0.a, 0i < arg_1.d), select(select(vec4<bool>(false, arg_0.a, var_0, true), vec4<bool>(arg_1.a, true, false, var_0), vec4<bool>(arg_1.a, arg_1.a, var_0, false)), !vec4<bool>(var_0, true, var_0, arg_1.a), !arg_1.a), true), !(!vec4<bool>(true, true, true, select(false, arg_1.a, var_0))), vec4<bool>(all(vec2<bool>(true, !var_0)), any(select(vec2<bool>(var_0, false), vec2<bool>(true, true), !vec2<bool>(arg_0.a, false))), (_wgslsmith_clamp_i32(arg_1.d, -1i, arg_2.x) >= (arg_2.x >> (4294967295u % 32u))) && !select(true, arg_1.a, true), any(vec3<bool>(var_0, arg_0.a, all(vec4<bool>(arg_0.a, false, arg_0.a, arg_1.a))))));
    let var_4 = Struct_3(!select(var_3.xzz, var_3.wyy, vec3<bool>(func_2(vec2<i32>(-1i, -22781i), var_1.yy, u_input.b.xzy), false, var_1.x == 24012u)), true || !(!arg_0.a | var_3.x), Struct_2(var_1.x, Struct_1(any(!vec2<bool>(true, var_0)), select(~vec2<i32>(2147483647i, 36909i), vec2<i32>(arg_2.x, 32279i), !arg_1.a), 23036i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(arg_2.x, -1i)), 0i)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-36195i, 2147483647i, 0i, -1i), vec4<i32>(arg_0.b.x, arg_0.c, arg_0.b.x, 2147483647i) >> (vec4<u32>(var_1.x, u_input.b.x, 0u, var_1.x) % vec4<u32>(32u))), reverseBits(-vec4<i32>(u_input.a, 1i, arg_2.x, -2147483647i))), u_input.c, 1i), Struct_2(~_wgslsmith_dot_vec3_u32(u_input.b.xyw, u_input.b.ywy) ^ ~func_3(-5646i), Struct_1(arg_2.x != arg_2.x, vec2<i32>(u_input.a, 1i), arg_2.x, min(0i | arg_0.c, _wgslsmith_mod_i32(-2147483647i, 2147483647i))), ~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_1.c, arg_1.b.x, arg_2.x), vec4<i32>(25090i, -9930i, 0i, u_input.a)), vec4<i32>(10572i, arg_2.x, 0i, arg_0.c)), u_input.a ^ arg_1.b.x, u_input.c));
    return Struct_1((!arg_1.a | true) && any(!select(var_3.xz, vec2<bool>(false, true), var_4.a.x)), _wgslsmith_div_vec2_i32(max(vec2<i32>(-27474i, _wgslsmith_mod_i32(arg_0.d, arg_1.b.x)), vec2<i32>(_wgslsmith_mod_i32(-39608i, arg_0.c), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, arg_0.c, var_4.d.b.d, arg_1.b.x), var_4.c.c))), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.x, ~(-12147i)), firstTrailingBit(~vec2<i32>(-6562i, u_input.a)), -(~vec2<i32>(1i, u_input.c)))), _wgslsmith_div_i32(51394i, 4705i), _wgslsmith_sub_i32(reverseBits(2147483647i), -arg_0.c << ((_wgslsmith_sub_u32(u_input.b.x, 0u) ^ _wgslsmith_mult_u32(var_4.c.a, var_4.d.a)) % 32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    var var_0 = arg_2;
    var var_1 = ~(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(18846u, 3684u, arg_3)), _wgslsmith_div_vec3_u32(u_input.b.zwx, u_input.b.xxw)) ^ vec3<u32>(~_wgslsmith_div_u32(arg_3, arg_3), arg_3, 35881u));
    var_0 = Struct_3(select(!select(!arg_2.a, select(vec3<bool>(true, true, arg_0.x), vec3<bool>(false, arg_1.a, arg_2.a.x), vec3<bool>(false, arg_2.a.x, var_0.a.x)), arg_0.x), !(!(!vec3<bool>(arg_2.b, true, arg_2.a.x))), false), !arg_0.x, Struct_2(4294967295u, arg_1, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.c.e, var_0.c.d, var_0.d.d, arg_2.c.b.d), vec4<i32>(arg_1.b.x, arg_1.d, u_input.c, arg_1.d)) ^ -vec4<i32>(2147483647i, var_0.c.e, arg_2.c.e, -2147483647i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(239i, var_0.d.c.x) & 2147483647i, -arg_1.c), _wgslsmith_mod_i32(u_input.c, var_0.d.d)), Struct_2(abs(~37841u), arg_1, ~arg_2.c.c, ~var_0.d.e >> (max(~27448u, _wgslsmith_add_u32(arg_2.c.a, 19887u)) % 32u), 0i));
    let var_2 = arg_2.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3, 21u)]));
    return Struct_3(!(!(!arg_0.yyw)), true, var_0.c, Struct_2(~_wgslsmith_mod_u32(var_0.d.a >> (var_2.a % 32u), _wgslsmith_dot_vec2_u32(u_input.b.wx, vec2<u32>(4294967295u, var_2.a))), func_1(func_1(func_1(Struct_1(arg_0.x, var_0.d.c.wx, 0i, var_0.d.b.b.x), arg_1, var_2.c.wx), func_1(Struct_1(true, arg_1.b, arg_2.d.d, u_input.c), arg_2.c.b, vec2<i32>(arg_1.b.x, arg_1.b.x)), _wgslsmith_mult_vec2_i32(arg_2.c.b.b, var_0.c.c.xy)), arg_2.d.b, vec2<i32>(~u_input.c, var_2.e)), vec4<i32>(-1i) * -(arg_2.c.c >> (vec4<u32>(1u, var_0.c.a, u_input.b.x, 2906u) % vec4<u32>(32u))), -2147483647i, _wgslsmith_add_i32(var_2.b.d, -(arg_2.c.d & 0i))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = -220f == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 21u)]);
    var var_1 = Struct_3(arg_2.a, false, Struct_2(_wgslsmith_clamp_u32(15485u, u_input.b.x | 9209u, _wgslsmith_mod_u32(arg_2.d.a, u_input.b.x)) >> (~(~u_input.b.x) % 32u), Struct_1(any(arg_2.a), _wgslsmith_add_vec2_i32(arg_2.c.c.xy, arg_2.d.c.wx << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), 2147483647i, -arg_0), func_4(!(!vec4<bool>(true, arg_2.a.x, arg_2.d.b.a, arg_2.a.x)), func_1(func_4(vec4<bool>(false, true, var_0, var_0), arg_2.c.b, Struct_3(arg_2.a, false, arg_2.c, arg_2.d), 10596u).c.b, arg_2.d.b, vec2<i32>(arg_2.d.c.x, 54506i)), Struct_3(select(vec3<bool>(var_0, arg_2.b, var_0), arg_2.a, true), !var_0, arg_2.c, arg_2.d), _wgslsmith_div_u32(~2326u, 75276u)).d.c, _wgslsmith_clamp_i32(~(-arg_2.c.b.b.x), -(arg_2.c.e | arg_0), ~abs(arg_2.d.e)), arg_2.d.b.c), func_4(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(var_0, arg_2.d.b.a, var_0, var_0), !vec4<bool>(arg_2.a.x, false, var_0, var_0), true), vec4<bool>(129331u <= u_input.b.x, true, var_0, -133f <= global0[_wgslsmith_index_u32(4294967295u, 21u)])), func_4(!vec4<bool>(arg_2.a.x, var_0, arg_2.d.b.a, arg_2.c.b.a), arg_2.d.b, arg_2, arg_2.c.a).c.b, arg_2, 26719u).d);
    var_1 = Struct_3(select(!func_4(!vec4<bool>(var_0, true, arg_2.d.b.a, true), var_1.d.b, Struct_3(vec3<bool>(true, true, true), false, var_1.d, Struct_2(u_input.b.x, Struct_1(true, arg_2.d.b.b, -20272i, u_input.c), arg_2.c.c, -2147483647i, 1i)), _wgslsmith_add_u32(32792u, u_input.b.x)).a, select(arg_2.a, select(vec3<bool>(var_0, var_1.a.x, true), select(vec3<bool>(false, var_1.c.b.a, arg_2.a.x), vec3<bool>(var_1.c.b.a, true, false), vec3<bool>(var_0, arg_2.d.b.a, true)), !var_1.a), vec3<bool>(!var_1.b, true, select(arg_2.c.b.a, true, true))), func_4(!(!vec4<bool>(true, false, arg_2.b, var_1.c.b.a)), arg_2.d.b, Struct_3(!vec3<bool>(var_0, true, true), var_0, var_1.d, Struct_2(var_1.d.a, var_1.c.b, vec4<i32>(arg_0, -2147483647i, -2147483647i, 2147483647i), -30056i, -4853i)), select(30659u, arg_2.c.a, func_4(vec4<bool>(false, var_0, true, arg_2.a.x), Struct_1(arg_2.b, vec2<i32>(var_1.d.e, -1i), var_1.d.c.x, 2147483647i), arg_2, var_1.d.a).c.b.a)).a), var_0, arg_2.c, Struct_2(~4294967295u, Struct_1(_wgslsmith_div_u32(u_input.b.x, arg_1) == min(arg_1, 1u), arg_2.c.c.yy, -u_input.c, arg_2.d.e), vec4<i32>(~firstTrailingBit(u_input.a), max(-21143i, ~arg_2.c.e), var_1.c.e ^ ~arg_0, 1i), _wgslsmith_mult_i32(countOneBits(u_input.a << (8135u % 32u)), -var_1.c.e), u_input.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(725f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 21u)])))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(14199u, ~arg_1 >> (~u_input.b.x % 32u)), 21u)]) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_1.d.a, 21u)], 207f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-653f, global0[_wgslsmith_index_u32(arg_2.c.a, 21u)]) + vec2<f32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(118281u, 21u)]))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, global0[_wgslsmith_index_u32(arg_1, 21u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 21u)], -2041f) * vec2<f32>(global0[_wgslsmith_index_u32(70455u, 21u)], 1237f)))))))));
    global0 = array<f32, 21>();
    return Struct_2(_wgslsmith_mod_u32(u_input.b.x, arg_1), var_1.d.b, arg_2.d.c, u_input.a, var_1.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    var var_0 = reverseBits(~countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-3082i, 11493i, -39654i, u_input.c), ~vec4<i32>(u_input.c, -64940i, -2147483647i, u_input.a))));
    var var_1 = Struct_3(!(!vec3<bool>(select(false, true, false), true, true)), !any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true))), func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-34492i, 1i), -var_0.x, min(u_input.c, 68265i), var_0.x & 38980i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.x, var_0.x, 1i, var_0.x), ~vec4<i32>(var_0.x, var_0.x, -2147483647i, 1i), vec4<i32>(u_input.c, var_0.x, 14750i, var_0.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 16485u), _wgslsmith_mod_vec2_u32(u_input.b.yw, u_input.b.xy)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 22607u), vec2<u32>(0u, 4294967295u), ~vec2<u32>(117558u, u_input.b.x))), func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), func_1(Struct_1(false, var_0.wy, var_0.x, 2147483647i), Struct_1(true, vec2<i32>(-14366i, -36887i), u_input.c, 0i), vec2<i32>(-671i, var_0.x)), Struct_3(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(4294967295u, 21u)] != global0[_wgslsmith_index_u32(4294967295u, 21u)], Struct_2(u_input.b.x, Struct_1(true, vec2<i32>(u_input.c, u_input.a), -1i, u_input.a), vec4<i32>(1i, u_input.c, var_0.x, -17016i), u_input.a, 40614i), Struct_2(4294967295u, Struct_1(true, var_0.yx, u_input.c, u_input.c), vec4<i32>(u_input.a, 1i, var_0.x, -4209i), var_0.x, 11069i)), ~u_input.b.x)), func_5(_wgslsmith_clamp_i32(2828i, ~0i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, var_0.x), select(u_input.a, var_0.x, true))), 1u, Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), -1i < ~var_0.x, Struct_2(~63085u, func_1(Struct_1(true, vec2<i32>(var_0.x, 2147483647i), u_input.a, var_0.x), Struct_1(true, vec2<i32>(2147483647i, u_input.c), u_input.a, 2147483647i), vec2<i32>(-1i, 6968i)), -vec4<i32>(-52846i, u_input.c, var_0.x, u_input.a), 31227i, var_0.x), Struct_2(0u ^ u_input.b.x, Struct_1(true, vec2<i32>(u_input.a, -20172i), u_input.a, var_0.x), ~vec4<i32>(u_input.c, -29369i, u_input.a, u_input.c), _wgslsmith_div_i32(u_input.a, 2147483647i), abs(u_input.c)))));
    let var_2 = func_1(func_1(var_1.d.b, var_1.d.b, ~vec2<i32>(~(-78000i), -2147483647i)), var_1.d.b, _wgslsmith_div_vec2_i32(var_0.xx, ~(-var_0.yy)));
    var_1 = Struct_3(func_4(select(select(!vec4<bool>(true, true, var_2.a, false), vec4<bool>(var_2.a, var_2.a, false, true), !vec4<bool>(var_2.a, false, var_1.a.x, false)), select(select(vec4<bool>(var_1.c.b.a, var_1.d.b.a, true, var_2.a), vec4<bool>(true, var_2.a, false, true), var_1.a.x), !vec4<bool>(false, var_2.a, true, var_2.a), true), !vec4<bool>(false, true, var_1.a.x, var_2.a)), func_4(select(!vec4<bool>(var_2.a, var_2.a, var_1.a.x, var_1.d.b.a), vec4<bool>(true, true, true, true), var_1.c.b.a & var_2.a), func_5(reverseBits(var_0.x), 1u, func_4(vec4<bool>(true, false, false, var_1.b), Struct_1(true, var_2.b, 1i, var_0.x), Struct_3(vec3<bool>(var_1.c.b.a, false, true), var_2.a, Struct_2(1u, Struct_1(var_2.a, var_0.zz, 9158i, -22880i), var_1.c.c, var_1.d.e, u_input.a), var_1.d), 1u)).b, Struct_3(!vec3<bool>(true, true, var_2.a), var_1.b, Struct_2(62138u, Struct_1(false, vec2<i32>(u_input.c, -15484i), var_2.b.x, -11241i), var_1.c.c, -1i, 1i), var_1.d), var_1.d.a).c.b, func_4(!select(vec4<bool>(true, var_2.a, true, var_2.a), vec4<bool>(true, var_2.a, var_2.a, var_1.a.x), true), var_2, func_4(select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.a.x, var_1.b, var_1.b, var_1.b), false), Struct_1(false, vec2<i32>(9138i, 2147483647i), var_2.c, u_input.a), func_4(vec4<bool>(var_1.a.x, var_2.a, var_1.c.b.a, var_2.a), Struct_1(false, var_1.d.b.b, var_1.d.d, var_0.x), Struct_3(vec3<bool>(var_1.b, var_2.a, var_2.a), var_2.a, Struct_2(var_1.d.a, Struct_1(var_1.c.b.a, var_1.c.b.b, -1i, var_1.c.e), var_1.d.c, var_0.x, -21047i), Struct_2(u_input.b.x, var_1.d.b, vec4<i32>(-2147483647i, var_2.b.x, 0i, 15785i), u_input.c, -2147483647i)), var_1.d.a), 0u), 25201u), func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(23110i, -2147483647i), vec2<i32>(-37827i, u_input.a)), 1u, Struct_3(var_1.a, var_2.a, func_4(vec4<bool>(var_1.a.x, var_1.d.b.a, var_1.b, var_1.c.b.a), Struct_1(false, vec2<i32>(-1i, 1i), u_input.c, 7505i), Struct_3(vec3<bool>(true, false, true), true, Struct_2(27573u, Struct_1(var_1.b, var_1.c.c.yz, var_1.c.c.x, -1813i), var_1.c.c, 1i, -101062i), var_1.c), u_input.b.x).d, Struct_2(64287u, Struct_1(var_2.a, vec2<i32>(var_0.x, 2147483647i), 5494i, u_input.a), var_1.c.c, u_input.a, 0i))).a).a, (_wgslsmith_f_op_f32(1082f - -999f) >= global0[_wgslsmith_index_u32(28619u, 21u)]) || !all(var_1.a.yx), var_1.c, func_5(-var_2.b.x, func_3(~u_input.a) ^ 4294967295u, Struct_3(!select(var_1.a, var_1.a, true), true, var_1.c, func_4(vec4<bool>(false, var_2.a, var_2.a, var_2.a), func_5(var_2.d, 48580u, Struct_3(vec3<bool>(var_1.b, true, var_1.c.b.a), var_1.d.b.a, var_1.d, var_1.c)).b, func_4(vec4<bool>(var_1.d.b.a, var_1.b, true, var_1.a.x), Struct_1(var_1.a.x, var_1.c.c.wy, u_input.a, -25150i), Struct_3(var_1.a, var_2.a, Struct_2(u_input.b.x, var_1.c.b, var_1.c.c, var_2.d, var_0.x), var_1.d), 5050u), select(65367u, 1u, var_1.a.x)).d)));
    var_1 = func_4(select(vec4<bool>(func_5(-74359i ^ u_input.a, ~26814u, func_4(vec4<bool>(var_2.a, var_2.a, var_1.a.x, var_2.a), Struct_1(var_2.a, var_2.b, -4316i, var_0.x), Struct_3(var_1.a, var_1.a.x, Struct_2(51105u, Struct_1(var_2.a, var_2.b, 2147483647i, var_2.d), vec4<i32>(-2147483647i, 8730i, var_0.x, var_2.b.x), var_1.c.b.c, -3227i), var_1.d), var_1.d.a)).b.a, var_1.b, _wgslsmith_f_op_f32(-425f * -1107f) < global0[_wgslsmith_index_u32(var_1.c.a, 21u)], false), vec4<bool>(func_2(reverseBits(vec2<i32>(-3896i, 1i)), u_input.b.yw, u_input.b.yxy), !var_2.a, false, func_5(var_1.d.d, ~u_input.b.x, func_4(vec4<bool>(var_2.a, false, true, true), Struct_1(false, vec2<i32>(-2147483647i, var_1.c.c.x), var_0.x, var_1.c.d), Struct_3(vec3<bool>(false, false, var_1.d.b.a), false, Struct_2(var_1.d.a, Struct_1(var_2.a, vec2<i32>(-1i, -47688i), var_2.d, 1i), var_1.c.c, var_1.d.d, -2147483647i), Struct_2(u_input.b.x, var_2, vec4<i32>(15949i, -60137i, 0i, 0i), -7396i, -17111i)), 24347u)).b.a), true), func_1(Struct_1(global0[_wgslsmith_index_u32(countOneBits(var_1.c.a), 21u)] != _wgslsmith_f_op_f32(449f + 228f), var_2.b, firstLeadingBit(func_1(Struct_1(var_2.a, vec2<i32>(var_1.c.e, var_0.x), var_1.c.d, u_input.a), var_2, vec2<i32>(-15154i, var_2.d)).b.x), u_input.a), func_4(!select(vec4<bool>(var_1.d.b.a, false, true, var_2.a), vec4<bool>(true, true, var_1.c.b.a, false), vec4<bool>(true, true, false, false)), func_4(vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), func_1(Struct_1(true, vec2<i32>(var_2.c, -1i), 17120i, var_2.d), Struct_1(var_2.a, var_0.wx, u_input.c, var_0.x), vec2<i32>(2147483647i, 35295i)), func_4(vec4<bool>(var_2.a, var_2.a, true, var_2.a), Struct_1(false, vec2<i32>(-2147483647i, -54308i), var_1.c.c.x, -1i), Struct_3(var_1.a, var_1.b, var_1.c, Struct_2(u_input.b.x, Struct_1(var_2.a, vec2<i32>(var_1.c.c.x, var_0.x), u_input.a, -1i), var_1.c.c, var_0.x, -42797i)), 4294967295u), var_1.c.a).d.b, Struct_3(func_4(vec4<bool>(var_2.a, var_2.a, var_1.c.b.a, var_1.b), Struct_1(var_1.d.b.a, vec2<i32>(u_input.a, var_1.d.c.x), var_2.b.x, -10i), Struct_3(vec3<bool>(true, var_2.a, var_2.a), var_2.a, var_1.d, Struct_2(u_input.b.x, var_2, vec4<i32>(-63592i, var_0.x, var_0.x, var_2.b.x), -1i, var_2.d)), 4294967295u).a, var_2.a, Struct_2(1u, Struct_1(false, var_2.b, -2147483647i, var_2.d), var_1.c.c, -2369i, 1i), Struct_2(4294967295u, var_1.c.b, vec4<i32>(-1i, u_input.c, var_1.c.c.x, u_input.c), -1i, var_1.c.e)), 66385u).d.b, vec2<i32>(-1i, max(_wgslsmith_div_i32(var_1.d.e, u_input.a), ~var_1.d.d))), Struct_3(!select(vec3<bool>(false, var_2.a, var_2.a), var_1.a, true), !(!var_2.a), var_1.c, func_5(1i, ~1u, Struct_3(vec3<bool>(false, var_1.d.b.a, var_1.c.b.a), global0[_wgslsmith_index_u32(14153u, 21u)] != 671f, var_1.d, Struct_2(66233u, var_2, vec4<i32>(var_0.x, -13907i, -44192i, var_0.x), var_0.x, u_input.c)))), countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.xxy << (u_input.b.zxy % vec3<u32>(32u)), vec3<u32>(78372u, 1u, 1u)), 1u)));
    var var_3 = _wgslsmith_div_vec4_i32(var_1.c.c, var_1.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b & ~u_input.b, vec4<i32>(_wgslsmith_mod_i32(u_input.a ^ ~var_1.d.d, -_wgslsmith_clamp_i32(2147483647i, var_0.x, var_1.c.c.x)), firstLeadingBit(-(~u_input.c)), -2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.x, i32(-1i) * -1i), 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_1.c.a, 21u)], global0[_wgslsmith_index_u32(var_1.d.a, 21u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(5608u, 21u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(43604u, 21u)]), vec2<f32>(-1759f, global0[_wgslsmith_index_u32(var_1.d.a, 21u)]), var_1.d.b.a)))) - _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), 21u)], 1000f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec2<f32>(578f, global0[_wgslsmith_index_u32(var_1.c.a, 21u)]))))))));
}

