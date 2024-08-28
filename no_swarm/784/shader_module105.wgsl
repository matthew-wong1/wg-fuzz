struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(410f, 1000f, 1112f, -1227f), vec4<u32>(941u, 39337u, 93973u, 0u), vec3<f32>(-1190f, 931f, 351f), vec3<u32>(17920u, 0u, 4294967295u));

var<private> global2: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<u32> {
    global2 = arg_1;
    var var_0 = arg_1;
    global1 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) * vec4<f32>(var_0.a.x, 587f, global1.c.x, global2.a.x)))) + _wgslsmith_f_op_vec4_f32(select(global1.a, global2.a, false))), firstLeadingBit(arg_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.a.yzx, global0[_wgslsmith_index_u32(global1.b.x, 8u)], vec3<bool>(false, true, false))) * arg_1.c))) * _wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, global1.c.x, -644f), vec3<f32>(118f, -1000f, -1725f), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))))), u_input.d);
    return arg_1.d;
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, global1.a.x))), -474f)));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(global2.a)), ~_wgslsmith_add_vec4_u32(global2.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.b.x, 0u, 0u, 0u), ~global2.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.a.wwy, global0[_wgslsmith_index_u32(92748u, 8u)]))), vec3<f32>(_wgslsmith_f_op_f32(var_0 + global2.c.x), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-var_0))), !vec3<bool>(true, var_0 != global2.a.x, u_input.d.x <= global2.b.x))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(global1.d.x, 1u, 0u), func_3(Struct_1(global2.a, global1.b, vec3<f32>(-823f, -1034f, global1.a.x), vec3<u32>(global1.d.x, 0u, global1.b.x)), Struct_1(vec4<f32>(var_0, global1.a.x, global1.c.x, var_0), global2.b, vec3<f32>(global2.a.x, -1000f, global2.a.x), vec3<u32>(u_input.d.x, 121034u, u_input.d.x)), global1.a.wz), true), ~global2.d << (vec3<u32>(u_input.d.x, u_input.d.x, global1.b.x) % vec3<u32>(32u)), vec3<u32>(~46806u, global2.d.x, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(min(44296u, 97729u), ~u_input.d.x, 1u), ~vec3<u32>(16418u, global2.d.x, global1.d.x)), (global2.b.xyw & global2.b.www) << ((countOneBits(global2.b.zwx) & select(global1.b.zzz, global1.d, true)) % vec3<u32>(32u))));
    global0 = array<vec3<f32>, 8>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(global1.a)))) + global2.a), vec4<u32>(~(4294967295u ^ u_input.d.x), _wgslsmith_clamp_u32(1u, firstLeadingBit(global2.b.x), 0u), ~7664u, 1u) | ~(~(global2.b ^ vec4<u32>(3434u, 1u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1246f, var_0, 1848f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(308f, -1212f, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(272f, 2966f, global2.a.x)), false))))), min(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4379u, u_input.d.x, 2052u), vec3<u32>(1u, 0u, u_input.d.x), vec3<u32>(global1.b.x, global2.d.x, u_input.d.x))), ~vec3<u32>(~u_input.d.x, ~global2.d.x, 1u >> (global1.b.x % 32u))));
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-903f)) * _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(702f * var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(511f, -253f)) - 2001f) + _wgslsmith_f_op_f32(floor(-2074f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-309f)) - _wgslsmith_f_op_f32(exp2(global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f - var_1.c.x))), global1.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.c.x), var_1.c.x, var_0) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1041f, 1505f, global2.c.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-484f, global2.a.x, 544f), global0[_wgslsmith_index_u32(u_input.d.x, 8u)]))))))), ~vec3<u32>(u_input.d.x, 4294967295u | (global2.d.x | 1u), 0u));
    return u_input.a;
}

fn func_4(arg_0: vec4<i32>) -> i32 {
    return arg_0.x;
}

fn func_5(arg_0: i32) -> bool {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f * -1499f) + 330f)) <= _wgslsmith_f_op_f32(global2.a.x + global2.a.x);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(~1i, _wgslsmith_dot_vec2_i32(~u_input.e, ~vec2<i32>(-7996i, 10691i)) << (_wgslsmith_clamp_u32(global2.d.x & 38786u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.x, global2.d.x), u_input.d.zy), arg_0) % 32u)), min(u_input.a.yx, (-vec2<i32>(1i, 14166i) >> (~vec2<u32>(global2.b.x, 4294967295u) % vec2<u32>(32u))) | vec2<i32>(firstTrailingBit(u_input.c), _wgslsmith_add_i32(arg_2, -1i))));
    var var_1 = func_5(func_4(~func_2()));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1778f, _wgslsmith_f_op_f32(global1.c.x + global1.a.x), _wgslsmith_f_op_f32(select(global1.c.x, 703f, true)), -306f) - vec4<f32>(-575f, -1229f, _wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(-global2.c.x))))), vec4<u32>(u_input.d.x, min(u_input.d.x, 1u), 4294967295u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(arg_0, arg_0), ~(1u ^ u_input.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), global2.c.x, _wgslsmith_f_op_f32(exp2(global1.c.x))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-206f, global2.a.x, -419f) + vec3<f32>(global2.c.x, arg_1.x, arg_1.x)))))), _wgslsmith_mult_vec3_u32(~vec3<u32>(~5128u, 16077u, 4294967295u), ~countOneBits(vec3<u32>(global2.d.x, 6545u, arg_0)) >> (u_input.d % vec3<u32>(32u))));
    let var_2 = arg_2;
    var var_3 = ~(~(_wgslsmith_sub_vec2_u32(global1.b.xx, global1.d.xz) | ~(~global1.d.zy)));
    return vec3<f32>(1954f, _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(1f - 2273f)), global1.a.x);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_vec3_f32(func_1(67886u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1118f, arg_1.a.x), arg_1.c.yy, vec2<bool>(true, true))), -2147483647i)).x, _wgslsmith_f_op_vec3_f32(func_1(select(global2.b.x, 35394u, false), vec2<f32>(global1.c.x, arg_0), _wgslsmith_clamp_i32(2147483647i, 0i, -2583i))).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_1(1u, arg_1.a.yz, arg_2.x)).x, _wgslsmith_f_op_vec3_f32(func_1(38788u, arg_1.a.xw, -2147483647i)).x, true))) + arg_1.a), vec4<u32>(1u, ~(~(~45942u)), _wgslsmith_mod_u32(0u, arg_1.d.x), abs(1u)), global1.c, countOneBits(firstLeadingBit(vec3<u32>(reverseBits(4294967295u), _wgslsmith_div_u32(70311u, 108195u), 45481u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 431f)))), firstLeadingBit(abs(arg_2.x << (global1.d.x % 32u))))));
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-294f + _wgslsmith_div_f32(-225f, arg_0)))));
    let var_4 = vec3<i32>(~firstLeadingBit(_wgslsmith_dot_vec4_i32(func_2(), select(vec4<i32>(var_2.x, -1i, 4198i, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, 0i, var_2.x), false))), ~2147483647i, -26343i);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.c.x)) + 901f)))), Struct_1(global2.a, global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(u_input.d.x, global1.a.yx, u_input.b)))), ~(~firstTrailingBit(global2.d))), _wgslsmith_clamp_vec3_i32(~_wgslsmith_sub_vec3_i32(~vec3<i32>(-12625i, 1i, -1i), -vec3<i32>(50542i, u_input.e.x, -21345i)), min(vec3<i32>(i32(-1i) * -1i, u_input.e.x, 11549i), _wgslsmith_sub_vec3_i32(~vec3<i32>(-77191i, 4220i, 0i), vec3<i32>(u_input.c, 282i, -1i))), ~(~u_input.a.zzx ^ -vec3<i32>(0i, 9808i, u_input.b))));
    var var_1 = abs(~(~22516u));
    global1 = func_6(_wgslsmith_f_op_f32(trunc(global1.a.x)), func_6(global2.c.x, Struct_1(global2.a, global2.b, vec3<f32>(global1.a.x, -412f, _wgslsmith_f_op_f32(-384f - global1.a.x)), vec3<u32>(func_6(var_0.a.x, Struct_1(vec4<f32>(global1.c.x, 389f, 999f, 575f), vec4<u32>(4085u, global1.b.x, global2.b.x, 1u), vec3<f32>(-1000f, -1295f, 834f), u_input.d), u_input.a.zxx).d.x, global1.b.x, 49249u)), u_input.a.wxz >> (vec3<u32>(reverseBits(var_0.d.x), ~global1.b.x, ~1u) % vec3<u32>(32u))), u_input.a.xyx);
    let var_2 = func_6(func_6(-284f, func_6(368f, func_6(_wgslsmith_f_op_f32(f32(-1f) * -561f), Struct_1(vec4<f32>(global2.a.x, 301f, -267f, 521f), vec4<u32>(37961u, u_input.d.x, u_input.d.x, 85937u), vec3<f32>(-554f, var_0.a.x, global2.c.x), var_0.b.wwz), vec3<i32>(41487i, u_input.c, u_input.a.x)), ~(vec3<i32>(-52741i, u_input.a.x, u_input.a.x) | u_input.a.zwz)), ~select(u_input.a.zzx ^ vec3<i32>(u_input.a.x, u_input.e.x, u_input.e.x), countOneBits(u_input.a.ywx), true)).a.x, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.a)) + global2.a))), var_0.b, global1.c, global2.d), min(vec3<i32>(u_input.b, -2147483647i, firstTrailingBit(-u_input.a.x)), vec3<i32>(abs(-27233i), 2147483647i, u_input.b)));
    let var_3 = Struct_1(global2.a, _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(global2.b, ~var_2.b) & func_6(_wgslsmith_f_op_f32(-var_0.a.x), var_2, u_input.a.zww).b, ~(~var_2.b ^ global1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, global1.a.x, -185f) * _wgslsmith_div_vec3_f32(global2.c, vec3<f32>(-1015f, 912f, 105f)))) + vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(4294967295u, vec2<f32>(-877f, -1721f), 0i)).x - _wgslsmith_div_f32(-114f, global2.c.x)))), global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.x, 1i, global2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global2.a.x)), 140f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x)))))));
}

