struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(579f, 490f);

var<private> global1: array<f32, 31>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 191f) * arg_3.yy), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.x, global0.x), arg_3.zz, arg_1))))), vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-943f)) * 986f)), !select(arg_0.d.c.ww, arg_0.d.c.wx, all(vec2<bool>(true, arg_0.d.c.x))))) * _wgslsmith_f_op_vec2_f32(arg_3.zz - _wgslsmith_f_op_vec2_f32(-arg_3.zy)));
    var var_0 = arg_0.a.b;
    var var_1 = _wgslsmith_f_op_f32(-arg_3.x);
    global1 = array<f32, 31>();
    var var_2 = _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_2, 31u)]));
    return ~8286u;
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    let var_0 = (global1[_wgslsmith_index_u32(func_3(Struct_3(Struct_2(vec4<i32>(2147483647i, -12510i, -2147483647i, -25030i), Struct_1(vec2<i32>(1i, -41104i)), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(2147483647i, 0i)), true, Struct_2(vec4<i32>(2147483647i, 0i, 0i, 0i), Struct_1(vec2<i32>(1i, -14960i)), vec4<bool>(false, true, false, false)), min(104643i, 0i)), true, 85930u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, global1[_wgslsmith_index_u32(41754u, 31u)], -1335f))), 31u)] >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 31u)] - arg_0.x))))) & true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~u_input.a, 31u)])) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(u_input.a, 4294967295u), 31u)] * global1[_wgslsmith_index_u32(u_input.a, 31u)])) + _wgslsmith_f_op_f32(abs(-1001f))));
    let var_2 = Struct_1(vec2<i32>(1i, 1i) << (~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 18473u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)));
    let var_3 = Struct_2(vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_div_i32(var_2.a.x, 0i), ~var_2.a.x)), min(_wgslsmith_sub_i32(-var_2.a.x, ~var_2.a.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(-34513i, -19871i), -2147483647i)), select(_wgslsmith_div_i32(var_2.a.x, ~9803i), -11071i, all(vec3<bool>(var_0, false, false)) || false), var_2.a.x), var_2, !vec4<bool>(_wgslsmith_f_op_f32(-global0.x) > global1[_wgslsmith_index_u32(u_input.a, 31u)], true == var_0, !(401f > global0.x), !(var_0 | false)));
    global1 = array<f32, 31>();
    return 0u;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1454f, _wgslsmith_f_op_f32(f32(-1f) * -1140f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1007f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global1[_wgslsmith_index_u32(45444u, 31u)]), _wgslsmith_div_f32(-606f, global0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1154f + global1[_wgslsmith_index_u32(u_input.a, 31u)]))))));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, ~arg_0.x), 31u)];
    var var_1 = select(arg_0.x >> (select(min(u_input.a, reverseBits(u_input.a)), ~31407u, !all(vec2<bool>(true, false))) % 32u), (~countOneBits(0u) << (_wgslsmith_dot_vec2_u32(arg_0.zy, ~arg_0.yy) % 32u)) ^ (_wgslsmith_dot_vec2_u32(arg_0.zx, firstLeadingBit(arg_0.yz)) >> (arg_0.x % 32u)), all(vec2<bool>(!(arg_1 < arg_1), all(vec3<bool>(false, false, true)) || all(vec3<bool>(true, true, false)))));
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.a), arg_0.xy << (abs(min(_wgslsmith_mod_vec2_u32(arg_0.zz, arg_0.xx), arg_0.zz)) % vec2<u32>(32u)));
    global1 = array<f32, 31>();
    return Struct_2(vec4<i32>(abs(-3289i), -63803i, _wgslsmith_mod_i32(firstTrailingBit(abs(arg_1)), firstLeadingBit(~(-1i))), -2147483647i), Struct_1(firstTrailingBit(vec2<i32>(~arg_1, ~1i))), vec4<bool>(false, any(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), all(vec4<bool>(false, true, false, false)))), true, !any(vec4<bool>(true, false, false, true))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_3(func_4(vec3<u32>(11228u, 0u, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(156f, -1575f, global1[_wgslsmith_index_u32(1u, 31u)]) - vec3<f32>(1283f, global1[_wgslsmith_index_u32(36224u, 31u)], 1000f)))), 51967i), func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a, 1u), ~u_input.a, ~28920u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 101369u, u_input.a) & vec3<u32>(u_input.a, 1u, 1u), select(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(80501u, u_input.a, 20677u), false))), countOneBits(45761i >> (u_input.a % 32u)) >> (_wgslsmith_sub_u32(reverseBits(u_input.a), 79220u) % 32u)).b, !(u_input.a < 39195u), Struct_2(vec4<i32>(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -14831i, -8958i, -1i), -vec4<i32>(2082i, -24377i, 46664i, arg_0)), ~func_4(vec3<u32>(8357u, u_input.a, 117431u), 1i).b.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, 2147483647i, -7232i) & vec3<i32>(2147483647i, 21615i, arg_0), vec3<i32>(-20142i, arg_1.a.x, 1i))), Struct_1(arg_1.a), vec4<bool>(true, false, true, arg_0 != -43781i)), arg_1.a.x);
    var var_1 = Struct_2(var_0.a.a, func_4(_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 1u, 4294967295u), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), false), vec3<u32>(firstTrailingBit(0u), _wgslsmith_mult_u32(u_input.a, u_input.a), ~0u)), select((i32(-1i) * -21927i) << (~u_input.a % 32u), _wgslsmith_dot_vec2_i32(arg_1.a, vec2<i32>(var_0.b.a.x, arg_1.a.x) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), var_0.c)).b, !func_4(vec3<u32>(u_input.a, ~0u, u_input.a), -(~(-11850i))).c);
    let var_2 = Struct_3(Struct_2(-_wgslsmith_div_vec4_i32(var_1.a, -var_0.d.a), arg_1, var_0.d.c), func_4(vec3<u32>(1u, 27121u, u_input.a), abs(arg_0 | var_0.a.b.a.x)).b, true, Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, var_0.d.b.a.x, arg_0, 1i), vec4<i32>(var_0.b.a.x, -2147483647i, -1i, 45713i)), ~39738i, reverseBits(var_1.b.a.x), var_1.a.x), firstTrailingBit(var_1.a)), Struct_1(~vec2<i32>(arg_0, var_0.d.a.x)), vec4<bool>(any(!var_1.c.wxy), global1[_wgslsmith_index_u32(u_input.a, 31u)] <= _wgslsmith_f_op_f32(floor(1344f)), any(func_4(vec3<u32>(u_input.a, u_input.a, u_input.a), arg_1.a.x).c.wz), arg_0 <= ~15548i)), ~(-14080i) | (_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_1.b.a, vec2<i32>(-3784i, var_1.b.a.x)), func_4(vec3<u32>(u_input.a, u_input.a, 0u), var_0.e).a.x) << (u_input.a % 32u)));
    let var_3 = Struct_1(abs(arg_1.a));
    var var_4 = ~(~vec2<u32>(4294967295u & (u_input.a & 39941u), ~select(u_input.a, 4294967295u, false)));
    return 14807u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(_wgslsmith_mod_u32(~35654u, func_1(1i, Struct_1(vec2<i32>(-2147483647i, -2147483647i))))) < ~u_input.a;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 31u)]))))) * _wgslsmith_f_op_f32(-global0.x)), -717f);
    let var_1 = select(select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), select(func_4(~vec3<u32>(29784u, 55212u, 44096u), i32(-1i) * -9677i).c.wy, select(vec2<bool>(true, true), !vec2<bool>(true, var_0), u_input.a > 45314u), any(select(vec2<bool>(true, false), vec2<bool>(false, var_0), vec2<bool>(false, false))))), select(func_4(vec3<u32>(~u_input.a, _wgslsmith_div_u32(4294967295u, 9475u), 4294967295u), 1i).c.wx, !vec2<bool>(all(vec4<bool>(true, var_0, var_0, true)), true), all(func_4(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 31109u, u_input.a) % vec3<u32>(32u)), ~2147483647i).c.wy)), !vec2<bool>(all(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, var_0, true, var_0), true)), var_0));
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1938f), -1540f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, -247f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2173f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18389u, u_input.a, 19824u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 31u)]))));
    let var_2 = _wgslsmith_div_u32(~(~(~1u)), ~u_input.a);
    global1 = array<f32, 31>();
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2, 31u)] + 325f), 607f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(96782u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global0.x))))), select(vec2<bool>(true, false), var_1, var_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-542f, global1[_wgslsmith_index_u32(21081u, 31u)]), vec2<f32>(global0.x, -796f), vec2<bool>(var_0, true)))))))));
    var var_3 = Struct_1(~vec2<i32>(~(-10011i), reverseBits(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(1262f, countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1784u), abs(vec2<u32>(var_2, 4294967295u)))) >> (select(select(~vec2<u32>(31027u, var_2), select(vec2<u32>(27430u, u_input.a), vec2<u32>(var_2, 14101u), false), select(var_1, vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true))), ~(~vec2<u32>(u_input.a, 71841u)), true) % vec2<u32>(32u)));
}

