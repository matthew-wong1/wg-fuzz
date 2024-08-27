struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<u32>, 2>;

var<private> global2: Struct_2 = Struct_2(false, false, 0u);

var<private> global3: vec2<u32> = vec2<u32>(26398u, 93157u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> i32 {
    var var_0 = 39615u;
    var var_1 = vec2<i32>(u_input.c.x, u_input.e);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1375f)));
    let var_3 = var_2;
    let var_4 = Struct_2(false, !(!global0.x), global3.x);
    return _wgslsmith_mult_i32(((var_1.x ^ 1i) >> (u_input.d.x % 32u)) >> (u_input.d.x % 32u), (i32(-1i) * -1i) ^ var_1.x);
}

fn func_3() -> u32 {
    global3 = ~u_input.d.yy;
    let var_0 = global0.x;
    global0 = vec2<bool>(global0.x, false);
    var var_1 = Struct_1(vec4<u32>(~(u_input.a.x >> (~66643u % 32u)), ~0u, global2.c, ~abs(global3.x)), u_input.c.zx);
    global0 = vec2<bool>(!(!global2.b), global0.x);
    return _wgslsmith_div_u32(~(~(~global2.c)), ~24181u);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global3 = min(vec2<u32>(_wgslsmith_div_u32(arg_2.a.x, arg_2.a.x), 1u), abs(~u_input.d.zz));
    global0 = select(!select(!(!vec2<bool>(arg_1, true)), !vec2<bool>(arg_1, false), vec2<bool>(all(vec2<bool>(false, true)), true)), !select(vec2<bool>(global2.b, true), vec2<bool>(true, true), any(select(vec3<bool>(true, global2.a, false), vec3<bool>(true, false, false), false))), arg_1 & false);
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(960f, -1000f), vec2<f32>(1251f, 720f), true)))))))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(343f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)))), var_0.x), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(var_0.x - 310f)))), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1002f, var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, -173f, var_0.x), vec4<f32>(var_0.x, 1110f, var_0.x, 586f), vec4<bool>(false, arg_1, arg_1, true))))))));
    var_0 = vec2<f32>(var_1.x, 821f);
    return Struct_2(global0.x, global0.x, ~_wgslsmith_sub_u32(2092u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, global2.c, 16343u), arg_3.a.xzz)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_4(select(-u_input.c.x, reverseBits(-1i), !(!global2.a) || !all(vec3<bool>(global2.b, arg_0.b, true))), true, Struct_1(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(0u, 26738u, u_input.a.x, global3.x), vec4<u32>(74555u, u_input.d.x, 52250u, 0u)), countOneBits(vec4<u32>(global2.c, 43639u, arg_0.c, global2.c))), (_wgslsmith_div_vec2_i32(u_input.c.yx, vec2<i32>(0i, 0i)) << (~global1[_wgslsmith_index_u32(global3.x, 2u)] % vec2<u32>(32u))) >> (~(~vec2<u32>(4294967295u, u_input.d.x)) % vec2<u32>(32u))), Struct_1(select(~vec4<u32>(10776u, 4294967295u, 1u, 109976u), vec4<u32>(global3.x, 39430u, 1u, global2.c) ^ select(vec4<u32>(13588u, global2.c, global2.c, global3.x), vec4<u32>(19192u, 4294967295u, 19666u, 0u), vec4<bool>(true, true, true, true)), vec4<bool>(arg_0.b && true, !arg_0.b, global2.a, true)), vec2<i32>((u_input.e << (0u % 32u)) & -26286i, abs(53828i))));
    var_0 = arg_0;
    var var_1 = Struct_1(~vec4<u32>(_wgslsmith_mult_u32(~4294967295u, 117644u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, global3.x, 506u, 4294967295u), vec4<u32>(arg_0.c, var_0.c, 4294967295u, arg_0.c)), ~vec4<u32>(17927u, arg_0.c, 53342u, 5337u)), firstLeadingBit(4294967295u) & _wgslsmith_dot_vec3_u32(vec3<u32>(79812u, 1u, global2.c), vec3<u32>(4294967295u, 4294967295u, 30514u)), 16646u), abs(u_input.c.xz));
    var var_2 = ~(var_1.a | _wgslsmith_add_vec4_u32(select(var_1.a & var_1.a, vec4<u32>(1u, 0u, 0u, 0u), false), vec4<u32>(~u_input.a.x, ~global2.c, ~24202u, u_input.d.x)));
    global2 = arg_0;
    return Struct_1(var_1.a, var_1.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool) -> vec3<bool> {
    var var_0 = func_5(func_4(func_2(), true, Struct_1(~(vec4<u32>(41056u, global2.c, arg_1.x, 25113u) & vec4<u32>(global3.x, 12272u, 68016u, arg_1.x)), reverseBits(countOneBits(vec2<i32>(-1i, u_input.e)))), Struct_1(vec4<u32>(22183u, func_3(), global2.c, arg_1.x), _wgslsmith_sub_vec2_i32(u_input.c.yz | u_input.c.xx, u_input.c.xx))));
    var_0 = func_5(func_4(1648i, all(vec2<bool>(all(vec4<bool>(global0.x, true, true, global0.x)), -1087f >= arg_0.x)), func_5(func_4(var_0.b.x, global0.x, Struct_1(var_0.a, vec2<i32>(-2147483647i, u_input.c.x)), func_5(Struct_2(arg_2, true, 4294967295u)))), func_5(Struct_2(any(vec2<bool>(global2.b, global2.b)), select(true, true, global0.x), 52730u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, arg_0.x, 482f, arg_0.x))), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -1674f, -1084f, arg_0.x), vec4<f32>(arg_0.x, -283f, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-868f, 1158f, arg_0.x, arg_0.x), vec4<f32>(1000f, arg_0.x, -1395f, 1387f))))))));
    let var_2 = Struct_2(true, true, 18253u);
    let var_3 = func_4(~(select(_wgslsmith_mult_i32(-1i, -16712i), 2147483647i, var_2.a) & u_input.e), !global2.a && select(!(!arg_2), any(select(vec4<bool>(false, var_2.a, global2.a, arg_2), vec4<bool>(false, arg_2, false, false), true)), arg_2), func_5(var_2), func_5(func_4(~(~u_input.b), false, Struct_1(var_0.a, -vec2<i32>(var_0.b.x, 1i)), Struct_1(vec4<u32>(var_2.c, 0u, var_0.a.x, u_input.d.x), ~u_input.c.yx))));
    return !select(select(select(vec3<bool>(true, global2.b, true), !vec3<bool>(global2.b, true, true), false), vec3<bool>(global2.a | false, u_input.c.x <= u_input.c.x, arg_0.x != -1166f), vec3<bool>(true, global0.x, select(true, false, false))), select(select(select(vec3<bool>(arg_2, false, true), vec3<bool>(true, var_2.b, false), vec3<bool>(true, var_2.b, true)), vec3<bool>(global0.x, global0.x, var_3.b), select(vec3<bool>(false, true, var_2.b), vec3<bool>(false, false, var_3.b), vec3<bool>(var_3.b, var_3.b, var_3.a))), select(select(vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, var_3.a), vec3<bool>(false, global2.b, var_3.a)), select(vec3<bool>(var_3.a, true, var_3.b), vec3<bool>(var_3.a, true, arg_2), false), true), !select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(arg_2, false, false), false)), select(vec3<bool>(true, true, arg_2), vec3<bool>(!global2.b, !arg_2, all(vec4<bool>(true, var_2.a, var_3.b, var_3.a))), select(vec3<bool>(global0.x, global0.x, global2.b), vec3<bool>(true, true, true), true)));
}

fn func_6(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(false, all(!select(vec3<bool>(true, false, global0.x), vec3<bool>(global2.a, arg_0, false), !global0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>((global2.c & global2.c) & u_input.d.x, countOneBits(~global3.x), _wgslsmith_add_u32(u_input.a.x & 21298u, global3.x)), ~(~vec3<u32>(81678u, 4294967295u, 0u)) & ~vec3<u32>(11428u, global3.x, 1u)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(global2.c, 4294967295u, 67653u, 4294967295u), vec4<u32>(global3.x, global2.c, 1u, 1u), select(arg_0, false, false)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, var_0.c, u_input.d.x, global3.x) >> (vec4<u32>(global2.c, global3.x, u_input.d.x, var_0.c) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.d.x, global3.x, 30724u, u_input.a.x)), abs(vec4<u32>(u_input.d.x, 1u, 33053u, global3.x)))), max(vec4<u32>(var_0.c, global3.x, ~u_input.d.x, ~1u), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.c, global3.x, 1u, var_0.c), vec4<u32>(4294967295u, global3.x, 4294967295u, 11935u))))), countOneBits(u_input.c.yy >> (~_wgslsmith_add_vec2_u32(vec2<u32>(global2.c, 24994u), global1[_wgslsmith_index_u32(85219u, 2u)]) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(max(~abs(var_1.b), vec2<i32>(u_input.b, u_input.c.x))), -u_input.c.yx, var_1.b);
    var var_3 = Struct_1(_wgslsmith_mult_vec4_u32(countOneBits(~select(var_1.a, vec4<u32>(var_0.c, 4294967295u, global2.c, global2.c), vec4<bool>(false, false, true, global2.a))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c, 1u, var_0.c >> (0u % 32u), abs(1u)), vec4<u32>(~47117u, _wgslsmith_dot_vec4_u32(vec4<u32>(47645u, 14787u, 0u, u_input.d.x), vec4<u32>(90114u, 4294967295u, 4294967295u, 4294967295u)), 26196u, var_0.c >> (var_1.a.x % 32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(22503u, global3.x, global2.c, 4805u), var_1.a))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.zx, vec2<i32>(-79137i, u_input.c.x)), abs(vec2<i32>(-1i, u_input.e))), u_input.c.zy) & (-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.c.x, var_2.x), vec2<i32>(2147483647i, u_input.e)) | abs(vec2<i32>(-2147483647i, var_1.b.x))));
    let var_4 = 255f;
    return func_5(func_4(u_input.e, select(arg_0, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(838f, var_4, arg_1), vec3<f32>(arg_1, 420f, 534f)), reverseBits(vec2<u32>(44342u, 1u)), global2.a || global0.x).x, var_4 > _wgslsmith_f_op_f32(trunc(-1577f))), func_5(func_4(u_input.c.x, all(vec3<bool>(global0.x, var_0.b, arg_0)), Struct_1(vec4<u32>(global3.x, u_input.a.x, 0u, 0u), vec2<i32>(1i, var_3.b.x)), Struct_1(vec4<u32>(global2.c, 0u, 4312u, var_1.a.x), vec2<i32>(0i, var_3.b.x)))), func_5(func_4(_wgslsmith_div_i32(-65290i, var_2.x), all(vec2<bool>(false, false)), Struct_1(var_3.a, vec2<i32>(var_2.x, 20600i)), func_5(Struct_2(true, var_0.a, 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(all(select(vec3<bool>(!global2.a, global2.a, !global0.x), select(func_1(vec3<f32>(104f, -270f, -352f), u_input.d.xx, global0.x), !vec3<bool>(false, global0.x, false), !vec3<bool>(true, global2.a, global2.b)), any(func_1(vec3<f32>(277f, -580f, -604f), vec2<u32>(13748u, 0u), true).xx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(743f * -1273f) - _wgslsmith_div_f32(188f, 261f))))));
    let var_1 = func_6(reverseBits(~0u) == u_input.d.x, 565f);
    let var_2 = Struct_1(~min(vec4<u32>(0u, select(23921u, global2.c, true), ~1u, var_0.a.x), ~firstLeadingBit(vec4<u32>(1u, 1u, 1u, var_0.a.x))), var_1.b);
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~(var_2.a.yy | vec2<u32>(var_2.a.x, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(0u, 2u)], var_1.a.yx))), vec2<u32>(~select(var_0.a.x, u_input.a.x, global0.x), reverseBits(0u >> (0u % 32u)))), vec2<u32>(~1u, u_input.a.x));
    var var_4 = vec4<i32>(u_input.e, ~((i32(-1i) * -33851i) << (var_0.a.x % 32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(i32(-1i) * -var_1.b.x, var_1.b.x), u_input.e), 39233i);
    let x = u_input.a;
    s_output = StorageBuffer(-697f, var_4.x);
}

