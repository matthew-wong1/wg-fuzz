struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(~vec2<i32>(-arg_0, 1i), _wgslsmith_mult_vec4_i32(u_input.a, -(~(~arg_1.a.d))), arg_1.a.c, vec4<i32>(~abs(-2147483647i), reverseBits(1i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_1.a.a.x << (4294967295u % 32u), arg_1.a.a.x), _wgslsmith_mult_i32(arg_1.a.a.x, arg_1.a.b.x), _wgslsmith_add_i32(-u_input.a.x, ~(-38399i))), -countOneBits(1i) << (~countOneBits(arg_1.c.x) % 32u)), reverseBits(_wgslsmith_clamp_vec2_u32(abs(countOneBits(arg_1.c.xy)), vec2<u32>(_wgslsmith_add_u32(25688u, arg_1.e), ~u_input.d), ~abs(arg_1.c.zy))));
    let var_1 = ~vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-1i, arg_0, _wgslsmith_add_i32(0i, arg_0))), var_0.d.x);
    var var_2 = var_0.a & firstTrailingBit(countOneBits(var_1));
    let var_3 = Struct_5(!(true && var_0.c), -40316i, select(!select(vec4<bool>(false, false, var_0.c, arg_1.d.x), !arg_1.d, select(vec4<bool>(arg_1.a.c, true, var_0.c, true), arg_1.d, arg_1.d)), arg_1.d, !select(arg_1.d, arg_1.d, true)), Struct_4(var_0, -1024f, vec3<u32>(0u, firstTrailingBit(arg_1.c.x), 4294967295u), arg_1), var_0.c);
    var var_4 = Struct_2(arg_1.a, var_3.d.d.d.yy, arg_1.c, !select(select(!vec4<bool>(var_0.c, var_3.c.x, true, true), !var_3.c, var_3.c), !(!arg_1.d), -var_0.d.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.a.b.x, 2147483647i, var_2.x), arg_1.a.b)), reverseBits(1u));
    return vec4<bool>(true, false, true, !(!any(var_4.d)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1600f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -282f)))));
    let var_1 = var_0;
    let var_2 = arg_1.a;
    var var_3 = true;
    let var_4 = Struct_3(arg_1, abs(~u_input.d), !vec2<bool>(all(arg_1.d) | (arg_1.a.c == false), arg_1.d.x), var_1, all(select(select(vec4<bool>(var_2.c, true, false, true), !vec4<bool>(false, false, true, var_2.c), -863f != var_1), !(!vec4<bool>(arg_1.a.c, arg_1.a.c, false, false)), func_3(-30749i, arg_1))));
    return Struct_2(Struct_1(vec2<i32>(_wgslsmith_mod_i32(var_4.a.a.b.x, var_4.a.a.b.x), -12233i) >> (abs(vec2<u32>(1u, arg_0)) % vec2<u32>(32u)), countOneBits(var_2.b), true, firstLeadingBit(vec4<i32>(var_4.a.a.b.x, -3085i, var_4.a.a.a.x, 23743i) >> (vec4<u32>(0u, u_input.d, 0u, 6112u) % vec4<u32>(32u))), ~vec2<u32>(61040u, countOneBits(4294967295u))), vec2<bool>((false || any(arg_1.d)) & false, !(!(!arg_1.a.c))), arg_1.c, !var_4.a.d, 0u);
}

fn func_1(arg_0: Struct_5) -> i32 {
    let var_0 = select(true, true, arg_0.a) & (firstLeadingBit(arg_0.d.a.e.x) != (reverseBits(firstTrailingBit(arg_0.d.c.x)) | 47680u));
    let var_1 = 40362i;
    var var_2 = func_2(~1552u, arg_0.d.d);
    var_2 = Struct_2(arg_0.d.d.a, vec2<bool>(var_2.a.c, !var_2.b.x), ~(~vec3<u32>(~u_input.d, var_2.e, ~25395u)), select(vec4<bool>(true, !(!var_2.b.x), true, arg_0.e), vec4<bool>(arg_0.e, arg_0.c.x, true, func_2(33287u ^ arg_0.d.c.x, func_2(4294967295u, Struct_2(Struct_1(arg_0.d.a.d.xx, u_input.a, var_0, vec4<i32>(arg_0.d.a.b.x, -2147483647i, arg_0.b, u_input.a.x), var_2.c.xz), var_2.b, vec3<u32>(36486u, var_2.c.x, u_input.d), var_2.d, var_2.c.x))).d.x), true), _wgslsmith_add_u32(~var_2.c.x, 1u));
    var var_3 = Struct_3(func_2(_wgslsmith_mod_u32(firstLeadingBit(~4294967295u), _wgslsmith_div_u32(82902u, _wgslsmith_dot_vec2_u32(var_2.c.yy, var_2.a.e))), arg_0.d.d), ~128948u, vec2<bool>(true, all(!(!arg_0.c.wyw))), arg_0.d.b, false);
    return arg_0.d.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(u_input.a.zx) & -_wgslsmith_add_vec2_i32(firstLeadingBit(u_input.a.xy), -u_input.a.yw), vec4<i32>(~1i, 17604i, _wgslsmith_add_i32(u_input.c, func_1(Struct_5(false, -387i, vec4<bool>(false, false, false, true), Struct_4(Struct_1(u_input.a.xz, u_input.a, true, vec4<i32>(u_input.a.x, -18996i, 2147483647i, u_input.c), vec2<u32>(u_input.d, 36196u)), 1205f, vec3<u32>(u_input.d, 1u, u_input.d), Struct_2(Struct_1(u_input.a.yx, vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), true, vec4<i32>(1i, u_input.c, 1i, -42864i), vec2<u32>(1u, u_input.d)), vec2<bool>(true, true), vec3<u32>(u_input.d, 0u, 29511u), vec4<bool>(true, true, true, true), 36740u)), true))) & max(u_input.c >> (27925u % 32u), ~u_input.b), u_input.a.x), all(func_2(~(~89927u), Struct_2(func_2(u_input.d, Struct_2(Struct_1(vec2<i32>(27954i, u_input.b), u_input.a, true, vec4<i32>(1i, 36170i, -2147483647i, -2147483647i), vec2<u32>(u_input.d, u_input.d)), vec2<bool>(false, false), vec3<u32>(u_input.d, u_input.d, 1u), vec4<bool>(false, true, false, false), 4294967295u)).a, vec2<bool>(true, false), vec3<u32>(51517u, u_input.d, 0u) << (vec3<u32>(45387u, 4294967295u, u_input.d) % vec3<u32>(32u)), vec4<bool>(true, true, true, true), 4294967295u)).d), select(u_input.a, vec4<i32>(62124i, ~u_input.a.x, -3349i, firstTrailingBit(2147483647i)), func_3(-u_input.a.x, Struct_2(Struct_1(u_input.a.xx, u_input.a, false, u_input.a, vec2<u32>(4294967295u, 14548u)), vec2<bool>(false, false), vec3<u32>(0u, u_input.d, u_input.d), vec4<bool>(false, true, true, false), 4294967295u))) | -(u_input.a & vec4<i32>(u_input.b, 2147483647i, -15904i, -1i)), vec2<u32>(abs(~_wgslsmith_div_u32(u_input.d, 4294967295u)), abs((u_input.d ^ u_input.d) & select(1u, 63545u, true))));
    var var_1 = ~0i ^ ~func_2(_wgslsmith_mult_u32(var_0.e.x, u_input.d), func_2(_wgslsmith_mult_u32(var_0.e.x, 0u), func_2(u_input.d, Struct_2(Struct_1(u_input.a.yx, vec4<i32>(0i, 9292i, var_0.a.x, var_0.d.x), true, vec4<i32>(-15855i, u_input.c, u_input.b, -27567i), vec2<u32>(u_input.d, 20744u)), vec2<bool>(var_0.c, var_0.c), vec3<u32>(var_0.e.x, var_0.e.x, 113301u), vec4<bool>(true, var_0.c, false, var_0.c), u_input.d)))).a.d.x;
    var_0 = func_2(~func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_0.e.x, var_0.e.x), vec3<u32>(183u, 14737u, var_0.e.x)), Struct_2(Struct_1(u_input.a.wz, var_0.d, true, vec4<i32>(1i, u_input.b, 45107i, var_0.a.x), vec2<u32>(var_0.e.x, 1u)), vec2<bool>(true, false), vec3<u32>(11152u, 4294967295u, u_input.d), vec4<bool>(true, var_0.c, var_0.c, false), var_0.e.x)).e & ~u_input.d, Struct_2(Struct_1(vec2<i32>(var_0.d.x, -var_0.b.x), ~select(vec4<i32>(58117i, var_0.a.x, 30273i, -1i), u_input.a, var_0.c), var_0.c, -var_0.d, var_0.e ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(15981u, 18043u), var_0.e, vec2<u32>(u_input.d, u_input.d))), select(!func_3(var_0.a.x, Struct_2(Struct_1(var_0.b.xz, vec4<i32>(var_0.d.x, 60888i, -2147483647i, -2147483647i), false, u_input.a, vec2<u32>(0u, var_0.e.x)), vec2<bool>(false, false), vec3<u32>(var_0.e.x, var_0.e.x, 4723u), vec4<bool>(false, false, true, var_0.c), var_0.e.x)).xw, !(!vec2<bool>(var_0.c, var_0.c)), var_0.c), vec3<u32>(_wgslsmith_sub_u32(3634u, u_input.d) | (61517u >> (0u % 32u)), countOneBits(max(u_input.d, 1u)), 24056u), select(func_3(var_0.a.x >> (1u % 32u), Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), vec4<i32>(26674i, u_input.a.x, 2147483647i, u_input.a.x), false, vec4<i32>(var_0.b.x, var_0.d.x, var_0.b.x, u_input.a.x), var_0.e), vec2<bool>(var_0.c, true), vec3<u32>(4815u, 57968u, 77973u), vec4<bool>(var_0.c, true, true, false), u_input.d)), !vec4<bool>(false, var_0.c, false, false), func_3(-1i, Struct_2(Struct_1(vec2<i32>(u_input.a.x, 2147483647i), vec4<i32>(u_input.c, -32270i, 1i, 32724i), false, vec4<i32>(-9586i, 8380i, 0i, -14813i), vec2<u32>(0u, 4294967295u)), vec2<bool>(true, false), vec3<u32>(1u, u_input.d, var_0.e.x), vec4<bool>(var_0.c, false, true, var_0.c), u_input.d))), u_input.d)).a;
    var_0 = Struct_1(u_input.a.zw, vec4<i32>(-1i) * -vec4<i32>(-230i, u_input.b ^ var_0.b.x, -u_input.b, u_input.c), abs(var_0.d.x) > (i32(-1i) * -var_0.a.x), vec4<i32>(-8296i, _wgslsmith_add_i32(countOneBits(firstLeadingBit(u_input.c)), 14827i), -1i, ~firstTrailingBit(u_input.b | var_0.a.x)), ~reverseBits(vec2<u32>(~970u, _wgslsmith_dot_vec2_u32(var_0.e, var_0.e))));
    var var_2 = func_2(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, var_0.e.x, 0u, max(78020u, 17801u)), vec4<u32>(func_2(var_0.e.x, Struct_2(Struct_1(u_input.a.zy, vec4<i32>(u_input.a.x, -1i, 0i, -1i), var_0.c, var_0.d, var_0.e), vec2<bool>(var_0.c, false), vec3<u32>(119385u, 0u, 22890u), vec4<bool>(var_0.c, var_0.c, false, var_0.c), u_input.d)).e, 1u, ~u_input.d, var_0.e.x)), var_0.e.x), Struct_2(func_2(25827u, func_2(~u_input.d, Struct_2(Struct_1(vec2<i32>(2147483647i, 5300i), u_input.a, var_0.c, u_input.a, var_0.e), vec2<bool>(var_0.c, var_0.c), vec3<u32>(4294967295u, 35047u, var_0.e.x), vec4<bool>(false, var_0.c, var_0.c, var_0.c), u_input.d))).a, func_2(max(~29154u, 40015u), func_2(1u | var_0.e.x, func_2(1u, Struct_2(Struct_1(vec2<i32>(var_0.d.x, -28889i), vec4<i32>(7951i, u_input.b, 21128i, u_input.c), true, vec4<i32>(u_input.b, var_0.a.x, var_0.a.x, -19140i), var_0.e), vec2<bool>(false, false), vec3<u32>(1u, var_0.e.x, var_0.e.x), vec4<bool>(false, true, false, true), u_input.d)))).b, _wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.d, var_0.e.x, 55287u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.e.x, var_0.e.x), vec3<u32>(130899u, u_input.d, u_input.d)), var_0.c), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.d, 1u), ~vec3<u32>(var_0.e.x, 1u, 0u), vec3<u32>(u_input.d, 1u, var_0.e.x))), vec4<bool>(!(!var_0.c), ~var_0.e.x >= u_input.d, true, true), 4294967295u)).a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-469f, 295f, -1196f, 362f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-453f, 1000f, -786f, -1131f), vec4<f32>(-241f, -967f, 833f, -1000f), vec4<bool>(true, var_0.c, var_0.c, var_0.c))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, -1146f, -988f, 195f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(-1000f, -1567f, -638f, 295f)))), 1134f);
}

