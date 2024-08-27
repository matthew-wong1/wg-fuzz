struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<f32>, 26>;

var<private> global2: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_3) -> i32 {
    var var_0 = -arg_0;
    global2 = ~1050u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1307f, 321f, _wgslsmith_f_op_f32(arg_2.a.x + -417f), _wgslsmith_f_op_f32(arg_2.b.x + arg_2.d.c.x)))));
    var var_2 = arg_2.d;
    var var_3 = !select(!var_2.e, any(arg_2.e), any(vec3<bool>(true, all(vec4<bool>(var_2.e, arg_2.d.e, false, arg_2.d.e)), all(vec4<bool>(arg_2.d.e, false, arg_2.e.x, true)))));
    return -1i;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(max(_wgslsmith_mod_i32(-380i, -2147483647i), u_input.a.x), firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_sub_i32(countOneBits(34163i), func_3(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), u_input.b.x, Struct_3(vec2<f32>(-1002f, -1000f), vec2<f32>(-1000f, -223f), -28941i, Struct_1(u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec2<f32>(-170f, 338f), vec3<u32>(10196u, u_input.c.x, u_input.c.x), true), vec3<bool>(false, true, true)))), ~_wgslsmith_mult_i32(-1i, -1i)), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 13011i, u_input.a.x, 0i), firstLeadingBit(vec4<i32>(u_input.a.x, 0i, -29951i, 0i)), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -1i) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), vec2<bool>(true, true));
    return Struct_4(reverseBits(abs(var_0.a ^ vec4<i32>(-19624i, 2147483647i, u_input.a.x, var_0.a.x))) | var_0.a, var_0.b);
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = 1485f;
    var_0 = 606f;
    let var_1 = Struct_1(1i, _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.a.yyx, vec3<i32>(arg_0.a.x, u_input.a.x, u_input.a.x)), arg_0.a.xwy << (u_input.b.wwz % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, 1i, 2703i, arg_0.a.x)), vec4<i32>(-1i, 1i, 0i, -19144i)), ~u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_i32(arg_0.a.zxy, vec3<i32>(2147483647i, u_input.a.x, -8272i) << (vec3<u32>(28237u, 1u, 0u) % vec3<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f)), 1373f)), ~firstLeadingBit(vec3<u32>(1u, 21159u, 24444u)), any(select(!vec4<bool>(true, true, false, arg_0.b.x), vec4<bool>(arg_0.b.x, true, arg_0.b.x, all(vec4<bool>(true, arg_0.b.x, false, false))), any(select(arg_0.b, arg_0.b, true)))));
    var_0 = var_1.c.x;
    global2 = _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(reverseBits(u_input.d), ~u_input.d >> (var_1.d.x % 32u)), 37234u << (0u % 32u));
    return Struct_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(170f)) - 709f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(-var_1.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(1112f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), _wgslsmith_f_op_f32(floor(492f))))), _wgslsmith_f_op_f32(abs(-659f))), var_1.b.x, var_1, !vec3<bool>(true, -32553i <= u_input.a.x, !(!arg_0.b.x)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = func_4(func_2());
    global2 = ~var_0.d.d.x;
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(~var_0.d.d.x), _wgslsmith_dot_vec3_u32(min(vec3<u32>(15202u, 29625u, var_0.d.d.x), vec3<u32>(0u, 0u, arg_1)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c.x, 27273u), var_0.d.d))) ^ select(~20413u & var_0.d.d.x, func_4(Struct_4(vec4<i32>(var_0.c, u_input.a.x, -2147483647i, var_0.d.a), var_0.e.xy)).d.d.x >> (3604u % 32u), false), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.d.d, _wgslsmith_add_vec3_u32(vec3<u32>(var_0.d.d.x, 67450u, var_0.d.d.x), var_0.d.d) & max(var_0.d.d, vec3<u32>(0u, 0u, 9466u))), ~1u), _wgslsmith_dot_vec3_u32(u_input.c.zzx, select(~var_0.d.d, countOneBits(var_0.d.d) & ~vec3<u32>(0u, 14371u, u_input.d), var_0.e)), abs(~62194u));
    global0 = var_0.e.x;
    global1 = array<vec4<f32>, 26>();
    return max(_wgslsmith_sub_vec2_u32(u_input.c.ww, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~var_1.yw, select(vec2<u32>(var_0.d.d.x, var_1.x), vec2<u32>(4294967295u, 4294967295u), var_0.e.x)), var_1.yy)), vec2<u32>(96860u, arg_1 | ~u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 26u)];
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-34503i, -(~(u_input.a.x & -2147483647i))), (_wgslsmith_sub_vec2_i32(vec2<i32>(-40275i, -1i), ~u_input.a) ^ reverseBits(u_input.a)) >> (~(~func_1(u_input.a.x, 26459u, vec3<i32>(17593i, 42707i, u_input.a.x), var_0.xxw)) % vec2<u32>(32u)));
    let var_2 = !(!select(func_4(func_2()).e, vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, true)), true)));
    global1 = array<vec4<f32>, 26>();
    global1 = array<vec4<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_div_vec2_i32(firstLeadingBit(-u_input.a), vec2<i32>(u_input.a.x, -2147483647i) << (vec2<u32>(u_input.d, 12074u) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x >> (1u % 32u)), countOneBits(_wgslsmith_sub_vec2_u32(u_input.b.wy, u_input.c.wx))) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1302f)), 2687f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(~u_input.c.x, 26u)] + global1[_wgslsmith_index_u32(9712u | _wgslsmith_mult_u32(u_input.c.x, u_input.b.x), 26u)]) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1002f, var_0.x), _wgslsmith_f_op_f32(439f - -1463f), var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1808f, var_0.x, var_0.x, -705f)), select(var_2.x, !var_2.x, any(vec4<bool>(true, var_2.x, true, var_2.x)))))), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, var_1.x, var_1.x), ~vec3<i32>(32558i, u_input.a.x, 0i)) & (vec3<i32>(1i, ~u_input.a.x, firstTrailingBit(20466i)) | ~countOneBits(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))));
}

