struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(866f, 890f, 1000f, -280f), vec4<f32>(-407f, 341f, 398f, -1314f));

var<private> global1: bool = true;

var<private> global2: array<u32, 17> = array<u32, 17>(4294967295u, 1127u, 4086u, 43454u, 36036u, 109232u, 1u, 0u, 4294967295u, 78232u, 0u, 5014u, 1u, 0u, 49900u, 1u, 1989u);

var<private> global3: Struct_2 = Struct_2(vec4<i32>(38203i, -5042i, -48756i, -1i), vec3<u32>(33347u, 1u, 68311u));

var<private> global4: array<bool, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = array<vec4<f32>, 2>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-478f, arg_0))), _wgslsmith_add_i32(2147483647i, u_input.a.x));
    global3 = Struct_2(~(-_wgslsmith_sub_vec4_i32(-global3.a, _wgslsmith_mult_vec4_i32(global3.a, vec4<i32>(u_input.a.x, 0i, 1i, 2003i)))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 50179u, u_input.b), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], 0u, 72135u))) | max(reverseBits(_wgslsmith_clamp_vec3_u32(u_input.c.wwx, global3.b, vec3<u32>(1206u, 1u, 32321u))), vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(12463u, 17u)], u_input.c.x), 17u)], 1u)));
    var var_1 = 0u;
    let var_2 = Struct_2(vec4<i32>(-101112i, u_input.d.x, 2147483647i, global3.a.x), vec3<u32>(u_input.c.x, ~_wgslsmith_dot_vec2_u32(abs(u_input.c.wy), _wgslsmith_div_vec2_u32(global3.b.xx, global3.b.yz)), _wgslsmith_div_u32(3447u, ~abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44709u, 17u)], 17u)]))));
    return var_2;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a.x), arg_1.a.x))))));
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-547f, arg_1.a.x))))))));
    let var_2 = global0[_wgslsmith_index_u32(0u, 2u)];
    var_0 = var_2.x;
    let var_3 = Struct_2(select(vec4<i32>(var_1.a.x, _wgslsmith_mod_i32(arg_1.b, arg_3.b) & ~u_input.e.x, 0i, (arg_1.b | arg_3.b) >> (4294967295u % 32u)), ~select(func_2(arg_3.a.x).a, reverseBits(vec4<i32>(var_1.a.x, -19261i, -2147483647i, var_1.a.x)), select(vec4<bool>(global4[_wgslsmith_index_u32(var_1.b.x, 20u)], global4[_wgslsmith_index_u32(global3.b.x, 20u)], global4[_wgslsmith_index_u32(4294967295u, 20u)], true), vec4<bool>(true, true, true, true), global4[_wgslsmith_index_u32(global3.b.x, 20u)])), !any(vec2<bool>(true, true))), _wgslsmith_mult_vec3_u32(vec3<u32>(25697u, (global3.b.x & 1u) ^ ~var_1.b.x, ~global3.b.x), vec3<u32>(1u, ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(0u, 17u)], 1u), 3824u)));
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    global4 = array<bool, 20>();
    var var_0 = func_2(_wgslsmith_div_f32(-113f, _wgslsmith_f_op_f32(770f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-592f - -1030f))))));
    global3 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2050f - -389f) + _wgslsmith_f_op_f32(-280f - 1463f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-590f)), _wgslsmith_f_op_f32(abs(414f))))))));
    var var_1 = any(select(vec2<bool>(true, true || !global4[_wgslsmith_index_u32(7114u, 20u)]), vec2<bool>(func_3(vec4<i32>(global3.a.x, global3.a.x, -40299i, u_input.e.x), Struct_1(vec2<f32>(-452f, 377f), var_0.a.x), global3.a, Struct_1(vec2<f32>(-419f, 161f), var_0.a.x)) <= _wgslsmith_div_u32(u_input.c.x, 3690u), true), global4[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-717f))))).b.x, 20u)]));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(502f, 1000f)))), 8499i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a - var_2.a))))), firstLeadingBit(_wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(u_input.a.x, ~9367i))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global2 = array<u32, 17>();
    var var_0 = Struct_1(arg_2.a, -61920i);
    let var_1 = Struct_2(~vec4<i32>(-(~7534i), ~arg_0, _wgslsmith_dot_vec3_i32(global3.a.wzz, -global3.a.xwx), ~global3.a.x), ~(~(~vec3<u32>(0u, 12424u, global2[_wgslsmith_index_u32(64576u, 17u)]) ^ firstTrailingBit(global3.b))));
    return func_1();
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec3<bool>(arg_2.x, true, all(vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.b, 20u)])));
    var var_1 = arg_3;
    var var_2 = select(!vec3<bool>(any(var_0.xx), all(select(vec4<bool>(arg_2.x, true, true, arg_2.x), vec4<bool>(true, true, global4[_wgslsmith_index_u32(31160u, 20u)], arg_2.x), global4[_wgslsmith_index_u32(global3.b.x, 20u)])), var_0.x), select(var_0, select(var_0, var_0, all(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, var_0.x), var_0))), true || (var_1.b <= var_1.b)), select(select(select(select(vec3<bool>(global4[_wgslsmith_index_u32(20476u, 20u)], false, arg_2.x), vec3<bool>(true, global4[_wgslsmith_index_u32(arg_1.b.x, 20u)], var_0.x), arg_2.x), select(var_0, var_0, vec3<bool>(true, arg_2.x, arg_2.x)), global4[_wgslsmith_index_u32(~23713u, 20u)]), vec3<bool>(any(vec4<bool>(true, true, true, var_0.x)), false, any(vec2<bool>(false, arg_2.x))), var_0), select(select(!var_0, select(vec3<bool>(var_0.x, global4[_wgslsmith_index_u32(41494u, 20u)], true), vec3<bool>(false, arg_2.x, false), vec3<bool>(true, false, false)), arg_2.x), select(vec3<bool>(global4[_wgslsmith_index_u32(arg_0, 20u)], arg_2.x, var_0.x), var_0, select(vec3<bool>(false, arg_2.x, var_0.x), vec3<bool>(false, false, false), arg_2.x)), select(select(vec3<bool>(false, false, arg_2.x), vec3<bool>(true, true, arg_2.x), vec3<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.x, 17u)], 20u)], true, arg_2.x)), vec3<bool>(arg_2.x, arg_2.x, false), var_0)), select(!vec3<bool>(arg_2.x, true, global4[_wgslsmith_index_u32(global3.b.x, 20u)]), vec3<bool>(var_0.x | arg_2.x, global3.a.x >= -4232i, global4[_wgslsmith_index_u32(0u, 20u)]), !select(var_0, var_0, vec3<bool>(false, arg_2.x, global4[_wgslsmith_index_u32(1u, 20u)])))));
    var var_3 = select(~_wgslsmith_sub_vec4_u32(vec4<u32>(48690u >> (global3.b.x % 32u), 1u, _wgslsmith_clamp_u32(u_input.b, arg_1.b.x, arg_0), u_input.c.x), countOneBits(u_input.c)), min(u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, ~(vec4<u32>(1u, arg_1.b.x, 0u, u_input.c.x) ^ vec4<u32>(u_input.b, 72125u, arg_1.b.x, 0u)))), true);
    let var_4 = var_1.b;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.zzx;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1316f, -1268f), vec2<f32>(-339f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f))))), global3.a.x);
    global4 = array<bool, 20>();
    let var_2 = _wgslsmith_add_i32(-(~(-2147483647i)), abs(-var_1.b)) >> (1u % 32u);
    var var_3 = var_1.a.x;
    let var_4 = func_5(u_input.b, Struct_2(global3.a, _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global3.b, ~u_input.c.xww), global3.b)), select(vec2<bool>(global3.b.x != 43244u, false), !select(vec2<bool>(false, false), select(vec2<bool>(global4[_wgslsmith_index_u32(27644u, 20u)], global4[_wgslsmith_index_u32(1993u, 20u)]), vec2<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.x, 17u)], 20u)], global4[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(true, false)), !vec2<bool>(global4[_wgslsmith_index_u32(1u, 20u)], false)), var_1.a.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.x)) - _wgslsmith_f_op_f32(trunc(var_1.a.x)))), func_4(-56555i, global4[_wgslsmith_index_u32(u_input.c.x, 20u)], func_1()));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(432f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(func_4(~2450i, !global4[_wgslsmith_index_u32(var_4.b.x, 20u)], Struct_1(vec2<f32>(-212f, var_1.a.x), var_1.b)).a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(777f, var_1.a.x), var_1.a.x))))), 1190f, 1007f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(u_input.c.zx, ~vec2<u32>(_wgslsmith_mod_u32(global3.b.x, global3.b.x), 1u ^ u_input.b), var_4.b.zx), var_4.b.x, u_input.c.x | (func_5(~38293u, var_4, vec2<bool>(true, true), func_4(var_2, false, Struct_1(var_5.zy, 1i))).b.x >> (max(countOneBits(1u), _wgslsmith_clamp_u32(global3.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12200u, 17u)], 17u)], 17u)], var_4.b.x)) % 32u)), u_input.b);
}

