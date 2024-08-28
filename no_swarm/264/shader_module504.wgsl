struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(0i, 71037i, -41053i, 1i), vec4<i32>(-16425i, -2457i, 2147483647i, -13026i), vec4<i32>(1i, 2147483647i, 47820i, -1i), vec4<i32>(2147483647i, 27613i, 2147483647i, 4581i), vec4<i32>(1i, -27772i, -23227i, -18446i), vec4<i32>(1i, -16207i, 0i, 0i));

var<private> global1: bool = false;

var<private> global2: vec4<u32> = vec4<u32>(17866u, 0u, 1u, 33544u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<bool> {
    let var_0 = true;
    var var_1 = _wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -35192i), vec2<i32>(1i, 1i))), vec2<i32>(abs(1i), _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(8703i, 8121i, 1i)), countOneBits(~vec3<i32>(32602i, -2147483647i, 2147483647i)))));
    var_1 = max(min(~(vec2<i32>(1i, var_1.x) >> (vec2<u32>(u_input.a.x, global2.x) % vec2<u32>(32u))), (vec2<i32>(var_1.x, var_1.x) & vec2<i32>(1i, var_1.x)) | (vec2<i32>(1i, var_1.x) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), ~vec2<i32>(-55138i, var_1.x)) ^ vec2<i32>(var_1.x, reverseBits(-2147483647i));
    let var_2 = Struct_1(min(global0[_wgslsmith_index_u32(~(~89380u >> (global2.x % 32u)), 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), _wgslsmith_add_vec2_i32(vec2<i32>(-14369i, countOneBits(2147483647i)), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, var_1.x, -2147483647i), vec3<i32>(49210i, 0i, 12023i)), firstTrailingBit(vec3<i32>(var_1.x, -1i, var_1.x))), var_1.x)), var_1.x, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1470f * _wgslsmith_f_op_f32(-186f + -783f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2161f))))));
    var var_3 = u_input.a;
    return select(vec2<bool>(select(false, all(vec2<bool>(var_0, false)), !var_0), var_2.a.x >= var_2.a.x), select(vec2<bool>(true, true), select(vec2<bool>(true, var_2.e < var_2.d), vec2<bool>(true, var_3.x != var_3.x), var_0), !(!(!vec2<bool>(true, var_0)))), var_0);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<bool>(!(reverseBits(~arg_3.a.c) != arg_1.b.x), _wgslsmith_dot_vec3_u32(~(~arg_0.d), ~(vec3<u32>(1u, arg_0.c, u_input.a.x) | vec3<u32>(4294967295u, global2.x, u_input.a.x))) != u_input.a.x);
    var_0 = select(!select(select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(true, false), vec2<bool>(false, var_0.x), var_0.x), true), select(func_3(), vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), var_0.x)), func_3()), func_3(), true);
    var var_1 = arg_3.a.e;
    var var_2 = select(!(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), true), true)), !vec2<bool>(true, arg_1.a.x < countOneBits(arg_3.a.a.x)), select(!select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false)), vec2<bool>(var_0.x, var_0.x), func_3()));
    var_2 = select(func_3(), vec2<bool>(!(any(vec3<bool>(var_2.x, var_0.x, false)) || var_0.x), var_2.x | (arg_1.b.x <= _wgslsmith_div_i32(-17401i, 1i))), !(!select(vec2<bool>(var_0.x, false), vec2<bool>(true, false), false)));
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    return arg_0.a;
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_3(func_4(Struct_2(func_4(func_2(Struct_3(arg_0, arg_0, 122710u, u_input.a.wyw, arg_0.c), Struct_1(arg_0.a, arg_0.a.xw, 1i, arg_0.e, arg_0.e), Struct_2(arg_0), Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 6u)], vec2<i32>(arg_0.a.x, 19937i), arg_0.a.x, 333f, arg_0.d))), func_2(Struct_3(arg_0, arg_0, 41766u, global2.xzz, 2147483647i), Struct_1(arg_0.a, vec2<i32>(arg_0.c, -1i), arg_0.a.x, arg_0.d, arg_0.d), Struct_2(Struct_1(arg_0.a, arg_0.a.yx, 23227i, -361f, arg_0.d)), Struct_2(Struct_1(arg_0.a, vec2<i32>(2147483647i, arg_0.b.x), 1i, arg_0.d, arg_0.d))), Struct_3(arg_0, arg_0, 75419u, vec3<u32>(41170u, u_input.a.x, 23344u), arg_0.a.x))), func_2(Struct_3(Struct_1(arg_0.a, arg_0.a.wz, arg_0.a.x, 868f, arg_0.e), Struct_1(vec4<i32>(1632i, arg_0.b.x, 68231i, arg_0.c), vec2<i32>(1i, arg_0.a.x), arg_0.a.x, -947f, arg_0.d), 0u, ~global2.ywx, 1i), func_2(Struct_3(arg_0, arg_0, global2.x, vec3<u32>(4294967295u, 3965u, 0u), -17868i), func_2(Struct_3(arg_0, Struct_1(vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -1i), vec2<i32>(-2147483647i, arg_0.c), 0i, arg_0.d, 137f), global2.x, u_input.a.xxw, -51438i), Struct_1(global0[_wgslsmith_index_u32(1u, 6u)], vec2<i32>(arg_0.b.x, arg_0.a.x), arg_0.c, 1000f, -512f), Struct_2(Struct_1(vec4<i32>(arg_0.c, -16394i, arg_0.c, 20121i), vec2<i32>(arg_0.b.x, arg_0.c), 2147483647i, -1363f, arg_0.d)), Struct_2(arg_0)).a, func_2(Struct_3(arg_0, Struct_1(vec4<i32>(arg_0.b.x, arg_0.c, arg_0.a.x, arg_0.b.x), arg_0.a.xz, -1i, -689f, 338f), global2.x, u_input.a.yyz, 29840i), arg_0, Struct_2(arg_0), Struct_2(arg_0)), func_2(Struct_3(Struct_1(arg_0.a, vec2<i32>(13525i, 2147483647i), 2147483647i, -430f, 1101f), Struct_1(vec4<i32>(1i, arg_0.a.x, -2147483647i, 1i), vec2<i32>(arg_0.a.x, arg_0.c), 2147483647i, 673f, 872f), global2.x, global2.zwy, arg_0.c), Struct_1(vec4<i32>(-48150i, 57695i, arg_0.a.x, arg_0.c), vec2<i32>(0i, 0i), arg_0.b.x, 158f, arg_0.e), Struct_2(arg_0), Struct_2(Struct_1(global0[_wgslsmith_index_u32(40725u, 6u)], vec2<i32>(-7107i, 1i), arg_0.c, 1701f, 921f)))).a, func_2(Struct_3(Struct_1(arg_0.a, vec2<i32>(1i, arg_0.b.x), 1i, -1000f, arg_0.d), Struct_1(vec4<i32>(-29520i, arg_0.c, arg_0.b.x, arg_0.b.x), arg_0.a.zy, -22421i, 1677f, arg_0.d), global2.x, vec3<u32>(u_input.a.x, 0u, u_input.a.x), -2147483647i), arg_0, func_2(Struct_3(arg_0, arg_0, global2.x, vec3<u32>(u_input.a.x, global2.x, u_input.a.x), arg_0.c), Struct_1(vec4<i32>(arg_0.c, arg_0.c, arg_0.c, -2147483647i), vec2<i32>(arg_0.b.x, arg_0.a.x), arg_0.a.x, arg_0.d, 1358f), Struct_2(arg_0), Struct_2(arg_0)), func_2(Struct_3(arg_0, arg_0, 4294967295u, vec3<u32>(u_input.a.x, global2.x, 0u), 2147483647i), arg_0, Struct_2(arg_0), Struct_2(arg_0))), func_2(Struct_3(arg_0, arg_0, global2.x, u_input.a.yxx, -12529i), Struct_1(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.c, arg_0.c), arg_0.a.zy, arg_0.a.x, arg_0.e, arg_0.e), func_2(Struct_3(arg_0, arg_0, u_input.a.x, vec3<u32>(global2.x, global2.x, u_input.a.x), 2147483647i), Struct_1(arg_0.a, arg_0.b, 50485i, -1000f, arg_0.d), Struct_2(arg_0), Struct_2(Struct_1(arg_0.a, vec2<i32>(arg_0.b.x, -11343i), 15229i, arg_0.e, arg_0.e))), Struct_2(arg_0))), Struct_3(Struct_1(max(global0[_wgslsmith_index_u32(0u, 6u)], arg_0.a), _wgslsmith_div_vec2_i32(arg_0.a.zz, vec2<i32>(1i, arg_0.b.x)), min(arg_0.a.x, 0i), -274f, _wgslsmith_f_op_f32(arg_0.d - arg_0.e)), func_2(Struct_3(Struct_1(vec4<i32>(-2147483647i, arg_0.c, 1i, arg_0.a.x), vec2<i32>(arg_0.c, -4541i), -47736i, arg_0.e, arg_0.e), Struct_1(global0[_wgslsmith_index_u32(0u, 6u)], vec2<i32>(arg_0.c, -2147483647i), 92370i, arg_0.d, -1043f), u_input.a.x, vec3<u32>(4294967295u, u_input.a.x, 47965u), arg_0.a.x), Struct_1(vec4<i32>(2147483647i, -17285i, arg_0.b.x, -1i), arg_0.b, -54855i, arg_0.e, arg_0.e), func_2(Struct_3(arg_0, Struct_1(global0[_wgslsmith_index_u32(global2.x, 6u)], arg_0.a.yy, arg_0.c, 1346f, -587f), 74212u, vec3<u32>(global2.x, u_input.a.x, global2.x), 1i), arg_0, Struct_2(arg_0), Struct_2(arg_0)), Struct_2(arg_0)).a, reverseBits(3511u), vec3<u32>(77656u, 1u, u_input.a.x) >> (~vec3<u32>(global2.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), arg_0.b.x)), func_2(Struct_3(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_0.c, arg_0.b.x), global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), arg_0.a.xy, -1i, _wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(f32(-1f) * -341f)), func_2(Struct_3(arg_0, Struct_1(vec4<i32>(-1i, arg_0.b.x, arg_0.c, -16232i), vec2<i32>(-1i, arg_0.a.x), -13114i, arg_0.e, arg_0.d), global2.x, u_input.a.xzw, arg_0.a.x), arg_0, func_2(Struct_3(arg_0, arg_0, global2.x, u_input.a.zww, arg_0.b.x), arg_0, Struct_2(Struct_1(arg_0.a, vec2<i32>(arg_0.a.x, 13615i), -1i, -462f, -2638f)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], arg_0.a.xz, 1i, arg_0.e, arg_0.d))), Struct_2(Struct_1(vec4<i32>(-1i, arg_0.b.x, 1i, arg_0.b.x), arg_0.b, 1i, 670f, arg_0.d))).a, ~countOneBits(global2.x), _wgslsmith_mult_vec3_u32(u_input.a.wxx, global2.wxx), _wgslsmith_div_i32(countOneBits(14914i), ~1i)), arg_0, Struct_2(arg_0), func_2(Struct_3(func_4(Struct_2(Struct_1(arg_0.a, vec2<i32>(2147483647i, arg_0.b.x), 1i, 396f, arg_0.d)), Struct_2(Struct_1(vec4<i32>(-7918i, arg_0.c, -2147483647i, arg_0.c), vec2<i32>(arg_0.b.x, arg_0.c), arg_0.a.x, arg_0.d, 2285f)), Struct_3(Struct_1(global0[_wgslsmith_index_u32(24476u, 6u)], arg_0.a.xz, arg_0.a.x, -849f, 613f), arg_0, u_input.a.x, vec3<u32>(55000u, u_input.a.x, 43116u), -7499i)), func_2(Struct_3(Struct_1(vec4<i32>(arg_0.c, arg_0.a.x, -46373i, arg_0.c), vec2<i32>(arg_0.c, -10828i), -1i, 278f, arg_0.e), Struct_1(arg_0.a, arg_0.b, 0i, arg_0.d, 237f), global2.x, global2.yyz, arg_0.a.x), Struct_1(vec4<i32>(12226i, 2147483647i, arg_0.a.x, arg_0.b.x), vec2<i32>(6066i, 4098i), 2147483647i, arg_0.e, -532f), Struct_2(Struct_1(vec4<i32>(arg_0.a.x, 22158i, arg_0.a.x, -9087i), arg_0.a.zy, arg_0.c, arg_0.d, -1145f)), Struct_2(arg_0)).a, firstLeadingBit(4294967295u), vec3<u32>(0u, 9784u, u_input.a.x), arg_0.c), Struct_1(arg_0.a, arg_0.b, arg_0.b.x >> (1u % 32u), _wgslsmith_f_op_f32(854f - arg_0.d), _wgslsmith_f_op_f32(arg_0.d - 1176f)), Struct_2(arg_0), func_2(Struct_3(arg_0, Struct_1(arg_0.a, arg_0.b, arg_0.a.x, arg_0.d, arg_0.e), u_input.a.x, u_input.a.xwz, -2113i), func_4(Struct_2(arg_0), Struct_2(arg_0), Struct_3(arg_0, arg_0, u_input.a.x, vec3<u32>(global2.x, u_input.a.x, u_input.a.x), 70112i)), func_2(Struct_3(Struct_1(arg_0.a, vec2<i32>(1i, arg_0.b.x), arg_0.a.x, 1250f, -949f), arg_0, 0u, vec3<u32>(80824u, 1u, u_input.a.x), arg_0.a.x), arg_0, Struct_2(Struct_1(vec4<i32>(-479i, -695i, 2147483647i, 20523i), vec2<i32>(-2147483647i, -18215i), -8082i, -1732f, -745f)), Struct_2(arg_0)), func_2(Struct_3(arg_0, Struct_1(global0[_wgslsmith_index_u32(global2.x, 6u)], arg_0.b, 43894i, arg_0.d, arg_0.d), 4294967295u, vec3<u32>(20923u, global2.x, 0u), -2147483647i), Struct_1(vec4<i32>(arg_0.b.x, -2147483647i, arg_0.a.x, -17272i), arg_0.a.yx, 9080i, arg_0.e, -270f), Struct_2(arg_0), Struct_2(Struct_1(vec4<i32>(arg_0.b.x, -30684i, arg_0.c, 1i), vec2<i32>(arg_0.c, 0i), 59650i, arg_0.e, arg_0.e)))))).a, 31577u, firstLeadingBit(vec3<u32>(global2.x & 4294967295u, firstLeadingBit(u_input.a.x), 25343u)), _wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.a.zzz), _wgslsmith_add_vec3_i32(arg_0.a.www, arg_0.a.xxx)));
    global2 = reverseBits(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, 1u, 1u, _wgslsmith_add_u32(var_0.c, u_input.a.x)), u_input.a, vec4<u32>(_wgslsmith_div_u32(4294967295u, var_0.c), ~global2.x, 0u, var_0.d.x | 0u))));
    let var_1 = var_0.a.a.yy;
    global0 = array<vec4<i32>, 6>();
    global2 = ~u_input.a;
    return _wgslsmith_f_op_f32(sign(-1000f));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(11869u, global2.x), 6u)], (vec2<i32>(countOneBits(-50896i), 28829i) << (u_input.a.yx % vec2<u32>(32u))) | abs(~(-vec2<i32>(9173i, 0i))), -40223i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(Struct_2(Struct_1(vec4<i32>(-50529i, 0i, -20884i, -23849i), vec2<i32>(0i, 8939i), -2147483647i, -190f, 1283f)), func_2(Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], vec2<i32>(-2147483647i, -60911i), 14485i, 613f, 772f), Struct_1(global0[_wgslsmith_index_u32(19783u, 6u)], vec2<i32>(2147483647i, 0i), 3480i, 333f, -1000f), global2.x, global2.xzx, -3639i), Struct_1(global0[_wgslsmith_index_u32(989u, 6u)], vec2<i32>(1i, 16383i), 10460i, 244f, -736f), Struct_2(Struct_1(vec4<i32>(1i, 0i, 3362i, 0i), vec2<i32>(2147483647i, 0i), -1i, 1272f, 882f)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(global2.x, 6u)], vec2<i32>(0i, -1i), -4451i, -320f, 433f))), Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], vec2<i32>(-27519i, 2147483647i), -1i, 631f, 1539f), Struct_1(vec4<i32>(-18609i, -605i, -12339i, -2147483647i), vec2<i32>(2147483647i, -41038i), -1i, 893f, -483f), 14003u, global2.xyw, -38446i)))) - -562f), _wgslsmith_div_f32(1279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-272f, -606f))) - 160f)));
    let var_1 = var_0.c;
    var var_2 = func_4(func_2(Struct_3(Struct_1(var_0.a, firstLeadingBit(vec2<i32>(7004i, 22310i)), 0i, _wgslsmith_f_op_f32(var_0.d + -874f), var_0.e), Struct_1(-vec4<i32>(var_0.c, var_1, 2147483647i, 1i), vec2<i32>(60081i, var_0.b.x), 0i, _wgslsmith_f_op_f32(abs(var_0.e)), 533f), global2.x, ~(~u_input.a.zyx), var_0.b.x), var_0, Struct_2(Struct_1(vec4<i32>(-24421i, 1i, var_0.c, var_1) & vec4<i32>(-9196i, var_1, -19595i, var_1), vec2<i32>(24047i, 1i), -57021i, _wgslsmith_f_op_f32(var_0.d - var_0.e), var_0.d)), Struct_2(var_0)), Struct_2(Struct_1(var_0.a, var_0.a.ww, ~var_1, func_4(Struct_2(Struct_1(vec4<i32>(-5219i, var_1, var_1, var_1), var_0.a.zz, var_1, -1013f, 706f)), func_2(Struct_3(Struct_1(var_0.a, vec2<i32>(-8116i, -20508i), 23889i, var_0.d, 116f), Struct_1(vec4<i32>(var_0.a.x, var_0.c, 2147483647i, 2147483647i), var_0.a.yx, 2147483647i, -1663f, var_0.e), u_input.a.x, u_input.a.zzx, var_0.b.x), var_0, Struct_2(var_0), Struct_2(Struct_1(var_0.a, var_0.b, var_0.b.x, -995f, var_0.d))), Struct_3(Struct_1(vec4<i32>(var_0.c, 2147483647i, -71707i, 77055i), var_0.a.yw, var_0.b.x, var_0.e, var_0.d), var_0, global2.x, u_input.a.zxx, 1i)).e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.e))))), Struct_3(func_4(func_2(Struct_3(var_0, var_0, 4294967295u, global2.wzw, -1i), func_2(Struct_3(Struct_1(vec4<i32>(var_0.b.x, var_1, var_0.c, var_1), vec2<i32>(1i, var_0.c), var_1, var_0.d, var_0.d), Struct_1(vec4<i32>(var_1, var_1, var_0.c, -2147483647i), vec2<i32>(var_0.a.x, -2147483647i), -13920i, var_0.d, var_0.e), 10833u, vec3<u32>(global2.x, u_input.a.x, global2.x), -1i), var_0, Struct_2(var_0), Struct_2(var_0)).a, func_2(Struct_3(Struct_1(vec4<i32>(0i, -2147483647i, var_0.a.x, 1i), vec2<i32>(1i, var_1), 35205i, var_0.d, var_0.d), var_0, 1u, u_input.a.zyx, 1i), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 6u)], vec2<i32>(2147483647i, var_0.c), -74882i, var_0.d, var_0.d), Struct_2(Struct_1(vec4<i32>(17361i, var_0.c, var_1, -18595i), var_0.b, 1i, 780f, -266f)), Struct_2(var_0)), func_2(Struct_3(var_0, Struct_1(vec4<i32>(var_1, var_1, var_1, -1i), var_0.b, var_0.c, var_0.e, var_0.e), 16617u, u_input.a.wxw, 19869i), var_0, Struct_2(var_0), Struct_2(Struct_1(global0[_wgslsmith_index_u32(63067u, 6u)], vec2<i32>(-1i, -1i), -2147483647i, var_0.e, 2083f)))), func_2(Struct_3(var_0, var_0, 0u, u_input.a.yyy, 2147483647i), var_0, Struct_2(var_0), Struct_2(Struct_1(global0[_wgslsmith_index_u32(23088u, 6u)], var_0.a.xw, 1i, var_0.e, -712f))), Struct_3(func_4(Struct_2(Struct_1(vec4<i32>(-5371i, 0i, var_0.b.x, -16572i), var_0.a.zx, 10297i, var_0.e, var_0.e)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 6u)], vec2<i32>(var_1, -23019i), 2147483647i, var_0.e, -1000f)), Struct_3(Struct_1(global0[_wgslsmith_index_u32(global2.x, 6u)], var_0.b, var_1, -185f, -1384f), var_0, 1u, global2.xxw, 1i)), var_0, ~0u, vec3<u32>(0u, u_input.a.x, 7333u) ^ vec3<u32>(0u, u_input.a.x, 0u), abs(-2147483647i))), Struct_1(vec4<i32>(_wgslsmith_add_i32(-2147483647i, 0i), -var_1, var_0.c, _wgslsmith_add_i32(2147483647i, var_1)), _wgslsmith_div_vec2_i32(vec2<i32>(33219i, 49785i), _wgslsmith_mult_vec2_i32(var_0.a.zz, vec2<i32>(var_0.a.x, var_0.c))), 30591i, _wgslsmith_f_op_f32(func_5(var_0)), _wgslsmith_f_op_f32(-var_0.d)), countOneBits(max(select(global2.x, 72640u, false), ~u_input.a.x)), select(~u_input.a.wzy, abs(select(global2.wwx, vec3<u32>(u_input.a.x, 0u, 16736u), vec3<bool>(false, false, false))), true), _wgslsmith_mult_i32(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 0i), vec2<i32>(0i, 0i)))));
    let var_3 = vec2<bool>(all(vec4<bool>(false, true, any(vec2<bool>(true, true)), true == all(vec3<bool>(false, false, false)))), !(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global2.x, 4839u), ~875u, ~u_input.a.x) > ~u_input.a.x));
    let var_4 = ~4294967295u;
    return func_2(Struct_3(var_0, var_0, u_input.a.x << (firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(var_4, 1u))) % 32u), u_input.a.ywy, i32(-1i) * -36796i), var_0, Struct_2(func_2(Struct_3(Struct_1(vec4<i32>(35226i, -1i, var_1, -2147483647i), var_0.b, var_2.b.x, 1676f, 780f), func_4(Struct_2(Struct_1(var_0.a, var_2.b, -1i, -1000f, 728f)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 6u)], var_2.a.zz, var_2.b.x, var_2.d, var_2.d)), Struct_3(var_0, var_0, 90322u, vec3<u32>(u_input.a.x, var_4, 1u), var_2.b.x)), countOneBits(var_4), vec3<u32>(4294967295u, var_4, var_4), ~var_0.c), var_0, func_2(Struct_3(var_0, Struct_1(global0[_wgslsmith_index_u32(0u, 6u)], vec2<i32>(var_1, var_2.b.x), -2258i, var_0.e, 1422f), global2.x, vec3<u32>(var_4, 25812u, 49424u), -2147483647i), var_0, Struct_2(Struct_1(var_0.a, vec2<i32>(-1i, var_0.a.x), var_0.c, var_2.e, var_2.d)), func_2(Struct_3(var_0, var_0, global2.x, vec3<u32>(12293u, 1u, var_4), 6159i), var_0, Struct_2(Struct_1(var_0.a, var_2.a.wz, -2147483647i, var_2.d, -1332f)), Struct_2(Struct_1(vec4<i32>(0i, -1i, var_1, var_0.c), vec2<i32>(var_1, 0i), 2147483647i, 690f, 334f)))), Struct_2(func_2(Struct_3(Struct_1(vec4<i32>(-12240i, var_1, var_2.a.x, 2147483647i), var_2.b, var_2.a.x, var_2.e, var_0.d), var_0, 27539u, vec3<u32>(47545u, global2.x, 93190u), var_2.c), var_0, Struct_2(Struct_1(vec4<i32>(0i, -42403i, var_1, var_1), vec2<i32>(-49788i, var_2.a.x), var_1, 402f, 983f)), Struct_2(var_0)).a)).a), Struct_2(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = ((var_0.a.b.x >> (~abs(u_input.a.x) % 32u)) >> (1u % 32u)) <= var_0.a.c;
    let var_1 = 1i;
    let var_2 = var_0.a.a.wy;
    var var_3 = ~u_input.a;
    global1 = true;
    global2 = u_input.a;
    global2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.xyx, max(select(vec3<i32>(36675i, var_1, 20942i), var_0.a.a.zzw, false) ^ countOneBits(var_0.a.a.wzz), vec3<i32>(~0i, _wgslsmith_add_i32(2147483647i, var_2.x), firstLeadingBit(16793i))) >> ((abs(vec3<u32>(u_input.a.x, 36564u, 4294967295u)) << (countOneBits(vec3<u32>(u_input.a.x, 0u, global2.x) ^ vec3<u32>(1u, var_3.x, 22288u)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~global2.xxw, var_2.x, -var_0.a.b ^ _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.b.x, 2147483647i), _wgslsmith_mod_vec2_i32(var_2, vec2<i32>(2147483647i, var_2.x))), reverseBits(vec2<i32>(var_0.a.c, 1i) & vec2<i32>(1i, 6000i))));
}

