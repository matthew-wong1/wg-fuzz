struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-36776i, i32(-2147483648), 0i, -1i, -639i, -47679i, 31049i, 30728i, 2147483647i, 11351i, 67337i, -47460i, 1i, -1i, -1i, -1i, 21462i, -21834i, -27308i, 0i);

var<private> global1: vec2<f32> = vec2<f32>(-1202f, 282f);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(1298f, 0u, vec4<bool>(true, true, true, false), vec2<i32>(-1i, 0i)), Struct_1(1000f, 73011u, vec4<bool>(true, true, false, true), vec2<i32>(12933i, 0i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = 0u;
    let var_1 = _wgslsmith_div_i32(-countOneBits(27987i ^ arg_0.x), arg_0.x) != _wgslsmith_clamp_i32(~(~global0[_wgslsmith_index_u32(var_0, 20u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, ~u_input.b, firstTrailingBit(17304i)), (u_input.d.yzx & vec3<i32>(-2147483647i, u_input.b, u_input.d.x)) << (~vec3<u32>(var_0, 0u, var_0) % vec3<u32>(32u))), 1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(-529f, -535f));
    let var_3 = vec4<bool>(!(!((var_0 != var_0) & any(vec4<bool>(arg_2, var_1, arg_1, true)))), any(select(!(!vec4<bool>(false, false, var_1, arg_2)), !vec4<bool>(arg_2, true, var_1, arg_1), arg_2)), all(vec2<bool>(!(-30234i < arg_0.x), all(select(vec4<bool>(arg_1, false, arg_2, var_1), vec4<bool>(true, false, var_1, false), arg_2)))), !((true != any(vec3<bool>(false, false, arg_1))) | !all(vec3<bool>(arg_1, arg_1, false))));
    var var_4 = global2[_wgslsmith_index_u32(max(1u, min(4294967295u, var_0)), 2u)];
    return ~u_input.c;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = arg_2;
    var var_1 = Struct_1(var_0.a, arg_2.b, !var_0.c, reverseBits(~min(var_0.d, vec2<i32>(var_0.d.x, arg_3))) | _wgslsmith_mod_vec2_i32(~max(vec2<i32>(-2147483647i, 78002i), vec2<i32>(-2147483647i, -61515i)), max(-var_0.d, vec2<i32>(21398i, 2147483647i))));
    var var_2 = ~((firstLeadingBit(-36153i ^ global0[_wgslsmith_index_u32(var_1.b, 20u)]) & 38543i) >> (var_0.b % 32u));
    let var_3 = all(var_0.c) || any(var_1.c.zzx);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b, 31987u, 1u, arg_2.b), vec4<u32>(0u, 1u, 4294967295u, var_0.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.b, 0u, var_0.b), vec4<u32>(var_0.b, arg_2.b, 25273u, var_1.b), ~vec4<u32>(var_1.b, 7565u, var_0.b, var_0.b))), 1u), !select(vec4<bool>(!arg_2.c.x, true, arg_2.c.x, true), !vec4<bool>(var_1.c.x, arg_2.c.x, true, var_3), select(vec4<bool>(var_0.c.x, false, arg_2.c.x, true), arg_2.c, var_0.c)), vec2<i32>(arg_0, var_0.d.x));
    return _wgslsmith_dot_vec3_i32(u_input.d.zww, _wgslsmith_div_vec3_i32(-vec3<i32>(var_1.d.x, 24637i, arg_3) & ~u_input.d.wzx, -(u_input.d.wyy >> (vec3<u32>(var_0.b, var_0.b, 10123u) % vec3<u32>(32u)))) << (firstTrailingBit(countOneBits(countOneBits(vec3<u32>(46662u, 4185u, 4294967295u)))) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1.x;
    var var_1 = abs(-u_input.d.xww);
    let var_2 = true | (func_4(0i, u_input.a.x, global2[_wgslsmith_index_u32(15785u, 2u)], func_3(u_input.d.xz, true, true) | (i32(-1i) * -43664i)) < func_3(vec2<i32>(func_3(vec2<i32>(var_0, 23577i), false, arg_0.c.x), -1i), arg_2.c.x, !(!arg_0.c.x)));
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    return -252f;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(43655u, 2u)], vec4<i32>(u_input.c, arg_0.x, 2147483647i, 31765i), arg_3)) * global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), arg_2.x);
    let var_1 = countOneBits(34955i);
    var var_2 = 66204u;
    let var_3 = global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(arg_3.b | arg_3.b, ~135053u)), 2u)];
    var_2 = _wgslsmith_div_u32(_wgslsmith_sub_u32(countOneBits(~4294967295u), _wgslsmith_sub_u32(firstTrailingBit(~29729u), ~max(1u, 6358u))), firstLeadingBit(arg_3.b));
    return ~u_input.d ^ ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(23057i, 2147483647i, u_input.c, u_input.b), -vec4<i32>(1i, var_1, var_1, var_1)), u_input.d);
}

fn func_5(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(-608f, global1.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1.x) + vec2<f32>(global1.x, 1661f))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-616f, global1.x), vec2<f32>(global1.x, global1.x)))))))));
    let var_0 = vec2<i32>(0i, 37940i);
    let var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(0u), 43025u), _wgslsmith_mod_vec2_u32(vec2<u32>(52578u, 1u), firstTrailingBit(countOneBits(vec2<u32>(1u, 1u)))));
    var var_2 = ~(-arg_0.zxy);
    let var_3 = global2[_wgslsmith_index_u32(~var_1, 2u)];
    return global2[_wgslsmith_index_u32(var_1, 2u)];
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 983f, -629f)))));
    var var_1 = func_5(countOneBits(u_input.d), func_4(-29607i, -27812i, global2[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(-1i, u_input.d.x))));
    var var_2 = -u_input.d;
    var_1 = arg_0;
    var var_3 = u_input.d.x;
    return any(select(arg_0.c, select(func_5(-vec4<i32>(-52596i, -2147483647i, -1i, 25070i), -22238i).c, arg_0.c, var_1.c), func_5(reverseBits(u_input.d & vec4<i32>(var_2.x, 104347i, arg_0.d.x, var_2.x)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(5853i, u_input.d.x, 34412i), var_2.zwy)).c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1177f, global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1000f, global1.x)), vec3<f32>(global1.x, global1.x, 1000f)))))));
    global0 = array<i32, 20>();
    var_0 = vec3<f32>(-1210f, global1.x, global1.x);
    var var_1 = true;
    var var_2 = !func_6(func_5(func_1(abs(u_input.d.zx), vec3<bool>(true, true, true), vec3<f32>(global1.x, var_0.x, var_0.x), Struct_1(-1480f, 0u, vec4<bool>(false, true, false, true), u_input.d.yy)), _wgslsmith_mult_i32(u_input.d.x, u_input.c) & min(38292i, u_input.b)), true || func_5(firstTrailingBit(u_input.d), _wgslsmith_mult_i32(17998i, u_input.b)).c.x);
    let var_3 = func_5(vec4<i32>(abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.d.x, 2147483647i), firstLeadingBit(-6009i), -global0[_wgslsmith_index_u32(15377u, 20u)])), abs(~u_input.a.x), -_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, -2147483647i), u_input.d.x, u_input.d.x >> (29417u % 32u)), _wgslsmith_mod_i32(~u_input.c, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.a.x, u_input.c, u_input.c, 2147483647i) << (vec4<u32>(9670u, 4294967295u, 1u, 21545u) % vec4<u32>(32u))))), -(~u_input.c << (1u % 32u)) >> (~(~(~87227u)) % 32u));
    var var_4 = Struct_1(var_3.a, ~var_3.b ^ 4294967295u, vec4<bool>(var_3.c.x, var_3.c.x, var_3.c.x, var_3.c.x), ~vec2<i32>(countOneBits(30411i), var_3.d.x << (~1u % 32u)));
    let var_5 = vec4<u32>(var_4.b, ~1u, var_4.b, _wgslsmith_mod_u32(116656u, _wgslsmith_mod_u32(min(~1u, ~var_4.b), firstTrailingBit(var_4.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.wx, _wgslsmith_mult_vec4_i32(func_1(select(vec2<i32>(u_input.a.x, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(-73594i, -19618i), vec2<i32>(global0[_wgslsmith_index_u32(var_4.b, 20u)], global0[_wgslsmith_index_u32(var_3.b, 20u)])), select(var_4.c.x, false, var_4.c.x)), !var_3.c.zyx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-177f, 197f, global1.x), vec3<f32>(-357f, var_0.x, 2361f), var_4.c.yxz))), Struct_1(_wgslsmith_f_op_f32(var_3.a * var_0.x), var_5.x, vec4<bool>(true, false, var_4.c.x, false), vec2<i32>(var_4.d.x, -20558i))), firstTrailingBit(-vec4<i32>(var_3.d.x, global0[_wgslsmith_index_u32(var_3.b, 20u)], -1i, 7660i))), u_input.d, _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 7307u, vec4<bool>(!var_3.c.x, select(true, var_3.c.x, true), true, true), vec2<i32>(countOneBits(u_input.b), 19061i)), vec4<i32>(5914i, ~(-47826i), 2147483647i, global0[_wgslsmith_index_u32(var_3.b, 20u)]), func_5(~vec4<i32>(1i, var_4.d.x, var_4.d.x, 22268i) ^ vec4<i32>(global0[_wgslsmith_index_u32(var_3.b, 20u)], u_input.b, var_4.d.x, 56474i), 32593i))));
}

