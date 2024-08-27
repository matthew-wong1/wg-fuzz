struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_1(!(!(!(!global0.a))), arg_0.x, abs(vec2<i32>(_wgslsmith_mult_i32(-global0.c.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_add_i32(-1i, firstLeadingBit(0i)))));
    global1 = ~min(vec4<i32>(_wgslsmith_mod_i32(var_0.c.x, countOneBits(global1.x)), (8808i ^ var_0.c.x) ^ -34942i, 16541i, ~(i32(-1i) * -1i)), reverseBits(-_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.x, u_input.a.x, var_0.c.x, -23936i), vec4<i32>(32578i, -2147483647i, -62008i, -1i))));
    global0 = var_0;
    global0 = Struct_1(all(select(vec4<bool>(!global0.a, any(vec3<bool>(false, false, false)), var_0.a && true, select(false, global0.a, true)), vec4<bool>(any(vec3<bool>(true, false, global0.a)), global0.a, !global0.a, !var_0.a), vec4<bool>(!var_0.a, false, all(vec2<bool>(false, true)), true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1431f, global0.b)), _wgslsmith_f_op_f32(-global0.b)) * -1233f), reverseBits(reverseBits(global0.c) << ((_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 22221u), vec2<u32>(21368u, 4296u), vec2<u32>(17606u, 25268u)) ^ vec2<u32>(11748u, 55931u)) % vec2<u32>(32u))));
    return select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, var_0.a), true))), vec2<bool>(true, true), -685f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) - _wgslsmith_f_op_f32(global0.b + var_0.b)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(global0.a, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1708f, arg_0.x))), abs(vec2<i32>(_wgslsmith_clamp_i32(global1.x, global1.x, u_input.a.x), ~global0.c.x))), select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1499f, global0.b, -575f))), !select(vec2<bool>(false, global0.a), select(arg_1.xx, arg_1.yw, false), func_3(vec3<f32>(global0.b, 1499f, global0.b))), vec2<bool>((-1212f <= global0.b) || select(global0.a, global0.a, global0.a), 1i > firstTrailingBit(-15731i))), Struct_2(Struct_1(!global0.a, global0.b, global0.c), !arg_1.xx, all(func_3(vec3<f32>(505f, -319f, arg_0.x)))), Struct_1(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b), -412f)), u_input.a.zx), Struct_2(Struct_1(func_3(vec3<f32>(713f, arg_0.x, arg_0.x)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b))), ~vec2<i32>(-48258i, global0.c.x) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(global0.c.x, 70232i), global1.wz)), !select(func_3(vec3<f32>(531f, global0.b, arg_0.x)), arg_1.zw, vec2<bool>(true, true)), !(1i != global0.c.x)));
    let var_1 = _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 1i), ~u_input.a.zz) ^ min(vec2<i32>(global0.c.x, 0i) >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, 62028u), vec2<u32>(1u, 15704u)) % vec2<u32>(32u)), ~(-vec2<i32>(global0.c.x, u_input.a.x))), -var_0.c.a.c);
    let var_2 = var_0.c;
    var var_3 = vec4<u32>(58117u, min(_wgslsmith_div_u32(16170u, _wgslsmith_dot_vec2_u32(vec2<u32>(47686u, 4294967295u), reverseBits(vec2<u32>(35444u, 1u)))), ~11999u), select(4294967295u, ~min(_wgslsmith_sub_u32(26527u, 0u), 1u), global0.a), abs(~(~33622u)));
    global0 = Struct_1(!var_2.a.a, 1410f, vec2<i32>(_wgslsmith_clamp_i32(3359i, _wgslsmith_mod_i32(~var_2.a.c.x, -3089i), -(var_2.a.c.x >> (0u % 32u))), _wgslsmith_div_i32(4610i, abs(~var_1))));
    return Struct_1(any(vec3<bool>(false, arg_1.x, false)), arg_0.x, ~u_input.a.yy);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1.b;
    let var_1 = -129f;
    return vec4<i32>(arg_1.c.x, select(abs(arg_1.c.x), arg_1.c.x | _wgslsmith_clamp_i32(~global1.x, countOneBits(-2147483647i), _wgslsmith_add_i32(global0.c.x, 0i)), !(!(global0.c.x == arg_0.d.c.x))), -1i, 1i << (0u % 32u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(4294967295u, ~1u), 1u, 0u);
    global1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c.x, arg_0.a.c.x, -1i ^ min(global0.c.x, -28955i), ~(i32(-1i) * -51381i)), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.x, 2147483647i, u_input.a.x, arg_0.a.c.x), vec4<i32>(47954i, -29421i, global0.c.x, arg_0.a.c.x)))), global0.c.x, arg_0.a.c.x, _wgslsmith_add_i32(arg_0.a.c.x, _wgslsmith_mult_i32(-_wgslsmith_mod_i32(arg_0.a.c.x, global1.x), arg_3.x)));
    global1 = func_4(Struct_3(arg_0.a, arg_1.e.b, Struct_2(arg_0.a, arg_0.b, !arg_1.a.a & select(true, true, true)), func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-753f, arg_0.a.b), vec2<f32>(1029f, arg_0.a.b)))), vec4<bool>(any(vec4<bool>(global0.a, true, true, global0.a)), select(arg_1.e.c, arg_0.b.x, arg_1.c.a.a), var_0.x < var_0.x, !global0.a)), arg_1.e), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(368f, arg_1.d.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(540f, -945f)))), !select(vec4<bool>(arg_0.c, arg_1.b.x, true, true), vec4<bool>(arg_0.b.x, arg_0.b.x, false, global0.a), arg_1.d.a)));
    var_0 = reverseBits(vec3<u32>(~reverseBits(7838u) >> (~(var_0.x << (var_0.x % 32u)) % 32u), _wgslsmith_div_u32(var_0.x, ~var_0.x), _wgslsmith_add_u32(4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(65419u, var_0.x, var_0.x, 4294967295u), vec4<u32>(61662u, 4294967295u, 19986u, var_0.x)), 21753u)));
    var_0 = ~(~vec3<u32>(var_0.x << (~var_0.x % 32u), _wgslsmith_add_u32(~0u, var_0.x), 4294967295u));
    return 1u;
}

fn func_5(arg_0: vec4<u32>) -> i32 {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(global0.c.x, -u_input.a.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(global1.xz) & global0.c, countOneBits(~global0.c)), -(u_input.a.x ^ 1i)), firstTrailingBit(~(u_input.a.x & -2147483647i) & u_input.a.x));
    var_0 = vec3<i32>(global1.x, firstTrailingBit(35985i), var_0.x);
    var var_1 = _wgslsmith_mult_vec3_u32(~(~abs(vec3<u32>(36595u, 4294967295u, 39555u))), ~reverseBits(arg_0.zxy) ^ arg_0.wzz);
    let var_2 = true;
    let var_3 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b, -600f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 167f))))), !vec4<bool>(true, var_2, global0.b < global0.b, true)), select(vec2<bool>((u_input.a.x >> (1u % 32u)) >= ~u_input.a.x, !func_2(vec2<f32>(global0.b, global0.b), vec4<bool>(global0.a, global0.a, var_2, false)).a), vec2<bool>(true, var_2), !(!vec2<bool>(global0.a, true))), Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f * global0.b)), vec2<i32>(u_input.a.x, ~(-1i))), !select(vec2<bool>(var_2, true), !vec2<bool>(global0.a, global0.a), global0.b > global0.b), true), Struct_1(!func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, -701f)), select(vec4<bool>(true, false, global0.a, false), vec4<bool>(true, var_2, global0.a, var_2), false)).a, _wgslsmith_f_op_f32(-global0.b), var_0.zx), Struct_2(func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-574f, global0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, global0.b)))), !vec4<bool>(false, global0.a, true, var_2)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, var_2), var_2), vec2<bool>(var_2, var_2), select(vec2<bool>(var_2, false), vec2<bool>(global0.a, true), vec2<bool>(var_2, global0.a))), vec2<bool>(all(vec4<bool>(true, false, global0.a, global0.a)), all(vec3<bool>(true, var_2, global0.a))), false), true & func_3(vec3<f32>(global0.b, global0.b, global0.b)).x));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(func_5(vec4<u32>(53385u ^ func_1(Struct_2(Struct_1(global0.a, global0.b, u_input.a.yy), vec2<bool>(true, global0.a), false), Struct_3(Struct_1(global0.a, 361f, vec2<i32>(global0.c.x, 4731i)), vec2<bool>(false, false), Struct_2(Struct_1(false, global0.b, u_input.a.yz), vec2<bool>(true, global0.a), false), Struct_1(true, global0.b, vec2<i32>(global1.x, -1i)), Struct_2(Struct_1(false, -1000f, global1.yx), vec2<bool>(global0.a, global0.a), true)), -514f, u_input.a), 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 70129u, 0u, 24990u)), 0u >> (firstTrailingBit(0u) % 32u))), firstLeadingBit(16495i), (~(-2147483647i) ^ ~_wgslsmith_div_i32(global0.c.x, -2147483647i)) >> (~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(39279u, 0u, 0u, 0u), vec4<u32>(57527u, 63362u, 23381u, 1u)), _wgslsmith_clamp_u32(30374u, 1u, 1u)) % 32u), 2147483647i);
    var var_0 = ~countOneBits(_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.x, -6503i), u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 22457i, -36847i), u_input.a), vec3<i32>(global1.x, global0.c.x, global0.c.x) | u_input.a)));
    let var_1 = global0.a;
    let var_2 = _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(1u, ~83415u)), ~(~(~9866u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(14594u, 57346u, 23588u, 15774u), vec4<u32>(1u, 0u, 1u, 0u)) % 32u))));
    var var_3 = ~_wgslsmith_sub_u32(firstLeadingBit(var_2), var_2);
    var var_4 = _wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(~var_2, var_2)), ~_wgslsmith_clamp_u32((323u | var_2) >> (4294967295u % 32u), reverseBits(countOneBits(13739u)), _wgslsmith_clamp_u32(4294967295u, var_2, 26542u) ^ _wgslsmith_sub_u32(var_2, 0u)));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 403f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(837f);
}

