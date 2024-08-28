struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<u32, 8> = array<u32, 8>(0u, 80077u, 58241u, 47270u, 62760u, 44240u, 15544u, 31263u);

var<private> global2: Struct_4 = Struct_4(Struct_1(vec3<f32>(-798f, -1023f, 694f), vec2<u32>(31376u, 0u), false));

var<private> global3: Struct_2 = Struct_2(true, Struct_1(vec3<f32>(-179f, -851f, 1008f), vec2<u32>(47748u, 4294967295u), true), vec3<u32>(0u, 20615u, 1u), Struct_1(vec3<f32>(-2031f, -858f, -724f), vec2<u32>(866u, 4294967295u), false), 2147483647i);

var<private> global4: vec3<i32> = vec3<i32>(38415i, -1i, -8722i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<i32> {
    global0 = arg_3.zz;
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1022f, _wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f + -944f) - _wgslsmith_f_op_f32(-global2.a.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -267f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a.x - _wgslsmith_f_op_f32(max(global2.a.a.x, global3.d.a.x)))) * global2.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a.x)) - arg_2.a.x))) * -793f), 487f);
    global0 = vec2<bool>(false, 1000f < var_0.x);
    global0 = !arg_3.zx;
    let var_1 = var_0.zy;
    return min(firstTrailingBit(u_input.c), _wgslsmith_div_vec3_i32(arg_0.xww, vec3<i32>(1i, 16547i, -86378i) ^ vec3<i32>(-global3.e, arg_0.x, global3.e)));
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    let var_0 = global3.b.c;
    let var_1 = global3.e;
    var var_2 = !(!select(vec3<bool>(global2.a.c, all(vec4<bool>(global3.a, global3.a, global0.x, true)), false), select(!vec3<bool>(global2.a.c, true, false), vec3<bool>(true, true, global2.a.c), !vec3<bool>(false, true, global2.a.c)), select(select(vec3<bool>(true, false, global3.a), vec3<bool>(global3.a, true, false), vec3<bool>(false, false, global0.x)), select(vec3<bool>(global2.a.c, global0.x, global2.a.c), vec3<bool>(global0.x, false, true), vec3<bool>(false, global3.a, global0.x)), vec3<bool>(global0.x, false, false))));
    let var_3 = global3.d.b.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(-global3.d.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.d.a.x))) + -1636f) + _wgslsmith_f_op_f32(var_4.x * global3.b.a.x));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = abs(min(u_input.a.xyw, vec3<u32>(global1[_wgslsmith_index_u32(~1u, 8u)], 4294967295u, 1u))) ^ u_input.a.xzx;
    let var_1 = 1i;
    var var_2 = vec3<f32>(global3.d.a.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec3_i32(func_3(vec4<i32>(1i, 10111i, arg_0.e, -42034i), ~global4.zz, global3.d, vec3<bool>(true, true, true)), u_input.c))), _wgslsmith_f_op_f32(func_4(u_input.c)));
    var var_3 = arg_0;
    let var_4 = global0.x;
    return vec4<bool>(all(vec3<bool>(reverseBits(global3.e) < var_1, var_3.e >= ~1i, var_3.a)), false, true, all(vec2<bool>(true, false)));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = !select(vec2<bool>(!(global3.d.b.x > u_input.a.x), select(true, true, all(arg_0))), !func_2(Struct_2(arg_2, Struct_1(global3.b.a, u_input.a.wz, arg_0.x), vec3<u32>(global3.b.b.x, 1u, 4294967295u), global2.a, global4.x)).yx, !select(select(vec2<bool>(false, global3.d.c), arg_0.yw, vec2<bool>(true, arg_0.x)), !arg_0.zx, vec2<bool>(true, false)));
    let var_1 = firstTrailingBit(1u);
    var var_2 = Struct_2(global4.x != countOneBits(firstTrailingBit(global3.e)), global3.d, _wgslsmith_mod_vec3_u32(global3.c, ~u_input.a.xwx) >> (((firstTrailingBit(global3.c) & firstLeadingBit(vec3<u32>(10742u, 10952u, 4294967295u))) << (min(global3.c, u_input.a.xzz & vec3<u32>(41551u, 0u, global3.b.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), global3.b, global3.e);
    global2 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.a) * vec3<f32>(-1087f, _wgslsmith_f_op_f32(var_2.b.a.x * global2.a.a.x), var_2.b.a.x)), ~(countOneBits(u_input.a.xw) & vec2<u32>(3295u, 4294967295u)), -1269f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a.x - 203f))));
    let var_3 = reverseBits(_wgslsmith_div_u32(_wgslsmith_add_u32(reverseBits(_wgslsmith_div_u32(18227u, var_2.d.b.x)), 1u), abs(~_wgslsmith_sub_u32(45287u, 22100u))));
    return global2.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_2 {
    return Struct_2(global2.a.c, func_5(select(vec4<bool>(global0.x, true, 0u < global1[_wgslsmith_index_u32(1u, 8u)], all(arg_0)), select(func_2(Struct_2(true, Struct_1(global2.a.a, vec2<u32>(24317u, global3.c.x), arg_0.x), vec3<u32>(4294967295u, u_input.a.x, 61081u), global2.a, u_input.b.x)), !vec4<bool>(false, global3.a, global0.x, true), select(arg_0.x, arg_0.x, false)), false), firstLeadingBit(max(_wgslsmith_clamp_u32(16553u, 80654u, u_input.a.x), u_input.a.x)), global3.d.c), _wgslsmith_mult_vec3_u32(select(~global3.c << (vec3<u32>(42475u, arg_1.x, 67302u) % vec3<u32>(32u)), max(global3.c, global3.c), arg_2.a.c), firstTrailingBit(~global3.c >> (vec3<u32>(arg_2.a.b.x, arg_1.x, arg_2.a.b.x) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1460f, global2.a.a.x, 1246f)))), vec3<f32>(898f, _wgslsmith_f_op_f32(max(global3.d.a.x, 481f)), 1572f))), global2.a.b, false && func_2(Struct_2(global2.a.c, global2.a, u_input.a.wyz, Struct_1(vec3<f32>(global3.b.a.x, 208f, global3.b.a.x), vec2<u32>(1u, 17346u), false), -2147483647i)).x), -2147483647i & global4.x);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> Struct_3 {
    var var_0 = -9973i;
    var var_1 = ~vec2<i32>(0i, _wgslsmith_div_i32(abs(min(arg_1.e, 25647i)), 2147483647i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2, global3.d.a.x, global0.x)), _wgslsmith_f_op_f32(-arg_2))) - func_5(select(!vec4<bool>(arg_0.x, true, false, false), vec4<bool>(arg_1.b.c, false, false, arg_0.x), select(true, global2.a.c, global3.d.c)), func_5(vec4<bool>(true, false, false, true), global2.a.b.x, true).b.x, true).a));
    let var_3 = -_wgslsmith_mod_i32(1i, arg_1.e);
    var var_4 = u_input.c;
    return Struct_3(~_wgslsmith_mod_vec3_u32(~arg_1.c, u_input.a.zxx));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<bool>) -> bool {
    global2 = Struct_4(Struct_1(global2.a.a, min(~_wgslsmith_div_vec2_u32(vec2<u32>(23702u, 0u), global2.a.b), ~(~global2.a.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.a.a.x)))) < _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_0 = ~u_input.c >> (arg_0.a % vec3<u32>(32u));
    let var_1 = vec3<i32>(-(var_0.x | countOneBits(-25515i)) << (global1[_wgslsmith_index_u32(arg_1.a.b.x, 8u)] % 32u), _wgslsmith_add_i32(global4.x, ~_wgslsmith_add_i32(_wgslsmith_div_i32(-33199i, -47459i), 2147483647i | var_0.x)), abs(firstTrailingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, -29185i, 21979i), vec3<i32>(var_0.x, global3.e, 1i), vec3<bool>(true, false, false)), -u_input.c))));
    var var_2 = vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a.x)) < 329f);
    global4 = _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(-1i, global4.x)), _wgslsmith_sub_i32(1i, 1067i), var_1.x), ~vec3<i32>(countOneBits(global4.x), firstTrailingBit(global4.x) >> (global3.b.b.x % 32u), 15233i));
    return any(vec2<bool>(true, !func_5(vec4<bool>(var_2.x, false, false, arg_1.a.c), u_input.a.x, global2.a.c).c)) & ((all(!vec3<bool>(var_2.x, global3.d.c, false)) | (any(vec4<bool>(true, false, false, var_2.x)) || func_1(vec3<bool>(false, global0.x, arg_1.a.c), vec2<u32>(48020u, global2.a.b.x), Struct_4(Struct_1(global3.d.a, vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(1u, 8u)]), false))).b.c)) && any(func_2(func_1(vec3<bool>(global3.a, true, true), vec2<u32>(arg_0.a.x, 1u), arg_1)).www));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 8>();
    let var_0 = _wgslsmith_add_u32(~global2.a.b.x, _wgslsmith_mult_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(52353u, 31867u, 28883u), ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 43445u, 4294967295u)), ~u_input.a.x), ~global3.b.b.x));
    var var_1 = select(true, !func_7(func_6(select(vec3<bool>(global2.a.c, global2.a.c, false), vec3<bool>(true, false, false), global2.a.c), func_1(vec3<bool>(global2.a.c, global0.x, global3.d.c), global2.a.b, Struct_4(Struct_1(vec3<f32>(1142f, global2.a.a.x, global3.d.a.x), vec2<u32>(28763u, 21617u), global0.x))), _wgslsmith_f_op_f32(-global2.a.a.x), global2.a.a.x), Struct_4(func_5(vec4<bool>(global3.a, global3.b.c, true, global0.x), var_0, global2.a.c)), select(vec2<bool>(global2.a.c, true), vec2<bool>(global2.a.c, global0.x), !vec2<bool>(true, global2.a.c))), global3.d.c);
    var var_2 = func_6(vec3<bool>(global3.e > (global3.e >> (global3.d.b.x % 32u)), all(!(!vec4<bool>(true, false, global2.a.c, global3.b.c))), !(global2.a.a.x >= _wgslsmith_f_op_f32(sign(global3.b.a.x)))), func_1(select(!vec3<bool>(true, global2.a.c, true), vec3<bool>(any(vec2<bool>(global2.a.c, global0.x)), true, global0.x), !global0.x && all(vec3<bool>(global2.a.c, false, false))), global3.b.b, Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.a.a.x, global2.a.a.x, global3.d.a.x), global2.a.a)), ~global3.b.b, func_2(Struct_2(false, global3.d, u_input.a.zzz, global3.d, -2147483647i)).x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(~firstTrailingBit(u_input.c))))), global2.a.a.x);
    global4 = u_input.c;
    let var_3 = vec3<bool>(false, all(!vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true)), func_1(!vec3<bool>(!global3.d.c, global0.x, global0.x), u_input.a.yx, Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(global2.a.a * vec3<f32>(global3.d.a.x, global2.a.a.x, global2.a.a.x)), global2.a.b ^ global2.a.b, global0.x & global2.a.c))).d.c);
    var var_4 = Struct_3(vec3<u32>(~var_2.a.x, 1u, 0u) >> ((firstTrailingBit(u_input.a.ywx) >> (firstTrailingBit(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 8u)], var_0, global3.b.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.a.x))) - global3.b.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-598f - global3.d.a.x)))), _wgslsmith_f_op_f32(floor(global3.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(2356f, global2.a.a.x)), _wgslsmith_f_op_f32(-func_1(var_3, vec2<u32>(var_2.a.x, global3.d.b.x), Struct_4(global2.a)).b.a.x), (global2.a.a.x < global3.d.a.x) | !global2.a.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) + _wgslsmith_f_op_f32(round(-1354f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-613f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(0u, global1[_wgslsmith_index_u32(13716u, 8u)]) << (~vec2<u32>(0u, 1u) % vec2<u32>(32u))) << (select(vec2<u32>(_wgslsmith_mod_u32(global2.a.b.x, 0u), 1u), ~var_2.a.yy, !(var_3.x || false)) % vec2<u32>(32u)), -564f, ~abs(var_0), _wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 0u, 1u, global2.a.b.x)), ~select(u_input.a, vec4<u32>(4294967295u, 15513u, 18954u, var_4.a.x), vec4<bool>(global2.a.c, global3.d.c, global3.b.c, true))) | (~vec4<u32>(1u, 67205u, 1u, global3.d.b.x) | (~vec4<u32>(4294967295u, var_4.a.x, 1u, global1[_wgslsmith_index_u32(global3.b.b.x, 8u)]) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 361u, global3.c.x, 78463u)) % vec4<u32>(32u)))), abs(~abs(abs(vec4<i32>(u_input.b.x, global4.x, u_input.b.x, global3.e)))));
}

