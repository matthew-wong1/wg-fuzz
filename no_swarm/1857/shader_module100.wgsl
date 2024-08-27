struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(350f, i32(-2147483648), -10826i);

var<private> global1: Struct_2 = Struct_2(Struct_1(277f, 2147483647i, 10454i), Struct_1(-612f, 2147483647i, -57600i), Struct_1(-1193f, 42243i, -66514i), vec3<i32>(-74599i, -15101i, i32(-2147483648)), vec2<f32>(-1251f, -1000f));

var<private> global2: array<i32, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.e.x)))) + _wgslsmith_f_op_f32(trunc(-938f)))) * global1.e);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(var_0.x, -915f))))), 1470f);
    var var_2 = global1.b;
    let var_3 = _wgslsmith_clamp_vec2_i32(global1.d.xx, global1.d.xy | vec2<i32>(~17942i, global2[_wgslsmith_index_u32(~0u, 31u)] ^ 1i), global1.d.yz);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f - -1457f)), _wgslsmith_div_i32(1i, _wgslsmith_add_i32(firstLeadingBit(-27776i) | select(global2[_wgslsmith_index_u32(u_input.b, 31u)], -41875i, false), 1i)), -41334i);
    return -374f;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> vec3<u32> {
    global2 = array<i32, 31>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, 48392i), firstLeadingBit(~countOneBits(-29794i))), i32(-1i) * -40128i);
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.d.yy >> (vec2<u32>(65455u, 4294967295u) % vec2<u32>(32u)), global1.d.yx >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(arg_2.d.yx, arg_2.d.zz)), select(firstLeadingBit(vec2<i32>(u_input.a, global1.a.c)), abs(vec2<i32>(arg_2.a.b, u_input.a)), !arg_0.x)), ~(~global0.c) & _wgslsmith_sub_i32(countOneBits(var_0.c), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.b, 31u)], u_input.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(602f))), 2147483647i, global1.b.c), Struct_1(127f, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global1.d, -vec3<i32>(-2147483647i, 1i, global2[_wgslsmith_index_u32(0u, 31u)]), ~global1.d), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, arg_2.c.b, -104996i)), vec3<i32>(global2[_wgslsmith_index_u32(1u, 31u)], -2147483647i, u_input.a))), global0.c), _wgslsmith_add_vec3_i32(abs(reverseBits(_wgslsmith_mod_vec3_i32(global1.d, vec3<i32>(global1.b.b, global0.b, -30309i)))), arg_2.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(1473f)), _wgslsmith_f_op_f32(func_3()))))));
    var_0 = Struct_1(var_0.a, 0i | _wgslsmith_dot_vec2_i32(~arg_2.d.zx, -vec2<i32>(-2147483647i, 0i)), max(-(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.b, global1.a.b, -69211i, global0.b), vec4<i32>(0i, u_input.a, arg_2.c.b, -1i)) << (~u_input.b % 32u)), -85558i));
    let var_1 = global1.b;
    return _wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b)), u_input.b, 64350u)), vec3<u32>(u_input.b, 0u, u_input.b));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = global1.d.zy;
    let var_1 = max(11542u & u_input.b, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(func_2(vec3<bool>(false, true, true), arg_2.a, Struct_2(arg_2, Struct_1(global1.a.a, global2[_wgslsmith_index_u32(u_input.b, 31u)], global1.c.c), Struct_1(-1059f, -74725i, arg_2.b), global1.d, vec2<f32>(309f, 502f)), 429f)), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b))));
    var var_2 = min(min(select(abs(~vec3<u32>(46999u, 4294967295u, u_input.b)), ~(~vec3<u32>(u_input.b, 4294967295u, var_1)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), select(firstLeadingBit(~vec3<u32>(u_input.b, 116032u, var_1)), ~vec3<u32>(0u, 78335u, 4294967295u), vec3<bool>(true, true, true))), ~max(~select(vec3<u32>(63526u, 1u, 33529u), vec3<u32>(14387u, var_1, 0u), true), vec3<u32>(u_input.b, u_input.b, u_input.b) << (~vec3<u32>(1u, 4980u, var_1) % vec3<u32>(32u))));
    var var_3 = global1.c;
    var var_4 = true;
    return -56504i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(max(firstTrailingBit(~global1.b.c), func_1(global1.b.a, _wgslsmith_f_op_f32(min(global1.e.x, global0.a)), Struct_1(_wgslsmith_f_op_f32(global1.b.a * 343f), global0.b, global2[_wgslsmith_index_u32(abs(u_input.b), 31u)]))), -2147483647i, ~_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~0u, 31u)], abs(40376i)) | _wgslsmith_add_i32(~func_1(-838f, 311f, Struct_1(global0.a, global0.b, global0.b)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(47911u, 85830u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(14561u, 4294967295u))), 31u)]), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, global1.a.c, 1i, global1.a.b), vec4<i32>(1i, -44623i, global0.c, 1i)), ~vec4<i32>(0i, global1.b.b, 0i, global0.c)), _wgslsmith_sub_i32(-28871i, u_input.a)), global0.c));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -max(_wgslsmith_add_i32(u_input.a, global1.b.c), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4173u, 31u)], global2[_wgslsmith_index_u32(66910u, 31u)])), 0i, ~(-1i) << (u_input.b % 32u)), firstLeadingBit(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(1u, 31u)], 1i, global1.c.b, u_input.a)), ~vec4<i32>(global0.b, 1i, var_0.x, u_input.a) ^ -vec4<i32>(-2147483647i, u_input.a, global0.b, global1.b.b))), firstTrailingBit(vec4<i32>(~(~(-11963i)), ~(~47818i), -_wgslsmith_sub_i32(0i, global0.c), -55368i)));
    var_0 = var_1;
    var var_2 = Struct_2(global1.a, Struct_1(_wgslsmith_f_op_f32(round(1287f)), global1.d.x, 0i), global1.c, ~_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(var_1.x, -1i, -1i)), _wgslsmith_add_vec3_i32(var_0.zyy, vec3<i32>(24131i, var_1.x, 1i) & var_0.ywy), vec3<i32>(global0.c, 4210i, var_0.x) ^ -global1.d), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-106f, global1.b.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global1.e.x) + vec2<f32>(-219f, global1.b.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a, -1224f) + vec2<f32>(992f, global1.a.a))))))));
    var var_3 = !vec4<bool>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 54445u, u_input.b, u_input.b), vec4<u32>(u_input.b, 36545u, u_input.b, 63832u)), u_input.b ^ 29915u) >= u_input.b, (all(vec2<bool>(false, true)) || any(vec3<bool>(true, true, true))) || true, true, true);
    var_0 = var_1;
    global1 = Struct_2(Struct_1(-756f, countOneBits(global2[_wgslsmith_index_u32(27023u, 31u)]) | ~(global1.a.c << (0u % 32u)), ~(-12190i) >> (max(u_input.b >> (77404u % 32u), 4294967295u) % 32u)), Struct_1(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_mult_i32(u_input.a | select(global0.c, -3181i, true), _wgslsmith_mult_i32(41130i, ~var_2.d.x)), global1.d.x), global1.c, var_1.zyy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.e)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a, var_2.a.a)))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a, 180f) + _wgslsmith_f_op_vec2_f32(var_2.e - vec2<f32>(global1.a.a, -2600f))), global1.e))));
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_div_i32(9341i, firstLeadingBit(i32(-1i) * -11711i)), ~(-8157i));
    var_3 = vec4<bool>(all(var_3.zzx), var_3.x, var_3.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec4<u32>(53502u, 0u, 27264u, 19629u)) ^ vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(41495u, 4294967295u, 63072u), ~u_input.b), 4294967295u, func_2(!vec3<bool>(false, var_3.x, var_3.x), _wgslsmith_f_op_f32(global0.a * global1.b.a), Struct_2(global1.c, global1.a, Struct_1(-704f, global1.b.c, var_2.d.x), var_1.xyx, vec2<f32>(-405f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -276f)).x, 6962u), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a + global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-414f, global0.a))), -278f));
}

