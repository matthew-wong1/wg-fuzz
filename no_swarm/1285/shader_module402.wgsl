struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_4,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(-1955f, 187f);

var<private> global2: array<vec3<u32>, 22>;

var<private> global3: vec2<bool>;

var<private> global4: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(global0.a.a * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.a.a), _wgslsmith_f_op_vec2_f32(-global0.a.a), global0.a.b.yz))), select(vec3<bool>(global0.a.b.x, false, all(global0.a.b)), select(global0.a.b, vec3<bool>(true, arg_3, arg_3), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), arg_3)), global0.a.c), true), arg_2);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global1.x + -315f), _wgslsmith_f_op_f32(f32(-1f) * -1891f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.a - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(437f, var_0.a.a.x) + vec2<f32>(1004f, global1.x)))))));
    var var_1 = !any(!select(!vec4<bool>(global0.a.c, global3.x, global0.a.c, global3.x), !vec4<bool>(global0.a.c, arg_3, false, arg_3), !vec4<bool>(true, true, true, arg_3)));
    global0 = var_0;
    let var_2 = arg_2.x | 0u;
    return _wgslsmith_f_op_f32(-global1.x);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(max(vec3<i32>(u_input.b, 50539i, -20938i) >> (vec3<u32>(11949u, global0.b.x, global0.b.x) % vec3<u32>(32u)), -vec3<i32>(u_input.b, 0i, -1i)), ~global0.b.yx, vec3<u32>(_wgslsmith_div_u32(0u, 76942u), ~u_input.d.x, ~u_input.e.x), false))));
    let var_1 = vec4<i32>(1i, u_input.c, ~(-735i), _wgslsmith_sub_i32(u_input.a, max(u_input.b, u_input.a)) | _wgslsmith_mult_i32(-1i, -36638i)) << (vec4<u32>(~global0.b.x, _wgslsmith_add_u32(42542u, 1u), reverseBits(~countOneBits(global0.b.x)), _wgslsmith_add_u32(global0.b.x << (u_input.e.x % 32u), _wgslsmith_div_u32(~57663u, max(46017u, u_input.e.x)))) % vec4<u32>(32u));
    var var_2 = Struct_3(global0.b.x, select(any(vec3<bool>(true, all(global0.a.b.xy), arg_0)), global0.a.b.x, true));
    let var_3 = vec3<u32>(_wgslsmith_add_u32(select(u_input.d.x, var_2.a, !var_2.b), min(var_2.a ^ ~var_2.a, _wgslsmith_clamp_u32(firstTrailingBit(1u), ~u_input.d.x, _wgslsmith_clamp_u32(global0.b.x, var_2.a, u_input.d.x)))), (var_2.a & ~(var_2.a ^ 1u)) << (~(~global0.b.x >> (var_2.a % 32u)) % 32u), var_2.a);
    let var_4 = _wgslsmith_f_op_f32(-1476f + _wgslsmith_f_op_f32(f32(-1f) * -1173f));
    return -515f;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_5 {
    let var_0 = Struct_4(max(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_3.x, 0u, u_input.e.x)), global0.b << (u_input.e.wwz % vec3<u32>(32u))) | global2[_wgslsmith_index_u32(global0.b.x, 22u)], reverseBits(vec3<u32>(1u, 10218u, u_input.d.x) & _wgslsmith_mult_vec3_u32(u_input.d.zzz, arg_3.wyw))), global0.a, ~_wgslsmith_mod_i32(i32(-1i) * -arg_1.x, u_input.b));
    global2 = array<vec3<u32>, 22>();
    let var_1 = all(arg_0.b);
    global0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(154f + 1580f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -1000f) * global1.x)), vec3<bool>(true, true, true), !(!global0.a.c)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(global0.b.x, 0u, arg_3.x), vec3<u32>(8066u, u_input.e.x, 1u)) >> (global0.b % vec3<u32>(32u)), vec3<u32>(4294967295u, min(0u, 67887u), global0.b.x)) >> (firstLeadingBit(select(select(global0.b, vec3<u32>(var_0.a.x, 0u, arg_3.x), vec3<bool>(true, false, true)), global0.b, all(vec4<bool>(var_0.b.c, false, global0.a.b.x, true)))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(317f)), _wgslsmith_f_op_f32(var_0.b.a.x - global0.a.a.x), _wgslsmith_f_op_f32(min(var_0.b.a.x, var_0.b.a.x)))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.b.a.x, -336f)), _wgslsmith_f_op_f32(func_2(true))), arg_0.a.x, -1357f));
    return Struct_5(global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))))), vec3<bool>(global0.a.c, !(global0.a.c != global3.x), !arg_0.b.x), arg_2), var_0, ~(-(~1i) >> (_wgslsmith_clamp_u32(var_0.a.x, 1u, 19130u) % 32u)), vec4<f32>(global1.x, _wgslsmith_f_op_f32(ceil(1000f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    var var_1 = func_1(global0.a, max(vec3<i32>(_wgslsmith_mult_i32(~(-16207i), u_input.c), abs(~u_input.c), -2147483647i), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 12336i, -2147483647i), vec3<i32>(u_input.a, 32968i, u_input.b)), abs(-2147483647i), 37524i)), any(select(select(var_0.b, vec3<bool>(var_0.c, global3.x, true), vec3<bool>(global0.a.c, true, true)), select(var_0.b, !vec3<bool>(false, var_0.b.x, false), !global0.a.b), false)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, ~(~59250u), u_input.e.x, ~1u), abs(u_input.e)));
    global3 = !var_0.b.xy;
    var var_2 = _wgslsmith_mult_u32(var_1.c.a.x, u_input.e.x) > 36547u;
    global3 = vec2<bool>(-863f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f + var_0.a.x)), func_1(func_1(Struct_1(var_0.a, func_1(Struct_1(global0.a.a, var_1.a.b, var_0.c), vec3<i32>(2147483647i, 0i, u_input.c), var_0.c, u_input.d).b.b, false), vec3<i32>(~0i, firstTrailingBit(u_input.c), u_input.b | var_1.d), !var_0.b.x, u_input.e).c.b, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(58829i, -22965i), 12292i >> (u_input.d.x % 32u), 1i), ~(-vec3<i32>(-2147483647i, 2147483647i, -2147483647i))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), !vec2<bool>(global0.a.b.x, var_0.b.x))), vec4<u32>(~(~26344u), firstLeadingBit(1u), var_1.c.a.x, u_input.d.x ^ ~global0.b.x)).a.b.x);
    var var_3 = Struct_2(global0.a, global2[_wgslsmith_index_u32(~4410u, 22u)]);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.a.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.a.x))) * _wgslsmith_f_op_f32(142f * _wgslsmith_f_op_f32(trunc(-362f)))));
    var_3 = Struct_2(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, global1.x)))), !select(vec3<bool>(true, false, global0.a.c), global0.a.b, var_1.b.b), var_0.c), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(0i, 2049i, var_1.c.c)), -vec3<i32>(11983i, var_1.d, 26910i)), ~firstLeadingBit(vec3<i32>(0i, u_input.c, 42566i))), false, ~(u_input.e ^ vec4<u32>(var_3.b.x, 1u, 71572u, var_3.b.x))).a, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.e.zw, _wgslsmith_mod_vec2_u32(u_input.e.yw, vec2<u32>(59204u, u_input.e.x))), vec2<u32>(var_3.b.x << (u_input.d.x % 32u), _wgslsmith_mod_u32(29814u, 4294967295u))), 44513u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(26685u, 4294967295u, var_1.c.a.x), u_input.d.zzx)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(1i, -1i ^ var_1.c.c, 14014i), ~0u);
}

