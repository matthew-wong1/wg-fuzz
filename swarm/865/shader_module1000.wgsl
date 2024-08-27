struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true), -176f, Struct_1(55845u, false, 1i, vec4<u32>(1u, 0u, 4294967295u, 1u)), Struct_1(2286u, true, -21669i, vec4<u32>(4294967295u, 58204u, 31696u, 98956u)));

var<private> global1: vec4<i32> = vec4<i32>(27166i, 1i, 74215i, i32(-2147483648));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> u32 {
    global0 = Struct_2(vec2<bool>(global0.b == -204f, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1023f - _wgslsmith_f_op_f32(-163f + -1155f))), Struct_1(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_2.a), arg_0.d.zyx)), arg_0.b, _wgslsmith_clamp_i32(global0.d.c, 0i, 5199i), ~(~(~global0.c.d))), Struct_1(min(_wgslsmith_div_u32(~0u, global0.d.d.x), ~1u << ((global0.c.a ^ arg_0.d.x) % 32u)), false, -2147483647i, select(~(vec4<u32>(arg_2.a, 34627u, 3251u, 1u) ^ vec4<u32>(4294967295u, 7476u, arg_3, 1607u)), ~arg_0.d, !vec4<bool>(arg_2.b, global0.a.x, arg_0.b, false))));
    var var_0 = arg_0.d.x;
    global0 = Struct_2(select(vec2<bool>(false, arg_2.c == -37344i), vec2<bool>(arg_0.b, any(vec4<bool>(global0.a.x, arg_0.b, false, global0.c.b)) | any(vec4<bool>(false, arg_0.b, true, arg_0.b))), any(!(!vec4<bool>(arg_0.b, arg_2.b, arg_2.b, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b * -1068f))), -1000f), Struct_1(~firstTrailingBit(arg_0.a), abs(arg_3 << (69820u % 32u)) >= 0u, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global1.wxw, vec3<i32>(global1.x, global1.x, 4083i)), ~countOneBits(-1i)), reverseBits(abs(countOneBits(global0.c.d)))), global0.d);
    let var_1 = arg_3;
    var var_2 = u_input.a;
    return arg_1;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(global0.c.a, func_3(global0.d, _wgslsmith_dot_vec4_u32(global0.c.d, firstLeadingBit(global0.c.d)), global0.c, global0.c.a)), all(select(select(vec3<bool>(global0.a.x, true, global0.a.x), !vec3<bool>(true, global0.a.x, false), select(false, false, true)), !(!vec3<bool>(false, global0.a.x, true)), !vec3<bool>(global0.a.x, true, global0.a.x))), u_input.a, vec4<u32>(~0u, global0.c.a, ~global0.d.d.x, _wgslsmith_sub_u32(1u, global0.c.a) << (~4758u % 32u)) & vec4<u32>(2026u, ~(global0.c.d.x & global0.d.a), firstLeadingBit(23122u), 4294967295u));
    global0 = Struct_2(select(vec2<bool>(any(vec2<bool>(false, var_0.b)), _wgslsmith_f_op_f32(abs(global0.b)) > _wgslsmith_f_op_f32(max(global0.b, global0.b))), select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, var_0.b), vec2<bool>(global0.a.x, var_0.b)), false), select(select(vec2<bool>(false, var_0.b), vec2<bool>(true, var_0.b), global0.c.b), !global0.a, !global0.a), true), global0.a), _wgslsmith_f_op_f32(step(-947f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -393f)))))), global0.d, Struct_1(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.c.d.x, global0.d.a) >> (1u % 32u), firstLeadingBit(var_0.a)), all(!select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(true, false, false), vec3<bool>(true, true, global0.c.b))), abs(u_input.a), var_0.d));
    var var_1 = global0.c;
    var_1 = Struct_1(var_0.a, all(select(vec4<bool>(true, false, global0.a.x, false), !vec4<bool>(global0.c.b, true, true, false), true)) & global0.a.x, _wgslsmith_dot_vec2_i32(-(~(global1.zx | vec2<i32>(53903i, var_1.c))), firstTrailingBit(vec2<i32>(var_1.c, _wgslsmith_mult_i32(17426i, -11232i)))), vec4<u32>(firstTrailingBit(8290u), _wgslsmith_clamp_u32(~1u, var_1.d.x, 0u), _wgslsmith_sub_u32(37357u, (var_0.a << (var_0.a % 32u)) ^ ~10850u), var_1.d.x));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b))))), global0.d, Struct_1(min(reverseBits(var_1.a), global0.c.a), any(vec3<bool>(all(vec3<bool>(var_0.b, true, global0.c.b)), true, !var_1.b)), global1.x, var_0.d));
    return select(vec4<i32>(2147483647i, min(min(~u_input.a, 1i), global1.x), ~(~34068i), -283i), vec4<i32>(1958i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, _wgslsmith_clamp_i32(var_1.c, var_0.c, global0.c.c)), -u_input.a), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, var_1.c, -8893i) | vec4<i32>(global0.c.c, 68965i, 1i, global1.x), firstTrailingBit(vec4<i32>(var_0.c, global1.x, 65689i, u_input.a)))), ~u_input.a << (countOneBits(firstTrailingBit(40248u)) % 32u)), select(!(!vec4<bool>(var_0.b, var_1.b, true, true)), !vec4<bool>(true, true, -620f < global0.b, !var_0.b), select(vec4<bool>(!var_1.b, !var_1.b, false, any(vec3<bool>(var_0.b, var_1.b, var_0.b))), select(select(vec4<bool>(true, true, var_1.b, false), vec4<bool>(var_0.b, var_0.b, true, true), true), vec4<bool>(true, false, false, global0.d.b), select(vec4<bool>(false, var_1.b, true, var_0.b), vec4<bool>(global0.c.b, var_0.b, global0.c.b, true), vec4<bool>(var_0.b, false, true, var_0.b))), any(select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(true, true, global0.d.b), var_1.b)))));
}

fn func_1(arg_0: u32) -> vec2<i32> {
    global1 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(func_2(), _wgslsmith_add_vec4_i32(~vec4<i32>(-9088i, global1.x, global0.c.c, global1.x), firstTrailingBit(reverseBits(vec4<i32>(global1.x, -56890i, 10130i, 0i))))), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.c, 0i, global0.d.c, u_input.a), -vec4<i32>(global1.x, 0i, -1i, global0.d.c)), global1.x, ~1i, global0.c.c));
    global1 = firstLeadingBit(~(select(vec4<i32>(-41228i, u_input.a, u_input.a, global0.c.c), vec4<i32>(global1.x, global0.d.c, global0.d.c, u_input.a), global0.a.x) >> (~global0.d.d % vec4<u32>(32u))) | ~(~(~vec4<i32>(u_input.a, 0i, 998i, global0.d.c))));
    var var_0 = global0.d.d.xx;
    var var_1 = _wgslsmith_clamp_vec3_i32(select(global1.xyx, global1.xxx, global0.c.b), -countOneBits(~(vec3<i32>(global0.c.c, global1.x, 2147483647i) | global1.wzz)), abs(max(reverseBits(abs(global1.zyw)), max(firstLeadingBit(global1.wyx), global1.zzw))));
    var_1 = vec3<i32>(-26828i, ~var_1.x, ~(-1i));
    return var_1.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(106429u, !(global0.b != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), global0.b)), _wgslsmith_clamp_i32(global1.x, u_input.a << (global0.c.d.x % 32u), max(u_input.a, _wgslsmith_dot_vec2_i32(func_1(47339u), firstTrailingBit(global1.yz)))), _wgslsmith_div_vec4_u32(global0.d.d, ~vec4<u32>(global0.c.d.x >> (global0.c.a % 32u), ~global0.d.d.x, ~global0.c.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.d.x, global0.d.a, global0.d.a, global0.d.a), global0.d.d))));
    global1 = select(countOneBits(abs(firstTrailingBit(vec4<i32>(global1.x, global1.x, 3579i, 1i)))), ~countOneBits(min(vec4<i32>(var_0.c, var_0.c, var_0.c, -1255i), vec4<i32>(u_input.a, 56413i, -1i, -61946i) >> (vec4<u32>(var_0.d.x, 5870u, 39554u, global0.d.d.x) % vec4<u32>(32u)))), select(vec4<bool>(global0.c.b, false, true, var_0.b), select(!(!vec4<bool>(global0.d.b, true, true, var_0.b)), vec4<bool>(all(vec4<bool>(true, false, false, true)), true, all(global0.a), false), _wgslsmith_f_op_f32(trunc(global0.b)) >= global0.b), any(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691f - global0.b)), global0.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.b, -1689f), _wgslsmith_f_op_f32(-global0.b))))));
    var var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.c.a, global0.c.a, var_0.a, var_0.d.x), global0.c.d) | _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d.d.x, global0.d.a, 45174u, 0u), var_0.d, vec4<u32>(1u, var_0.d.x, global0.d.a, global0.c.a)), vec4<u32>(0u, 1u, ~25735u, ~var_0.d.x), vec4<u32>(countOneBits(1u), ~0u, _wgslsmith_mult_u32(global0.c.a, 106240u), ~global0.c.d.x)), vec4<u32>(global0.d.d.x, var_0.d.x, 27380u, abs(global0.d.d.x)));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1097f), global0.d, Struct_1(firstTrailingBit(~global0.d.a) >> (max(global0.d.d.x, 6819u) % 32u), !var_0.b, _wgslsmith_add_i32(global1.x, u_input.a), _wgslsmith_div_vec4_u32(select(~vec4<u32>(38368u, global0.c.d.x, var_2.x, 0u), ~global0.d.d, !var_0.b), reverseBits(var_0.d))));
    let var_3 = global0.d;
    global1 = _wgslsmith_mult_vec4_i32(~(~vec4<i32>(~var_3.c, 39859i, var_0.c, -2147483647i | var_0.c)), func_2() << (_wgslsmith_mult_vec4_u32(var_0.d, var_3.d) % vec4<u32>(32u)));
    global1 = vec4<i32>(-41093i, 26395i, ~_wgslsmith_div_i32(u_input.a, _wgslsmith_mult_i32(var_0.c, firstLeadingBit(-23752i))), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-24446i, global0.d.d.yww, _wgslsmith_clamp_vec2_u32(vec2<u32>(reverseBits(18062u), 14742u >> (1u % 32u)), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(61431u, 66793u), vec2<u32>(0u, var_2.x), global0.c.d.yy)) >> (~_wgslsmith_add_vec2_u32(global0.c.d.yy, var_2.zw) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, global0.c.a), _wgslsmith_div_vec2_u32(var_2.wy, vec2<u32>(var_2.x, 84189u)), _wgslsmith_mod_vec2_u32(vec2<u32>(19359u, 66437u), vec2<u32>(1u, var_2.x))) & (min(var_0.d.ww, global0.c.d.zz) << (~vec2<u32>(1u, 0u) % vec2<u32>(32u)))));
}

