struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    global1 = Struct_2(false | global1.a, abs(min(vec3<u32>(select(1u, 1u, false), u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1961u, 0u, global1.b.x), vec4<u32>(global1.b.x, u_input.d, 1u, global1.b.x))), u_input.c.xwx)), _wgslsmith_f_op_f32(-610f + 612f), ~(~vec2<i32>(u_input.b.x, 2147483647i)));
    var var_0 = Struct_2(!(!(~arg_0 < (arg_0 << (global1.b.x % 32u)))), ~(~(~_wgslsmith_mult_vec3_u32(global1.b, u_input.c.xxw))), _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))), ~(~(-vec2<i32>(u_input.a.x, u_input.a.x)) ^ ((global1.d << (u_input.c.xz % vec2<u32>(32u))) & reverseBits(u_input.a.xx))));
    global1 = Struct_2(false, ~(global1.b & firstTrailingBit(countOneBits(global1.b))), var_0.c, ~_wgslsmith_mult_vec2_i32(u_input.a.zy, ~(-vec2<i32>(arg_0, 2147483647i))));
    let var_1 = Struct_2(true, _wgslsmith_div_vec3_u32(vec3<u32>(~select(0u, 1u, false), reverseBits(77037u) >> (_wgslsmith_clamp_u32(u_input.d, global1.b.x, 1u) % 32u), _wgslsmith_sub_u32(13351u, global1.b.x)), global1.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(152f, global1.c) * global1.c)))), vec2<i32>(var_0.d.x, abs(_wgslsmith_mod_i32(arg_0 & global1.d.x, 2147483647i))));
    return var_0.d;
}

fn func_2() -> u32 {
    var var_0 = u_input.b;
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(func_3(global1.d.x), _wgslsmith_mult_vec2_i32(var_0.yy, var_0.yz) >> (vec2<u32>(global1.b.x, 0u) % vec2<u32>(32u)))), 2147483647i, u_input.b.x);
    let var_2 = var_0.zx;
    var_1 = u_input.a.xyz;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c + global1.c), global1.c)) - _wgslsmith_f_op_f32(ceil(-662f))), select(select(vec4<bool>(global1.a, select(global1.a, false, global1.a), all(vec4<bool>(global1.a, false, false, false)), !global1.a), !vec4<bool>(true, global1.a, global1.a, global1.a), true), select(select(vec4<bool>(global1.a, global1.a, true, global1.a), !vec4<bool>(false, global1.a, global1.a, global1.a), !vec4<bool>(global1.a, true, true, true)), !vec4<bool>(true, false, false, global1.a), global1.a), global1.a), ~vec3<u32>(~u_input.d, reverseBits(4294967295u), u_input.d));
    return _wgslsmith_sub_u32(var_3.c.x, 59702u) & ~4294967295u;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> i32 {
    global1 = arg_1;
    global1 = Struct_2(true, vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xz, ~(~arg_1.b.zx)), ~global1.b.x, ~func_2()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.c + 2263f))), ~vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(u_input.e.x), global1.d.x ^ 0i), 1i));
    var var_0 = Struct_1(-723f, vec4<bool>(true, u_input.b.x <= countOneBits(_wgslsmith_sub_i32(arg_1.d.x, -1967i)), !all(select(vec3<bool>(true, false, global1.a), vec3<bool>(true, true, true), false)), !all(select(vec4<bool>(global1.a, arg_3.a, true, true), vec4<bool>(global1.a, false, true, arg_1.a), vec4<bool>(arg_1.a, arg_3.a, false, arg_3.a)))), max(vec3<u32>(abs(firstLeadingBit(0u)), 0u, arg_3.b.x), global1.b));
    global1 = Struct_2(all(!var_0.b), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 41266u), vec3<u32>(63120u, arg_3.b.x, 1u)), 53917u, _wgslsmith_div_u32(1u, 57216u) & (53384u << (arg_3.b.x % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3118f - _wgslsmith_f_op_f32(var_0.a + var_0.a)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-794f))))), _wgslsmith_f_op_f32(-arg_0)), vec2<i32>(-(_wgslsmith_mult_i32(arg_1.d.x, arg_3.d.x) ^ arg_1.d.x), ~abs(_wgslsmith_mult_i32(global1.d.x, -62359i))));
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + global1.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c)))), !select(vec4<bool>(global1.a, true, true, !arg_1.a), vec4<bool>(any(vec4<bool>(true, true, true, arg_1.a)), all(var_0.b.wwy), arg_3.a || true, arg_1.a), var_0.b), _wgslsmith_add_vec3_u32(~countOneBits(arg_3.b) ^ u_input.c.yzy, reverseBits(select(firstTrailingBit(arg_1.b), vec3<u32>(u_input.d, 61755u, var_0.c.x), arg_1.a))));
    return 30990i;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> i32 {
    global1 = Struct_2(false, ~(~global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.c)) + _wgslsmith_f_op_f32(trunc(1291f))), -vec2<i32>(16488i, arg_2.d.x));
    var var_0 = Struct_2(all(select(select(vec3<bool>(arg_2.a, true, arg_2.a), !vec3<bool>(false, arg_0.a, true), select(vec3<bool>(arg_0.a, arg_2.a, true), vec3<bool>(global1.a, true, global1.a), vec3<bool>(global1.a, arg_0.a, arg_2.a))), !vec3<bool>(true, arg_2.a, false), true)), u_input.c.xww, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(round(global1.c)))), _wgslsmith_add_vec2_i32(abs(u_input.b.zy), global1.d));
    global1 = arg_0;
    let var_1 = vec3<u32>(arg_1, _wgslsmith_mult_u32(~(~(~arg_1)), select(~firstTrailingBit(4294967295u), ~firstTrailingBit(0u), false)), 50415u);
    let var_2 = _wgslsmith_mult_vec2_u32(arg_0.b.xz, vec2<u32>(37526u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_2.b.x & u_input.c.x, var_0.b.x), 233u, (arg_2.b.x ^ 0u) ^ (1u | arg_2.b.x))));
    return max(~(-1i | (var_0.d.x & -28993i)), reverseBits(arg_0.d.x) | 27999i);
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = firstTrailingBit(vec4<i32>(-func_3(arg_1.d.x).x | -43243i, -(~global1.d.x), _wgslsmith_add_i32(-12907i, arg_0), _wgslsmith_dot_vec3_i32(~(-u_input.b), max(vec3<i32>(-54292i, -1i, global1.d.x), vec3<i32>(arg_1.d.x, 22724i, -1i)) << (u_input.c.zww % vec3<u32>(32u)))));
    var var_1 = vec3<bool>(true, global1.a, arg_1.a);
    var_1 = !select(!vec3<bool>(global1.a, global1.a, true), select(vec3<bool>(true, global1.c != -1000f, global1.a), select(!vec3<bool>(global1.a, arg_1.a, false), select(vec3<bool>(arg_1.a, var_1.x, true), vec3<bool>(var_1.x, arg_1.a, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), global1.a)), !select(vec3<bool>(arg_1.a, arg_1.a, global1.a), vec3<bool>(false, global1.a, true), vec3<bool>(false, false, false))), !(!all(vec4<bool>(true, global1.a, arg_1.a, true))));
    let var_2 = arg_1;
    var var_3 = u_input.e;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(4294967295u);
    global1 = Struct_2(all(vec2<bool>(true, global1.a | true)), u_input.c.zxz, -1231f, abs(vec2<i32>(countOneBits(-33379i), global1.d.x)));
    var var_1 = func_5(func_4(Struct_2(any(select(vec2<bool>(false, true), vec2<bool>(global1.a, global1.a), global1.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(46150u, 4294967295u, u_input.d) ^ u_input.c.yxy, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, global1.b.x, 9388u), global1.b)), 1000f, vec2<i32>(func_1(global1.c, Struct_2(global1.a, u_input.c.xxz, global1.c, global1.d), vec4<f32>(1075f, -230f, 535f, 647f), Struct_2(true, vec3<u32>(0u, global1.b.x, u_input.d), 162f, global1.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1.d.x, global1.d.x, u_input.e.x), u_input.a))), u_input.c.x, Struct_2(global1.a, select(~u_input.c.zzz, _wgslsmith_div_vec3_u32(u_input.c.xzx, vec3<u32>(global1.b.x, 0u, 0u)), vec3<bool>(global1.a, global1.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(875f))), ~u_input.e)), Struct_2(global1.d.x != global1.d.x, min(select(vec3<u32>(15822u, u_input.c.x, global1.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 57085u, 4294967295u), u_input.c.yzw), false), global1.b), _wgslsmith_f_op_f32(floor(global1.c)), global1.d));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - global1.c) * -644f) + -614f)), vec4<bool>(all(vec2<bool>(global1.a == true, global1.a)), !(!all(vec3<bool>(global1.a, global1.a, false))), false, !any(vec3<bool>(global1.a, true, true))), max(vec3<u32>(~countOneBits(global1.b.x), ~u_input.d, u_input.d), ~vec3<u32>(_wgslsmith_mult_u32(global1.b.x, 1u), countOneBits(global1.b.x), ~u_input.c.x)));
    let var_3 = _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(global1.d.x, ~global1.d.x));
    let var_4 = i32(-1i) * -u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~(-29787i)), ~var_4, -var_4, select(~(-7429i), u_input.e.x, !(var_2.b.x & global1.a))), max(vec4<i32>(var_4, 1i ^ (1i >> (var_2.c.x % 32u)), -40013i, -71830i), vec4<i32>(countOneBits(_wgslsmith_mod_i32(var_4, var_3)), 15809i, 0i, -1i)));
}

