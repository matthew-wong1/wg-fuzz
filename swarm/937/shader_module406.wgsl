struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: vec3<f32> = vec3<f32>(877f, 128f, 1484f);

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<bool>(true, true), vec3<u32>(38339u, 0u, 1u), true, false, -38177i), Struct_1(vec2<bool>(false, true), vec3<u32>(7233u, 1u, 0u), true, false, i32(-2147483648)), Struct_1(vec2<bool>(true, true), vec3<u32>(75005u, 13351u, 1u), false, true, i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 22645u, 0u), true, false, 1i), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 39269u, 30492u), true, true, 0i), Struct_1(vec2<bool>(true, false), vec3<u32>(73345u, 3851u, 1u), true, true, 36031i), Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 0u, 1197u), true, false, 2147483647i), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 4294967295u, 4294967295u), false, true, -1i), Struct_1(vec2<bool>(false, false), vec3<u32>(73090u, 89380u, 28511u), false, true, -37427i), Struct_1(vec2<bool>(true, false), vec3<u32>(2221u, 1u, 0u), false, false, -4093i), Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 4294967295u, 3146u), true, false, i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec3<u32>(80710u, 63858u, 40999u), false, true, -26606i), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 48077u, 33852u), true, false, 0i), Struct_1(vec2<bool>(true, true), vec3<u32>(74737u, 4294967295u, 21634u), true, true, -1i), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 0u), true, true, i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 34987u), true, false, 22346i), Struct_1(vec2<bool>(false, false), vec3<u32>(46714u, 46338u, 1u), false, true, -1i), Struct_1(vec2<bool>(false, false), vec3<u32>(21768u, 52936u, 4294967295u), false, true, -1i), Struct_1(vec2<bool>(true, false), vec3<u32>(162u, 4294967295u, 4294967295u), false, true, 0i));

var<private> global3: array<f32, 31>;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    return select(vec3<bool>(false, true, arg_0.a.x), !vec3<bool>(true, global0.x, ~u_input.a < ~u_input.a), !(arg_0.c.d && arg_0.d));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<i32>(reverseBits(2147483647i), -_wgslsmith_sub_i32(u_input.c.x, -1i));
    let var_1 = -18353i;
    global2 = array<Struct_1, 19>();
    let var_2 = -22304i;
    var var_3 = countOneBits(-_wgslsmith_div_i32(_wgslsmith_mult_i32(-22537i, -39353i), var_2)) >> ((u_input.a & arg_0.x) % 32u);
    return global2[_wgslsmith_index_u32(53457u, 19u)];
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    var var_0 = select(_wgslsmith_mod_vec4_u32(select(countOneBits(~vec4<u32>(43545u, 337u, 1081u, u_input.a)), abs(max(vec4<u32>(arg_1.e.b.x, 125858u, 1630u, 4294967295u), vec4<u32>(arg_1.e.b.x, arg_1.e.b.x, 47190u, 1u))), arg_2.x), vec4<u32>(~(~u_input.a), firstLeadingBit(u_input.a) << (u_input.a % 32u), ~u_input.a, u_input.a)), (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.c.b.x, arg_1.e.b.x, 3136u, arg_1.e.b.x), vec4<u32>(0u, arg_1.e.b.x, arg_1.c.b.x, u_input.a)), vec4<u32>(4294967295u, arg_1.e.b.x, u_input.a, u_input.a)) & ((vec4<u32>(arg_1.c.b.x, 1u, 12840u, 0u) << (vec4<u32>(57766u, 4294967295u, 0u, 34830u) % vec4<u32>(32u))) << ((vec4<u32>(arg_1.c.b.x, u_input.a, 4294967295u, arg_1.c.b.x) | vec4<u32>(0u, u_input.a, u_input.a, arg_1.c.b.x)) % vec4<u32>(32u)))) & (_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(29547u, arg_1.e.b.x, 29180u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_1.e.b.x, arg_1.c.b.x), vec4<u32>(38229u, arg_1.c.b.x, 0u, arg_1.c.b.x))) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 38502u, arg_1.c.b.x, arg_1.c.b.x), vec4<u32>(4294967295u, u_input.a, 61497u, arg_1.e.b.x))), arg_1.a);
    global3 = array<f32, 31>();
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-594f, _wgslsmith_f_op_f32(-1138f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, 617f, false)), _wgslsmith_f_op_f32(-169f - 1000f)))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.a, 0u, 38387u, 1u), vec4<u32>(u_input.a, 64068u, var_0.x, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_1.c.b.x, 4294967295u, 53234u), vec4<u32>(1u, var_0.x, 1u, 11947u), vec4<u32>(0u, u_input.a, 1u, var_0.x))), 31u)]), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.b)) + _wgslsmith_f_op_f32(-global1.x)), -757f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_1.b + global3[_wgslsmith_index_u32(8669u, 31u)])))), !select(!func_1(Struct_2(arg_1.a, 312f, global2[_wgslsmith_index_u32(27605u, 19u)], true, global2[_wgslsmith_index_u32(26665u, 19u)]), arg_1.c), select(vec3<bool>(arg_0.x, false, global0.x), !vec3<bool>(true, false, arg_0.x), select(arg_2.yyw, vec3<bool>(true, false, arg_0.x), arg_2.x)), arg_0.x || true)));
    global4 = !func_2(~vec4<u32>(49165u, 1u, u_input.a, var_0.x) & (reverseBits(vec4<u32>(var_0.x, arg_1.c.b.x, 1u, 26521u)) | firstTrailingBit(vec4<u32>(u_input.a, arg_1.e.b.x, 36123u, u_input.a)))).a.x;
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(1u, 31u)]), vec3<f32>(353f, 265f, arg_1.b), arg_0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -1794f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.c.b.x, 31u)] + 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(314f)), _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1361f, _wgslsmith_f_op_f32(abs(-2007f)), _wgslsmith_f_op_f32(min(-107f, -457f))))));
    return reverseBits(_wgslsmith_sub_i32(1i, countOneBits(_wgslsmith_sub_i32(u_input.b, -1i)) ^ ~(-1i)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<bool> {
    global3 = array<f32, 31>();
    var var_0 = vec4<u32>(4294967295u, ~67804u, arg_3.b.x, u_input.a);
    var_0 = vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, var_0.x), 1u) >> (var_0.x % 32u), 15956u, min(max(arg_2.x >> (~1u % 32u), ~46658u), u_input.a), 40145u);
    global2 = array<Struct_1, 19>();
    var var_1 = arg_3.e;
    return select(select(vec3<bool>(true, true, true), func_1(Struct_2(vec4<bool>(global0.x, arg_0, global0.x, false), _wgslsmith_f_op_f32(-global1.x), func_2(arg_2), !arg_0, func_2(vec4<u32>(var_0.x, 0u, 10457u, 18646u))), Struct_1(global0.xy, vec3<u32>(var_0.x, 46576u, arg_3.b.x) >> (arg_3.b % vec3<u32>(32u)), true, any(vec2<bool>(arg_3.c, false)), u_input.b)), global0.x), vec3<bool>(~arg_2.x > _wgslsmith_clamp_u32(max(4294967295u, u_input.a), countOneBits(var_0.x), ~20554u), all(func_2(arg_2).a), !global0.x), select(vec3<bool>(any(!vec4<bool>(false, true, global0.x, true)), all(func_1(Struct_2(vec4<bool>(arg_0, false, false, global0.x), global1.x, Struct_1(arg_3.a, var_0.xzz, false, false, -2147483647i), true, global2[_wgslsmith_index_u32(50759u, 19u)]), Struct_1(vec2<bool>(true, false), var_0.wwz, arg_0, arg_0, -67442i)).xx), !(!arg_0)), select(select(vec3<bool>(true, arg_0, global0.x), select(vec3<bool>(arg_3.d, arg_0, true), vec3<bool>(false, false, arg_0), arg_0), arg_3.c), vec3<bool>(true, true, true), func_1(Struct_2(vec4<bool>(arg_0, false, arg_0, arg_0), -2064f, arg_3, arg_0, Struct_1(vec2<bool>(true, false), var_0.zwz, arg_0, arg_0, u_input.b)), Struct_1(global0.zx, arg_3.b, false, false, u_input.c.x))), !(!vec3<bool>(global0.x, global0.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_clamp_vec3_i32(u_input.c, ~(~u_input.c), _wgslsmith_clamp_vec3_i32(~u_input.c, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 49585i, u_input.b), u_input.c), vec3<i32>(u_input.c.x, ~(-14195i), i32(-1i) * -11151i))), _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(-(i32(-1i) * -1i), ~countOneBits(2147483647i), u_input.b)), func_4(true, func_3(select(func_1(Struct_2(vec4<bool>(global0.x, global0.x, true, global0.x), global1.x, global2[_wgslsmith_index_u32(u_input.a, 19u)], false, Struct_1(global0.zx, vec3<u32>(u_input.a, 0u, u_input.a), true, global0.x, 5601i)), global2[_wgslsmith_index_u32(13167u, 19u)]), func_1(Struct_2(vec4<bool>(true, global0.x, true, false), 119f, Struct_1(global0.xy, vec3<u32>(u_input.a, u_input.a, u_input.a), true, true, u_input.c.x), global0.x, global2[_wgslsmith_index_u32(u_input.a, 19u)]), Struct_1(global0.xy, vec3<u32>(57421u, u_input.a, u_input.a), global0.x, false, u_input.b)), vec3<bool>(global0.x, false, true)), Struct_2(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(519u, 31u)] + 1700f), global2[_wgslsmith_index_u32(u_input.a, 19u)], global0.x, func_2(vec4<u32>(1u, 4294967295u, 4294967295u, 4143u))), select(!vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, global0.x, false, global0.x), !vec4<bool>(true, global0.x, global0.x, global0.x))), ~(~vec4<u32>(18838u, 16105u, 41572u, u_input.a) >> (~vec4<u32>(1u, 64295u, 38418u, 4294967295u) % vec4<u32>(32u))), func_2(reverseBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)));
    let var_2 = global2[_wgslsmith_index_u32(u_input.a, 19u)];
    let var_3 = countOneBits(min(vec4<u32>(~_wgslsmith_dot_vec2_u32(var_2.b.xz, vec2<u32>(1u, 33963u)), ~41172u, select(~var_2.b.x, firstTrailingBit(u_input.a), false), 1u), min(~(vec4<u32>(var_2.b.x, u_input.a, u_input.a, 0u) >> (vec4<u32>(1u, 44488u, 23207u, var_2.b.x) % vec4<u32>(32u))), ~vec4<u32>(0u, 4294967295u, 22484u, 1u))));
    global3 = array<f32, 31>();
    var var_4 = 0u;
    var var_5 = func_2(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a ^ 2014u, 1u, 4294967295u, var_3.x >> (0u % 32u)), ~countOneBits(var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.x, 1u, _wgslsmith_clamp_u32(max(79244u, var_5.b.x), var_3.x, u_input.a ^ 4294967295u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_5.b.x, var_3.x, 1u), var_5.b)), firstLeadingBit(firstTrailingBit(~var_3.yzy)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_5.b.x, var_3.x), var_5.b.xx & vec2<u32>(1u, u_input.a)), ~var_5.b.x, u_input.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(max(countOneBits(select(var_5.b, vec3<u32>(var_5.b.x, 4294967295u, u_input.a), false)), ~func_2(vec4<u32>(var_5.b.x, var_5.b.x, 4294967295u, 4294967295u)).b), var_5.b), 225f, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(13598i, u_input.c.x, 23761i, var_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_5.e, 26129i, var_0.x, var_5.e), vec4<i32>(var_2.e, u_input.c.x, var_2.e, 3768i))), _wgslsmith_mod_i32(var_0.x, var_2.e ^ -31369i))));
}

