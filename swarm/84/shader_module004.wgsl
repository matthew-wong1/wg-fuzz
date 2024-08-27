struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32> = vec4<i32>(-52751i, 70710i, 5i, 0i);

var<private> global2: vec3<bool>;

var<private> global3: f32;

var<private> global4: array<vec4<f32>, 10>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<u32>, arg_3: i32) -> vec2<i32> {
    var var_0 = Struct_3(vec2<u32>(abs(~26872u), 84204u), abs(vec3<i32>(arg_3, -2147483647i, global1.x)), Struct_2(Struct_1(-2147483647i, firstLeadingBit(min(vec2<u32>(0u, arg_2.x), u_input.a.xy)), vec3<u32>(arg_2.x, 6699u, 4294967295u) | countOneBits(vec3<u32>(arg_2.x, arg_2.x, 3116u)), global1.wx)), arg_3 ^ global1.x);
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -226f);
    var var_1 = Struct_2(Struct_1(arg_3, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(41314u, u_input.b.x) & arg_2.xy, vec2<u32>(u_input.d.x, var_0.a.x)) >> (firstTrailingBit(~var_0.a) % vec2<u32>(32u)), ~firstLeadingBit(vec3<u32>(0u, var_0.a.x, arg_2.x)) | ~_wgslsmith_add_vec3_u32(vec3<u32>(83086u, var_0.a.x, arg_2.x), var_0.c.a.c), -(~(~var_0.b.zz))));
    let var_2 = Struct_3(~u_input.b.xz, ~abs(~global1.yzx) ^ -vec3<i32>(abs(global1.x), abs(-5165i), var_0.b.x << (4294967295u % 32u)), var_0.c, countOneBits(var_1.a.d.x));
    let var_3 = _wgslsmith_mult_i32(var_0.d, arg_3);
    return var_2.b.yz;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: bool) -> vec4<i32> {
    global4 = array<vec4<f32>, 10>();
    let var_0 = -_wgslsmith_div_i32(_wgslsmith_div_i32(global1.x, 28093i), -49791i);
    global0 = (firstLeadingBit(max(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(24683i, arg_2.x, -16159i, -1i), vec4<i32>(global1.x, -13640i, arg_2.x, 1i)))) ^ abs(-min(arg_2.x, 0i))) >> (u_input.c.x % 32u);
    global0 = func_3(arg_1.x, 1023f, _wgslsmith_div_vec4_u32(u_input.c, firstTrailingBit(vec4<u32>(54354u, u_input.c.x, 0u, 0u) | u_input.b) ^ vec4<u32>(_wgslsmith_clamp_u32(14864u, u_input.b.x, 0u), _wgslsmith_sub_u32(u_input.c.x, 17579u), _wgslsmith_clamp_u32(u_input.d.x, u_input.c.x, u_input.c.x), u_input.b.x << (u_input.a.x % 32u))), _wgslsmith_dot_vec3_i32(firstLeadingBit(global1.zyw), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, var_0, var_0), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0, 7635i), vec3<i32>(var_0, 58733i, -2147483647i)))))).x;
    var var_1 = _wgslsmith_mod_vec2_i32(global1.zw, -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-15494i, -23135i), 12093i), global1.x));
    return _wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(var_0 & 20614i, -1i, -arg_2.x, var_0), vec4<i32>(-var_1.x, ~2147483647i, var_1.x, ~(-5931i))), -_wgslsmith_div_vec4_i32(~vec4<i32>(arg_2.x, var_0, var_0, 58178i), firstLeadingBit(vec4<i32>(var_1.x, var_1.x, global1.x, var_1.x))) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 91059i, 2147483647i, -26652i), -vec4<i32>(var_0, 45853i, -60066i, 19106i)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -select(vec4<i32>(21728i, arg_0.a, 2147483647i, -1i), vec4<i32>(global1.x, 19622i, -976i, global1.x), vec4<bool>(global2.x, true, true, global2.x)), _wgslsmith_mult_vec4_i32(func_4(u_input.d.x >= 71880u, !vec3<bool>(global2.x, false, false), func_3(global2.x, -941f, vec4<u32>(arg_2.x, arg_2.x, 1u, arg_2.x), -49751i), false), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-54722i, -45841i, global1.x, arg_0.d.x), max(vec4<i32>(arg_0.a, -10327i, global1.x, -7514i), vec4<i32>(arg_0.a, arg_0.d.x, global1.x, arg_0.d.x)), vec4<i32>(0i, arg_0.a, arg_0.a, -1i)))), -func_4(all(select(vec2<bool>(global2.x, true), global2.yx, global2.x)), !vec3<bool>(global2.x, true, global2.x), vec2<i32>(global1.x, _wgslsmith_sub_i32(arg_0.d.x, -29349i)), false));
    var var_1 = Struct_3(vec2<u32>(~(~reverseBits(4294967295u)), 1u), global1.yzx, Struct_2(Struct_1(func_4(true, vec3<bool>(true, true, true), vec2<i32>(arg_0.a, 0i), u_input.b.x < arg_2.x).x, ~u_input.a.zy, vec3<u32>(~0u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2.x, 4294967295u), vec3<u32>(0u, arg_0.b.x, arg_2.x))), firstLeadingBit(var_0.xy))), abs(1i));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1498f)) + -383f), 516f)));
    let var_3 = var_1.c;
    var var_4 = -40991i;
    return Struct_1(max(var_0.x, arg_0.a), abs(~(~arg_2.xx) >> ((~arg_2.zx & vec2<u32>(arg_0.c.x, 54491u)) % vec2<u32>(32u))), ~firstLeadingBit(var_3.a.c), var_1.b.zx);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(1126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-863f)) * 807f))), -1374f, _wgslsmith_f_op_f32(step(-1000f, -874f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f + 1267f)))));
    var var_1 = var_0.zyw;
    let var_2 = Struct_2(func_2(Struct_1(arg_1.x, ~select(u_input.d.xy, vec2<u32>(u_input.c.x, u_input.a.x), vec2<bool>(global2.x, global2.x)), ~vec3<u32>(u_input.a.x, u_input.d.x, u_input.b.x), vec2<i32>(countOneBits(arg_1.x), 4806i)), 307f, abs(vec3<u32>(~4294967295u, ~1u, firstLeadingBit(u_input.d.x)))));
    var var_3 = Struct_3(vec2<u32>(max(20968u, u_input.b.x), _wgslsmith_dot_vec3_u32(countOneBits(u_input.c.zyy >> (u_input.a % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.d.x, u_input.d.x) | vec3<u32>(u_input.d.x, 0u, 4294967295u), vec3<u32>(u_input.d.x, 2740u, var_2.a.b.x), select(u_input.b.yzz, u_input.a, global2.x)))), -(~global1.wyz), var_2, ~(~global1.x));
    var var_4 = global2.x;
    return min(17575u, var_2.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global2.x) | false;
    global0 = 39575i;
    global1 = select(abs(vec4<i32>(1i, _wgslsmith_clamp_i32(global1.x, 0i, 13961i), global1.x, 1i) << (~vec4<u32>(u_input.d.x, u_input.d.x, 4216u, 50309u) % vec4<u32>(32u))), vec4<i32>(-15270i, -22912i, ~global1.x, global1.x), true);
    let var_1 = abs(-1i);
    let var_2 = ~(~(func_1(any(global2.yx), -vec2<i32>(2147483647i, 1i)) >> (~(~u_input.d.x) % 32u)));
    let var_3 = abs(_wgslsmith_clamp_vec4_u32(~u_input.b, vec4<u32>(54345u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), u_input.b.x), _wgslsmith_clamp_u32(~u_input.a.x, abs(16794u), var_2), var_2 ^ u_input.a.x), ~vec4<u32>(abs(u_input.c.x), _wgslsmith_add_u32(u_input.a.x, 39987u), 0u, _wgslsmith_mult_u32(var_2, u_input.c.x))));
    global0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_clamp_i32(23523i, firstLeadingBit(global1.x), 1i), ~0i), _wgslsmith_mult_vec2_i32(global1.zx, global1.yy));
}

