struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec4<i32>(-1i, 2147483647i, -1i, 0i), true, vec2<i32>(-1i, 0i), 2147483647i);

var<private> global1: array<Struct_1, 27>;

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = arg_0;
    global0 = Struct_1(~1u, vec4<i32>(~2147483647i, firstLeadingBit(1i), 2147483647i, arg_0.d.x), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(ceil(-655f))) > _wgslsmith_f_op_f32(sign(-587f))), vec2<i32>(firstLeadingBit(-29331i), var_0.b.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~(-arg_0.d), arg_0.d, -select(vec2<i32>(global0.d.x, global0.b.x), vec2<i32>(arg_0.b.x, arg_1.d.x), true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -22414i, _wgslsmith_mod_i32(arg_1.b.x, arg_0.d.x)), -arg_0.b.yx, _wgslsmith_mod_vec2_i32(arg_0.d, var_0.d) ^ -vec2<i32>(global0.b.x, -57449i))));
    let var_1 = Struct_1(u_input.d.x, vec4<i32>(global0.b.x, -(~(0i << (1u % 32u))), -1i | (arg_1.d.x ^ _wgslsmith_mult_i32(-1i, arg_1.d.x)), select(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.e, 55076i), -1i), -var_0.d.x ^ -2147483647i, false)), (_wgslsmith_sub_i32(8057i << (var_0.a % 32u), u_input.a.x) >> (4294967295u % 32u)) < arg_0.e, global0.d, -1i ^ _wgslsmith_dot_vec4_i32(global0.b, min(vec4<i32>(-36000i, 1i, 0i, arg_0.d.x), arg_1.b)));
    global1 = array<Struct_1, 27>();
    var var_2 = ~u_input.d.x;
    return _wgslsmith_sub_vec4_i32(-(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.e, var_0.b.x, -45071i, -6967i), u_input.a), arg_1.b) | vec4<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(arg_0.b.xwx, var_1.b.wxx), ~arg_0.e, -1i)), vec4<i32>(var_0.e, ~(~arg_0.e), ~abs(var_1.b.x), var_0.e));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global0 = Struct_1(min(_wgslsmith_mod_u32(64196u, u_input.d.x), u_input.c) & _wgslsmith_dot_vec2_u32(select(~vec2<u32>(global0.a, global0.a), u_input.d.zx ^ u_input.d.zx, global2.yw), ~reverseBits(u_input.d.zz)), func_3(global1[_wgslsmith_index_u32(77077u, 27u)], global1[_wgslsmith_index_u32(1747u, 27u)]), true, global0.b.zz, arg_0.x);
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, u_input.c, u_input.c) ^ min(vec3<u32>(u_input.c, global0.a, u_input.c), vec3<u32>(37999u, 43426u, global0.a)), vec3<u32>(34438u, global0.a, 28420u)), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, countOneBits(vec3<u32>(16912u, global0.a, 28193u))), 0u, 19370u)), u_input.d), 27u)];
    let var_1 = Struct_1(~_wgslsmith_div_u32(~4294967295u & ~var_0.a, ~1u), _wgslsmith_add_vec4_i32(max(-arg_0, vec4<i32>(global0.d.x, 38397i, -67680i, var_0.e)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 56007u, var_0.a, var_0.a), ~vec4<u32>(42581u, 0u, 31604u, 1u), select(vec4<u32>(var_0.a, var_0.a, var_0.a, 4294967295u), vec4<u32>(var_0.a, global0.a, u_input.c, 0u), true)) % vec4<u32>(32u)), vec4<i32>(-27385i, _wgslsmith_div_i32(-8995i, _wgslsmith_add_i32(u_input.a.x, var_0.e)), arg_0.x, -6029i)), any(!(!global2.zyy)), vec2<i32>(abs(25661i), _wgslsmith_mod_i32(-_wgslsmith_add_i32(u_input.a.x, -2147483647i), 11899i)), countOneBits(_wgslsmith_sub_i32(abs(-1i), global0.b.x)));
    var var_2 = Struct_1(_wgslsmith_add_u32(~_wgslsmith_add_u32(0u, _wgslsmith_add_u32(u_input.c, u_input.d.x)), var_1.a), global0.b, false, -(~global0.d), i32(-1i) * -(~reverseBits(-41695i)));
    var var_3 = var_1;
    return ~abs(var_0.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: u32) -> f32 {
    global0 = Struct_1(~_wgslsmith_add_u32(47325u & func_2(u_input.a), 9358u), vec4<i32>(u_input.a.x | u_input.a.x, i32(-1i) * -67181i, -_wgslsmith_mult_i32(global0.b.x, 21782i), 1i) & ~(~vec4<i32>(0i, global0.e, u_input.b, 22339i)), true, global0.d, global0.b.x);
    var var_0 = Struct_1(global0.a, global0.b, _wgslsmith_sub_u32(arg_2, 4294967295u) > ~_wgslsmith_mult_u32(27555u, global0.a | 68465u), (reverseBits(reverseBits(u_input.a.wy)) << (~select(u_input.d.yy, vec2<u32>(21516u, arg_2), vec2<bool>(arg_0.x, true)) % vec2<u32>(32u))) ^ ~global0.d, reverseBits(~(-1i | u_input.a.x)) << (min(arg_2, 4294967295u) % 32u));
    let var_1 = Struct_1(_wgslsmith_mult_u32(29512u, ~var_0.a), var_0.b, false, vec2<i32>(_wgslsmith_div_i32(-1i, global0.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(-7641i, var_0.e, 0i, -75141i)) & -var_0.b, _wgslsmith_sub_vec4_i32(abs(var_0.b), -vec4<i32>(u_input.a.x, global0.b.x, global0.e, 1i)))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(u_input.a), ~var_0.b), -var_0.b));
    global2 = vec4<bool>(true, all(vec2<bool>(true, !(global0.c | true))), false, arg_1.x < _wgslsmith_f_op_f32(-arg_1.x));
    var var_2 = firstTrailingBit(select(vec4<i32>(abs(-20498i), global0.e, ~var_0.e, var_1.b.x), _wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(global0.b, ~var_1.b, u_input.a)), !select(vec4<bool>(global2.x, true, var_1.c, false), vec4<bool>(global2.x, false, true, false), arg_0.x | var_1.c)));
    return -1399f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1051f));
    let var_1 = 2147483647i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(479f, 387f, -1288f), vec3<f32>(-1000f, -692f, -1000f), true)))))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1416f)) * _wgslsmith_f_op_f32(f32(-1f) * -470f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1326f + 469f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, false, global0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1503f, -615f)), global0.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec4<bool>(global2.x, global2.x, global0.c, false), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1596f, 765f))), 15763u)), _wgslsmith_f_op_f32(select(247f, -905f, true))))));
    var var_3 = vec4<u32>(101512u, ~21513u, global0.a, ~1u);
    var var_4 = max(select(_wgslsmith_div_vec2_i32(u_input.a.xw, global0.d) << (vec2<u32>(0u, global0.a) % vec2<u32>(32u)), global0.b.zz, all(select(vec4<bool>(global2.x, false, false, true), vec4<bool>(global2.x, global2.x, false, global0.c), vec4<bool>(true, global2.x, true, true)))), vec2<i32>(-1i) * -(~vec2<i32>(7304i, var_1))) | func_3(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(var_3.wz, abs(vec2<u32>(0u, u_input.c)))), 27u)], global1[_wgslsmith_index_u32(min(~1u, firstTrailingBit(0u)) ^ ~min(4294967295u, var_3.x), 27u)]).zx;
    var_3 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, ~u_input.c, 1u), u_input.d), 0u, min(max(~17858u, global0.a), ~4294967295u), countOneBits(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.d.x, 24025u), global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(f32(-1f) * -235f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(254f, var_2.x, -1874f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -898f, 235f, var_2.x))) * vec4<f32>(_wgslsmith_f_op_f32(step(-1792f, var_2.x)), -2210f, 793f, _wgslsmith_f_op_f32(var_2.x + var_2.x))), vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1550f, var_2.x)), var_2.x), !select(!vec4<bool>(true, global2.x, global2.x, global2.x), select(vec4<bool>(global0.c, global0.c, false, true), vec4<bool>(true, global0.c, true, false), global0.c), global0.c))), 1i, var_2.x, _wgslsmith_f_op_f32(abs(-1017f)));
}

