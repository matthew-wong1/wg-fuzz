struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(vec3<i32>(32311i, 69961i, 2147483647i), true, Struct_1(vec4<u32>(2369u, 42786u, 43554u, 50082u), -75632i, vec3<i32>(-29984i, 44411i, -7917i), vec2<u32>(29122u, 4294967295u), 1i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(firstLeadingBit(countOneBits(~vec3<i32>(114140i, 19693i, 2147483647i))) << (global2.c.a.xzy % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(global2.c.a.yzz, _wgslsmith_mod_vec3_u32(vec3<u32>(global2.c.d.x, global2.c.a.x, global2.c.d.x), global3.c.a.zyx)) > _wgslsmith_dot_vec4_u32(global2.c.a << (_wgslsmith_mod_vec4_u32(vec4<u32>(23548u, 48512u, global2.c.d.x, 78889u), global2.c.a) % vec4<u32>(32u)), vec4<u32>(~4294967295u, ~global2.c.a.x, max(1u, 66594u), ~u_input.c)), Struct_1(vec4<u32>(~global2.c.a.x, ~21228u, _wgslsmith_div_u32(global3.c.d.x, global3.c.a.x), max(u_input.d, u_input.d)) & global3.c.a, ~global3.c.c.x, vec3<i32>(1i, min(~1i, -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(1i, 9736i)), -global2.c.c.xy)), global3.c.a.zz, -2147483647i));
    global1 = true;
    var var_1 = _wgslsmith_div_vec3_u32(~var_0.c.a.www, ~(~global3.c.a.ywx | reverseBits(global2.c.a.ywy))) << (_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global3.c.a.x, var_0.c.a.x, _wgslsmith_div_u32(global2.c.d.x, var_0.c.d.x)), firstTrailingBit(~vec3<u32>(1u, global2.c.a.x, u_input.c))), vec3<u32>(4294967295u, abs(1u), ~23139u)) % vec3<u32>(32u));
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(~vec4<u32>(var_0.c.a.x & var_0.c.d.x, _wgslsmith_mod_u32(global3.c.d.x, _wgslsmith_dot_vec2_u32(global2.c.a.zz, vec2<u32>(u_input.c, var_1.x))), ~u_input.c << (~var_1.x % 32u), global2.c.d.x), _wgslsmith_sub_i32(51653i, var_0.c.b), abs(global3.c.c), global2.c.d, -firstLeadingBit(max(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, global2.a.x), global2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2.a.x, -9714i), vec3<i32>(var_0.a.x, global2.a.x, u_input.a.x)))));
    return ~12246i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_i32(-52291i, _wgslsmith_dot_vec3_i32(vec3<i32>(select(0i, global2.c.e, true), func_3(), 0i), ~select(global3.c.c, global3.c.c, global3.b)) << (~global2.c.d.x % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, ~global2.a.x), global2.a.x), 0i));
    let var_1 = !global2.b;
    var var_2 = 0i;
    let var_3 = 31057u;
    var_0 = ~37964i;
    return Struct_3(!(!select(vec3<bool>(true, true, arg_0.x), !vec3<bool>(arg_0.x, var_1, global3.b), arg_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1, arg_1, !vec4<bool>(false, false, true, global2.b)))), global2.c.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> vec3<bool> {
    global3 = Struct_2(~(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, 42948i, arg_0.c), ~vec3<i32>(1i, arg_0.c, -3100i), -vec3<i32>(-8653i, arg_1.c, 84485i))), global3.b && true, global3.c);
    var var_0 = !(global2.a.x != _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-12690i, global2.c.c.x), vec2<i32>(u_input.b.x, u_input.b.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, -10738i, -1i, 1i), vec4<i32>(arg_0.c, -25791i, 2147483647i, 55275i)), _wgslsmith_sub_i32(44801i, global3.a.x))));
    var var_1 = global2.a.x;
    var var_2 = global2.c;
    var var_3 = abs(_wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(964i, arg_0.c, 17092i, u_input.b.x), vec4<i32>(global3.c.b, global2.c.b, -27324i, global2.a.x), vec4<i32>(var_2.c.x, 0i, -1821i, arg_1.c)), countOneBits(~vec4<i32>(-38179i, -11157i, -1i, 2147483647i)), abs(vec4<i32>(-4385i, 2147483647i, global2.a.x, arg_0.c) >> (var_2.a % vec4<u32>(32u))))) << (_wgslsmith_mult_vec4_u32(global2.c.a, global2.c.a) % vec4<u32>(32u));
    return func_2(!vec4<bool>((14046i >> (var_2.d.x % 32u)) == _wgslsmith_div_i32(global2.c.e, -2147483647i), global2.a.x == firstTrailingBit(16859i), arg_1.a.x, true), vec4<f32>(-629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(round(arg_0.b.x)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -167f), -146f))), 1131f), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-u_input.b, _wgslsmith_mod_vec2_i32(var_3.yz, var_2.c.xz), firstTrailingBit(var_2.c.xx)), vec2<i32>(-u_input.b.x, max(arg_0.c, 1i))), _wgslsmith_mult_i32(37414i, i32(-1i) * -778i)), vec2<bool>(!(!any(vec4<bool>(arg_1.a.x, true, global2.b, global3.b))), global3.b)).a;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    global3 = Struct_2(global3.a, true, global3.c);
    var var_0 = ~global2.c.d.x;
    var var_1 = abs(global2.c.a);
    var_0 = _wgslsmith_sub_u32(global2.c.a.x, global2.c.a.x);
    let var_2 = global3.b;
    return Struct_3(select(!func_4(func_2(vec4<bool>(true, global2.b, global3.b, global2.b), vec4<f32>(-255f, 453f, -1178f, 1159f), -34358i, vec2<bool>(false, false)), Struct_3(vec3<bool>(global3.b, global2.b, false), vec4<f32>(249f, 1372f, 1112f, -2483f), -1i), _wgslsmith_f_op_f32(abs(-304f))), !(!vec3<bool>(global3.b, true, false)), vec3<bool>(func_2(vec4<bool>(global2.b, false, false, false), vec4<f32>(1060f, -402f, 2275f, 2794f), 27713i, vec2<bool>(false, global3.b)).a.x | false, all(vec2<bool>(global2.b, true)), false)), vec4<f32>(-640f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(728f, 1531f) + _wgslsmith_f_op_f32(min(1045f, -1128f))) * _wgslsmith_f_op_f32(-787f + _wgslsmith_f_op_f32(f32(-1f) * -903f))), _wgslsmith_f_op_f32(-1637f - _wgslsmith_f_op_f32(f32(-1f) * -938f)), -204f), 38388i);
}

fn func_5(arg_0: Struct_3) -> bool {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(global2.c.a.xw, select(select(global2.c.a.xw ^ vec2<u32>(u_input.c, 4294967295u), global3.c.a.xw, true), global2.c.d, false)), global2.c.d.x, 4294967295u);
    global1 = true;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.b.x)))), _wgslsmith_f_op_f32(-func_2(vec4<bool>(false, true, global3.b, false), arg_0.b, arg_0.c, var_1.a.xy).b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1524f, -139f))))) - _wgslsmith_f_op_vec2_f32(arg_0.b.yz + vec2<f32>(_wgslsmith_f_op_f32(546f * 1150f), _wgslsmith_f_op_f32(step(-1059f, arg_0.b.x))))), !vec2<bool>(func_4(Struct_3(arg_0.a, arg_0.b, var_1.c), var_1, _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x)).x, select(func_4(Struct_3(var_1.a, var_1.b, 2147483647i), arg_0, 249f).x, all(vec4<bool>(false, false, false, arg_0.a.x)), true))));
    var_2 = _wgslsmith_f_op_vec2_f32(round(var_1.b.xx));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -312f)));
    let var_0 = true;
    global3 = Struct_2(min(~(global2.a ^ (global3.c.c & vec3<i32>(-39118i, 0i, -2147483647i))), countOneBits(vec3<i32>(~8643i, global3.c.b, 25713i))), true || func_5(func_1(global2.c)), global3.c);
    global3 = Struct_2(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-24910i, -362i, -2147483647i), global2.a), ~min(1212i, -2147483647i)), 0i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global3.a.x, 2147483647i) >> (u_input.c % 32u), 1i, -37295i >> (_wgslsmith_sub_u32(global2.c.a.x, 87006u) % 32u))), false, global2.c);
    var var_1 = Struct_2(select(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.a.x | -22724i, -2147483647i, -global3.a.x), -(~global3.c.c)), global2.a, !var_0), !(global3.b || true), global3.c);
    var var_2 = Struct_2((firstTrailingBit(~global2.a) | _wgslsmith_sub_vec3_i32(~global2.c.c, -global2.c.c)) >> (~(var_1.c.a.zxx & var_1.c.a.wxw) % vec3<u32>(32u)), true, global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(55766u ^ global3.c.a.x, vec3<f32>(765f, 855f, 1473f));
}

