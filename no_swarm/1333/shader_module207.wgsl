struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    return min(firstLeadingBit(-2147483647i), ~arg_0.x);
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> i32 {
    var var_0 = abs(((~vec4<i32>(-1i, 0i, 0i, u_input.b) ^ abs(vec4<i32>(u_input.b, -2147483647i, arg_0.a.a, -17398i))) >> (~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 15989u) % vec4<u32>(32u))) << (~(~(~vec4<u32>(82295u, arg_1, arg_1, 1u))) % vec4<u32>(32u)));
    var var_1 = u_input.d;
    var var_2 = firstTrailingBit(-abs(select(~arg_0.a.b.c, vec2<i32>(8695i, 2147483647i), false)));
    let var_3 = 4294967295u;
    var var_4 = vec4<u32>(19913u, ~(4294967295u | (~u_input.a.x << (~var_3 % 32u))), _wgslsmith_add_u32(1u, 25032u), _wgslsmith_dot_vec2_u32(min(arg_0.a.b.d.b.zy, ~(~vec2<u32>(arg_0.a.e.b, 4294967295u))), _wgslsmith_sub_vec2_u32(arg_0.a.b.d.b.yy, _wgslsmith_add_vec2_u32(vec2<u32>(82556u, 0u), arg_0.a.e.d.b.xz) ^ arg_0.a.e.d.b.zz)));
    return _wgslsmith_dot_vec3_i32(min(abs(var_0.zzz), _wgslsmith_clamp_vec3_i32(select(var_0.xxx, var_0.zyz, vec3<bool>(arg_0.a.b.a, true, false)) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_3, u_input.a.x, var_3), vec3<u32>(28851u, 1u, arg_0.a.b.d.b.x)) % vec3<u32>(32u)), var_0.wwy, -_wgslsmith_mult_vec3_i32(vec3<i32>(7666i, -13141i, u_input.e), var_0.www))), abs((vec3<i32>(-1i) * -var_0.yyx) & vec3<i32>(-1i, 2839i, max(u_input.e, var_2.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_5(Struct_4(1050i, arg_1.e, ~(~u_input.d.x) <= func_2(vec3<i32>(arg_1.e.d.c, u_input.b, arg_1.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1170f), 1197f))), arg_1.e));
    var var_1 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1349f - -812f) - 1368f)));
    let var_2 = 113f;
    let var_3 = vec4<i32>(-39512i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(5490i, arg_1.e.d.c, -6952i, -2147483647i), vec4<i32>(var_0.a.e.d.c, u_input.e, 1i, 1i), select(vec4<i32>(u_input.d.x, -47254i, arg_1.a, var_0.a.e.c.x), vec4<i32>(u_input.d.x, 14956i, arg_1.e.c.x, arg_1.b.d.c), false)), vec4<i32>(func_3(Struct_5(var_0.a), 66220u), 0i, i32(-1i) * -8023i, _wgslsmith_mult_i32(-2147483647i, arg_1.a))), var_0.a.e.c.x, _wgslsmith_div_i32(u_input.c, 2147483647i)) >> (~_wgslsmith_div_vec4_u32(arg_2, _wgslsmith_mod_vec4_u32(arg_2, arg_2 << (arg_2 % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_4 = Struct_3(arg_2.zy, ~(arg_2.x | firstTrailingBit(arg_1.e.b)), ~(abs(vec2<u32>(arg_2.x, 4294967295u) & vec2<u32>(0u, 4294967295u)) & arg_2.xz));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: bool) -> i32 {
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~(~max(23701u, ~u_input.a.x)));
    let var_1 = firstLeadingBit(func_4(all(!func_1(vec2<bool>(false, false), Struct_4(1i, Struct_2(true, 15134u, u_input.d, Struct_1(false, vec3<u32>(1u, u_input.a.x, u_input.a.x), -2789i, vec2<f32>(-624f, 893f))), false, vec2<f32>(-1143f, -645f), Struct_2(false, u_input.a.x, vec2<i32>(u_input.c, u_input.c), Struct_1(true, vec3<u32>(var_0, u_input.a.x, u_input.a.x), -5806i, vec2<f32>(-572f, 642f)))), vec4<u32>(17290u, u_input.a.x, 30915u, u_input.a.x))), Struct_5(Struct_4(~u_input.e, Struct_2(true, 45946u, u_input.d, Struct_1(false, vec3<u32>(var_0, var_0, 4829u), u_input.e, vec2<f32>(1647f, 1358f))), true, vec2<f32>(-198f, 944f), Struct_2(false, var_0, vec2<i32>(37182i, u_input.e), Struct_1(true, vec3<u32>(var_0, var_0, 0u), u_input.e, vec2<f32>(646f, 1023f))))), !(_wgslsmith_mod_i32(u_input.e, -2147483647i) == (u_input.e | u_input.b))));
    let var_2 = ~u_input.a.x;
    var var_3 = select(_wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 34807u, 9107u), vec3<u32>(u_input.a.x, var_0, 19356u)), vec3<u32>(~var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(50639u, 1565u, 70705u), vec3<u32>(var_2, var_0, 4294967295u)), 1u)), vec3<u32>(0u, ~_wgslsmith_mod_u32(var_0, 1u), _wgslsmith_sub_u32(var_2, var_2) >> (~var_0 % 32u)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), func_1(vec2<bool>(true, false), Struct_4(u_input.e, Struct_2(true, var_0, u_input.d, Struct_1(false, vec3<u32>(u_input.a.x, 21591u, 15929u), var_1, vec2<f32>(-260f, -1170f))), true, vec2<f32>(-188f, -1604f), Struct_2(false, u_input.a.x, vec2<i32>(var_1, 2147483647i), Struct_1(false, vec3<u32>(34718u, u_input.a.x, var_0), var_1, vec2<f32>(-507f, -1054f)))), vec4<u32>(7849u, 1u, 5728u, var_2)).x), vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(false, false, true, true)), false))) & abs(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 3254u, 10180u), vec3<u32>(14811u, var_2, 1u))));
    var var_4 = ~vec4<u32>(firstLeadingBit(abs(u_input.a.x) | var_0), _wgslsmith_sub_u32(1u, ~var_2 >> (7108u % 32u)), abs(countOneBits(0u)), select(68754u, 16176u, any(vec2<bool>(true, false))));
    var_4 = ~(_wgslsmith_mod_vec4_u32(vec4<u32>(~var_2, var_3.x, _wgslsmith_clamp_u32(4294967295u, var_3.x, var_0), ~540u), _wgslsmith_add_vec4_u32(min(vec4<u32>(var_4.x, var_0, 27476u, 76012u), vec4<u32>(1u, 1u, 1u, 0u)), vec4<u32>(var_0, u_input.a.x, u_input.a.x, 16299u) ^ vec4<u32>(2585u, var_4.x, var_0, 4294967295u))) & select(vec4<u32>(85305u, var_4.x, var_2, 1u), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, 1u, var_2, u_input.a.x), vec4<u32>(1u, var_2, var_3.x, 0u))), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), true)));
    var_4 = abs(vec4<u32>(_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(25957u, 4294967295u, var_2, 49373u), vec4<u32>(var_4.x, 8035u, var_0, u_input.a.x)), vec4<u32>(var_2, 90623u, 4294967295u, 4294967295u) | vec4<u32>(72547u, var_0, 1u, u_input.a.x))), (min(u_input.a.x, 39018u) << (var_2 % 32u)) ^ ~(var_4.x ^ 62015u), firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_4.xx, vec2<u32>(var_4.x, var_0), var_3.yx), _wgslsmith_clamp_vec2_u32(var_3.yz, var_3.xx, var_3.yx))), abs(abs(countOneBits(39669u)))));
    let x = u_input.a;
    s_output = StorageBuffer(76288u);
}

