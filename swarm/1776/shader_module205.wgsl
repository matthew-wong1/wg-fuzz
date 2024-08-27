struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-944f, 1276f, 818f, 952f, -1286f, 1448f, 2203f, -1987f, -781f, 1000f, -1000f, -1187f, 413f, -1678f, -461f, -607f, -474f, -1629f, -1186f, 573f, -680f, -448f, 1083f, -1807f, 746f, 164f, 612f);

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 4294967295u), -983f, vec4<i32>(-10738i, -24278i, 2147483647i, i32(-2147483648)));

var<private> global3: array<vec3<f32>, 19>;

var<private> global4: array<bool, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = global1.d;
    var var_1 = vec2<i32>(~(global2.c.x & -52198i), -global2.c.x >> (4294967295u % 32u));
    let var_2 = Struct_5(Struct_1(vec2<u32>(727u & _wgslsmith_mod_u32(1u, global2.a.x), 1u), 481f, abs(vec4<i32>(select(-99056i, -30595i, global4[_wgslsmith_index_u32(global2.a.x, 16u)]), 1i, 46167i, _wgslsmith_clamp_i32(var_0.c.x, global1.d.c.x, var_1.x)))), all(!vec4<bool>(true, true, global4[_wgslsmith_index_u32(abs(0u), 16u)], var_0.c.x >= global2.c.x)), Struct_3(global1.d, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-160f, global0[_wgslsmith_index_u32(arg_0.a.a.a.x, 27u)], arg_0.a.a.b))), _wgslsmith_sub_vec3_u32(vec3<u32>(102498u, global1.b.x, 1u) << (vec3<u32>(var_0.a.x, 0u, 4294967295u) % vec3<u32>(32u)), ~u_input.b.xzw), 4294967295u, Struct_1(global2.a, -768f, vec4<i32>(-2147483647i, -1i, var_1.x, 2147483647i)), vec3<f32>(arg_1.x, arg_0.a.a.b, -927f)), arg_0.a.a.c.wyx));
    let var_3 = countOneBits(~(~(arg_0.a.b.c >> (var_0.a.x % 32u)))) ^ 4294967295u;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.a.b), _wgslsmith_f_op_f32(floor(-397f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(261f, arg_1.x) - arg_1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(-392f + -924f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.b.d.b, var_2.c.b.e.x)) + global0[_wgslsmith_index_u32(arg_0.a.b.c, 27u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 148f) - _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 27u)], -943f)))) * arg_0.a.b.a));
    return vec3<bool>(arg_0.b.x, !(_wgslsmith_dot_vec3_i32(vec3<i32>(-10588i, global2.c.x, 31438i), -vec3<i32>(u_input.c, global2.c.x, var_1.x)) < -2147483647i), arg_0.b.x == !all(vec4<bool>(global4[_wgslsmith_index_u32(1u, 16u)], var_2.b, true, false)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32) -> Struct_3 {
    global3 = array<vec3<f32>, 19>();
    let var_0 = any(select(!func_3(Struct_4(arg_1.c, vec2<bool>(false, true), arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, arg_0.c.a.b))), vec3<bool>(false, true, false), false));
    let var_1 = arg_1;
    var var_2 = (-vec3<i32>(-59668i, -51859i, -arg_2) ^ ~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.a.c.yzw, vec3<i32>(arg_2, -2147483647i, -50949i)), _wgslsmith_mod_vec3_i32(global2.c.wzz, vec3<i32>(arg_1.a.c.x, -2147483647i, 0i)))) & _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1.c.c & -global2.c.zyz, _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i, -38127i), vec3<i32>(arg_1.c.a.c.x, 1i, 0i) & vec3<i32>(1i, arg_1.c.a.c.x, -1i), select(arg_1.c.b.d.c.zzz, arg_1.c.a.c.zww, arg_0.b)), firstTrailingBit(_wgslsmith_add_vec3_i32(global1.d.c.zwx, vec3<i32>(var_1.c.c.x, 22238i, var_1.c.a.c.x)))), vec3<i32>(min(global2.c.x, arg_2) >> (_wgslsmith_mod_u32(39180u, 4294967295u) % 32u), global2.c.x, arg_2), arg_0.a.c.xwx);
    var var_3 = Struct_1(firstTrailingBit(global1.b.xx) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, 145033u), 2278u), arg_0.c.a.a) % vec2<u32>(32u)), -946f, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.c.x, arg_0.c.c.x, 1i, 1i), countOneBits(vec4<i32>(arg_2, -2147483647i, 13093i, arg_0.c.c.x))), global1.d.c) & min(vec4<i32>(_wgslsmith_div_i32(var_1.a.c.x, arg_1.c.c.x), ~arg_1.a.c.x, global2.c.x, _wgslsmith_mod_i32(1i, -35649i)), -(~vec4<i32>(9976i, 1i, -1i, -31706i))));
    return arg_1.c;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: Struct_3) -> Struct_5 {
    let var_0 = vec2<bool>(all(vec4<bool>(false, ~global2.a.x < arg_3.b.c, !(1i != u_input.c), any(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_2.b)))), true);
    global2 = Struct_1(vec2<u32>(1u, _wgslsmith_mult_u32(global1.b.x, global2.a.x & _wgslsmith_add_u32(21952u, 10078u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1070f)))))), select(-vec4<i32>(~arg_3.b.d.c.x, ~global2.c.x, -1i, global1.d.c.x), vec4<i32>(arg_2.a.c.x & arg_3.a.c.x, i32(-1i) * -arg_2.c.a.c.x, global2.c.x, 12523i << (~global1.d.a.x % 32u)), select(vec4<bool>(!var_0.x, true, true, any(vec4<bool>(true, false, arg_0, false))), !select(vec4<bool>(arg_2.b, false, true, arg_2.b), vec4<bool>(false, true, global4[_wgslsmith_index_u32(arg_2.a.a.x, 16u)], false), true), vec4<bool>(false, true, true, false))));
    let var_1 = arg_3;
    var var_2 = ~(_wgslsmith_mod_u32(60400u, var_1.a.a.x) & ~66903u);
    global2 = Struct_1(arg_2.a.a ^ ~(var_1.b.b.zz | max(global1.b.yy, global2.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1.x)))), arg_3.b.d.c);
    return arg_2;
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> vec3<u32> {
    var var_0 = -20017i;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_2(Struct_5(func_4(arg_1.b, vec2<f32>(global2.b, global2.b), Struct_5(global1.d, arg_1.b, arg_1.c), Struct_3(Struct_1(vec2<u32>(1u, 4294967295u), -103f, arg_1.c.a.c), arg_1.c.b, vec3<i32>(-33466i, -16593i, arg_1.a.c.x))).c.b.d, true, func_2(arg_1, arg_1, 0i)), arg_1, func_4(!arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, -860f) * global1.a.zy), arg_1, arg_1.c).c.a.c.x).b.a - vec3<f32>(global2.b, -611f, 716f)), vec3<u32>(u_input.a.x, arg_1.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, 19993u), ~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, global1.b.x, global1.d.a.x), vec3<u32>(21144u, global2.a.x, u_input.b.x)), arg_1.c.a.a.x & 1u), vec4<u32>(~4354u, ~1u, abs(96707u), 5449u))), select((~global2.a.x >> (arg_1.c.b.c % 32u)) >> (max(~arg_1.c.a.a.x, reverseBits(14730u)) % 32u), _wgslsmith_clamp_u32(75888u, ~_wgslsmith_mult_u32(4294967295u, 0u), firstTrailingBit(arg_1.c.a.a.x)), true | select(false, func_4(true, vec2<f32>(1219f, arg_1.c.b.a.x), arg_1, arg_1.c).b, true)), func_4(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 540f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global2.a.x, 27u)], -126f))))), Struct_5(func_4(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1107f, 1119f)), arg_1, func_2(Struct_5(arg_1.a, true, Struct_3(Struct_1(global1.d.a, -792f, vec4<i32>(arg_1.c.a.c.x, global2.c.x, -2147483647i, global1.d.c.x)), Struct_2(vec3<f32>(global2.b, global1.a.x, 213f), vec3<u32>(2114u, 0u, global2.a.x), 0u, Struct_1(vec2<u32>(4294967295u, 4294967295u), arg_1.c.b.d.b, global2.c), vec3<f32>(global1.e.x, -1659f, global1.e.x)), vec3<i32>(41130i, arg_1.c.a.c.x, 2147483647i))), arg_1, global2.c.x)).a, !(!arg_0), Struct_3(arg_1.a, arg_1.c.b, -vec3<i32>(1i, u_input.c, arg_1.a.c.x))), func_4(false, arg_1.c.b.a.xy, func_4(arg_1.b, vec2<f32>(-1018f, global0[_wgslsmith_index_u32(0u, 27u)]), func_4(false, arg_1.c.b.a.zy, Struct_5(global1.d, arg_1.b, arg_1.c), Struct_3(Struct_1(vec2<u32>(global1.c, 45966u), global2.b, global1.d.c), arg_1.c.b, vec3<i32>(global1.d.c.x, global1.d.c.x, global2.c.x))), arg_1.c), arg_1.c).c).c.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(51793u, 1u), 27u)]) * arg_1.c.b.e.x), 617f, _wgslsmith_f_op_f32(step(arg_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(273f * -521f))))));
    global4 = array<bool, 16>();
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u >> (arg_1.c.a.a.x % 32u), var_1.b.x, u_input.b.x, ~(func_4(arg_1.b, vec2<f32>(-1344f, 1034f), Struct_5(arg_1.a, arg_1.b, Struct_3(Struct_1(vec2<u32>(global2.a.x, 9116u), global0[_wgslsmith_index_u32(arg_1.c.a.a.x, 27u)], vec4<i32>(0i, -1i, arg_1.a.c.x, 1i)), Struct_2(var_1.a, vec3<u32>(var_1.b.x, u_input.a.x, u_input.a.x), 30866u, Struct_1(vec2<u32>(0u, 55444u), -926f, vec4<i32>(arg_1.c.c.x, 4410i, 0i, u_input.c)), vec3<f32>(2408f, var_1.d.b, global0[_wgslsmith_index_u32(u_input.b.x, 27u)])), vec3<i32>(-44844i, 0i, -14742i))), Struct_3(arg_1.c.a, var_1, vec3<i32>(u_input.c, global2.c.x, global1.d.c.x))).c.b.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), vec4<u32>(0u, global1.b.x, arg_1.a.a.x, 1u)) % 32u))), u_input.b);
    var var_3 = select(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(23612i, 14654i), vec2<i32>(33079i, 8959i))), ~global1.d.c.zx), vec2<i32>(_wgslsmith_sub_i32(1i, 694i), global1.d.c.x) | global1.d.c.xx, true) & ~vec2<i32>(_wgslsmith_sub_i32(func_2(Struct_5(arg_1.c.b.d, arg_0, Struct_3(arg_1.a, Struct_2(vec3<f32>(global2.b, global2.b, var_1.a.x), global1.b, 8307u, arg_1.a, vec3<f32>(211f, -297f, arg_1.c.a.b)), vec3<i32>(-1i, var_1.d.c.x, 0i))), Struct_5(var_1.d, global4[_wgslsmith_index_u32(31061u, 16u)], arg_1.c), arg_1.c.c.x).b.d.c.x, -global1.d.c.x), -(i32(-1i) * -2147483647i));
    return vec3<u32>(var_1.b.x, 1u, ~_wgslsmith_mod_u32(global2.a.x, ~global1.c));
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, -1000f, global1.d.b) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)] + -765f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 27u)] - 238f))), _wgslsmith_f_op_f32(sign(665f)), global2.b)), func_5((-2147483647i > u_input.c) && (true & all(vec4<bool>(global4[_wgslsmith_index_u32(global2.a.x, 16u)], global4[_wgslsmith_index_u32(global2.a.x, 16u)], global4[_wgslsmith_index_u32(u_input.b.x, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)]))), func_4(false, global1.e.zx, Struct_5(Struct_1(global1.d.a, 433f, vec4<i32>(u_input.c, arg_0.x, -22582i, 2147483647i)), true, Struct_3(Struct_1(global1.b.xy, global1.e.x, vec4<i32>(0i, 1i, -57905i, 39411i)), Struct_2(global1.e, vec3<u32>(u_input.a.x, global2.a.x, 0u), global1.b.x, global1.d, vec3<f32>(1289f, global2.b, -1021f)), vec3<i32>(u_input.c, u_input.c, -1i))), func_2(Struct_5(Struct_1(vec2<u32>(492u, 0u), -297f, vec4<i32>(-2147483647i, 14248i, 2147483647i, -1i)), global4[_wgslsmith_index_u32(global1.c, 16u)], Struct_3(Struct_1(vec2<u32>(30295u, global1.d.a.x), global2.b, vec4<i32>(-1i, -1i, -28920i, 53802i)), Struct_2(vec3<f32>(global1.e.x, 428f, -648f), u_input.b.yxw, global2.a.x, global1.d, global3[_wgslsmith_index_u32(14131u, 19u)]), vec3<i32>(45694i, global2.c.x, global2.c.x))), Struct_5(global1.d, true, Struct_3(global1.d, Struct_2(global1.a, vec3<u32>(global1.c, 1u, global2.a.x), global2.a.x, global1.d, global3[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec3<i32>(global1.d.c.x, arg_0.x, 15051i))), global1.d.c.x))), u_input.b.x, global1.d, _wgslsmith_div_vec3_f32(global1.e, _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(global1.b.x, 19u)])));
    global4 = array<bool, 16>();
    global2 = global1.d;
    let var_1 = -1i;
    let var_2 = select(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(u_input.b.zx >> (global2.a % vec2<u32>(32u))) ^ vec2<u32>(5773u, ~75595u), global2.a), 16u)], func_3(Struct_4(func_4(!global4[_wgslsmith_index_u32(var_0.d.a.x, 16u)], global1.a.yy, Struct_5(var_0.d, true, Struct_3(Struct_1(vec2<u32>(4294967295u, 0u), global0[_wgslsmith_index_u32(1u, 27u)], var_0.d.c), Struct_2(global3[_wgslsmith_index_u32(var_0.c, 19u)], vec3<u32>(global1.c, 33619u, 4294967295u), 0u, global1.d, global1.a), global1.d.c.zyw)), Struct_3(var_0.d, Struct_2(global3[_wgslsmith_index_u32(global1.c, 19u)], vec3<u32>(var_0.d.a.x, u_input.a.x, global2.a.x), 1u, global1.d, vec3<f32>(var_0.d.b, 796f, 339f)), var_0.d.c.zyz)).c, !(!vec2<bool>(global4[_wgslsmith_index_u32(1u, 16u)], false)), abs(~arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1020f, global1.a.x)))))).x, global4[_wgslsmith_index_u32(98076u, 16u)]);
    return Struct_3(var_0.d, Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-587f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2.a.x, 27u)], var_0.d.b), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 27u)], 225f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(global2.b, global1.d.b, 1608f))))), vec3<u32>(min(abs(4294967295u), var_0.b.x), 1484u, _wgslsmith_dot_vec4_u32(~u_input.b, u_input.b)), ~var_0.d.a.x, var_0.d, vec3<f32>(_wgslsmith_f_op_f32(1000f - -335f), _wgslsmith_f_op_f32(sign(-816f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.d.b - global1.a.x))))), abs(_wgslsmith_mod_vec3_i32(global2.c.yyx >> (vec3<u32>(global2.a.x, 103707u, 0u) % vec3<u32>(32u)), vec3<i32>(func_4(true, vec2<f32>(830f, 1166f), Struct_5(var_0.d, true, Struct_3(global1.d, Struct_2(global3[_wgslsmith_index_u32(global1.c, 19u)], var_0.b, global2.a.x, global1.d, global3[_wgslsmith_index_u32(39353u, 19u)]), global2.c.xyz)), Struct_3(global1.d, Struct_2(global3[_wgslsmith_index_u32(59517u, 19u)], var_0.b, global1.b.x, Struct_1(vec2<u32>(1u, var_0.c), global1.e.x, var_0.d.c), global1.e), vec3<i32>(arg_0.x, u_input.c, u_input.c))).a.c.x, -36265i, _wgslsmith_add_i32(var_0.d.c.x, -41311i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.d;
    global4 = array<bool, 16>();
    let var_0 = u_input.b.zzy;
    let var_1 = func_1(global2.c >> (vec4<u32>(~1u, 12320u, var_0.x & 0u, countOneBits(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))) % vec4<u32>(32u)));
    var var_2 = func_2(func_4(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(global1.d.c.x, global2.c.x, -1i), 1i) < -abs(-1i), _wgslsmith_f_op_vec2_f32(global1.a.zy * vec2<f32>(-2069f, _wgslsmith_f_op_f32(round(414f)))), Struct_5(func_1(vec4<i32>(global1.d.c.x, var_1.a.c.x, 1i, global2.c.x)).a, global4[_wgslsmith_index_u32(~0u, 16u)] && global4[_wgslsmith_index_u32(func_4(false, global1.a.yz, Struct_5(Struct_1(var_0.zz, global0[_wgslsmith_index_u32(1u, 27u)], vec4<i32>(7019i, global1.d.c.x, 42104i, global2.c.x)), global4[_wgslsmith_index_u32(22966u, 16u)], Struct_3(Struct_1(var_1.a.a, global2.b, vec4<i32>(-2147483647i, -51643i, -3011i, global2.c.x)), var_1.b, vec3<i32>(2147483647i, 17391i, 11030i))), Struct_3(Struct_1(global1.d.a, var_1.b.d.b, var_1.a.c), var_1.b, vec3<i32>(u_input.c, var_1.c.x, global1.d.c.x))).c.a.a.x, 16u)], Struct_3(Struct_1(vec2<u32>(6407u, 73221u), -1915f, var_1.a.c), Struct_2(var_1.b.a, var_1.b.b, var_1.b.b.x, Struct_1(var_1.a.a, 565f, var_1.b.d.c), var_1.b.a), global1.d.c.zxw)), Struct_3(Struct_1(var_1.a.a, _wgslsmith_f_op_f32(-global1.d.b), vec4<i32>(var_1.b.d.c.x, 1i, -48111i, -2147483647i)), Struct_2(_wgslsmith_f_op_vec3_f32(global1.e + var_1.b.e), select(vec3<u32>(global2.a.x, 19093u, 4294967295u), global1.b, vec3<bool>(false, true, true)), ~var_1.a.a.x, var_1.b.d, _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(global2.a.x, 19u)])), vec3<i32>(-2147483647i, min(-1i, global2.c.x), -global1.d.c.x))), func_4(any(vec2<bool>(true, false)), vec2<f32>(-647f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.d.b))))), func_4(global4[_wgslsmith_index_u32(~(~41788u), 16u)], _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(var_1.b.a.yx)))), func_4(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 1000f)), func_4(global4[_wgslsmith_index_u32(global1.b.x, 16u)], vec2<f32>(global0[_wgslsmith_index_u32(var_1.b.b.x, 27u)], var_1.b.d.b), Struct_5(global1.d, global4[_wgslsmith_index_u32(0u, 16u)], var_1), Struct_3(global1.d, var_1.b, vec3<i32>(u_input.c, var_1.c.x, 1i))), Struct_3(Struct_1(global2.a, global2.b, var_1.a.c), Struct_2(global3[_wgslsmith_index_u32(0u, 19u)], vec3<u32>(var_1.b.c, 4294967295u, 118321u), 27845u, global1.d, var_1.b.a), vec3<i32>(21086i, 2147483647i, -69345i))), Struct_3(var_1.b.d, func_4(true, vec2<f32>(global1.d.b, var_1.a.b), Struct_5(global1.d, global4[_wgslsmith_index_u32(global1.d.a.x, 16u)], Struct_3(Struct_1(u_input.b.ww, var_1.a.b, vec4<i32>(46076i, 9720i, -15087i, u_input.c)), Struct_2(vec3<f32>(var_1.b.a.x, global0[_wgslsmith_index_u32(27574u, 27u)], global2.b), global1.b, 1u, var_1.b.d, global3[_wgslsmith_index_u32(0u, 19u)]), vec3<i32>(14498i, var_1.b.d.c.x, -50880i))), var_1).c.b, ~vec3<i32>(global2.c.x, var_1.a.c.x, 1i))), Struct_3(Struct_1(vec2<u32>(global2.a.x, 1u) | vec2<u32>(0u, 50846u), _wgslsmith_f_op_f32(-global1.a.x), ~vec4<i32>(global1.d.c.x, u_input.c, -1i, var_1.c.x)), Struct_2(_wgslsmith_f_op_vec3_f32(abs(global1.a)), vec3<u32>(var_0.x, 4294967295u, global1.b.x) & vec3<u32>(u_input.b.x, u_input.a.x, var_0.x), var_1.b.c, func_2(Struct_5(Struct_1(vec2<u32>(global2.a.x, 0u), -2423f, vec4<i32>(17186i, global1.d.c.x, -7801i, global1.d.c.x)), global4[_wgslsmith_index_u32(global1.c, 16u)], Struct_3(global1.d, var_1.b, global2.c.wxy)), Struct_5(var_1.b.d, true, var_1), var_1.a.c.x).b.d, vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(31934u, 27u)], var_1.b.e.x)), -select(global1.d.c.wxx, vec3<i32>(global2.c.x, -1i, 25977i), vec3<bool>(global4[_wgslsmith_index_u32(global1.c, 16u)], global4[_wgslsmith_index_u32(global1.d.a.x, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)])))), select(abs(abs(2961i)), var_1.c.x, global4[_wgslsmith_index_u32(~var_0.x & (min(global2.a.x, var_1.a.a.x) ^ reverseBits(global1.b.x)), 16u)])).b.d;
    global0 = array<f32, 27>();
    var_2 = global1.d;
    var var_3 = Struct_4(var_1, vec2<bool>(firstTrailingBit(22980u ^ global2.a.x) >= _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(0u, var_0.x) | vec2<u32>(42957u, 1u)), !all(!vec2<bool>(global4[_wgslsmith_index_u32(27948u, 16u)], global4[_wgslsmith_index_u32(16955u, 16u)]))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(40924i, 0i, abs(_wgslsmith_clamp_i32(-global1.d.c.x, 86312i << (var_1.b.b.x % 32u), _wgslsmith_dot_vec2_i32(var_2.c.xw, vec2<i32>(var_1.c.x, -1i))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~global2.a.x) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 61839u, global2.a.x), var_1.b.b), 27u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)] + 1518f) * _wgslsmith_f_op_f32(-var_2.b)))), -(i32(-1i) * -28030i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_3.a.b.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], var_3.a.b.e, vec3<bool>(true, var_3.b.x, false))) + _wgslsmith_div_vec3_f32(var_3.a.b.e, vec3<f32>(1656f, var_2.b, var_1.a.b)))))));
}

