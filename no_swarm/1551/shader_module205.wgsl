struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

var<private> global1: Struct_2 = Struct_2(-1000f, vec4<bool>(false, true, false, true), vec3<u32>(1u, 1u, 85921u), Struct_1(true, -423f, vec2<f32>(-1268f, -158f), 1132f, 1126f));

var<private> global2: Struct_2 = Struct_2(1000f, vec4<bool>(false, false, false, true), vec3<u32>(3584u, 26370u, 27503u), Struct_1(true, -998f, vec2<f32>(825f, 1309f), 1255f, -1410f));

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> i32 {
    return -589i;
}

fn func_2(arg_0: vec3<u32>) -> vec3<i32> {
    global1 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global3.x), 16u)];
    global4 = array<Struct_2, 16>();
    let var_0 = global4[_wgslsmith_index_u32(global3.x, 16u)];
    global4 = array<Struct_2, 16>();
    var var_1 = 4294967295u;
    return -vec3<i32>(func_3(Struct_1(all(vec4<bool>(global1.b.x, global2.d.a, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(ceil(1667f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(566f, global1.a)), _wgslsmith_f_op_f32(sign(global2.a)), _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_div_f32(global1.a, global2.d.b), global3.x), ~_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-49829i, 61023i, 2147483647i), vec3<i32>(0i, -2147483647i, -4348i))), _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(-2147483647i, 1i, -33713i)), vec3<i32>(1i, 1i, 1i)));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_4) -> bool {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~reverseBits(~1u), global2.c.x), vec2<u32>(u_input.c, _wgslsmith_mod_u32(global3.x, global2.c.x))), 16u)];
    let var_1 = _wgslsmith_div_f32(-502f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-654f)))))));
    global2 = Struct_2(_wgslsmith_f_op_f32(arg_0.x * -250f), vec4<bool>(true, true, true, true | (arg_3.b.x <= -2147483647i)), _wgslsmith_div_vec3_u32(global1.c, reverseBits(~vec3<u32>(4294967295u, global3.x, 70091u))) << ((~global0[_wgslsmith_index_u32(global2.c.x | 36284u, 22u)] >> (vec3<u32>(~global1.c.x, 43111u, 88628u & arg_1) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(all(global1.b), var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - vec2<f32>(124f, _wgslsmith_f_op_f32(f32(-1f) * -320f))), _wgslsmith_div_f32(1066f, arg_3.a.x), 1f));
    let var_2 = Struct_3(global2.c.x, vec4<bool>(global1.d.a, false, false, true), _wgslsmith_div_i32(arg_2.x, -_wgslsmith_mult_i32(arg_3.d, 42065i)) >= arg_3.b.x, global1.d, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wzy) + vec3<f32>(var_1, arg_3.a.x, global2.d.e)) - arg_3.a))));
    let var_3 = Struct_1(arg_3.e, var_0.d.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -279f), 918f) - global1.d.c) * _wgslsmith_f_op_vec2_f32(-global2.d.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * global2.a), _wgslsmith_f_op_f32(1452f * var_0.a));
    return false;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1070f - global1.a), _wgslsmith_f_op_f32(-1000f - global2.a), _wgslsmith_f_op_f32(step(450f, global2.d.d)), _wgslsmith_f_op_f32(global1.a + global2.d.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-1111f - _wgslsmith_f_op_f32(floor(global1.a))), global2.a, global2.d.c.x, _wgslsmith_f_op_f32(-global1.a)))), ~4294967295u, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -1i, -2893i), vec3<i32>(71501i, 19542i, 0i)), firstTrailingBit(vec3<i32>(2147483647i, 2147483647i, -1i))), ~vec3<i32>(1i, 1039i, 1i)), func_2(_wgslsmith_mod_vec3_u32(global2.c, global2.c) ^ global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.c.x, global3.x), 22u)])), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, 175f, -829f) - vec3<f32>(global1.d.d, global2.d.d, global2.d.e)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.d.e, global1.d.c.x, -1587f), vec3<f32>(global2.d.e, global2.a, global1.a)))) - vec3<f32>(global2.a, _wgslsmith_f_op_f32(abs(global2.d.b)), _wgslsmith_f_op_f32(f32(-1f) * -105f))), vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(20491i), -3978i >> (1u % 32u)), -4080i, -_wgslsmith_clamp_i32(-2147483647i, 2147483647i, 0i)), _wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(137119u, u_input.c, 23962u), vec3<u32>(4294967295u, u_input.a, global1.c.x)), vec3<u32>(1u, global1.c.x, arg_0.x), reverseBits(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(11209u, 22u)], vec3<u32>(global3.x, global1.c.x, 0u)))), 2147483647i, select(false, !any(global2.b.ww), true)));
    global0 = array<vec3<u32>, 22>();
    global3 = global1.c;
    var var_1 = global2.d;
    var var_2 = global4[_wgslsmith_index_u32(~firstTrailingBit(arg_0.x), 16u)];
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(605f * _wgslsmith_f_op_f32(sign(global1.d.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-554f, _wgslsmith_f_op_f32(var_1.b - -222f)), -580f)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = abs(~(firstTrailingBit(arg_1.x & -26437i) << (global1.c.x % 32u)));
    let var_1 = select(4466u != firstLeadingBit(global1.c.x), arg_0.x, !any(global1.b.xy));
    var var_2 = Struct_4(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-727f * global1.d.e) * global1.d.e)), _wgslsmith_f_op_f32(f32(-1f) * -496f)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, -2038i, arg_1.x) ^ vec3<i32>(arg_1.x, arg_1.x, 1i), vec3<i32>(arg_1.x, arg_1.x, arg_1.x) | vec3<i32>(arg_1.x, arg_1.x, arg_1.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-51137i, -16604i, 1i), vec3<i32>(0i, arg_1.x, 39877i))) >> (~(~global1.c) % vec3<u32>(32u)), vec3<i32>(arg_1.x, countOneBits(~arg_1.x), 1i)), ~abs(vec3<u32>(arg_3 ^ u_input.b, ~global2.c.x, u_input.c)), abs(abs(~(-11305i)) | (arg_1.x | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -4741i, arg_1.x, -47244i), vec4<i32>(-26719i, arg_1.x, arg_1.x, 1i)))), true);
    let var_3 = vec2<u32>(~global3.x, ~u_input.b);
    return Struct_1(false, _wgslsmith_f_op_f32(step(global1.d.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1346f), global1.d.b))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_1(~vec3<u32>(var_2.c.x, 4294967295u, u_input.c), true)), 1f))), -1000f, global1.a);
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = global1.d;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(102f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.e)))), global1.b, ~global0[_wgslsmith_index_u32(~0u, 22u)], func_5(select(global2.b.yz, !select(vec2<bool>(true, global1.d.a), global1.b.yy, global2.d.a), any(global2.b.wzz)), vec2<i32>(abs(2147483647i), _wgslsmith_sub_i32(31087i, -3554i)) >> (max(~vec2<u32>(u_input.c, global3.x), select(vec2<u32>(23622u, 1u), vec2<u32>(global2.c.x, u_input.c), arg_2)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1446f, global1.a, 1931f, var_0.d) * vec4<f32>(var_0.e, 780f, -536f, var_0.b))))), abs(1u)));
    var var_2 = Struct_4(vec3<f32>(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(245f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.c.x) - _wgslsmith_f_op_f32(arg_0.c.x * arg_0.b)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.d, global2.a))))), select(vec3<i32>(1i, 1i, 1i), ~abs(vec3<i32>(-1i, -5644i, 5673i)), vec3<bool>(func_5(var_1.b.zz, vec2<i32>(8317i, 26166i), vec4<f32>(var_0.b, 196f, global1.a, 595f), 0u).b < var_1.d.e, false, func_5(select(vec2<bool>(arg_1, false), vec2<bool>(false, false), global2.b.wx), select(vec2<i32>(-1i, -57500i), vec2<i32>(-7226i, 13606i), arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.d, arg_0.c.x, arg_0.b)), ~var_1.c.x).a)), var_1.c, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, firstTrailingBit(-1i), i32(-1i) * -1i, 1i), _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, 2147483647i, 1i, -1i), min(vec4<i32>(-2147483647i, -32673i, -19806i, -2147483647i), vec4<i32>(-6899i, -2147483647i, 1i, -2147483647i)))), -(~(-11913i))), select(true, _wgslsmith_dot_vec3_u32(var_1.c | vec3<u32>(31257u, global3.x, u_input.b), vec3<u32>(4294967295u, global1.c.x, var_1.c.x)) < 0u, arg_1));
    return global4[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(global1.c, ~var_1.c), _wgslsmith_sub_u32(abs(38927u), min(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global1.c.x, 4294967295u, 8177u, 50609u), vec4<u32>(global3.x, 4294967295u, var_1.c.x, 42879u)), firstLeadingBit(vec4<u32>(var_1.c.x, 5643u, u_input.c, 0u))), abs(~var_1.c.x))), var_0.a), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 16>();
    let var_0 = global2.d.c;
    let var_1 = global1.c.yz;
    global0 = array<vec3<u32>, 22>();
    global1 = func_6(func_5(global2.b.wz, vec2<i32>(-2812i, _wgslsmith_mod_i32(1i, -17453i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(global2.c, false)), _wgslsmith_f_op_f32(global1.d.d + var_0.x), global2.a, _wgslsmith_f_op_f32(var_0.x * global1.d.d))), global2.c.x), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.d.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(916f, -331f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-763f, global2.a), vec2<f32>(1062f, -1631f))))))), _wgslsmith_mod_u32(var_1.x, ~_wgslsmith_mult_u32(u_input.c, global1.c.x) & 57112u), vec3<u32>(_wgslsmith_sub_u32(~4294967295u ^ _wgslsmith_clamp_u32(var_1.x, var_1.x, global3.x), abs(global3.x << (0u % 32u))), global3.x, u_input.c), var_0.x, vec4<u32>(func_6(global2.d, true, global2.b.x).c.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 1u, 55229u) & global0[_wgslsmith_index_u32(global3.x, 22u)], ~vec3<u32>(42113u, global1.c.x, 9408u)), ~global2.c), _wgslsmith_dot_vec4_u32(vec4<u32>(58635u, 0u, 69550u, global2.c.x), abs(vec4<u32>(global3.x, 38802u, u_input.c, global3.x))) | ~func_6(global1.d, global1.d.a, global1.d.a).c.x, 4294967295u));
}

