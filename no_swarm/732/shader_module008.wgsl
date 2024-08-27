struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_2(Struct_1(false))), Struct_3(Struct_2(Struct_1(false))));

var<private> global1: vec3<i32> = vec3<i32>(-103368i, -45215i, 0i);

var<private> global2: array<Struct_3, 3>;

var<private> global3: array<vec4<bool>, 30>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    global0 = array<Struct_3, 2>();
    var var_0 = Struct_1(arg_0.a.a.a);
    global1 = ~((vec3<i32>(-u_input.a.x, _wgslsmith_sub_i32(0i, u_input.a.x), global1.x) | (min(vec3<i32>(17592i, u_input.a.x, global1.x), vec3<i32>(u_input.a.x, 6779i, u_input.a.x)) >> (~vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u)))) >> ((vec3<u32>(u_input.b, 14244u >> (u_input.b % 32u), 89394u) >> (~(~vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = arg_0.a.a;
    var var_2 = arg_0.a.a;
    return ~abs(vec3<i32>(-2147483647i, -firstLeadingBit(global1.x), -2147483647i));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = true;
    let var_1 = 5806u;
    global1 = ~(-abs(max(~vec3<i32>(u_input.a.x, 2147483647i, 10344i), firstLeadingBit(vec3<i32>(-1i, u_input.a.x, -15082i)))));
    global1 = _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-1i, 4441i, _wgslsmith_mult_i32(~0i, 1i)), func_3(global2[_wgslsmith_index_u32(4294967295u, 3u)]), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), !any(global3[_wgslsmith_index_u32(46619u, 30u)]))), abs(func_3(global0[_wgslsmith_index_u32(u_input.b, 2u)])), -(vec3<i32>(global1.x, global1.x, 1i) >> (abs(vec3<u32>(818u, u_input.b, 36373u)) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(14595u, 7424u, 0u) << ((vec3<u32>(1u, var_1, u_input.b) ^ vec3<u32>(var_1, 14u, 1u)) % vec3<u32>(32u)), vec3<u32>(u_input.b ^ 4294967295u, var_1, u_input.b)) % vec3<u32>(32u)));
    let var_2 = !(!vec3<bool>(true, true | select(false, false, false), true));
    return u_input.b;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(func_2(-732f), arg_0), countOneBits(~min(~vec2<u32>(arg_0, u_input.b), vec2<u32>(69630u, 48225u))));
    var var_1 = Struct_1(arg_3.a.a);
    global2 = array<Struct_3, 3>();
    let var_2 = var_0.x;
    let var_3 = global2[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(exp2(arg_2.x))), 3u)];
    return arg_2.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(36517i, u_input.a.x, ~2147483647i), arg_0);
    let var_1 = -12784i;
    var var_2 = global0[_wgslsmith_index_u32(~u_input.b << (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, _wgslsmith_add_u32(4294967295u, u_input.b), _wgslsmith_clamp_u32(u_input.b, 25120u, 10115u)), vec3<u32>(u_input.b << (u_input.b % 32u), _wgslsmith_div_u32(1u, 5522u), ~u_input.b) & ((vec3<u32>(u_input.b, 20496u, 4294967295u) << (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u))) << (vec3<u32>(6311u, u_input.b, 8743u) % vec3<u32>(32u)))) % 32u), 2u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, 350f, arg_2))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -1386f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(565f, 1633f, var_2.a.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1229f - arg_2) + 205f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
    var_2 = global2[_wgslsmith_index_u32(reverseBits(~func_2(_wgslsmith_f_op_f32(-arg_2))), 3u)];
    return Struct_2(var_2.a.a);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = vec3<u32>(~u_input.b, abs(abs(u_input.b)) & ~u_input.b, _wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(1u >> (u_input.b % 32u), u_input.b << (0u % 32u)) << (57069u % 32u)));
    var var_2 = vec3<i32>(-2147483647i, arg_3, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), firstTrailingBit(_wgslsmith_add_vec2_i32(-u_input.a, reverseBits(vec2<i32>(28206i, -35356i))))));
    var var_3 = ~vec3<i32>(max(var_2.x, func_3(Struct_3(var_0.a)).x), global1.x, -9598i);
    let var_4 = arg_1;
    return func_4(max(~((vec3<i32>(0i, 1i, 1i) >> (var_1 % vec3<u32>(32u))) >> (~vec3<u32>(u_input.b, 0u, 1u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(~global1.x, ~(-2147483647i), global1.x), -countOneBits(vec3<i32>(-22306i, arg_3, arg_3)))), any(select(vec3<bool>(true, any(vec4<bool>(var_0.a.a.a, false, false, false)), !arg_2.a.a), vec3<bool>(any(vec4<bool>(false, false, arg_2.a.a, var_0.a.a.a)), arg_2.a.a & var_0.a.a.a, any(vec4<bool>(true, arg_2.a.a, true, arg_2.a.a))), vec3<bool>(arg_0.a.a.a, all(global3[_wgslsmith_index_u32(var_1.x, 30u)]), !var_0.a.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(300f - 298f) - arg_1) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-965f)))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 3>();
    let var_0 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))) | !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f - -390f) + 1f) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1365f))));
    global0 = array<Struct_3, 2>();
    var var_1 = Struct_2(func_5(Struct_3(func_4(select(vec3<i32>(global1.x, 52739i, u_input.a.x), vec3<i32>(u_input.a.x, global1.x, global1.x), false), true, _wgslsmith_f_op_f32(func_1(1u, false, vec2<f32>(1021f, 1324f), Struct_2(Struct_1(var_0)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -646f) + 1912f) * _wgslsmith_f_op_f32(-696f + _wgslsmith_f_op_f32(819f - -1290f))), func_4(~vec3<i32>(-1i, -7203i, -74808i), var_0, 2085f), max(~max(u_input.a.x, -1i), ~u_input.a.x)));
    var var_2 = ~(~(~1u));
    global1 = vec3<i32>(_wgslsmith_add_i32(-12051i, -12451i), ~(-2147483647i), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-56997i, -u_input.a.x, ~min(-13479i, global1.x)), select(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(global1.x, global1.x, -1i)), vec3<i32>(global1.x, global1.x, 13660i), _wgslsmith_div_vec3_i32(vec3<i32>(-9581i, 1i, 13159i), vec3<i32>(2147483647i, global1.x, -57271i))), vec3<i32>(global1.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), firstTrailingBit(global1.x))), abs(~(-vec3<i32>(u_input.a.x, 42468i, -29749i))), !var_0), ~(~vec2<u32>(u_input.b & 33415u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(65219u, 10939u)))), ~(~(~(~u_input.b))), global1.x);
}

