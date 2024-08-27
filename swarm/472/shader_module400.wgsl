struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<u32>(0u, 1u)), Struct_2(vec2<u32>(40306u, 4294967295u)), Struct_2(vec2<u32>(32282u, 54560u)), Struct_2(vec2<u32>(4294967295u, 33996u)), Struct_2(vec2<u32>(68251u, 1971u)), Struct_2(vec2<u32>(1u, 4294967295u)), Struct_2(vec2<u32>(0u, 20868u)), Struct_2(vec2<u32>(20936u, 42359u)), Struct_2(vec2<u32>(6157u, 1u)), Struct_2(vec2<u32>(1u, 0u)), Struct_2(vec2<u32>(1u, 635u)), Struct_2(vec2<u32>(1u, 64122u)), Struct_2(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(73708u, 23369u)), Struct_2(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(35835u, 4294967295u)));

var<private> global1: array<Struct_3, 14>;

var<private> global2: f32 = -313f;

var<private> global3: Struct_4;

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = vec3<i32>(abs(-u_input.b.x), _wgslsmith_sub_i32(min(~(-2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(62545i, -21941i, -19314i), global3.e.b), firstLeadingBit(arg_1.e.b))), _wgslsmith_mod_i32(abs(select(global3.c.x, -43123i, global3.a)), ~u_input.b.x | 0i)), -28181i);
    global0 = array<Struct_2, 16>();
    var var_1 = arg_1.e;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.a) - -837f), global3.e.a, (global3.a & false) != (arg_1.a && true)))));
    let var_3 = global3.d;
    return vec4<i32>(-1i, var_1.b.x, _wgslsmith_add_i32(1i, (10451i | (-2147483647i >> (global3.d.a.x % 32u))) >> (~reverseBits(1u) % 32u)), -(~u_input.b.x));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = array<Struct_3, 14>();
    global0 = array<Struct_2, 16>();
    let var_0 = (func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(4294967295u), 1u), 16u)], Struct_4(global3.a, global3.d.a.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), global3.e.b.yz, global3.c), Struct_2(global3.d.a), global3.e)) >> (vec4<u32>(_wgslsmith_mult_u32(~u_input.a, firstTrailingBit(global3.b)), 1u, 55874u, _wgslsmith_add_u32(0u, 33861u)) % vec4<u32>(32u))) >> (vec4<u32>(~(~_wgslsmith_dot_vec2_u32(global3.d.a, global3.d.a)), 1u, 1u, _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec2_u32(global3.d.a >> (global3.d.a % vec2<u32>(32u)), ~vec2<u32>(1u, u_input.a)))) % vec4<u32>(32u));
    let var_1 = Struct_3(select(select(select(vec3<bool>(true, arg_0, arg_0), !vec3<bool>(false, global3.a, true), any(vec4<bool>(arg_0, arg_0, false, global3.a))), !(!vec3<bool>(true, arg_0, true)), !vec3<bool>(global3.a, false, false)), vec3<bool>(any(vec2<bool>(true, true)), false, true), !arg_0));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(382f, _wgslsmith_f_op_f32(-global3.e.a), global3.e.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-382f, global3.e.a, 611f), vec3<f32>(global3.e.a, -818f, global3.e.a))))), global3.a)));
    return Struct_3(vec3<bool>(any(select(!vec4<bool>(global3.a, global3.a, var_1.a.x, global3.a), !vec4<bool>(global3.a, global3.a, arg_0, true), select(vec4<bool>(global3.a, true, false, arg_0), vec4<bool>(global3.a, true, false, false), vec4<bool>(global3.a, true, arg_0, true)))), all(vec4<bool>(var_1.a.x, false, var_1.a.x, !global3.a)), false));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_4(false, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(9067u, u_input.a), vec2<u32>(0u, u_input.a)), vec2<u32>(0u, arg_3 & ~0u)), u_input.b, global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global3.d.a.x, 0u), vec3<u32>(u_input.a, 1u, 53275u)), vec3<u32>(arg_3, arg_3, 106750u) << (vec3<u32>(global3.d.a.x, u_input.a, 42865u) % vec3<u32>(32u)))), 16u)], global3.e);
    let var_1 = _wgslsmith_dot_vec2_u32(max(max(~_wgslsmith_clamp_vec2_u32(var_0.d.a, global3.d.a, var_0.d.a), global3.d.a), _wgslsmith_mult_vec2_u32((global3.d.a | vec2<u32>(u_input.a, var_0.b)) << (var_0.d.a % vec2<u32>(32u)), vec2<u32>(~11421u, _wgslsmith_add_u32(u_input.a, var_0.b)))), global3.d.a);
    let var_2 = _wgslsmith_add_vec2_i32(abs(func_3(global3.d, Struct_4(33421u <= var_0.b, 0u, vec2<i32>(global3.e.b.x, 7010i), global3.d, var_0.e)).xy), firstTrailingBit(~(vec2<i32>(u_input.b.x, global3.c.x) | vec2<i32>(-221i, var_0.c.x))));
    var var_3 = var_0.e.a;
    var var_4 = Struct_4(true, var_0.b, -select(u_input.b, func_3(global3.d, Struct_4(true, var_1, var_0.c, Struct_2(var_0.d.a), global3.e)).ww, arg_2.a.x), global3.d, var_0.e);
    return select(!vec4<bool>(arg_2.a.x, false && any(vec2<bool>(true, true)), true, true), select(vec4<bool>(all(vec4<bool>(true, arg_1.a.x, false, var_4.a)) & var_4.a, global3.a, true, arg_1.a.x), vec4<bool>(all(vec4<bool>(true, var_4.a, true, global3.a)), var_4.e.b.x != abs(1i), all(func_2(true).a.zy), global3.a), var_4.a), !(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(global3.a, false, false, arg_1.a.x), true), select(vec4<bool>(false, true, var_0.a, var_0.a), vec4<bool>(global3.a, false, var_4.a, false), var_4.a), all(vec2<bool>(global3.a, true)))));
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e.a, 447f, global3.e.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.e.a, 1671f, -918f) * vec3<f32>(global3.e.a, global3.e.a, global3.e.a))))))));
    var var_1 = !vec4<bool>(all(func_4(var_0, func_2(true), global1[_wgslsmith_index_u32(80750u, 14u)], 4294967295u)), !global3.a, false, true);
    global3 = Struct_4(func_2((~u_input.b.x >= ~global3.e.b.x) && true).a.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(4294967295u, 28020u, 26800u)), vec3<u32>(global3.d.a.x, global3.b, 7004u), select(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(0u, 3032u, u_input.a), vec3<bool>(global3.a, false, false)))), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(global3.d.a.x, 15935u, 1u) >> (vec3<u32>(global3.b, 4294967295u, u_input.a) % vec3<u32>(32u)), select(vec3<u32>(37387u, 4294967295u, 1u), vec3<u32>(global3.d.a.x, u_input.a, global3.d.a.x), false)), vec3<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, 49618u, global3.d.a.x, 18283u), vec4<u32>(u_input.a, 4294967295u, 8876u, 82897u)), firstTrailingBit(global3.b)), abs(~vec3<u32>(u_input.a, 31086u, 37054u)))), -(~u_input.b), Struct_2(vec2<u32>(_wgslsmith_clamp_u32(6340u, 1u, global3.d.a.x) ^ ~1u, _wgslsmith_mult_u32(abs(0u), global3.d.a.x))), global3.e);
    let var_2 = global1[_wgslsmith_index_u32(~18818u, 14u)];
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(global3.e.a * -1000f)), 792f))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_1 {
    global4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f) + 957f) + arg_2.x))));
    var var_0 = Struct_4(!(!(max(global3.c.x, global3.e.b.x) == -2147483647i)), 40129u & global3.b, abs(u_input.b) & arg_1.xy, global0[_wgslsmith_index_u32(max(u_input.a, u_input.a), 16u)], Struct_1(arg_2.x, _wgslsmith_sub_vec3_i32(arg_1.wwy, (vec3<i32>(arg_1.x, u_input.b.x, 30119i) & arg_1.yyz) >> (vec3<u32>(global3.b, u_input.a, u_input.a) % vec3<u32>(32u)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-760f, 427f) + arg_2.x) - arg_2.x)), var_0.e.b);
    global4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1()).x));
    let var_2 = arg_0;
    return Struct_1(-1570f, (vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(arg_1.x, var_1.b.x, arg_1.x))) ^ vec3<i32>(-1i, -var_0.e.b.x, 2748i));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_3, 14>();
    let var_0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(~(global3.d.a.x >> (~0u % 32u)), global3.d.a.x, arg_0.b), arg_0.b);
    global4 = 133f;
    let var_1 = func_2(arg_0.a);
    var var_2 = select(vec3<bool>(!(!all(arg_1)), arg_0.a, arg_1.x), vec3<bool>((all(vec4<bool>(true, true, arg_0.a, false)) & arg_0.a) | global3.a, false, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, global3.e.a, arg_0.e.a)), var_1, var_1, abs(u_input.a)).x | !arg_1.x), !arg_1.xxw);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(global3.e.a - _wgslsmith_f_op_f32(func_6(Struct_4(true, 1u, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -1i), _wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 48555i), vec2<i32>(16579i, global3.c.x))), global0[_wgslsmith_index_u32(reverseBits(~29749u), 16u)], Struct_1(_wgslsmith_f_op_f32(-global3.e.a), global3.e.b)), select(select(vec4<bool>(true, global3.a, true, true), vec4<bool>(false, global3.a, false, true), !vec4<bool>(false, true, global3.a, global3.a)), select(vec4<bool>(global3.a, global3.a, global3.a, false), vec4<bool>(false, true, global3.a, global3.a), global3.e.a < global3.e.a), 4294967295u >= (u_input.a << (1u % 32u))), func_5(select(select(vec4<bool>(false, false, global3.a, global3.a), vec4<bool>(true, true, false, global3.a), true), vec4<bool>(global3.a, false, false, true), select(vec4<bool>(global3.a, true, global3.a, false), vec4<bool>(global3.a, global3.a, false, false), vec4<bool>(true, global3.a, global3.a, true))), vec4<i32>(global3.c.x, -global3.c.x, _wgslsmith_dot_vec3_i32(global3.e.b, global3.e.b), 2147483647i), _wgslsmith_f_op_vec3_f32(func_1())))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-576f + global3.e.a))))));
    let var_1 = ~countOneBits(global3.d.a);
    let var_2 = -countOneBits(~global3.e.b);
    let var_3 = -127f;
    var var_4 = Struct_5(global0[_wgslsmith_index_u32(u_input.a, 16u)], _wgslsmith_f_op_f32(-global3.e.a), Struct_4(true, 4294967295u, global3.c, global3.d, Struct_1(var_0, ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 4819i), vec3<i32>(global3.c.x, -5815i, 0i)))));
    let var_5 = vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -1i), -u_input.b)), var_4.c.c), firstLeadingBit(func_5(vec4<bool>(true, true, var_4.c.a, global3.a), vec4<i32>(1i, select(u_input.b.x, u_input.b.x, var_4.c.a), 19288i, 1i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-250f, 959f, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1310f, global3.e.a, var_0) + vec3<f32>(global3.e.a, 1667f, var_4.c.e.a)), vec3<bool>(true, global3.a, false)))).b.x), -1i << (1u % 32u), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~69330u, 729f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 854f, var_3, -465f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-282f, var_4.b, global3.e.a, -900f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global3.e.a, 1341f, 1890f, 777f), vec4<f32>(var_0, -208f, global3.e.a, 927f)))))));
}

