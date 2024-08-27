struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec4<i32> = vec4<i32>(2436i, 0i, 795i, 0i);

var<private> global2: Struct_3 = Struct_3(vec4<bool>(true, false, true, true), vec3<i32>(0i, 0i, 1i), 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec3<f32>) -> bool {
    let var_0 = arg_2.b;
    let var_1 = ~reverseBits(u_input.c.zx);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.yy - arg_3.xx) - _wgslsmith_f_op_vec2_f32(trunc(arg_3.zz))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.b.a, arg_3.x), arg_3.zy, all(vec3<bool>(false, true, true))))), select(!select(global2.a.zx, vec2<bool>(false, false), global2.a.x), !select(global2.a.ww, vec2<bool>(arg_2.d, false), global2.a.zy), true))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_3.xx))))));
    let var_3 = vec2<bool>(arg_2.d, global2.a.x | false);
    let var_4 = Struct_2(Struct_1(1f, ~(-2147483647i), ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.x, -9792i), global0.yy), firstLeadingBit(0i))), Struct_1(arg_0, -1i, -vec2<i32>(_wgslsmith_mult_i32(global1.x, -25693i), _wgslsmith_dot_vec3_i32(global2.b, arg_1.yyw))), select(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.x, 36842u), ~4294967295u), ~(~_wgslsmith_mod_u32(69537u, 1u)), any(!select(global2.a.zy, vec2<bool>(true, global2.a.x), vec2<bool>(true, false)))), false, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_2.b.a, arg_2.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * 378f)))), 2147483647i, arg_1.zz));
    return false != !global2.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_1 {
    global2 = Struct_3(vec4<bool>(!global2.a.x, global2.a.x, true, !func_3(_wgslsmith_f_op_f32(-236f + 426f), ~vec4<i32>(arg_0.x, -1i, u_input.b.x, 0i), Struct_2(Struct_1(-1371f, global1.x, global1.yw), Struct_1(-945f, arg_0.x, vec2<i32>(-1i, global0.x)), 18298u, false, Struct_1(477f, 2147483647i, vec2<i32>(-3074i, -1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, -1479f, -1536f)))), vec3<i32>(global2.b.x, i32(-1i) * -global0.x, 0i), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u << (u_input.c.x % 32u), abs(30854u)), global2.c, ~_wgslsmith_sub_u32(4294967295u, u_input.a.x)), select(_wgslsmith_mod_u32(global2.c, ~global2.c), 112545u, true)));
    var var_0 = true;
    var_0 = 7771i >= _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2.b.x, -14939i, _wgslsmith_sub_i32(-20375i, global2.b.x)), _wgslsmith_sub_vec3_i32(~global2.b, -arg_0.yxy)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(52041i, 24067i), u_input.b), _wgslsmith_dot_vec4_i32(arg_0, arg_0), min(-7856i, arg_0.x)), arg_0.wyy << (vec3<u32>(global2.c, 30147u, 53206u) % vec3<u32>(32u))));
    let var_1 = Struct_3(vec4<bool>(true, arg_1.x, !(!(global2.c != 102682u)), true), -vec3<i32>(countOneBits(max(-1i, global2.b.x)), -71232i, -min(arg_0.x, u_input.b.x)), select(1u, 35592u, !(global1.x < u_input.b.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1575f)) + 1f))), firstLeadingBit(u_input.b.x), select(arg_0.xy, vec2<i32>(~global1.x, global1.x), !(global2.a.x && global2.a.x)));
    return var_2;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_3 {
    let var_0 = vec2<i32>(~arg_1, ~(-2147483647i << ((global2.c << (u_input.a.x % 32u)) % 32u)));
    let var_1 = func_2(~((vec4<i32>(-2147483647i, 1i, 2147483647i, arg_1) ^ min(vec4<i32>(12776i, var_0.x, var_0.x, arg_1), vec4<i32>(885i, -12983i, global2.b.x, -14i))) >> (firstTrailingBit(min(vec4<u32>(global2.c, global2.c, 35051u, u_input.c.x), vec4<u32>(u_input.c.x, 46328u, 97447u, 0u))) % vec4<u32>(32u))), select(global2.a.wyy, select(!vec3<bool>(true, global2.a.x, true), !global2.a.yxw, vec3<bool>(select(true, false, true), global2.a.x, false)), true));
    var var_2 = global2.c;
    let var_3 = !any(!(!global2.a));
    var var_4 = Struct_2(Struct_1(701f, u_input.b.x, -(vec2<i32>(-48269i, -1i) | global0.yy) | ~vec2<i32>(u_input.b.x, -31981i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(349f - -1337f) * _wgslsmith_f_op_f32(-1761f + -997f)), global2.b.x, vec2<i32>(abs(var_0.x), _wgslsmith_dot_vec3_i32(global1.xyz, vec3<i32>(global1.x, 30695i, var_1.b)))), u_input.c.x, true, var_1);
    return Struct_3(!(!(!(!global2.a))), reverseBits(global2.b), countOneBits((5385u >> (global2.c % 32u)) & 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-231f, _wgslsmith_f_op_f32(f32(-1f) * -1229f)))), ~(countOneBits(~0i) & _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-25914i, 65481i, 1i), vec3<i32>(global1.x, u_input.b.x, -26177i)), -global2.b.x)));
    var var_0 = _wgslsmith_div_vec3_i32(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(245f, _wgslsmith_f_op_f32(1741f * 265f))))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, global1.x)), global0.xx) | -1i).b, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global0.x, 2147483647i), -1i, 23736i | global1.x) | (global1.xxz << ((vec3<u32>(0u, u_input.a.x, global2.c) | vec3<u32>(46807u, 19545u, global2.c)) % vec3<u32>(32u))), countOneBits(firstLeadingBit(-vec3<i32>(u_input.b.x, u_input.b.x, 0i))), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, _wgslsmith_clamp_i32(global0.x, u_input.b.x, -89332i), global0.x & 0i), _wgslsmith_div_vec3_i32(global1.zzz, -vec3<i32>(-11410i, -2147483647i, 2147483647i)))));
    var var_1 = ~vec3<i32>(global0.x, global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~global2.b.x, u_input.b.x, -global2.b.x, _wgslsmith_sub_i32(var_0.x, var_0.x)), min(vec4<i32>(39486i, 2147483647i, 2147483647i, global0.x), ~vec4<i32>(global2.b.x, 32130i, global1.x, -40718i))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -653f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f), 1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -2148f));
    global1 = -_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global0.x, var_1.x), _wgslsmith_add_i32(global2.b.x, global0.x), _wgslsmith_mod_i32(-3535i, -32924i), -var_0.x) ^ ~vec4<i32>(38503i, 27421i, 52033i, global0.x), vec4<i32>(reverseBits(u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, -57779i), _wgslsmith_mod_i32(2147483647i, var_0.x), ~62316i) >> (~(~vec4<u32>(5892u, global2.c, 0u, global2.c)) % vec4<u32>(32u)));
    let var_3 = ~max(max(global1.zx, vec2<i32>(1i, ~1i)), ~vec2<i32>(u_input.b.x, reverseBits(global2.b.x)));
    var var_4 = -715f;
    var_4 = -634f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(var_1.x), -7453i, min(_wgslsmith_sub_i32(var_1.x & var_1.x, _wgslsmith_dot_vec3_i32(global2.b, global1.yyw)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 0i), vec2<i32>(global2.b.x, 27523i))), global0.x));
}

