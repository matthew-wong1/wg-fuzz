struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-1i, 0i, 1i, -3165i), vec3<i32>(-27034i, -7375i, 2147483647i), -122f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_u32(~u_input.a & 40886u, (30239u >> (abs(u_input.a) % 32u)) << (4294967295u % 32u));
    var var_1 = !select(!vec2<bool>(true, all(vec2<bool>(false, false))), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, false, false)), true), vec2<bool>(true, true)));
    let var_2 = 1f;
    var var_3 = vec4<i32>(countOneBits(u_input.b.x), ~(-1i), select(u_input.d.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, arg_0.b.x, -1447i) << (global1.x % 32u), ~27167i, _wgslsmith_mod_i32(~1i, u_input.c)), !var_1.x), _wgslsmith_dot_vec2_i32(global2.b.zz, ~select(~vec2<i32>(arg_0.b.x, u_input.d.x), global2.a.yw, !var_1.x)));
    let var_4 = Struct_2(var_1.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_2, -318f, arg_0.c) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1532f, -274f, 1000f) * vec4<f32>(var_2, var_2, arg_0.c, global2.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0.c, 609f, var_2))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1269f, 389f, 555f, 371f), vec4<f32>(var_2, 1000f, -1490f, 170f)))))))), arg_0, ~countOneBits(_wgslsmith_clamp_vec2_i32(~vec2<i32>(0i, global2.a.x), ~global2.b.zy, select(arg_0.a.zz, vec2<i32>(-2147483647i, u_input.d.x), var_1.x))), 1000f);
    return var_0 >= _wgslsmith_div_u32(reverseBits(~_wgslsmith_mod_u32(29649u, 1u)), ~abs(~global1.x));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), global2.c, _wgslsmith_f_op_f32(floor(-641f)), -737f) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(514f, 1348f, -425f, global2.c)))))), Struct_1(global2.a, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d, u_input.d) << (countOneBits(vec3<u32>(global1.x, global1.x, 11774u)) % vec3<u32>(32u)), -global2.a.wwx), global0.x), ~global2.b.xz, 1144f);
    var var_1 = Struct_3(var_0.c, var_0);
    var var_2 = true;
    var var_3 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(var_1.b.a, true)), !var_1.b.a), !vec2<bool>(func_3(var_0.c), var_1.b.c.c < 419f), var_0.a);
    global2 = Struct_1(vec4<i32>(firstLeadingBit(-40615i), 26989i, global2.b.x, 28310i), global2.a.wzx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1177f))));
    return Struct_3(var_1.b.c, Struct_2(!var_0.a, var_0.b, Struct_1(vec4<i32>(var_0.d.x, ~u_input.d.x, global2.b.x, -u_input.b.x), var_0.c.a.wzw, _wgslsmith_f_op_f32(global0.x - 859f)), _wgslsmith_div_vec2_i32(vec2<i32>(-var_1.b.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.x, -1i, var_1.a.b.x), vec3<i32>(var_1.a.a.x, 2147483647i, 32348i))), -(vec2<i32>(var_0.c.a.x, var_0.d.x) >> (global1.xx % vec2<u32>(32u)))), 551f));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.zz + vec2<f32>(-1600f, global2.c)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.b.zx), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.x + arg_1.a.c))), _wgslsmith_f_op_f32(-global2.c)))));
    global2 = Struct_1(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-31260i, u_input.d.x, global2.a.x, arg_1.b.c.a.x), -global2.a), arg_1.b.c.a), select(~firstTrailingBit(arg_1.a.b ^ u_input.d), ~countOneBits(~vec3<i32>(arg_1.b.d.x, arg_1.a.b.x, 19534i)), _wgslsmith_sub_i32(arg_1.a.b.x, 2147483647i) <= 1597i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b.e - _wgslsmith_f_op_f32(ceil(-725f))), global2.c)));
    global1 = firstLeadingBit(vec3<u32>(56530u, _wgslsmith_clamp_u32(~abs(global1.x), 75547u, 0u), (_wgslsmith_dot_vec3_u32(arg_0.yzw, vec3<u32>(37634u, global1.x, 71594u)) >> ((1u ^ global1.x) % 32u)) << (_wgslsmith_sub_u32(10678u, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(global1.x, 4294967295u, 14252u, arg_0.x))) % 32u)));
    var var_1 = select(firstTrailingBit(reverseBits(~vec3<u32>(global1.x, 1u, 12166u))), ~arg_0.zyx, false) & vec3<u32>(~global1.x, arg_0.x, ~48969u);
    var var_2 = ~vec3<u32>(max(_wgslsmith_dot_vec4_u32(arg_0, _wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(14692u, 1u, 14821u, 4294967295u))), arg_0.x), var_1.x, arg_0.x);
    return abs(~(~vec2<u32>(global1.x, 4294967295u) << (~vec2<u32>(1u, var_2.x) % vec2<u32>(32u))) & vec2<u32>(u_input.a, min(max(global1.x, arg_0.x), 92085u ^ global1.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = ((_wgslsmith_clamp_vec2_u32(vec2<u32>(11822u, 1u), ~vec2<u32>(u_input.a, 4294967295u), global1.yz) & global1.yz) | vec2<u32>(~firstLeadingBit(global1.x), 9543u >> (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u))) ^ (~global1.zy >> (func_4(_wgslsmith_div_vec4_u32(vec4<u32>(156551u, 2293u, global1.x, 4294967295u), abs(vec4<u32>(1u, 1u, 0u, 35255u))), func_2(), vec2<bool>(true, arg_3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, 785f, 180f)))) % vec2<u32>(32u)));
    let var_1 = arg_3;
    global0 = _wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(469f, -710f, arg_1.c, 529f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -374f), 117f, _wgslsmith_f_op_f32(round(global0.x)), -1000f))));
    let var_2 = global0.x;
    let var_3 = arg_3.c.a;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_add_vec4_i32(select(global2.a, global2.a, !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), min(max(global2.a, abs(vec4<i32>(global2.a.x, global2.a.x, global2.b.x, 0i))), vec4<i32>(-1i) * -vec4<i32>(global2.b.x, -15649i, -3770i, -10158i))), abs(select((u_input.d >> (vec3<u32>(global1.x, u_input.a, u_input.a) % vec3<u32>(32u))) | -u_input.d, vec3<i32>(reverseBits(-2147483647i), -1i, firstLeadingBit(global2.b.x)), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(686f))))));
    var var_0 = countOneBits(~u_input.a);
    let var_1 = vec3<u32>(~_wgslsmith_mod_u32(~func_1(vec4<bool>(false, false, true, true), Struct_1(global2.a, vec3<i32>(global2.b.x, 0i, 2147483647i), global0.x), Struct_1(global2.a, vec3<i32>(u_input.d.x, global2.a.x, -18747i), -1306f), Struct_2(false, vec4<f32>(global0.x, global2.c, global2.c, -193f), Struct_1(global2.a, vec3<i32>(1i, 16447i, global2.b.x), -454f), vec2<i32>(0i, u_input.c), 1023f)), reverseBits(global1.x ^ global1.x)), ~0u, func_4(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, u_input.a, 7607u, 48131u), vec4<u32>(1u, global1.x, u_input.a, global1.x)), ~(vec4<u32>(u_input.a, 0u, 4294967295u, 4294967295u) ^ vec4<u32>(global1.x, u_input.a, u_input.a, 0u))), func_2(), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(sign(global2.c)), _wgslsmith_f_op_f32(-global0.x)))).x);
    let var_2 = var_1.x;
    global2 = func_2().a;
    var_0 = 61142u;
    var_0 = global1.x;
    let var_3 = Struct_1(vec4<i32>(select(_wgslsmith_mod_i32(-420i, u_input.c | global2.b.x), -470i, all(vec3<bool>(true, true, true))), 0i, u_input.d.x, -(~(~global2.a.x))), -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(global2.b.x, u_input.c, 23679i), vec3<i32>(-1i, u_input.d.x, global2.b.x)), vec3<i32>(global2.b.x, global2.a.x, u_input.c)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, global2.b.x, 24035i, u_input.b.x), vec4<i32>(18046i, global2.a.x, u_input.b.x, u_input.c)), _wgslsmith_add_i32(global2.a.x, global2.b.x))), -271f);
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, var_2);
}

