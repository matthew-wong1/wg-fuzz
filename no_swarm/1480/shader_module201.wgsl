struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<i32>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(~max(vec4<u32>(1u, arg_0, 10133u, arg_0), vec4<u32>(14273u, arg_0, u_input.b, u_input.b))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(121396u, arg_0, u_input.b, 1799u), vec4<u32>(u_input.b, u_input.b, 57210u, 4294967295u))));
    var var_1 = min(max(_wgslsmith_clamp_vec2_i32(~u_input.a, -global1.yx, u_input.a | vec2<i32>(global1.x, -44267i)), u_input.a) << (firstLeadingBit(abs(_wgslsmith_sub_vec2_u32(var_0.wy, vec2<u32>(var_0.x, var_0.x)))) % vec2<u32>(32u)), abs(u_input.a));
    var var_2 = global2.zzz;
    var var_3 = Struct_2(~firstTrailingBit(_wgslsmith_sub_i32(global1.x, -u_input.a.x)));
    global2 = vec4<bool>(!(~u_input.b > ~var_0.x) & false, any(!(!vec4<bool>(false, true, false, var_2.x))), true, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1398f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-311f + -1000f), 325f))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-311f - 540f), 1f) + _wgslsmith_f_op_f32(-2509f - -2310f)))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = !select(global2.xy, !global2.xz, false);
    global1 = _wgslsmith_sub_vec3_i32(select(-_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 1i, u_input.a.x), -vec3<i32>(global1.x, arg_0, global1.x)), min(~(vec3<i32>(arg_1.a, 70610i, -2147483647i) >> (vec3<u32>(arg_3.x, arg_3.x, u_input.b) % vec3<u32>(32u))), -vec3<i32>(-2147483647i, -1i, 34119i)), vec3<bool>(global2.x, global2.x, var_0.x)), -vec3<i32>(-(3753i >> (u_input.b % 32u)), -2147483647i, 1i));
    let var_1 = _wgslsmith_f_op_f32(-567f * 1895f);
    global0 = any(vec3<bool>(!select(all(var_0), all(vec4<bool>(true, false, global2.x, global2.x)), true), all(global2.yy), (!var_0.x && false) && select(var_0.x, true || global2.x, false)));
    var var_2 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = u_input.a | countOneBits(global1.xx);
    let var_1 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -861f)), _wgslsmith_f_op_f32(step(arg_1.x, 213f)));
    let var_2 = -841f;
    let var_3 = Struct_1(vec4<i32>(-48962i, abs(_wgslsmith_mult_i32(-20841i, -19951i)), _wgslsmith_div_i32(u_input.a.x >> (min(u_input.b, u_input.b) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 86580i, 32737i, u_input.a.x), vec4<i32>(global1.x, -16874i, -21864i, -1i)) << (31976u % 32u)), firstTrailingBit(-1i)), _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(u_input.b), ~7370u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u) ^ _wgslsmith_sub_u32(36334u, 1u), u_input.b), ~vec4<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, 1u), 5076u << (u_input.b % 32u), min(22277u, u_input.b), ~4294967295u)), !select(!vec2<bool>(global2.x, global2.x), !global2.xx, abs(u_input.b) >= (1u << (0u % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_1.x, arg_1.x, var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(997f * _wgslsmith_f_op_f32(exp2(var_2))) * arg_1.x));
    var var_4 = _wgslsmith_mod_vec4_i32(countOneBits(var_3.a), var_3.a & var_3.a);
    return func_3(_wgslsmith_add_i32(max(firstLeadingBit(select(0i, 2147483647i, false)), firstLeadingBit(_wgslsmith_add_i32(var_4.x, 20681i))), 37435i), arg_2, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-193f, 1149f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.d.x, -234f))))), (max(firstLeadingBit(vec3<u32>(var_3.b.x, 15815u, u_input.b)), vec3<u32>(67502u, var_3.b.x, 31177u)) | var_3.b.yyz) >> (_wgslsmith_mult_vec3_u32(~var_3.b.zxy, vec3<u32>(u_input.b, 4294967295u, u_input.b)) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = arg_0.c.x;
    global1 = vec3<i32>(~2198i, -3295i >> (~(~0u) % 32u), -35912i);
    var var_0 = 2664f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1269f));
    let var_1 = u_input.b;
    return func_4(func_3(-u_input.a.x, Struct_2(-2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-259f, -468f, _wgslsmith_f_op_f32(arg_0.d.x + arg_0.e), _wgslsmith_f_op_f32(func_2(u_input.b))) + _wgslsmith_f_op_vec4_f32(-arg_0.d)), vec3<u32>(u_input.b, 0u, _wgslsmith_mult_u32(1u, u_input.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.d.xz))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1027f, -262f)))), Struct_2(-12297i >> (_wgslsmith_mult_u32(abs(arg_0.b.x), ~1u) % 32u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.a.zz;
    let var_1 = arg_0;
    global0 = any(!(!select(select(global2.xxy, vec3<bool>(false, global2.x, arg_1.c.x), true), vec3<bool>(true, false, global2.x), vec3<bool>(false, false, false))));
    let var_2 = func_4(func_1(arg_1), arg_1.d.zw, func_3(~29526i, var_1, _wgslsmith_f_op_vec4_f32(max(arg_3.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d * vec4<f32>(arg_1.d.x, arg_1.e, 476f, arg_3.e))))), arg_3.b.xyy));
    var var_3 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_3.d.x, -1675f, arg_1.c.x)))))))));
    return Struct_1(select(vec4<i32>(-(~var_0.x), arg_2, ~_wgslsmith_div_i32(-1i, global1.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(31136i, -2147483647i), var_0.x)), -_wgslsmith_add_vec4_i32(arg_3.a, -arg_3.a), select(select(vec4<bool>(global2.x, false, true, true), select(vec4<bool>(arg_1.c.x, false, global2.x, arg_1.c.x), vec4<bool>(arg_1.c.x, arg_3.c.x, global2.x, arg_3.c.x), vec4<bool>(false, false, global2.x, arg_3.c.x)), !vec4<bool>(true, arg_3.c.x, true, true)), !select(vec4<bool>(arg_1.c.x, arg_3.c.x, false, true), vec4<bool>(arg_3.c.x, true, global2.x, arg_3.c.x), global2.x), -688f >= _wgslsmith_f_op_f32(-arg_3.d.x))), min(arg_3.b, select(_wgslsmith_mod_vec4_u32(vec4<u32>(56934u, 0u, arg_3.b.x, 70465u), vec4<u32>(arg_3.b.x, 1u, 0u, u_input.b)), vec4<u32>(36590u, 730u, arg_3.b.x, arg_3.b.x), vec4<bool>(arg_3.c.x, arg_3.c.x, false, arg_1.c.x))) & ~(~vec4<u32>(arg_1.b.x, arg_3.b.x, 55736u, 16147u)), vec2<bool>(arg_1.c.x, true), arg_3.d, -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-_wgslsmith_mult_vec4_i32(vec4<i32>(~(-602i), -1i, u_input.a.x, global1.x), max(min(vec4<i32>(-4989i, -1i, 511i, u_input.a.x), vec4<i32>(global1.x, u_input.a.x, u_input.a.x, 8223i)), select(vec4<i32>(-1i, global1.x, 46086i, -2527i), vec4<i32>(0i, global1.x, 0i, global1.x), global2.x))), vec4<u32>(0u, ~4294967295u, _wgslsmith_mult_u32(24303u, 91651u), ~_wgslsmith_clamp_u32(~11206u, u_input.b, _wgslsmith_add_u32(0u, 1u))), !global2.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - 505f), _wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(1000f * -197f), -612f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-346f, -1088f, 797f, -1000f) - vec4<f32>(-364f, -319f, -1431f, 1864f))))), _wgslsmith_f_op_f32(332f * _wgslsmith_div_f32(302f, _wgslsmith_f_op_f32(1f * -1000f))));
    var var_1 = func_5(func_1(var_0), var_0, var_0.a.x, var_0);
    var_1 = func_5(Struct_2(~u_input.a.x), Struct_1(vec4<i32>(~_wgslsmith_mod_i32(var_1.a.x, var_1.a.x), func_4(Struct_2(global1.x), vec2<f32>(616f, var_0.d.x), func_1(var_0)).a, -(0i | var_0.a.x), _wgslsmith_mult_i32(global1.x, min(var_0.a.x, var_1.a.x))), select(~vec4<u32>(var_0.b.x, 34544u, var_1.b.x, var_0.b.x), vec4<u32>(~4294967295u, _wgslsmith_mult_u32(0u, var_1.b.x), 0u, 1u), select(select(vec4<bool>(false, var_1.c.x, var_0.c.x, false), vec4<bool>(false, global2.x, true, var_1.c.x), vec4<bool>(false, global2.x, global2.x, global2.x)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, global2.x, var_0.c.x, var_1.c.x), vec4<bool>(var_1.c.x, true, false, true)), vec4<bool>(true, true, var_1.c.x, var_0.c.x))), global2.zz, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-481f - 589f) - var_0.e)), -global1.x, func_5(func_3(_wgslsmith_clamp_i32(_wgslsmith_div_i32(48637i, -23257i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.a.x), vec2<i32>(global1.x, var_0.a.x)), 26581i), Struct_2(2147483647i << (var_1.b.x % 32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-947f, var_1.e, -991f, -1205f), var_1.d)), _wgslsmith_f_op_vec4_f32(exp2(var_0.d)))), vec3<u32>(var_0.b.x, ~79347u, ~var_0.b.x)), Struct_1(~_wgslsmith_add_vec4_i32(var_0.a, var_0.a), _wgslsmith_mult_vec4_u32(vec4<u32>(64500u, u_input.b, u_input.b, var_0.b.x) | vec4<u32>(var_1.b.x, 3815u, u_input.b, 0u), var_1.b), func_5(func_4(Struct_2(var_0.a.x), var_1.d.wz, Struct_2(var_0.a.x)), Struct_1(vec4<i32>(var_0.a.x, global1.x, -1i, var_0.a.x), var_0.b, global2.yy, var_0.d, -793f), global1.x << (var_1.b.x % 32u), func_5(Struct_2(global1.x), Struct_1(var_1.a, vec4<u32>(1u, 4294967295u, var_0.b.x, var_1.b.x), vec2<bool>(var_0.c.x, false), vec4<f32>(var_1.e, -1677f, 1156f, var_0.d.x), 548f), -17733i, Struct_1(var_1.a, var_1.b, var_0.c, vec4<f32>(var_1.e, 315f, -920f, var_1.e), 610f))).c, var_1.d, var_0.d.x), -global1.x, func_5(func_3(~var_1.a.x, func_4(Struct_2(u_input.a.x), var_0.d.xy, Struct_2(u_input.a.x)), vec4<f32>(1941f, -247f, var_0.d.x, var_0.d.x), vec3<u32>(u_input.b, 566u, var_0.b.x)), Struct_1(-var_0.a, var_1.b, global2.zx, _wgslsmith_f_op_vec4_f32(-var_1.d), var_0.d.x), -var_0.a.x, Struct_1(vec4<i32>(-1i, 22477i, var_0.a.x, 2651i) ^ vec4<i32>(-1i, 1i, -2147483647i, 3886i), vec4<u32>(var_0.b.x, 54111u, var_1.b.x, 4294967295u) & var_0.b, vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(round(var_0.d)), var_1.d.x))));
    var var_2 = var_1.b.x;
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_f32(step(-252f, -548f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-991f, var_0.d.x, 401f))), ~min(-(~1i), global1.x), ~abs(6258u));
}

