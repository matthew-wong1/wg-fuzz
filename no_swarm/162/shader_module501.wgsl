struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<i32, 16>;

var<private> global2: vec3<i32> = vec3<i32>(39229i, i32(-2147483648), 1i);

var<private> global3: i32 = 63720i;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.b, 21u)], (_wgslsmith_sub_u32(63684u, global0[_wgslsmith_index_u32(20425u, 21u)]) & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.yw, vec2<u32>(1u, u_input.d.x)), 21u)]) & _wgslsmith_sub_u32(~62052u, global0[_wgslsmith_index_u32(u_input.b, 21u)] >> (1u % 32u)), firstTrailingBit(abs(_wgslsmith_mult_u32(24642u, u_input.d.x)))) | ~abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(938u, 21u)], 31421u, 1u), ~u_input.b));
    var var_1 = select(arg_0.b >> (~(~reverseBits(vec4<u32>(u_input.b, 17960u, u_input.d.x, global0[_wgslsmith_index_u32(35163u, 21u)]))) % vec4<u32>(32u)), -arg_0.b << (u_input.d % vec4<u32>(32u)), !(!select(!vec4<bool>(arg_0.e.x, false, false, false), vec4<bool>(false, false, false, arg_0.e.x), !vec4<bool>(false, arg_0.e.x, true, arg_0.e.x))));
    global2 = max(arg_0.b.xxw, vec3<i32>(-var_1.x, var_1.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~u_input.a, vec2<i32>(u_input.c.x, u_input.c.x)), ~(var_1.x | arg_0.d))));
    return ~(global2.x ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, global2.x, global2.x), ~vec3<i32>(1i, -2147483647i, 36913i)) << (u_input.d.x % 32u)));
}

fn func_2() -> f32 {
    global0 = array<u32, 21>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(global2.xy, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, global1[_wgslsmith_index_u32(u_input.d.x, 16u)], 3982i), vec3<i32>(0i, global2.x, u_input.c.x)), global2.x)), -vec4<i32>(1i, global2.x >> (4294967295u % 32u), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~29693u, 21u)], 16u)], countOneBits(u_input.a.x)), vec3<i32>(u_input.a.x, -2147483647i, ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], 21u)], 16u)], -63682i)), -293i >> (_wgslsmith_dot_vec2_u32(~u_input.d.yy, firstTrailingBit(u_input.d.yx)) % 32u), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    global1 = array<i32, 16>();
    let var_1 = ~u_input.d.wzz;
    let var_2 = Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~64954u, ~(~53333u)), 16u)], -2147483647i), vec4<i32>(var_0.a.d, -func_3(Struct_1(vec2<i32>(u_input.e, 27634i), var_0.a.b, vec3<i32>(-17670i, global1[_wgslsmith_index_u32(var_1.x, 16u)], u_input.a.x), -30446i, var_0.a.e)), firstTrailingBit(var_0.a.d), global2.x), var_0.a.b.zwx, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~(~var_1.x), 16u)] | countOneBits(-24925i), _wgslsmith_sub_i32(abs(u_input.a.x), -2147483647i)), var_0.a.e);
    return _wgslsmith_f_op_f32(f32(-1f) * -2031f);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = arg_0;
    var var_1 = ~select(u_input.a, reverseBits(u_input.a), true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_div_f32(344f, -945f) + _wgslsmith_f_op_f32(func_2())))), -380f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) + _wgslsmith_f_op_f32(var_0 - -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - var_0))));
    var var_3 = -503f;
    global1 = array<i32, 16>();
    return _wgslsmith_sub_vec4_u32(select(~u_input.d, countOneBits(u_input.d), vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))))), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(u_input.d, func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f - -129f)))), -(select(vec3<i32>(-2147483647i, global2.x, -44286i), vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(81478u, 16u)], 2147483647i), true) >> (u_input.d.yyy % vec3<u32>(32u)))));
    global3 = 37625i;
    var_0 = ~(~max(u_input.d << (u_input.d % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, global0[_wgslsmith_index_u32(31956u, 21u)]), vec4<u32>(u_input.d.x, 0u, 3394u, var_0.x))) << (_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.x, 0u), u_input.d), ~_wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 0u, var_0.x, 29325u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(firstLeadingBit(vec2<i32>(abs(17852i), -global2.x)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(abs(vec4<i32>(u_input.a.x, u_input.e, 2147483647i, global1[_wgslsmith_index_u32(var_0.x, 16u)]))), vec4<i32>(-u_input.e, global2.x, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(77574u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], -15589i), global2.x & 1i)), vec4<i32>(abs(reverseBits(u_input.c.x)), _wgslsmith_div_i32(12480i, u_input.a.x), 1i, (global2.x & u_input.a.x) & firstTrailingBit(global1[_wgslsmith_index_u32(47953u, 16u)]))), vec3<i32>(-2147483647i, global2.x | _wgslsmith_mod_i32(~1i, ~2147483647i), global1[_wgslsmith_index_u32(25489u, 16u)]), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(138431u, 16u)], global2.x, 28554i, -1i), vec4<i32>(-10452i, -44209i, 17121i, -2147483647i)) << (min(vec4<u32>(var_0.x, 31444u, global0[_wgslsmith_index_u32(var_0.x, 21u)], 0u), vec4<u32>(1u, 0u, u_input.b, var_0.x)) % vec4<u32>(32u)), firstTrailingBit(~vec4<i32>(global2.x, -2147483647i, -2147483647i, 4777i))), _wgslsmith_dot_vec2_i32(global2.xz, global2.zz)), vec2<bool>(true, true));
    global3 = var_1.c.x;
    var var_2 = Struct_2(Struct_1(var_1.a, -var_1.b, ~vec3<i32>(51774i, -82533i, u_input.e), ~(-1i), vec2<bool>(true, any(select(vec4<bool>(var_1.e.x, var_1.e.x, false, false), vec4<bool>(var_1.e.x, true, false, var_1.e.x), false)))));
    let var_3 = Struct_2(var_2.a);
    let var_4 = Struct_2(Struct_1(select(~vec2<i32>(var_3.a.b.x, u_input.a.x), reverseBits(vec2<i32>(2147483647i, var_3.a.b.x)), vec2<bool>(any(vec2<bool>(var_2.a.e.x, false)), false)), _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(-1i, -16593i, 0i, -1i)), var_2.a.b, vec4<i32>(var_2.a.a.x << (79622u % 32u), -u_input.c.x, 6082i, var_2.a.b.x)), _wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(var_2.a.b.zxy, vec3<i32>(var_1.a.x, var_3.a.b.x, var_3.a.c.x))), vec3<i32>(2147483647i, -2147483647i, var_3.a.b.x)), -16144i, var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.d.x, 0u, var_0.x), min(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], u_input.b, 16753u, 0u), u_input.d), ~vec4<u32>(4168u, var_0.x, 4294967295u, var_0.x))) ^ (func_1(_wgslsmith_f_op_f32(sign(913f)), vec3<i32>(var_1.d, -14149i, var_1.b.x) | vec3<i32>(27418i, -1i, var_4.a.c.x)) | _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(1u, 4294967295u, 20209u, u_input.d.x)), u_input.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_div_u32(1u >> (u_input.d.x % 32u), ~var_0.x), 32153u, 4294967295u), select(_wgslsmith_sub_vec4_u32(~u_input.d, _wgslsmith_mod_vec4_u32(u_input.d, u_input.d)), vec4<u32>(_wgslsmith_sub_u32(1u, u_input.d.x), var_0.x, ~1u, global0[_wgslsmith_index_u32(var_0.x, 21u)]), !(0i <= var_1.c.x)), u_input.d), ~u_input.d, ~vec2<u32>(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.d.zww, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(0u, 21u)]), var_0.ywx)), 21u)]));
}

