struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 30>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    global1 = array<u32, 30>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global0.x + -1620f), _wgslsmith_f_op_f32(f32(-1f) * -1681f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), 915f)));
    var var_0 = true;
    let var_1 = vec3<i32>(((arg_0.c << (0u % 32u)) << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47718u, 30u)], 30u)] % 32u)) ^ (0i | _wgslsmith_sub_i32(_wgslsmith_mod_i32(6276i, u_input.a), -22890i)), -2147483647i, u_input.c.x);
    var var_2 = Struct_4(all(select(vec3<bool>(true, true, any(vec3<bool>(arg_0.d.b, true, arg_0.e.d.x))), select(select(vec3<bool>(arg_0.a.b, arg_0.d.b, false), vec3<bool>(false, true, false), arg_0.e.d.x), vec3<bool>(arg_0.d.b, false, false), !vec3<bool>(arg_0.d.a.d.x, true, arg_0.d.b)), vec3<bool>(true, true, true))), Struct_2(arg_0.d.a, true), arg_0.a.a);
    return select(vec4<bool>(var_2.c.d.x, var_2.a, all(select(vec4<bool>(var_2.a, arg_0.e.d.x, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(var_2.a, arg_0.e.d.x, arg_0.e.d.x, arg_0.a.b), var_2.a), vec4<bool>(arg_0.e.d.x, arg_0.a.b, arg_0.a.b, var_2.a))), true), !vec4<bool>(true, global1[_wgslsmith_index_u32(~u_input.b.x, 30u)] == firstLeadingBit(47680u), false, !arg_0.e.d.x), !all(vec2<bool>(true, true)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: i32) -> Struct_4 {
    var var_0 = select(select(vec4<bool>(global0.x > _wgslsmith_div_f32(-795f, global0.x), true, true, !all(vec4<bool>(arg_0, true, true, true))), vec4<bool>(false, any(vec3<bool>(arg_0, arg_0, true)), true, arg_0), true), vec4<bool>((any(vec2<bool>(false, true)) | true) != false, true, arg_0, all(!(!vec4<bool>(true, false, arg_0, arg_0)))), select(select(func_3(Struct_3(Struct_2(Struct_1(38088u, -19168i, 31278u, vec2<bool>(true, arg_0), vec2<i32>(u_input.c.x, u_input.a)), true), -1i, u_input.a, Struct_2(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)], u_input.c.x, 89249u, vec2<bool>(true, false), vec2<i32>(27451i, u_input.a)), false), Struct_1(u_input.b.x, u_input.a, 29671u, vec2<bool>(arg_0, true), vec2<i32>(arg_2, u_input.a)))), !(!vec4<bool>(false, true, arg_0, false)), arg_2 <= 23383i), !vec4<bool>(1i == u_input.c.x, arg_0, u_input.c.x <= -29849i, true), !func_3(Struct_3(Struct_2(Struct_1(u_input.b.x, u_input.c.x, global1[_wgslsmith_index_u32(19210u, 30u)], vec2<bool>(arg_0, true), vec2<i32>(-13501i, arg_2)), arg_0), 0i, -1i, Struct_2(Struct_1(4294967295u, 32435i, 9459u, vec2<bool>(true, false), u_input.c.zy), arg_0), Struct_1(4294967295u, 1i, 38361u, vec2<bool>(false, true), u_input.c.xy)))));
    var_0 = !select(vec4<bool>(true && var_0.x, all(vec4<bool>(arg_0, var_0.x, false, true)), arg_0, true), !select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, var_0.x, arg_0, var_0.x), vec4<bool>(false, true, true, true)), func_3(Struct_3(Struct_2(Struct_1(4294967295u, u_input.c.x, arg_1.x, vec2<bool>(var_0.x, arg_0), u_input.c.xx), false), 1i, -1i, Struct_2(Struct_1(global1[_wgslsmith_index_u32(9326u, 30u)], arg_2, u_input.b.x, var_0.zz, vec2<i32>(-29232i, 2147483647i)), var_0.x), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 30u)], 0i, 64255u, vec2<bool>(arg_0, arg_0), u_input.c.zx))), all(vec2<bool>(var_0.x, arg_0))), any(vec4<bool>(true, arg_0, u_input.b.x == 1u, true)));
    global1 = array<u32, 30>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-1070f)), _wgslsmith_f_op_f32(global0.x - -1290f));
    var var_1 = !arg_0;
    return Struct_4(!(!arg_0), Struct_2(Struct_1(33399u, -2025i, arg_1.x, func_3(Struct_3(Struct_2(Struct_1(u_input.b.x, 0i, arg_1.x, var_0.zx, vec2<i32>(arg_2, arg_2)), false), u_input.c.x, -12745i, Struct_2(Struct_1(4294967295u, arg_2, 57095u, var_0.xz, u_input.c.xy), false), Struct_1(global1[_wgslsmith_index_u32(58364u, 30u)], arg_2, arg_1.x, vec2<bool>(false, false), u_input.c.zx))).yw, vec2<i32>(arg_2 >> (0u % 32u), firstLeadingBit(-1i))), all(vec3<bool>(true, !arg_0, -1594f == global0.x))), Struct_1(~firstLeadingBit(global1[_wgslsmith_index_u32(2750u & u_input.b.x, 30u)]), -u_input.a, ~(~arg_1.x), vec2<bool>(min(arg_2, 7280i) <= reverseBits(0i), _wgslsmith_f_op_f32(global0.x - global0.x) != global0.x), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.c.x) & u_input.c.zy, u_input.c.zy)));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    var var_0 = func_2(true, firstLeadingBit(_wgslsmith_sub_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(arg_0.b.a.c, 30u)], 28811u, u_input.b.x), vec3<u32>(1u, arg_0.c.a, 1u), vec3<bool>(arg_0.c.d.x, false, arg_0.a)), u_input.b.zxw)), u_input.a);
    var var_1 = Struct_3(Struct_2(var_0.c, !var_0.a), ~_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(-2147483647i, 1i, -40547i), var_0.b.a.b), arg_0.c.e.x, arg_0.b, var_0.c);
    var var_2 = _wgslsmith_sub_i32(reverseBits(3142i), var_0.b.a.b);
    var var_3 = select(var_0.c.d, var_1.a.a.d, var_0.b.a.d);
    let var_4 = var_0.b;
    return var_0.b;
}

fn func_4(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = global0.x;
    var var_1 = ~(~0u);
    let var_2 = vec2<u32>(1298u, arg_0.a.c);
    var_1 = ~global1[_wgslsmith_index_u32(1u, 30u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39054u, 30u)], 30u)];
    var var_3 = Struct_3(Struct_2(func_2(func_3(Struct_3(Struct_2(Struct_1(1u, u_input.c.x, 0u, vec2<bool>(arg_0.a.d.x, arg_0.b), arg_0.a.e), arg_0.b), u_input.a, -22568i, arg_0, Struct_1(arg_0.a.c, 39196i, 40734u, arg_0.a.d, u_input.c.zx))).x, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.zzw, u_input.b.zwz, u_input.b.yxz), ~vec3<u32>(23063u, u_input.b.x, global1[_wgslsmith_index_u32(39509u, 30u)])), _wgslsmith_mod_i32(15917i, -13575i) ^ min(arg_0.a.b, -16322i)).c, func_2(true, ~(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 30u)], 30u)], global1[_wgslsmith_index_u32(arg_0.a.c, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)])), func_1(func_2(arg_0.a.d.x, u_input.b.yzy, u_input.c.x)).a.e.x).c.d.x), -47906i, _wgslsmith_sub_i32(abs(min(-arg_0.a.e.x, func_2(arg_0.a.d.x, vec3<u32>(0u, var_2.x, 4294967295u), 2147483647i).c.b)), -13034i >> (u_input.b.x % 32u)), arg_0, arg_0.a);
    return u_input.b.zzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(min(vec3<u32>(~19028u, abs(firstLeadingBit(4294967295u)), 4294967295u), func_4(func_1(Struct_4(false, Struct_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a, global1[_wgslsmith_index_u32(13027u, 30u)], vec2<bool>(true, true), vec2<i32>(u_input.a, u_input.c.x)), false), Struct_1(global1[_wgslsmith_index_u32(17910u, 30u)], u_input.a, u_input.b.x, vec2<bool>(false, false), u_input.c.zz)))) ^ ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], u_input.b.x, u_input.b.x)), vec3<u32>(func_1(Struct_4(true, Struct_2(Struct_1(41505u, 9844i, 4294967295u, vec2<bool>(false, true), vec2<i32>(21346i, u_input.a)), false), Struct_1(53956u, u_input.c.x, 53031u, vec2<bool>(false, true), u_input.c.yy))).a.c, 50289u, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, ~u_input.b.x, 1u, global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec4<u32>(~u_input.b.x, 0u, ~u_input.b.x, 1u))));
    var var_1 = true;
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(reverseBits(firstTrailingBit(u_input.a)), -1i), -_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, 36164i), -31621i), -max(u_input.a, u_input.c.x ^ u_input.c.x), 40455i), _wgslsmith_mod_vec4_i32(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, 0i, -22776i), vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.c.x), vec4<i32>(38284i, u_input.a, u_input.c.x, u_input.a))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(37505i, -16813i, -34019i, 2147483647i) | vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, -1i)), vec4<i32>(39475i, ~u_input.a, ~25837i, u_input.a))));
    global1 = array<u32, 30>();
    var_1 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(703f, 428f)) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1644f, global0.x) + _wgslsmith_f_op_f32(-1989f - 927f))));
    let var_3 = -select(~(~countOneBits(vec3<i32>(1i, var_2.x, var_2.x))), -vec3<i32>(var_2.x, u_input.a >> (4294967295u % 32u), -7593i), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), !func_3(Struct_3(Struct_2(Struct_1(u_input.b.x, -43234i, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], vec2<bool>(true, false), vec2<i32>(1i, 59354i)), true), 36376i, u_input.c.x, Struct_2(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], -33351i, global1[_wgslsmith_index_u32(var_0.x, 30u)], vec2<bool>(true, false), vec2<i32>(-2147483647i, u_input.c.x)), true), Struct_1(u_input.b.x, u_input.c.x, var_0.x, vec2<bool>(false, true), vec2<i32>(1i, 0i)))).yyw, vec3<bool>(func_2(true, var_0, u_input.c.x).a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)] != 16277u, any(vec4<bool>(true, true, true, false)))));
    global1 = array<u32, 30>();
    let var_4 = max(~func_1(Struct_4(all(vec2<bool>(false, false)), Struct_2(Struct_1(1u, -12907i, global1[_wgslsmith_index_u32(65226u, 30u)], vec2<bool>(true, false), vec2<i32>(1i, var_3.x)), false), Struct_1(var_0.x, var_2.x, 9798u, vec2<bool>(false, false), vec2<i32>(-2147483647i, var_2.x)))).a.b, i32(-1i) * -(var_3.x & 0i));
    let x = u_input.a;
    s_output = StorageBuffer(30372u, _wgslsmith_div_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_4, 1i), _wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(var_2.x, 1i, -1i))), firstTrailingBit(~u_input.c)), ~vec3<i32>(u_input.a, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-38066i, var_2.x, u_input.c.x), vec3<i32>(2147483647i, u_input.a, 2147483647i)))));
}

