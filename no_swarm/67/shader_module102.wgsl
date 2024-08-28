struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: array<u32, 28> = array<u32, 28>(4294967295u, 21422u, 1u, 37742u, 4294967295u, 0u, 4294967295u, 4294967295u, 25493u, 39856u, 4294967295u, 0u, 42775u, 63071u, 45752u, 4294967295u, 1u, 34903u, 0u, 4294967295u, 8190u, 1u, 332u, 1u, 1u, 1u, 0u, 4294967295u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(0u, 28u)], 7521u), countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, 16370u)), vec4<bool>(false, false, true, true)), select(~vec4<u32>(global1[_wgslsmith_index_u32(73879u, 28u)], 1845u, 1u, 4294967295u), vec4<u32>(2689u, 59577u, 1u, global1[_wgslsmith_index_u32(31771u, 28u)]) >> (vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(56187u, 28u)], 1u) % vec4<u32>(32u)), true)), 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)] | abs(u_input.b.x)), 748f, Struct_1(true, _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-1i, 1i, -21040i, 17714i)), vec4<i32>(3397i, 1i, -1i, 21506i), ~vec4<i32>(1i, 17903i, -52342i, -11243i)), select(vec4<i32>(-54090i, -94061i, 64050i, 2147i), min(vec4<i32>(36739i, 0i, 2147483647i, 2147483647i), vec4<i32>(3461i, 20242i, -37970i, 0i)), vec4<bool>(true, true, true, true))), firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(1u, 28u)] & u_input.b.x, ~u_input.b.x, u_input.b.x))));
    let var_1 = !vec3<bool>(var_0.c.a != true, any(!(!vec4<bool>(var_0.c.a, false, true, var_0.c.a))), select(select(false != var_0.c.a, all(vec2<bool>(var_0.c.a, true)), true), !(var_0.c.a && var_0.c.a), false));
    var_0 = Struct_3(u_input.a, _wgslsmith_f_op_f32(-var_0.b), Struct_1(true, var_0.c.b, _wgslsmith_mod_vec3_u32(var_0.c.c, _wgslsmith_add_vec3_u32(var_0.c.c, vec3<u32>(u_input.b.x, var_0.c.c.x, global1[_wgslsmith_index_u32(62229u, 28u)]))) ^ vec3<u32>(54601u, 4294967295u, ~33669u)));
    let var_2 = Struct_3(~_wgslsmith_clamp_u32(~max(24544u, 4294967295u), var_0.c.c.x, ~_wgslsmith_add_u32(var_0.a, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), Struct_1(var_0.c.a, var_0.c.b, abs(_wgslsmith_clamp_vec3_u32(countOneBits(var_0.c.c), firstTrailingBit(vec3<u32>(0u, 4294967295u, u_input.b.x)), abs(vec3<u32>(14196u, global1[_wgslsmith_index_u32(2214u, 28u)], 0u))))));
    var var_3 = Struct_3(min(_wgslsmith_mult_u32(abs(var_2.a), 0u), 34691u), var_2.b, Struct_1(true, (~var_2.c.b ^ var_0.c.b) | ((vec4<i32>(342i, -16362i, -1i, var_2.c.b.x) >> (vec4<u32>(46357u, 0u, 34930u, global1[_wgslsmith_index_u32(0u, 28u)]) % vec4<u32>(32u))) ^ -vec4<i32>(-1i, var_0.c.b.x, var_0.c.b.x, var_0.c.b.x)), select(var_0.c.c, vec3<u32>(~53056u, 85821u, global1[_wgslsmith_index_u32(59613u, 28u)]), true)));
    return var_2.c.b.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(-2770i), -_wgslsmith_clamp_i32(func_3(), -85224i >> ((12717u ^ global1[_wgslsmith_index_u32(1u, 28u)]) % 32u), countOneBits(~7812i)));
    var_0 = firstTrailingBit((-(-3512i >> (u_input.a % 32u)) ^ firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -10150i, -23571i, -2147483647i), vec4<i32>(-1i, 21103i, 8846i, 0i)))) << (0u % 32u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 1286f) - arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 236f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))))));
    let var_2 = Struct_2(Struct_1(all(vec2<bool>(any(vec3<bool>(false, false, arg_0.x)), select(false, true, arg_0.x))), _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(75689i, 1i, 62377i, -26528i), vec4<i32>(-48395i, -22220i, -12514i, 2147483647i), vec4<i32>(10957i, 40253i, 93837i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -12485i, 73937i, -37394i) >> (vec4<u32>(51868u, u_input.b.x, 57305u, 0u) % vec4<u32>(32u)), abs(vec4<i32>(-10175i, 2147483647i, 2147483647i, 18110i)))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(78515u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 0u), vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 28u)], 1u)) | vec3<u32>(u_input.b.x, ~70194u, u_input.a)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -2147483647i, -1i, 0i) << (vec4<u32>(global1[_wgslsmith_index_u32(59816u, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.b.x, 59515u) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(83858u, 28u)], u_input.a) >> (vec4<u32>(26534u, global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)], 65042u) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, 0u, global1[_wgslsmith_index_u32(46429u, 28u)], 1u), vec4<u32>(u_input.a, u_input.a, 1u, 1u)) % vec4<u32>(32u))), Struct_1(true, vec4<i32>(i32(-1i) * -2147483647i, 5397i, min(~(-52103i), 1i), -26775i), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(88966u, 28u)], ~(~0u))), Struct_1(all(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, true)), !vec4<bool>(arg_0.x, arg_0.x, false, true), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, false, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)))), -vec4<i32>(1i, 1i, 1i, 1i), abs(~vec3<u32>(1u, 1u, u_input.a) >> (vec3<u32>(u_input.b.x, 1u, 55101u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, _wgslsmith_f_op_f32(round(arg_1.x)))));
    var_0 = 1i;
    return Struct_1(any(select(!vec4<bool>(false, var_2.a.a, false, true), vec4<bool>(arg_0.x, all(vec2<bool>(true, arg_0.x)), !var_2.d.a, true), vec4<bool>(true, true, true, true))), var_2.b, select(select(~vec3<u32>(4294967295u, 4294967295u, 4294967295u), _wgslsmith_mult_vec3_u32(var_2.d.c, abs(vec3<u32>(70820u, 6832u, 20567u))), vec3<bool>(0i >= var_2.d.b.x, true, false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, select(u_input.b.x, 70994u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_2.a.c.x, 28u)], 4294967295u, 0u, 1u), vec4<u32>(28062u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], 0u, 4294967295u))), var_2.d.c, ~firstLeadingBit(vec3<u32>(1u, 0u, u_input.b.x))), !(false || any(arg_0))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = array<vec3<bool>, 10>();
    global1 = array<u32, 28>();
    let var_0 = Struct_3(7921u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.e.x, arg_1.e.x)))), arg_1.e.x, arg_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) + _wgslsmith_f_op_f32(-arg_1.e.x))), arg_3);
    global1 = array<u32, 28>();
    let var_1 = arg_0.zz;
    return Struct_2(var_0.c, abs(arg_3.b), func_2(global0[_wgslsmith_index_u32(~((arg_3.c.x ^ arg_3.c.x) & 1u), 10u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, arg_1.e.x, var_0.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, var_0.b, -643f), vec3<f32>(-962f, -117f, 1468f), vec3<bool>(arg_0.x, true, arg_3.a))), !arg_3.a))))), arg_3, vec2<f32>(-248f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1490f)))), _wgslsmith_f_op_f32(-327f + _wgslsmith_f_op_f32(var_0.b * -723f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - -318f), 2832f)))));
    var var_1 = Struct_3(~84869u, 1409f, Struct_1(!arg_1.x, _wgslsmith_add_vec4_i32(vec4<i32>(-17280i, 34260i, i32(-1i) * -23353i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 25653i, -16964i), vec4<i32>(-43128i, -5048i, -46933i, -2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-31502i, 2147483647i, 0i, 2147483647i), vec4<i32>(-2147483647i, -14446i, 1i, 20907i)) << (abs(vec4<u32>(67912u, arg_0.x, u_input.a, arg_0.x)) % vec4<u32>(32u))), arg_0));
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_f32(344f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(664f - var_0.x))))), Struct_1(select(false, arg_1.x, true | !arg_1.x), -vec4<i32>(_wgslsmith_mult_i32(-2147483647i, var_1.c.b.x), _wgslsmith_mod_i32(2147483647i, -30301i), max(-1i, -1i), var_1.c.b.x), (~arg_0 | vec3<u32>(u_input.b.x, global1[_wgslsmith_index_u32(var_1.c.c.x, 28u)], 41127u)) & vec3<u32>(1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 28u)], 28u)], ~var_1.a)));
    var var_2 = func_4(select(select(vec3<bool>(false, arg_0.x == var_1.a, arg_1.x == var_1.c.a), arg_1.wzw, vec3<bool>(true, arg_2, true)), !(!vec3<bool>(true, var_1.c.a, false)), var_1.c.a), Struct_2(func_2(global0[_wgslsmith_index_u32(~firstLeadingBit(arg_0.x), 10u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3, var_0.x, var_1.b))))), vec4<i32>(0i, -1047i, 0i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.c.b.x, -1i, var_1.c.b.x), _wgslsmith_mult_i32(-2920i, -27403i))), var_1.c, var_1.c, var_0), var_1.c, func_2(vec3<bool>(any(vec2<bool>(true, true)), !(u_input.b.x == 1u), !arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(709f, var_0.x, var_0.x)), vec3<f32>(366f, 1000f, -347f), !vec3<bool>(var_1.c.a, arg_2, true))))));
    let var_3 = true;
    return ~(15450u << (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(select(~u_input.b, _wgslsmith_sub_vec2_u32(u_input.b, u_input.b), vec2<bool>(true, true)), u_input.b), ~42646u | u_input.b.x), max(max(u_input.b.x, reverseBits(global1[_wgslsmith_index_u32(u_input.a, 28u)])) & ((4294967295u << (0u % 32u)) >> (func_1(vec3<u32>(59530u, 46127u, 0u), vec4<bool>(false, true, true, true), true, 365f) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.b)), global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 6643u);
    global0 = array<vec3<bool>, 10>();
    let var_1 = !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, false), Struct_2(Struct_1(false, vec4<i32>(-6526i, -12781i, -30110i, 0i), var_0.wzy), vec4<i32>(19712i, 1i, 19152i, 2147483647i), Struct_1(false, vec4<i32>(2147483647i, -4353i, 1i, 27936i), vec3<u32>(u_input.a, var_0.x, 67614u)), Struct_1(false, vec4<i32>(12307i, -4031i, 2147483647i, -16744i), var_0.zzy), vec2<f32>(-956f, -564f)), Struct_1(false, vec4<i32>(-2147483647i, -1880i, 416i, -2147483647i), vec3<u32>(global1[_wgslsmith_index_u32(0u, 28u)], 4294967295u, 229u)), Struct_1(false, vec4<i32>(-1i, 0i, 2147483647i, 2147483647i), vec3<u32>(u_input.b.x, 22107u, 4294967295u))).e.x - _wgslsmith_f_op_f32(f32(-1f) * -944f)), _wgslsmith_f_op_f32(max(-525f, 960f)), true)) < -1233f);
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, func_4(vec3<bool>(true, !any(vec3<bool>(true, true, false)), true), Struct_2(Struct_1(var_1, vec4<i32>(-2147483647i, 1335i, -2147483647i, 19102i), var_0.xzz), select(func_4(vec3<bool>(var_1, true, var_1), Struct_2(Struct_1(var_1, vec4<i32>(-1i, 2147483647i, 21633i, -3028i), var_0.xzw), vec4<i32>(16478i, 0i, -34855i, 1i), Struct_1(var_1, vec4<i32>(14934i, -1i, -47553i, 2147483647i), vec3<u32>(4294967295u, var_0.x, u_input.b.x)), Struct_1(var_1, vec4<i32>(-1i, 23918i, 2147483647i, 1i), var_0.yzx), vec2<f32>(-455f, 117f)), Struct_1(false, vec4<i32>(-59537i, 1i, 1i, -33256i), var_0.yyy), Struct_1(true, vec4<i32>(1i, -11283i, -2147483647i, -52643i), vec3<u32>(u_input.b.x, 18771u, 67914u))).d.b, ~vec4<i32>(2147483647i, 82541i, -60060i, -2147483647i), true), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(28975u, 1u), 10u)], _wgslsmith_f_op_vec3_f32(max(vec3<f32>(237f, 537f, -714f), vec3<f32>(763f, 1000f, 1052f)))), Struct_1(!var_1, vec4<i32>(1409i, 0i, -32970i, 2147483647i), vec3<u32>(47261u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 28u)], 28u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1766f), vec2<f32>(-906f, 1000f), vec2<bool>(var_1, false))))), func_2(global0[_wgslsmith_index_u32(~36035u, 10u)], _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))), func_2(!(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 10u)]), vec3<f32>(-1396f, _wgslsmith_div_f32(1044f, -544f), _wgslsmith_f_op_f32(-1277f * -919f)))).a.b.x, select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(27277i, 23922i, 67163i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(27050i, 1i)), -32022i << (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(21471i, -47582i), vec2<i32>(0i, 1i)))), min(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -14149i, -2147483647i), vec3<i32>(1i, 1i, 1i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 16703i, 35564i), vec3<i32>(-2147483647i, -2147483647i, -1i)), vec3<i32>(-1i, -1i, 358i))), var_1));
}

