struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 9>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_1(all(vec2<bool>(!(arg_0.b.a || false), _wgslsmith_add_u32(arg_0.a, arg_0.a) != _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(arg_0.a, arg_0.a)))));
    let var_1 = any(vec3<bool>(false, false, any(vec3<bool>(true, true, true))));
    global1 = array<Struct_3, 9>();
    let var_2 = arg_0.b;
    global0 = _wgslsmith_mult_i32(u_input.a.x, 2147483647i);
    return 4294967295u;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = arg_0.a;
    global0 = 0i;
    let var_1 = arg_0.d;
    global0 = u_input.a.x;
    var var_2 = Struct_2(~(1u | countOneBits(_wgslsmith_add_u32(var_1.a, 46246u))), arg_1);
    return func_3(Struct_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(15717u, var_0.a, var_1.a, 56367u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, 1u, 27953u, var_0.a), vec4<u32>(var_2.a, var_2.a, 25560u, 0u))), Struct_1(arg_2 != !arg_1.a)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c, -219f))), _wgslsmith_f_op_f32(arg_0.c * 1021f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * arg_0.c))))));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<u32>(firstLeadingBit(~(~0u)), ~_wgslsmith_div_u32(1u, ~(~1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) & ~(~(~0u)), ~func_4(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, func_3(Struct_2(0u, Struct_1(false)), vec3<f32>(-967f, 325f, 2099f)), _wgslsmith_sub_u32(4294967295u, 67090u)), 9u)], Struct_1(any(vec2<bool>(false, false))), any(vec2<bool>(true, true))));
    let var_1 = select(vec4<bool>((countOneBits(var_0.x) >> (~var_0.x % 32u)) <= 73436u, !any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 687f)) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(752f, -639f)), -517f, true)), true), select(select(vec4<bool>(true, true, any(vec3<bool>(true, false, false)), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, -336f == _wgslsmith_f_op_f32(select(1000f, 225f, false)), false, any(vec4<bool>(false, true, true, true)) | (var_0.x >= 61641u))), vec4<bool>(true, true, true, true));
    var var_2 = var_1.yww;
    let var_3 = -1807f;
    global1 = array<Struct_3, 9>();
    return Struct_2(abs(var_0.x), Struct_1(!all(vec4<bool>(var_2.x, var_2.x, var_1.x, true))));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> vec4<f32> {
    let var_0 = Struct_2(~29161u, arg_0.d.b);
    global0 = -2147483647i;
    global0 = 0i;
    let var_1 = (firstTrailingBit(~(~vec2<u32>(1u, arg_0.d.a))) & ~(~vec2<u32>(27056u, var_0.a))) >> ((reverseBits(~(~vec2<u32>(arg_0.d.a, 46271u))) >> (vec2<u32>(var_0.a, _wgslsmith_add_u32(98019u, var_0.a) >> (57102u % 32u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = arg_0.b.xx;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(select(267f, _wgslsmith_f_op_f32(-arg_0.c), true)), -1455f, -1273f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_3(func_2(), vec3<bool>(select(arg_2, arg_2, arg_2), false, true), _wgslsmith_f_op_f32(ceil(1201f)), func_2()), -596f, ~_wgslsmith_div_u32(4294967295u, 4294967295u)));
    let var_1 = select(!select(select(select(vec4<bool>(false, true, arg_2, false), vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(true, true, arg_2, false)), vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(true, arg_2, arg_2, arg_2)), select(select(vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(true, true, arg_2, arg_2), arg_2), !vec4<bool>(true, false, arg_2, arg_2), arg_2 | arg_2), select(vec4<bool>(false, arg_2, true, false), !vec4<bool>(false, arg_2, arg_2, true), false)), !select(!vec4<bool>(true, true, false, arg_2), select(!vec4<bool>(false, arg_2, true, true), vec4<bool>(arg_2, false, true, true), false), select(!vec4<bool>(arg_2, arg_2, arg_2, arg_2), select(vec4<bool>(true, true, true, arg_2), vec4<bool>(false, arg_2, false, false), vec4<bool>(false, arg_2, arg_2, true)), !vec4<bool>(arg_2, true, false, arg_2))), vec4<bool>(!all(!vec2<bool>(arg_2, arg_2)), func_2().b.a, true || arg_2, _wgslsmith_dot_vec2_i32(reverseBits(u_input.a), vec2<i32>(u_input.a.x, u_input.a.x)) <= abs(~1i)));
    var var_2 = func_2().b;
    let var_3 = var_1.wy;
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)), -266f), _wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(floor(arg_0))), vec4<bool>(!var_2.a, any(vec3<bool>(false, false, arg_2)), all(var_1), true))))));
    return func_2();
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = Struct_3(func_2(), vec3<bool>(select(arg_2.b.a, true, true), true, arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 310f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1014f), 340f))))), func_1(_wgslsmith_f_op_vec4_f32(func_5(Struct_3(arg_2, select(vec3<bool>(true, false, arg_2.b.a), vec3<bool>(true, false, arg_2.b.a), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -605f), Struct_2(arg_1, Struct_1(arg_2.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1268f - 136f)), arg_1)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, -1000f, 1000f)))), true, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, _wgslsmith_f_op_vec4_f32(func_5(global1[_wgslsmith_index_u32(arg_2.a, 9u)], -834f, 58502u)).x, -583f)))));
    var var_1 = var_0.a;
    var var_2 = var_0.a.b;
    let var_3 = countOneBits(-(~countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -19635i, 2147483647i, 2147483647i), vec4<i32>(18669i, u_input.a.x, u_input.a.x, u_input.a.x)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(func_5(global1[_wgslsmith_index_u32(~var_0.a.a, 9u)], 449f, ~86321u)).zwy;
    return max(select(min(vec4<i32>(57174i, u_input.a.x, u_input.a.x, var_3) << (vec4<u32>(47087u, 7269u, 4294967295u, var_0.a.a) % vec4<u32>(32u)), select(vec4<i32>(-18468i, var_3, u_input.a.x, 0i), vec4<i32>(29364i, var_3, -2147483647i, var_3), true)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 105816u, 1u), ~vec4<u32>(var_1.a, var_1.a, 44616u, arg_2.a)) % vec4<u32>(32u)), vec4<i32>(abs(u_input.a.x ^ 77218i), max(u_input.a.x, _wgslsmith_mult_i32(-2147483647i, u_input.a.x)), var_3, var_3), vec4<bool>(var_1.b.a, false, true, var_1.b.a && (var_0.c == -545f))), select(-(~_wgslsmith_div_vec4_i32(vec4<i32>(12334i, var_3, 0i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, var_3, 16929i))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, var_3, u_input.a.x) ^ vec4<i32>(-35704i, u_input.a.x, -13404i, var_3), firstTrailingBit(vec4<i32>(4087i, u_input.a.x, 0i, var_3)), vec4<i32>(var_3, 2147483647i, var_3, -1383i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_3, u_input.a.x, 0i, var_3) | vec4<i32>(-2147483647i, -2147483647i, var_3, u_input.a.x), vec4<i32>(var_3, var_3, u_input.a.x, -12724i) >> (vec4<u32>(var_1.a, arg_1, 0u, 4431u) % vec4<u32>(32u))), all(select(vec3<bool>(true, arg_0, var_1.b.a), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), var_0.a.b.a));
}

fn func_7(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = func_3(func_2(), vec3<f32>(2528f, arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 246f) - arg_2.x)))));
    var var_1 = !select(vec4<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false)), true, !(arg_1.x <= arg_1.x), _wgslsmith_f_op_f32(939f * -114f) < arg_2.x), !vec4<bool>(true, true, all(vec4<bool>(false, true, false, true)), false), true);
    let var_2 = func_2().b;
    let var_3 = vec4<u32>(26692u, ~0u, abs(_wgslsmith_clamp_u32(9271u, reverseBits(~0u), abs(_wgslsmith_mult_u32(24702u, 26207u)))), ~67627u);
    global0 = func_6(max(reverseBits(u_input.a.x) << (~1u % 32u), ~_wgslsmith_dot_vec3_i32(arg_1.yzw, vec3<i32>(-1i, arg_0, -2147483647i))) == (min(i32(-1i) * -2147483647i, -2147483647i) << (func_1(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec3_f32(floor(arg_2.wzx)), select(false, var_2.a, false), arg_2.xyz).a % 32u)), var_3.x, Struct_2(var_3.x, func_1(vec4<f32>(_wgslsmith_div_f32(arg_2.x, -1000f), arg_2.x, 1198f, arg_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 827f))), true, arg_2.wyw).b)).x;
    return 50388u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(func_7(2147483647i, func_6(true, ~22431u, func_1(vec4<f32>(606f, -1937f, 331f, -784f), vec3<f32>(-939f, 1000f, -842f), false, vec3<f32>(214f, -2230f, 549f))), vec4<f32>(1000f, _wgslsmith_f_op_f32(1323f * -1182f), 155f, _wgslsmith_f_op_f32(2452f * 2395f))));
    var var_1 = 337f;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f)), 1101f);
    var var_3 = _wgslsmith_dot_vec4_i32(-abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, 1i, u_input.a.x), vec4<i32>(0i, -24730i, u_input.a.x, 11713i))), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-12494i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 764i)), u_input.a.x, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), u_input.a), 0i));
    var var_4 = !select(vec4<bool>(u_input.a.x < -u_input.a.x, func_2().b.a, false, true), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, true), true), true | any(vec4<bool>(true, true, false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 0u), 4665u, select((min(vec4<i32>(-22945i, -2147483647i, u_input.a.x, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -21405i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 62921i, -60300i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, 2147483647i))) >> (~vec4<u32>(1u, 0u, 9320u, 126858u) % vec4<u32>(32u)), (vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x) ^ (vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x) << (vec4<u32>(144888u, 40905u, 0u, 0u) % vec4<u32>(32u)))) ^ vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), u_input.a.x | 1i, 1i), select(!vec4<bool>(false, false, var_4.x, var_4.x), !vec4<bool>(true, false, true, var_4.x), false)), -568f);
}

