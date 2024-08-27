struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(1u, 4294967295u, 17230u, 4294967295u, 66412u, 66340u, 1u, 4294967295u, 4294967295u, 1u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)))));
    global2 = -countOneBits(_wgslsmith_add_i32(select(1i, arg_2.c.x, false), 24462i)) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, abs(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, 4294967295u))), ~_wgslsmith_mod_u32(1u, abs(u_input.c.x))) % 32u);
    global2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_2.c.x, -arg_1.c.x), ~(-2147483647i));
    global1 = Struct_1(!vec3<bool>(all(select(vec3<bool>(true, true, arg_1.b.x), vec3<bool>(arg_2.a.x, true, arg_3), arg_2.b.zzx)), true, !(!arg_1.b.x)), !vec4<bool>(true, true, arg_1.b.x, arg_1.a.x), _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.c.x, u_input.d.x), abs(arg_1.c)), _wgslsmith_clamp_vec2_i32(global1.c, vec2<i32>(u_input.a.x, arg_1.c.x) ^ (u_input.b.yy ^ u_input.b.yy), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b.x, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.c.x, u_input.b.x), vec2<i32>(u_input.d.x, global1.c.x), vec2<i32>(43045i, 16430i))))), arg_1.e, _wgslsmith_clamp_u32(85409u, 51519u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_1.d, u_input.c.x), 11u)]));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0));
    return 19226u;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    global2 = max(arg_0.c.x, u_input.b.x);
    var var_1 = u_input.d.x;
    global1 = Struct_1(!var_0.a, select(vec4<bool>(1f <= _wgslsmith_f_op_f32(round(-366f)), true, true, true), select(vec4<bool>(true, true, !arg_0.a.x, global1.a.x), select(vec4<bool>(global1.b.x, var_0.b.x, false, global1.b.x), vec4<bool>(false, var_0.a.x, var_0.a.x, global1.b.x), var_0.a.x), !arg_0.b.x), vec4<bool>(any(vec4<bool>(var_0.b.x, arg_0.a.x, global1.a.x, var_0.b.x)) & !arg_0.b.x, false, !global1.a.x, arg_0.b.x)), vec2<i32>(2147483647i, ~firstTrailingBit(arg_0.c.x & arg_0.c.x)), global1.d, 0u);
    let var_2 = vec3<f32>(1f, 1f, 1f);
    return global1.a.x;
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(func_2(vec2<f32>(-313f, -265f), Struct_1(vec3<bool>(false, false, true), global1.b, u_input.d.wz, global0[_wgslsmith_index_u32(41559u, 11u)], u_input.c.x), Struct_1(global1.a, vec4<bool>(global1.b.x, global1.a.x, global1.b.x, true), vec2<i32>(u_input.b.x, global1.c.x), 0u, u_input.c.x), global1.a.x), ~0u, u_input.c.x), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(0u, 20168u, 4294967295u)), vec3<u32>(34889u, 83451u, 25116u) & vec3<u32>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], 86194u)))), _wgslsmith_div_u32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), Struct_1(select(global1.b.wyw, global1.a, vec3<bool>(false, global1.a.x, global1.a.x)), !vec4<bool>(false, global1.a.x, false, global1.b.x), abs(u_input.a.zy), u_input.c.x, 1u), Struct_1(vec3<bool>(global1.a.x, true, false), vec4<bool>(global1.b.x, true, false, global1.a.x), u_input.d.zw, ~4294967295u, u_input.c.x << (0u % 32u)), !select(global1.b.x, global1.b.x, global1.b.x)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), 19440u);
    let var_1 = global1.b.x;
    global0 = array<u32, 11>();
    global2 = u_input.a.x;
    var var_2 = firstLeadingBit(u_input.d.wwy << (~(abs(vec3<u32>(0u, global0[_wgslsmith_index_u32(var_0, 11u)], 40480u)) >> ((vec3<u32>(u_input.c.x, 67323u, u_input.c.x) & vec3<u32>(var_0, global1.d, 140486u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return vec3<bool>(func_3(Struct_1(global1.a, select(select(vec4<bool>(global1.b.x, true, true, true), vec4<bool>(global1.b.x, global1.a.x, true, false), true), vec4<bool>(global1.b.x, true, global1.a.x, global1.a.x), !vec4<bool>(true, true, global1.a.x, global1.a.x)), select(var_2.yy, ~vec2<i32>(-2147483647i, 5344i), !vec2<bool>(global1.b.x, global1.b.x)), 30118u, 3366u)), all(!global1.b), global1.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1503f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(485f, 452f))), _wgslsmith_f_op_f32(round(-1172f)))));
    var var_1 = arg_0;
    return 1029f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(func_1(), global1.b, ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, global1.c.x), vec2<i32>(u_input.b.x, global1.c.x)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~global1.e, firstLeadingBit(u_input.c.x)), ~4294967295u), 64592u), Struct_1(global1.a, global1.b, vec2<i32>(global1.c.x, _wgslsmith_add_i32(global1.c.x, ~u_input.d.x)), 37472u, global1.d), Struct_1(!select(!vec3<bool>(global1.b.x, false, false), !global1.a, global1.a.x), select(global1.b, global1.b, true), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.c.x, 1i), -vec2<i32>(3396i, -50218i))), max(global0[_wgslsmith_index_u32(global1.e, 11u)], u_input.c.x), 13540u)));
    let var_1 = Struct_1(vec3<bool>(any(func_1().zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -956f) - _wgslsmith_f_op_f32(step(-1126f, 897f))), any(global1.b)), select(vec4<bool>(!func_1().x, false, global1.a.x, true), !vec4<bool>(false, true, global1.a.x, global1.b.x), any(global1.b)), ~u_input.d.yw, u_input.c.x, 37134u);
    var var_2 = global1.b.x;
    var var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(33472u, 11u)], 0u, 0u), ~vec4<u32>(var_1.d, var_1.e, global1.d, 35781u)), vec4<u32>(var_1.e, 4294967295u, ~0u, ~27459u)) | vec4<u32>(~firstTrailingBit(var_1.d), global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56655u, 11u)], 11u)], 11u)]), 11u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global1.e, 4294967295u, global0[_wgslsmith_index_u32(2653u, 11u)]) >> (vec3<u32>(0u, 51809u, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]) % vec3<u32>(32u)), vec3<u32>(global1.d, 21983u, global1.e)), _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(63857u, 11u)], ~1u)), ~(~(~vec4<u32>(global1.d, global1.d, var_1.e, global1.d))) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 39892u, var_1.d, 4294967295u) ^ vec4<u32>(var_1.d, 4294967295u, global1.d, 15306u), ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 34280u, u_input.c.x, 1u)), vec4<u32>(countOneBits(u_input.c.x), firstLeadingBit(11257u), 1u << (global0[_wgslsmith_index_u32(global1.e ^ 14381u, 11u)] % 32u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.d, u_input.c.x, 13392u)), vec3<u32>(global1.e, 1u, u_input.c.x)), 11u)] << (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~0u, 11u)], global1.d) % 32u)));
    var var_4 = Struct_1(!global1.a, global1.b, vec2<i32>(27732i, _wgslsmith_dot_vec3_i32(-(vec3<i32>(-8497i, global1.c.x, 1i) >> (vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(48953u, 11u)], global0[_wgslsmith_index_u32(var_3.x, 11u)]) % vec3<u32>(32u))), vec3<i32>(firstLeadingBit(0i), var_1.c.x, _wgslsmith_sub_i32(25184i, global1.c.x)))), ~var_3.x << ((global1.e & ~11448u) % 32u), global1.d);
    var var_5 = vec2<i32>(u_input.a.x, min(max(_wgslsmith_mod_i32(2147483647i, var_1.c.x), var_1.c.x), _wgslsmith_clamp_i32(-13709i, firstLeadingBit(var_4.c.x), var_1.c.x))) << (vec2<u32>(~(~4294967295u), 4294967295u) % vec2<u32>(32u));
    var_5 = select(_wgslsmith_add_vec2_i32(var_1.c, vec2<i32>(max(-2147483647i, var_5.x), ~var_5.x)), vec2<i32>(-1i, (var_1.c.x << (1u % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_1.d, var_3.x), vec3<u32>(16993u, var_4.d, 0u)) % 32u)), true) >> ((~u_input.c << (var_3.yw % vec2<u32>(32u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(u_input.d.x)));
}

