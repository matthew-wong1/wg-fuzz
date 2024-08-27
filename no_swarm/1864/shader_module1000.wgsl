struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.e)))), vec3<f32>(-1031f, _wgslsmith_f_op_f32(arg_2.c.b.x - 1f), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(arg_1 - arg_1)))), select(!(!vec3<bool>(arg_2.a.d.x, true, false)), !select(select(vec3<bool>(arg_2.a.d.x, false, arg_2.c.d.x), vec3<bool>(false, arg_2.c.d.x, false), arg_2.a.d.x), !vec3<bool>(arg_2.c.d.x, arg_2.a.d.x, false), vec3<bool>(arg_2.a.d.x, true, arg_2.c.d.x)), !(!select(vec3<bool>(arg_2.a.d.x, true, arg_2.c.d.x), vec3<bool>(true, arg_2.c.d.x, arg_2.a.d.x), arg_2.a.d.x)))));
    let var_1 = max(_wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, arg_2.b.x), vec2<i32>(arg_2.c.c.x, u_input.b.x)), vec2<i32>(-60477i, arg_2.d)), arg_2.c.c), reverseBits(~select(u_input.b.yw, arg_2.a.c, false) & (vec2<i32>(u_input.b.x, arg_2.d) << (~vec2<u32>(9814u, 4294967295u) % vec2<u32>(32u)))));
    var var_2 = var_0.x;
    let var_3 = countOneBits(-vec2<i32>(-2147483647i, -8296i));
    let var_4 = !arg_2.a.d.x;
    return arg_2.a.d;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> vec4<u32> {
    let var_0 = vec2<u32>(u_input.a, _wgslsmith_div_u32(1u, ~arg_2.x));
    let var_1 = abs(arg_2);
    let var_2 = ~((u_input.a | (u_input.a | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 59667u, 0u), vec4<u32>(var_1.x, 20288u, 4294967295u, var_0.x)))) << (~max(1u, ~u_input.a) % 32u));
    var var_3 = Struct_2(Struct_1(vec4<u32>(40186u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), var_1.yy ^ var_0), _wgslsmith_sub_u32(var_2, var_2) | min(arg_2.x, var_1.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1175f, 285f, 620f) * vec4<f32>(-1077f, -182f, 635f, -289f)))))), reverseBits(vec2<i32>(-29205i, 0i)), select(!func_3(54536u, -1012f, Struct_2(Struct_1(vec4<u32>(1u, var_1.x, 1u, var_2), vec4<f32>(526f, -1374f, -2659f, 863f), u_input.c.yw, vec2<bool>(arg_1, arg_3), vec3<f32>(-737f, 988f, 375f)), u_input.c.zy, Struct_1(vec4<u32>(32187u, u_input.a, var_0.x, 6741u), vec4<f32>(-961f, -1193f, -207f, -146f), vec2<i32>(11485i, -24701i), vec2<bool>(arg_3, arg_1), vec3<f32>(-1000f, 363f, -1241f)), 50567i)), vec2<bool>(arg_1, arg_1), vec2<bool>(all(vec4<bool>(arg_3, true, arg_3, true)), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1207f, -301f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-390f, -1000f, 1057f) * vec3<f32>(-840f, -1374f, 699f))))), vec2<i32>(-14219i, abs(1i)), Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 4828u, 98732u, 102498u), ~vec4<u32>(arg_2.x, var_2, 15971u, arg_2.x)), ~abs(vec4<u32>(var_1.x, 14483u, 56972u, 47863u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-243f, -1000f, -302f, -887f) * vec4<f32>(1495f, 1968f, 157f, 701f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, -1447f, -991f, -942f))))), -((vec2<i32>(u_input.b.x, u_input.c.x) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) ^ abs(vec2<i32>(u_input.c.x, u_input.c.x))), vec2<bool>(any(select(vec2<bool>(arg_1, arg_3), vec2<bool>(arg_3, true), vec2<bool>(arg_1, false))), func_3(~23166u, _wgslsmith_f_op_f32(-1000f + 1287f), Struct_2(Struct_1(vec4<u32>(0u, u_input.a, arg_0.x, 4294967295u), vec4<f32>(1480f, 403f, 626f, -732f), vec2<i32>(u_input.b.x, u_input.c.x), vec2<bool>(true, true), vec3<f32>(320f, -215f, 1135f)), vec2<i32>(u_input.b.x, 53639i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 3455u), vec4<f32>(-890f, 844f, -682f, -353f), vec2<i32>(-25501i, -2147483647i), vec2<bool>(false, arg_3), vec3<f32>(1649f, 1000f, 181f)), u_input.b.x)).x), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2117f + 329f), _wgslsmith_f_op_f32(f32(-1f) * -976f), all(vec2<bool>(true, arg_3)))), -424f, -1051f)), u_input.c.x);
    var_3 = Struct_2(Struct_1(var_3.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.e.x, -275f, var_3.a.b.x, -858f)) - _wgslsmith_f_op_vec4_f32(var_3.a.b + var_3.c.b)) + vec4<f32>(_wgslsmith_f_op_f32(var_3.c.b.x - -896f), -1409f, -804f, var_3.c.b.x)), select(var_3.c.c, vec2<i32>(u_input.c.x, var_3.b.x), select(!var_3.a.d, vec2<bool>(arg_3, arg_1), !var_3.a.d)), var_3.c.d, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.b.x, 1305f, 594f) - var_3.c.b.xxw), _wgslsmith_f_op_vec3_f32(var_3.a.b.zzw + vec3<f32>(var_3.c.b.x, var_3.a.e.x, -1482f))), vec3<f32>(_wgslsmith_f_op_f32(min(var_3.c.b.x, -1347f)), _wgslsmith_f_op_f32(step(485f, var_3.c.e.x)), _wgslsmith_f_op_f32(trunc(var_3.c.e.x))))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), var_3.a.c)), var_3.c, 0i | select(-abs(0i), 2147483647i, false));
    return abs(~(~vec4<u32>(42533u, abs(var_3.c.a.x), arg_0.x, ~var_2)));
}

fn func_4(arg_0: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(u_input.b) ^ vec4<i32>(~u_input.b.x, -18982i, -905i, _wgslsmith_clamp_i32(1i, 2147483647i, -2147483647i)), max(u_input.c, ~u_input.b) ^ (_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b) >> ((vec4<u32>(4294967295u, 1u, 0u, arg_0.x) << (vec4<u32>(arg_0.x, u_input.a, u_input.a, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)))), -(~countOneBits(u_input.c) << (vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(arg_0.zxw, vec3<u32>(u_input.a, 444u, arg_0.x)), 0u, 1u) % vec4<u32>(32u))));
    let var_1 = vec2<i32>(var_0.x, _wgslsmith_add_i32(u_input.c.x, max(-_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(46323i, var_0.x, -33223i, var_0.x)), -(var_0.x >> (u_input.a % 32u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-653f + -1012f), 599f) - _wgslsmith_div_vec2_f32(vec2<f32>(-779f, 1892f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1442f, -1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), -914f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1581f, -950f)))))));
    let var_3 = all(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, func_3(func_2(vec3<u32>(93900u, 20347u, u_input.a), true, arg_0.zyx, false).x, _wgslsmith_div_f32(-455f, var_2.x), Struct_2(Struct_1(vec4<u32>(arg_0.x, u_input.a, 38292u, arg_0.x), vec4<f32>(375f, 1000f, var_2.x, var_2.x), var_0.xw, vec2<bool>(true, true), vec3<f32>(var_2.x, 433f, -609f)), var_1, Struct_1(vec4<u32>(73390u, u_input.a, 1350u, 4294967295u), vec4<f32>(var_2.x, -217f, -797f, var_2.x), vec2<i32>(var_1.x, u_input.b.x), vec2<bool>(true, true), vec3<f32>(908f, -114f, -297f)), var_0.x)).x, !all(vec2<bool>(true, false)))));
    let var_4 = Struct_2(Struct_1(vec4<u32>(88628u, 4294967295u, 1u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(352f - var_2.x), -707f, var_2.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, var_2.x, -766f, 966f)))), ~vec2<i32>(var_0.x, 6610i) >> (firstTrailingBit(arg_0.ww) % vec2<u32>(32u)), func_3(u_input.a, 1451f, Struct_2(Struct_1(vec4<u32>(u_input.a, 4294967295u, arg_0.x, 4294967295u), vec4<f32>(var_2.x, -2119f, -283f, var_2.x), var_0.yz, vec2<bool>(var_3, var_3), vec3<f32>(1034f, var_2.x, 364f)), -u_input.c.zy, Struct_1(vec4<u32>(arg_0.x, arg_0.x, u_input.a, 0u), vec4<f32>(var_2.x, -459f, var_2.x, var_2.x), var_0.yw, vec2<bool>(false, var_3), vec3<f32>(var_2.x, var_2.x, var_2.x)), u_input.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + -462f), _wgslsmith_f_op_f32(var_2.x * 105f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-135f, var_2.x, -1000f))) - vec3<f32>(var_2.x, 292f, 1000f)))), vec2<i32>(u_input.b.x, -16098i) << (~vec2<u32>(~arg_0.x, u_input.a << (11793u % 32u)) % vec2<u32>(32u)), Struct_1(vec4<u32>(35303u, ~arg_0.x, 1u, select(u_input.a, 4294967295u, var_3)) & ~(~vec4<u32>(u_input.a, 2808u, arg_0.x, u_input.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(131f, -351f, var_2.x, 1269f), vec4<f32>(-1160f, -1421f, var_2.x, -201f))))), var_0.yz, select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(var_3, var_3), vec2<bool>(true, var_3), var_3), vec2<bool>(var_3, true), !vec2<bool>(false, var_3))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 431f) - vec3<f32>(var_2.x, var_2.x, 933f)), _wgslsmith_div_vec3_f32(vec3<f32>(1464f, var_2.x, var_2.x), vec3<f32>(-419f, -2241f, var_2.x)))))), var_0.x);
    return var_4.c.d.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = arg_3.c;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.e.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.c.e.x))))))));
    var var_2 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1739f)), -647f);
    let var_3 = !func_4(~(var_0.a << (vec4<u32>(41840u, 1u, 0u, arg_0.x) % vec4<u32>(32u))) << (select(func_2(vec3<u32>(var_0.a.x, arg_0.x, var_0.a.x), false, arg_3.a.a.xzw, false), arg_3.c.a, arg_0.x >= 49127u) % vec4<u32>(32u)));
    var var_4 = arg_3.c;
    return ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(max(0u, u_input.a), abs(arg_0.x), reverseBits(8487u), 0u), arg_3.c.a & vec4<u32>(1u, u_input.a, 40355u, u_input.a), _wgslsmith_clamp_vec4_u32(select(var_4.a, vec4<u32>(u_input.a, 7998u, u_input.a, 4294967295u), vec4<bool>(true, arg_1, var_3, false)), max(var_0.a, vec4<u32>(arg_0.x, arg_3.a.a.x, arg_3.a.a.x, 1u)), var_4.a)) | vec4<u32>(_wgslsmith_add_u32(arg_3.c.a.x, u_input.a) >> (~1u % 32u), firstTrailingBit(4020u), ~var_4.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u), ~vec3<u32>(var_0.a.x, 1989u, 0u))));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(520f, 1512f)))))));
    var var_1 = -22114i ^ _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(-28524i, arg_0.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -2147483647i, u_input.b.x), ~u_input.b), _wgslsmith_dot_vec2_i32(-arg_0.yz, vec2<i32>(-1i, 1i)) & 36518i, select(~(~arg_1), reverseBits(arg_0.x) | (i32(-1i) * -6545i), true));
    var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1181f, var_0.x))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1177f, -951f), vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 595f) * vec2<f32>(var_0.x, -617f)))))));
    var var_2 = reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(81562u, 1u, arg_2.x), vec3<u32>(~arg_2.x, arg_2.x >> (67559u % 32u), ~arg_2.x))) ^ arg_2.x;
    let var_3 = Struct_2(Struct_1(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 225f, 127f, -437f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-393f, var_0.x, -188f, 318f), vec4<f32>(547f, 1701f, var_0.x, var_0.x)))))), vec2<i32>(38066i, ~arg_0.x), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(2147483647i >= u_input.b.x, true), vec2<bool>(true, arg_1 <= arg_0.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 404f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 603f)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1536f, var_0.x, var_0.x), vec3<f32>(-1292f, var_0.x, 1606f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1250f, var_0.x)))))), reverseBits(vec2<i32>(-2147483647i, -2147483647i)), Struct_1(vec4<u32>(44481u, ~1u, 16722u, _wgslsmith_div_u32(arg_2.x | 19473u, firstTrailingBit(u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-173f, -1082f, 193f, var_0.x)))) * vec4<f32>(var_0.x, -104f, -1115f, _wgslsmith_f_op_f32(-var_0.x))), -u_input.b.zw, vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, var_0.x) * vec3<f32>(-114f, -828f, 159f))))), arg_0.x);
    return -55613i;
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(func_2(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 51147u), vec3<u32>(u_input.a, 4294967295u, 0u)), ~vec3<u32>(45375u, 0u, u_input.a)), func_3(reverseBits(u_input.a), _wgslsmith_f_op_f32(-1302f * -1000f), Struct_2(Struct_1(vec4<u32>(23202u, 39882u, u_input.a, 59903u), vec4<f32>(2711f, 242f, -730f, -453f), vec2<i32>(-73369i, -39219i), vec2<bool>(false, false), vec3<f32>(-662f, 268f, 1376f)), arg_0.yy, Struct_1(vec4<u32>(u_input.a, 117574u, u_input.a, 7631u), vec4<f32>(201f, 359f, 1777f, 1905f), vec2<i32>(u_input.b.x, -1i), vec2<bool>(true, true), vec3<f32>(801f, 1307f, -1000f)), arg_0.x)).x, vec3<u32>(41119u, 4294967295u, 1u) | _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), 1i == abs(arg_0.x)), countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), func_2(vec3<u32>(u_input.a, 4294967295u, u_input.a), false, vec3<u32>(1u, 22465u, u_input.a), true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1983f, -1597f, -245f, -763f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1582f, 250f, -359f, 471f), vec4<f32>(-136f, 104f, -1823f, 1626f)))))), ~(-(arg_1.wy << (vec2<u32>(75711u, 0u) % vec2<u32>(32u)))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1615f, -902f, -1987f))) + vec3<f32>(_wgslsmith_f_op_f32(round(599f)), 1115f, _wgslsmith_f_op_f32(-455f * -1224f)))));
    var_0 = Struct_1(func_2(select(vec3<u32>(_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(25954u, 4294967295u, 20940u, u_input.a)), 1u, 0u), var_0.a.zyy, true), !var_0.d.x, select(vec3<u32>(0u, ~4294967295u, _wgslsmith_mod_u32(4294967295u, 1u)), _wgslsmith_clamp_vec3_u32(var_0.a.wyw, vec3<u32>(1u, u_input.a, 6360u), vec3<u32>(0u, 4294967295u, var_0.a.x)) >> (var_0.a.zwx % vec3<u32>(32u)), vec3<bool>(var_0.d.x, true, any(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)))), true), _wgslsmith_f_op_vec4_f32(var_0.b + var_0.b), _wgslsmith_sub_vec2_i32(arg_0.xz >> (~var_0.a.yx % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(arg_0.yw, vec2<i32>(u_input.c.x, 2147483647i), u_input.b.yy)) & _wgslsmith_mod_vec2_i32(-abs(arg_1.wx), ~vec2<i32>(arg_0.x, -26211i)), vec2<bool>(all(select(select(vec3<bool>(true, var_0.d.x, true), vec3<bool>(true, true, false), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), !vec3<bool>(var_0.d.x, true, var_0.d.x), select(vec3<bool>(var_0.d.x, true, true), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), false))), !var_0.d.x), _wgslsmith_f_op_vec3_f32(trunc(var_0.b.zxz)));
    var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.a.yxw, vec3<u32>(u_input.a, 4294967295u, var_0.a.x)), vec3<u32>(var_0.a.x, 0u, 1u) >> (vec3<u32>(25528u, u_input.a, 4294967295u) % vec3<u32>(32u))), func_1(vec3<u32>(u_input.a, u_input.a, 1u) ^ vec3<u32>(var_0.a.x, 1u, 20532u), true, vec2<i32>(arg_0.x, arg_0.x) | u_input.c.xw, Struct_2(Struct_1(vec4<u32>(u_input.a, var_0.a.x, 1u, var_0.a.x), var_0.b, arg_1.wx, vec2<bool>(var_0.d.x, false), var_0.e), arg_1.zy, Struct_1(var_0.a, vec4<f32>(1946f, 154f, var_0.b.x, -425f), var_0.c, var_0.d, vec3<f32>(2060f, 2884f, var_0.b.x)), 2147483647i)).x, func_1(~var_0.a.zzx, true, vec2<i32>(-1i, u_input.b.x) >> (var_0.a.zx % vec2<u32>(32u)), Struct_2(Struct_1(vec4<u32>(u_input.a, 39928u, 86860u, 1u), vec4<f32>(var_0.b.x, var_0.b.x, 969f, -1719f), u_input.c.zx, vec2<bool>(true, false), vec3<f32>(var_0.e.x, var_0.e.x, var_0.b.x)), vec2<i32>(2147483647i, arg_1.x), Struct_1(vec4<u32>(1u, 49301u, 1u, var_0.a.x), var_0.b, arg_0.zz, var_0.d, var_0.e), arg_1.x)).x, max(_wgslsmith_mult_u32(u_input.a, 13705u), _wgslsmith_clamp_u32(4294967295u, 16693u, var_0.a.x))), var_0.a, var_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b - var_0.b)), var_0.b), arg_1.ww, vec2<bool>(func_3(4294967295u >> (0u % 32u), _wgslsmith_f_op_f32(abs(var_0.e.x)), Struct_2(Struct_1(vec4<u32>(87174u, 4294967295u, var_0.a.x, u_input.a), vec4<f32>(817f, -723f, 894f, var_0.b.x), u_input.b.ww, var_0.d, var_0.e), arg_0.zw, Struct_1(var_0.a, vec4<f32>(1597f, 998f, -1000f, var_0.e.x), arg_0.yw, var_0.d, var_0.e), 17501i << (u_input.a % 32u))).x, var_0.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, 402f, -361f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-966f, 429f, var_0.e.x) * var_0.b.wzz)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_0.e, vec3<f32>(var_0.b.x, var_0.e.x, 674f), true)))), vec3<bool>(any(var_0.d), true, true)))));
    let var_1 = Struct_2(Struct_1(firstTrailingBit(~vec4<u32>(1u, var_0.a.x, 26957u, u_input.a)), _wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.b, vec4<f32>(var_0.b.x, -881f, var_0.e.x, var_0.e.x), true)))), var_0.c, var_0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.x, var_0.e.x, 199f)))) * vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x - 958f), _wgslsmith_f_op_f32(-var_0.b.x)))), min(firstTrailingBit(arg_0.zz) >> (firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_0.a.x), var_0.a.xw)) % vec2<u32>(32u)), abs(select(vec2<i32>(arg_1.x, 49134i), vec2<i32>(u_input.c.x, u_input.b.x), var_0.d))), Struct_1(~(~abs(vec4<u32>(0u, 71172u, 52734u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, var_0.b)), ~_wgslsmith_add_vec2_i32(abs(vec2<i32>(0i, -1i)), ~u_input.b.yz), !vec2<bool>(all(vec4<bool>(false, true, true, var_0.d.x)), !var_0.d.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.e)))))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(61550i, u_input.c.x) << (var_0.a.zx % vec2<u32>(32u)), countOneBits(firstTrailingBit(vec2<i32>(-27376i, -30726i)))));
    let var_2 = Struct_1(vec4<u32>(countOneBits(u_input.a), var_0.a.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, u_input.a, var_0.a.x, var_0.a.x)), ~var_1.c.a), max(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(26161u, 4102u, 41216u, var_0.a.x)), ~vec4<u32>(u_input.a, 0u, 0u, 65004u)), 3580u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1157f - -1610f), -518f, -626f, _wgslsmith_f_op_f32(-var_1.c.e.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + var_1.a.b))), ~(-u_input.b.xx), !vec2<bool>(!any(vec2<bool>(var_0.d.x, false)), var_1.c.d.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-261f, 106f, 2519f), _wgslsmith_div_vec3_f32(var_1.c.e, vec3<f32>(840f, var_0.b.x, -1972f)), any(vec3<bool>(true, var_0.d.x, var_0.d.x))))), var_0.e)));
    return _wgslsmith_f_op_f32(floor(var_2.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_6(select(abs(vec4<i32>(u_input.b.x >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(10595i, u_input.c.x)), ~u_input.b.x, -u_input.c.x)), _wgslsmith_mult_vec4_i32(-u_input.c, abs(u_input.b | vec4<i32>(-1i, 36517i, -2147483647i, u_input.b.x))), true), vec4<i32>(-2147483647i, u_input.b.x, _wgslsmith_mod_i32(-46466i, 1i) & func_5(abs(u_input.c.yzw), -51652i, func_1(vec3<u32>(u_input.a, 21890u, u_input.a), false, u_input.b.wx, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, u_input.a, 57281u), vec4<f32>(-421f, -1221f, -231f, 250f), vec2<i32>(u_input.b.x, -3322i), vec2<bool>(true, true), vec3<f32>(127f, 1000f, -939f)), u_input.c.xz, Struct_1(vec4<u32>(u_input.a, 69180u, u_input.a, 1u), vec4<f32>(-301f, -657f, 130f, 259f), vec2<i32>(u_input.b.x, -1i), vec2<bool>(false, false), vec3<f32>(774f, 919f, -508f)), 0i))), func_5(u_input.c.yww, u_input.c.x, ~vec4<u32>(u_input.a, u_input.a, u_input.a, 24001u)))));
    let var_1 = select(!vec4<bool>(true, all(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(447f + -1429f) != _wgslsmith_f_op_f32(sign(var_0))), select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(false, true, u_input.a > 139u, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), var_0 == 414f), true), false), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), true), vec4<bool>(false, true, u_input.a > 39678u, all(func_3(1u, var_0, Struct_2(Struct_1(vec4<u32>(0u, u_input.a, 99546u, u_input.a), vec4<f32>(var_0, var_0, var_0, var_0), u_input.c.wz, vec2<bool>(false, false), vec3<f32>(var_0, var_0, var_0)), u_input.c.xw, Struct_1(vec4<u32>(13566u, 0u, u_input.a, 4294967295u), vec4<f32>(var_0, var_0, var_0, -642f), u_input.b.wz, vec2<bool>(false, true), vec3<f32>(var_0, var_0, var_0)), u_input.c.x)))), select(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
    var var_2 = !(!vec4<bool>(true, var_1.x, var_0 < _wgslsmith_f_op_f32(var_0 + var_0), true));
    var var_3 = firstTrailingBit(_wgslsmith_add_i32(u_input.c.x, -1i));
    var_2 = vec4<bool>(false, false, ~((u_input.c.x << (95343u % 32u)) << (~41047u % 32u)) <= -select(-u_input.b.x, u_input.c.x, all(vec3<bool>(true, false, false))), !(!var_1.x && false));
    let var_4 = 7572u;
    var_2 = select(select(!select(select(var_1, var_1, vec4<bool>(var_2.x, var_2.x, true, false)), var_1, true), !var_1, select(var_1.x, var_2.x, !var_1.x) && !select(true, true, var_1.x)), var_1, !select(select(select(var_1, vec4<bool>(false, false, var_1.x, true), false), var_1, !var_1), !vec4<bool>(var_2.x, var_1.x, false, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

