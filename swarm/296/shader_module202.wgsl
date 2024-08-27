struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = Struct_3(~global0.a >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d, 46054u, 20998u) << (vec4<u32>(0u, 23385u, u_input.d, 45101u) % vec4<u32>(32u)), vec4<u32>(global0.b, global0.b, u_input.d, global0.b) ^ vec4<u32>(1u, 4294967295u, global0.b, 1u)), ~u_input.a << (reverseBits(44842u) % 32u), ~0u) % vec3<u32>(32u)), u_input.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.b), global1.b) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(global0.c, global0.c))))))), ~countOneBits(_wgslsmith_dot_vec2_i32(global0.a.xz, -vec2<i32>(arg_0.x, global0.a.x))));
    return ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 0u, var_1.b, var_1.b), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, global0.b, 0u, u_input.a), vec4<u32>(40875u, var_1.b, global0.b, global0.b))) ^ select(~vec4<u32>(1u, 46335u, var_1.b, var_1.b), ~vec4<u32>(0u, 0u, var_1.b, global0.b), vec4<bool>(var_0, true, var_0, var_0)), abs(max(vec4<u32>(global0.b, global0.b, 16286u, global0.b), vec4<u32>(30043u, 33739u, 48592u, var_1.b) << (vec4<u32>(var_1.b, u_input.a, 4294967295u, 16491u) % vec4<u32>(32u)))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = global0.b;
    let var_1 = select(firstTrailingBit(~countOneBits(func_3(arg_1.a.c, -1i, Struct_1(1i, -1627f, global1.c)))), vec4<u32>(_wgslsmith_clamp_u32(47037u, global0.b, global0.b) >> (reverseBits(4294967295u) % 32u), _wgslsmith_mult_u32(~arg_1.c, 4294967295u), arg_1.d, 101229u) ^ vec4<u32>(~global0.b | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, 9918u), vec4<u32>(0u, global0.b, 1u, arg_1.d)), ~global0.b, global0.b, 0u), any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), !vec3<bool>(true, arg_2.x, true), arg_2.x), vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, true, arg_2.x)), true))));
    let var_2 = select(select(!select(vec4<bool>(true, arg_2.x, false, false), !vec4<bool>(true, arg_2.x, true, true), !arg_2.x), select(vec4<bool>(arg_2.x || false, true, false, true), select(!vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), !vec4<bool>(false, true, false, arg_2.x), true), vec4<bool>(true, any(vec3<bool>(arg_2.x, false, true)), arg_2.x, true)), all(select(select(vec3<bool>(arg_2.x, true, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), vec3<bool>(false, arg_2.x, false), true))), vec4<bool>(arg_2.x, arg_2.x, true, all(arg_2)), any(!vec4<bool>(arg_2.x, true, arg_2.x, any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)))));
    let var_3 = Struct_1(_wgslsmith_clamp_i32(select(_wgslsmith_div_i32(arg_3.x, 6561i), min(global0.d, ~u_input.c.x), var_2.x), 14439i | abs(arg_1.a.a), reverseBits(global1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_1.a.b)))), arg_1.a.b), u_input.c);
    var var_4 = Struct_2(Struct_1(abs(firstLeadingBit(1i)), _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(-1302f - -1268f)), vec4<i32>(u_input.c.x, 2147483647i, global0.a.x, 2147483647i) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.x, 1i, 2147483647i, -30083i), vec4<i32>(9853i, -2147483647i, arg_3.x, arg_1.a.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(202f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b + var_3.b))), arg_2.x)), _wgslsmith_f_op_f32(-var_3.b))), 4294967295u, firstTrailingBit(arg_0));
    return Struct_1(var_4.a.a << (~(~countOneBits(arg_1.c)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), -arg_1.a.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(17525i, _wgslsmith_f_op_f32(trunc(arg_0.b)), u_input.c);
    global0 = Struct_3(_wgslsmith_mult_vec3_i32(select(~vec3<i32>(arg_1.x, arg_1.x, var_0.a), vec3<i32>(-16034i, 13015i, u_input.b.x), arg_3) << (vec3<u32>(15115u, u_input.a ^ global0.b, 0u) % vec3<u32>(32u)), vec3<i32>(1i, ~(arg_2.x >> (0u % 32u)), 2147483647i)), _wgslsmith_div_u32(firstLeadingBit(global0.b), 0u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global0.b, global0.b), ~u_input.a), ~_wgslsmith_sub_vec2_u32(vec2<u32>(23130u, u_input.a), vec2<u32>(u_input.d, global0.b))) % 32u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global0.c * global0.c))), _wgslsmith_dot_vec3_i32(-countOneBits(-var_0.c.wzw), func_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 21353u)), Struct_2(func_2(global0.b, Struct_2(arg_0, 315f, 59312u, 22956u), arg_3.yx, vec3<i32>(arg_1.x, -2147483647i, 47120i)), _wgslsmith_f_op_f32(min(-550f, 287f)), _wgslsmith_mod_u32(u_input.d, global0.b), 4294967295u), vec2<bool>(!arg_3.x, 0u == u_input.d), arg_0.c.ywx).c.yyy));
    var_0 = func_2(12721u, Struct_2(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global0.c.x)), false)), global0.b, min(u_input.d ^ 7095u, ~12256u) & ~max(1u, 4263u)), !(!vec2<bool>(false, arg_3.x)), vec3<i32>(13510i, _wgslsmith_dot_vec3_i32(global0.a, ~(arg_0.c.zww ^ var_0.c.xxy)), i32(-1i) * -15616i));
    var var_1 = max(-(~_wgslsmith_mult_vec3_i32(global1.c.zxx, _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, global0.d, -2147483647i), global1.c.zxx))), arg_1);
    var var_2 = func_3(global1.c, -15921i, Struct_1(var_1.x, global0.c.x, arg_0.c)) << (abs((~vec4<u32>(39208u, 47632u, u_input.a, 10997u) >> (select(vec4<u32>(global0.b, 3548u, 35526u, 0u), vec4<u32>(4294967295u, u_input.a, global0.b, 13023u), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(37509u, u_input.a, 1u, 1u), vec4<u32>(17346u, global0.b, u_input.a, 0u), vec4<u32>(u_input.d, 29400u, 0u, 4294967295u)), func_3(arg_0.c, var_0.a, Struct_1(u_input.c.x, 729f, vec4<i32>(arg_2.x, -31421i, -1i, var_0.c.x)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return func_2(global0.b, Struct_2(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b))), 4294967295u, ~u_input.a), arg_3.zz, ~abs(vec3<i32>(arg_1.x, -18121i, -43454i)));
}

fn func_1() -> u32 {
    global1 = func_4(func_2(global0.b, Struct_2(Struct_1(-1i >> (u_input.a % 32u), _wgslsmith_f_op_f32(max(142f, global1.b)), vec4<i32>(global0.a.x, global1.c.x, global0.d, global1.a) >> (vec4<u32>(global0.b, u_input.a, u_input.a, 8752u) % vec4<u32>(32u))), 588f, ~4294967295u, _wgslsmith_add_u32(~24692u, _wgslsmith_mult_u32(1u, 6937u))), vec2<bool>(true, true), -vec3<i32>(1i, global0.d, global0.d) & -vec3<i32>(global1.c.x, global0.a.x, -675i)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(abs(global0.d), _wgslsmith_mult_i32(0i, 40148i), 41104i >> (u_input.a % 32u))), u_input.c.zyw), firstLeadingBit(u_input.c.xwy), vec3<bool>(all(vec4<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(false, true, false)), true, false)), true, select(!any(vec2<bool>(true, false)), true, false)));
    var var_0 = ~(~firstTrailingBit(vec2<u32>(1u, 1u)) | vec2<u32>(5889u, _wgslsmith_sub_u32(3120u & global0.b, 16680u)));
    let var_1 = 25176i;
    let var_2 = firstTrailingBit(1u);
    let var_3 = Struct_2(func_4(func_4(Struct_1(-46097i, _wgslsmith_f_op_f32(max(926f, global1.b)), func_4(Struct_1(0i, 602f, vec4<i32>(u_input.c.x, -1i, -33272i, -1i)), u_input.c.xzy, u_input.c.zxx, vec3<bool>(false, false, false)).c), vec3<i32>(var_1, var_1, var_1), abs(reverseBits(global0.a)), vec3<bool>(true, true, true)), u_input.c.ywz, u_input.c.yxx, select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(false, false, false), 14481u >= u_input.a), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(761f, global0.c.x))), func_2(u_input.a, Struct_2(Struct_1(37729i, 773f, global1.c), global1.b, 43172u, 1u), vec2<bool>(false, false), vec3<i32>(9586i, 1i, -3190i) & vec3<i32>(var_1, 0i, var_1)).b))), ~(4294967295u >> ((func_3(vec4<i32>(var_1, var_1, -6375i, 0i), var_1, Struct_1(46285i, -636f, u_input.c)).x << (u_input.a % 32u)) % 32u)), 22320u);
    return 6805u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_add_u32(~func_1(), 22593u));
    var_0 = ~(~global0.b);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(638f, -203f, (global0.b ^ (u_input.d ^ 42666u)) == 42526u)), _wgslsmith_div_f32(-641f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(trunc(1480f)))))), _wgslsmith_f_op_f32(step(-2566f, global1.b)), _wgslsmith_f_op_f32(-global1.b));
    var var_2 = u_input.c;
    let var_3 = ~vec2<u32>(~23610u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~global1.c.ywy), u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -136f), global0.a.x, vec3<f32>(_wgslsmith_f_op_f32(func_2(~0u, Struct_2(Struct_1(1i, 972f, vec4<i32>(var_2.x, u_input.c.x, u_input.c.x, u_input.c.x)), -2068f, 0u, 19955u), vec2<bool>(true, true), var_2.wwy ^ global0.a).b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))), -843f, -1000f));
}

