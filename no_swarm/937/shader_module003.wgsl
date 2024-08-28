struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = vec3<i32>(firstLeadingBit(abs(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -1i), vec3<i32>(-1i, 0i, -57436i))))), ~_wgslsmith_dot_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-1i, -2717i))), select(-vec2<i32>(-2147483647i, 1i), vec2<i32>(0i, 2147483647i), select(vec2<bool>(true, false), vec2<bool>(false, arg_0), true))), -76115i);
    var var_1 = _wgslsmith_div_vec2_i32(abs(~_wgslsmith_sub_vec2_i32(var_0.yy, vec2<i32>(var_0.x, 13479i)) << (~vec2<u32>(0u, 7070u) % vec2<u32>(32u))), var_0.yy);
    var var_2 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, 1u)), ~4294967295u), ~(~(~vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1416f, -269f) + _wgslsmith_f_op_f32(abs(1000f))) - 1633f) - _wgslsmith_f_op_f32(f32(-1f) * -455f)), Struct_1(arg_0, abs(vec4<i32>(var_0.x ^ var_0.x, select(-34050i, var_0.x, arg_0), ~1i, 7229i)), countOneBits(abs(vec4<i32>(-1i, var_1.x, var_0.x, -32466i))), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, var_1.x), -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -2147483647i), var_0.zx), var_0.zy)), ~vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(var_0.x), 0i | var_0.x), var_0.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.xz), min(var_0.xy, vec2<i32>(-1i, var_1.x)))));
    let var_3 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(min(var_0.x, 0i), -7228i), -2147483647i, abs(-1i), 1i), select(-vec4<i32>(var_2.c.e.x, -315i, var_2.d.x, var_2.d.x) & vec4<i32>(1i, 1i, -2147483647i, 190i), max(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 1i, var_2.c.c.x, 9388i), vec4<i32>(-43377i, -37922i, 2147483647i, 2147483647i)), vec4<i32>(var_0.x, var_0.x, 2147483647i, var_2.d.x)), arg_0) | -countOneBits(-var_2.c.c));
    var_0 = vec3<i32>(var_0.x, countOneBits(var_2.d.x), var_2.c.c.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(172f))))) > _wgslsmith_f_op_f32(f32(-1f) * -389f);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(!vec4<bool>(all(vec3<bool>(true, false, true)), all(!vec4<bool>(arg_0.a, false, arg_0.a, false)), true, arg_0.a));
    let var_1 = Struct_1(!(any(!vec4<bool>(var_0.x, arg_0.a, false, var_0.x)) & func_3(true || var_0.x)), -vec4<i32>(1i & _wgslsmith_clamp_i32(arg_0.e.x, arg_0.c.x, 17960i), max(firstTrailingBit(arg_0.b.x), arg_0.e.x), 2147483647i, countOneBits(-23117i)), -arg_0.c, firstTrailingBit(arg_0.d), ~countOneBits(vec2<i32>(-arg_0.b.x, _wgslsmith_add_i32(arg_0.e.x, arg_0.c.x))));
    global1 = var_0.x;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(770f, -603f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1359f)), _wgslsmith_f_op_f32(f32(-1f) * -2774f));
    let var_3 = select(vec4<i32>(~var_1.b.x, reverseBits(abs(_wgslsmith_mult_i32(1i, -4561i))), 0i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1.e.x | 12854i, -arg_0.c.x, _wgslsmith_clamp_i32(10263i, 1i, 0i)), ~countOneBits(var_1.c.x))), firstLeadingBit(-abs(var_1.b) << ((~vec4<u32>(u_input.a, 1u, var_1.d.x, 1u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.d.x, u_input.a, 38917u, arg_0.d.x), vec4<u32>(arg_0.d.x, var_1.d.x, 12269u, arg_0.d.x))) % vec4<u32>(32u))), !select(vec4<bool>(arg_0.c.x < -2011i, arg_0.a, all(vec3<bool>(var_1.a, false, true)), var_0.x), var_0, true & any(var_0.zy)));
    return var_1;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    var var_0 = 1i;
    let var_1 = func_2(arg_1.c);
    var var_2 = _wgslsmith_f_op_f32(floor(-1199f));
    var var_3 = var_1.a;
    var var_4 = func_2(arg_1.c);
    return -480f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-513f, 334f, true)) * -610f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<u32>(u_input.a, u_input.a), -1222f, Struct_1(true, vec4<i32>(-2147483647i, -64246i, 0i, 1i), vec4<i32>(-16110i, -1i, 1i, 19670i), vec3<u32>(0u, u_input.a, 61521u), vec2<i32>(-17069i, -24378i)), vec3<i32>(1i, 61175i, -32599i)), Struct_2(vec2<u32>(0u, u_input.a), -625f, Struct_1(false, vec4<i32>(2147483647i, 36708i, 1i, -41931i), vec4<i32>(2193i, 1i, 0i, 28209i), vec3<u32>(u_input.a, 0u, u_input.a), vec2<i32>(-4036i, 3022i)), vec3<i32>(-2147483647i, 2147483647i, -1i)), vec3<i32>(-2147483647i, 47084i, -13047i), _wgslsmith_div_f32(-746f, -2412f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1160f - 1699f))))));
    var var_1 = Struct_2(countOneBits(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, 82296u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 38182u), vec2<u32>(u_input.a, 55600u))), u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + -1647f)), Struct_1(true, vec4<i32>(98984i, -16020i, ~(~(-24726i)), 1i), vec4<i32>(select(1i, abs(-1i), true), -(i32(-1i) * -2147483647i), abs(firstLeadingBit(0i)), 1i), _wgslsmith_mult_vec3_u32(~(vec3<u32>(52563u, 1u, 4294967295u) << (vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u))), ~vec3<u32>(5545u, 19471u, 46209u) >> (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u))), ~vec2<i32>(2147483647i, 1i) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), select(vec3<i32>(0i >> (max(82186u, u_input.a) % 32u), 2147483647i, 43832i), abs(-vec3<i32>(-45787i, 2147483647i, 2147483647i)), vec3<bool>(true, true, true)));
    let var_2 = var_1.c.c;
    let var_3 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(firstTrailingBit(u_input.a), var_1.a.x, u_input.a, u_input.a), ~(~vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, 17167u)));
    var var_4 = vec2<u32>(~4294967295u, ~87424u);
    global0 = ~(-33137i);
    var var_5 = !var_1.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~24527u, var_1.a.x & var_1.a.x), (var_3 >> (firstTrailingBit(vec4<u32>(var_4.x, 9705u, 732u, var_4.x)) % vec4<u32>(32u))) & ~(~(~vec4<u32>(var_4.x, var_4.x, 31857u, 4294967295u))), ~var_2.xxw, var_2.x, u_input.a);
}

