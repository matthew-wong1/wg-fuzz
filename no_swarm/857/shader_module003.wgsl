struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global1: vec4<f32>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_3 = Struct_3(i32(-2147483648), false, vec2<f32>(-867f, 1320f), vec3<u32>(76254u, 1u, 0u), vec2<bool>(true, true));

var<private> global4: vec3<i32> = vec3<i32>(2147483647i, -10094i, -46983i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.xwy), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-683f, 495f, global3.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.zzx, vec3<f32>(arg_0.a, global1.x, global1.x)) + vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(sign(-391f)), global3.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global1.xxw - vec3<f32>(arg_0.a, global3.c.x, -602f)))))));
    let var_1 = Struct_2(arg_2.a, arg_2.b);
    return !select(true, !select(arg_3.e.x, arg_3.e.x, global3.e.x) && true, any(!global0[_wgslsmith_index_u32(4294967295u, 11u)]));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    global2 = vec3<u32>(_wgslsmith_add_u32((_wgslsmith_mult_u32(u_input.c.x, 139076u) & 1u) ^ global2.x, _wgslsmith_mod_u32(min(reverseBits(1u), _wgslsmith_sub_u32(global3.d.x, global2.x)), ~87847u)), 4468u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~arg_0.wzz >> (~arg_0.yxy % vec3<u32>(32u)), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, global3.d.x, 13340u), arg_0.yxz))), arg_0.wxx));
    var var_0 = select(!vec3<bool>(false, all(select(vec4<bool>(global3.b, global3.e.x, false, false), vec4<bool>(true, true, false, global3.b), global3.b)), true || (global3.b & true)), select(vec3<bool>(true, true, global3.b), !global0[_wgslsmith_index_u32(~33699u, 11u)], false), true);
    global2 = firstTrailingBit(arg_0.wzy) << ((vec3<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(1888u, global2.x)), 4786u, _wgslsmith_div_u32(reverseBits(9807u), ~global3.d.x)) & ~(~vec3<u32>(global3.d.x, arg_0.x, arg_0.x))) % vec3<u32>(32u));
    let var_1 = Struct_3(_wgslsmith_mod_i32(1i, 0i ^ (global4.x & 2147483647i)) << (~3569u % 32u), !func_3(Struct_1(-1362f), (vec3<i32>(global3.a, global3.a, global3.a) ^ vec3<i32>(global3.a, u_input.d, u_input.a)) << (max(global3.d, vec3<u32>(1u, global3.d.x, 11148u)) % vec3<u32>(32u)), Struct_2(u_input.c.x, arg_0), Struct_3(global4.x & 39139i, true, global1.zx, global3.d, global3.e)), vec2<f32>(_wgslsmith_div_f32(-151f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, 1190f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1307f - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -661f))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, arg_0.x, 25090u), ~vec3<u32>(arg_0.x, 0u, global2.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.x, arg_0.x, 0u) ^ vec4<u32>(global3.d.x, global3.d.x, u_input.b.x, 56279u), vec4<u32>(50885u, 0u, 45001u, 1u) << (arg_0 % vec4<u32>(32u))), select(_wgslsmith_sub_u32(global2.x, 4294967295u), global3.d.x ^ 43377u, true), abs(global2.x & 0u))), vec2<bool>(var_0.x, any(var_0.zy)));
    global2 = max(~arg_0.zwz, abs(_wgslsmith_sub_vec3_u32(global3.d, var_1.d >> (vec3<u32>(global3.d.x, global2.x, global3.d.x) % vec3<u32>(32u))))) | _wgslsmith_sub_vec3_u32(select(select(vec3<u32>(1u, 14987u, arg_0.x), countOneBits(arg_0.wxy), !vec3<bool>(true, true, var_1.e.x)), global3.d >> (reverseBits(vec3<u32>(arg_0.x, 4294967295u, 29560u)) % vec3<u32>(32u)), vec3<bool>(true, true, global2.x <= 4294967295u)), firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.d.x, u_input.c.x, 4294967295u), global3.d, vec3<u32>(7503u, var_1.d.x, 1647u)), reverseBits(arg_0.xxw))));
    return global3.a;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec4<i32>(~global3.a << (~_wgslsmith_sub_u32(~0u, arg_1.x) % 32u), abs(arg_3.a), 2147483647i, 0i);
    global0 = array<vec3<bool>, 11>();
    var var_1 = !(!vec4<bool>(false, min(94789u, arg_1.x) != min(global2.x, 4294967295u), global3.e.x, arg_3.b & global3.e.x));
    var var_2 = Struct_3(var_0.x, !all(!(!var_1.zxw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.zw)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_3.c)))), ~max(~vec3<u32>(22176u, 18522u, arg_1.x), global3.d), vec2<bool>(!(!(!arg_3.e.x)), func_3(Struct_1(_wgslsmith_f_op_f32(abs(931f))), firstTrailingBit(reverseBits(var_0.zwz)), Struct_2(global2.x, vec4<u32>(13885u, global3.d.x, 2155u, 0u) << (vec4<u32>(11018u, 1u, 68315u, 4294967295u) % vec4<u32>(32u))), Struct_3(reverseBits(16660i), !arg_3.e.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1013f, -308f)), ~arg_3.d, var_1.yz))));
    var var_3 = vec3<u32>(~max(u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.zy, vec2<u32>(1u, var_2.d.x)), vec2<u32>(var_2.d.x, arg_1.x))), ~(~(~18113u)), arg_3.d.x);
    return Struct_1(global1.x);
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> u32 {
    var var_0 = func_4(_wgslsmith_dot_vec4_i32(~select(-vec4<i32>(global3.a, global4.x, global4.x, global4.x), vec4<i32>(0i, -2147483647i, global4.x, u_input.d), true), vec4<i32>(_wgslsmith_mult_i32(global4.x, func_2(vec4<u32>(4294967295u, u_input.b.x, 1u, 53309u))), u_input.d, ~_wgslsmith_mult_i32(-2147483647i, global4.x), _wgslsmith_sub_i32(u_input.d, global4.x) >> (4294967295u % 32u))), reverseBits(_wgslsmith_div_vec3_u32(countOneBits(abs(arg_0.d)), ~arg_0.d)), ~31827i, Struct_3(-1i, !(arg_0.a < _wgslsmith_add_i32(global3.a, global4.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)), min(vec3<u32>(global2.x, firstLeadingBit(u_input.b.x), ~global3.d.x), arg_0.d), vec2<bool>(true, arg_1)));
    var_0 = func_4(global3.a, ~((select(arg_0.d, global3.d, true) | vec3<u32>(23745u, arg_0.d.x, 47575u)) ^ vec3<u32>(global2.x | global2.x, firstTrailingBit(global3.d.x), arg_0.d.x ^ 0u)), -(~(-25864i) >> ((_wgslsmith_mod_u32(69402u, global2.x) | _wgslsmith_mod_u32(u_input.b.x, global3.d.x)) % 32u)), Struct_3(global3.a, false, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.x, 998f) - vec2<f32>(var_0.a, -833f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1764f, global3.c.x)))))), _wgslsmith_mult_vec3_u32(arg_0.d | global3.d, arg_0.d) | (arg_0.d ^ ~vec3<u32>(global2.x, global3.d.x, u_input.b.x)), select(vec2<bool>(any(global0[_wgslsmith_index_u32(global3.d.x, 11u)]), true), select(vec2<bool>(true, false), arg_0.e, any(vec4<bool>(true, true, true, arg_1))), global3.c.x != _wgslsmith_f_op_f32(exp2(global3.c.x)))));
    var var_1 = countOneBits(-_wgslsmith_sub_vec3_i32(min(max(vec3<i32>(1i, global3.a, 1i), vec3<i32>(2147483647i, u_input.a, global3.a)), vec3<i32>(-14595i, global3.a, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -3172i, arg_0.a) << (arg_0.d % vec3<u32>(32u)), countOneBits(vec3<i32>(-74989i, u_input.d, 0i)))));
    global3 = Struct_3(max(func_2(~(~vec4<u32>(4294967295u, 4294967295u, 20488u, 34226u))), abs(global3.a)), arg_0.b, _wgslsmith_f_op_vec2_f32(max(global1.zz, arg_0.c)), arg_0.d, arg_0.e);
    global3 = Struct_3(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(global3.a, -19104i, arg_0.a, global4.x) | vec4<i32>(-1i, -11685i, global3.a, 0i), -vec4<i32>(global4.x, var_1.x, arg_0.a, -19377i), vec4<bool>(false, global3.b, arg_1, arg_1)), -firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, arg_0.a, 34044i))), _wgslsmith_mod_i32(arg_0.a | min(1i, 12495i), -58954i)), !(global3.e.x && arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.c, arg_0.c)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global3.c)))))), ~((vec3<u32>(global2.x, global2.x, global2.x) >> (~vec3<u32>(arg_0.d.x, arg_0.d.x, 4813u) % vec3<u32>(32u))) << (((arg_0.d >> (global3.d % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, global2.x), vec3<u32>(global3.d.x, global3.d.x, 15690u))) % vec3<u32>(32u))), arg_0.e);
    return ~_wgslsmith_sub_u32(~u_input.b.x, ~min(4294967295u, 39152u)) | ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(26622u, 4294967295u >> (arg_0.d.x % 32u), 1211u), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~max(vec4<u32>(global2.x, 25107u, global3.d.x, u_input.c.x) & vec4<u32>(global2.x, 63399u, global2.x, 44372u), ~vec4<u32>(4294967295u, global3.d.x, global3.d.x, 41088u)), vec4<u32>(global2.x << (_wgslsmith_clamp_u32(0u, global2.x, 1u) % 32u), global2.x, _wgslsmith_dot_vec3_u32(global3.d >> (vec3<u32>(1u, global2.x, u_input.b.x) % vec3<u32>(32u)), ~global3.d), ~func_1(Struct_3(u_input.a, false, vec2<f32>(-1000f, global1.x), vec3<u32>(global2.x, global2.x, global3.d.x), vec2<bool>(true, false)), false))), ~(vec4<u32>(50801u, u_input.b.x, select(u_input.c.x, 40917u, true), ~global2.x) << (~(~vec4<u32>(global2.x, global3.d.x, 4294967295u, u_input.b.x)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-40205i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1091f * 582f), _wgslsmith_f_op_f32(-global1.x), -440f, _wgslsmith_f_op_f32(round(global1.x))) + vec4<f32>(_wgslsmith_div_f32(514f, global3.c.x), _wgslsmith_f_op_f32(global3.c.x - global3.c.x), _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(-global1.x))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.c.x))), global3.c.x, -987f, _wgslsmith_f_op_f32(-1100f + _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_dot_vec3_u32(global3.d, reverseBits(global3.d) >> (~(~vec3<u32>(437u, global2.x, global2.x)) % vec3<u32>(32u))), _wgslsmith_div_u32(var_0.x, 62171u));
}

