struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 6> = array<f32, 6>(-230f, -696f, -162f, -635f, 1578f, 148f);

var<private> global2: vec2<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~global0.a, -global0.b);
    var var_1 = vec2<bool>(false, true);
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.a, 6u)]);
    let var_3 = Struct_4(-1i, Struct_3(1172f, ~(~(~vec2<u32>(var_0.a, global0.a))), -vec3<i32>(global0.b, global0.b, global0.b) << ((countOneBits(vec3<u32>(0u, 4294967295u, 28361u)) << (reverseBits(vec3<u32>(global0.a, u_input.a, var_0.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(48363i, global0.b, var_0.b, var_0.b), vec4<i32>(global0.b, 41070i, global0.b, global0.b)), -1i), firstTrailingBit(33862i), min(~2409i, var_0.b), ~var_0.b << (~var_0.a % 32u))), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 46691u), vec3<u32>(75013u, global0.a, var_0.a), vec3<u32>(0u, var_0.a, global0.a)) & _wgslsmith_mult_vec3_u32(vec3<u32>(37099u, 84895u, 4294967295u), vec3<u32>(41826u, 22211u, var_0.a))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)])), _wgslsmith_f_op_f32(f32(-1f) * -1252f)) - global1[_wgslsmith_index_u32(~var_0.a & ~global0.a, 6u)]), ~(abs(vec2<u32>(31668u, 78019u)) ^ ~vec2<u32>(u_input.a, u_input.a)), -(vec3<i32>(-1i) * -vec3<i32>(var_0.b, 1i, global0.b)), ~_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-48272i, 45811i, global0.b, var_0.b)), select(vec4<i32>(4629i, var_0.b, global0.b, var_0.b), vec4<i32>(-1i, 41297i, var_0.b, 1i), true))), !((~u_input.a >= global0.a) & true));
    var_2 = _wgslsmith_div_f32(304f, var_3.b.a);
    return var_0;
}

fn func_3() -> vec3<u32> {
    global1 = array<f32, 6>();
    global0 = func_1();
    var var_0 = max(~(max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, global0.a), vec2<u32>(1u, 31652u)), ~vec2<u32>(4294967295u, 4294967295u)) | abs(~vec2<u32>(0u, 20857u))), ~(~(~(~vec2<u32>(1u, 1u)))));
    global2 = select(!select(vec2<bool>(all(vec4<bool>(global2.x, false, true, true)), false), vec2<bool>(u_input.a < 13089u, global2.x), true), !(!(!(!vec2<bool>(global2.x, true)))), !any(!select(vec3<bool>(global2.x, false, true), vec3<bool>(false, true, false), global2.x)));
    var var_1 = select(vec3<bool>(global2.x, false, select(221f <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a, 6u)]), !global2.x, !global2.x)), !(!select(select(vec3<bool>(true, true, false), vec3<bool>(global2.x, false, global2.x), vec3<bool>(false, global2.x, global2.x)), select(vec3<bool>(false, false, global2.x), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false))), vec3<bool>(all(select(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(false, true, true, false), vec4<bool>(global2.x, true, global2.x, true)), select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(false, true, global2.x, true), true), any(vec4<bool>(true, false, true, false)))), !(!global2.x) & global2.x, global2.x));
    return ~vec3<u32>((var_0.x << (min(38256u, var_0.x) % 32u)) & var_0.x, var_0.x, 12861u);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = -vec3<i32>(func_1().b, firstTrailingBit(0i), (global0.b ^ -53156i) & -global0.b);
    var var_1 = ~(~(~(17568u & ~arg_1.x)));
    let var_2 = reverseBits(global0.a);
    let var_3 = select(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, var_2), arg_1.x), ~vec2<u32>(33235u, 22962u)) ^ ~vec2<u32>(1u, _wgslsmith_sub_u32(39125u, 1u)), select(arg_1.xw | arg_1.ww, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_2, global0.a), vec2<u32>(4294967295u, u_input.a))), vec2<bool>((u_input.a >= var_2) || global2.x, true)), !global2.x);
    let var_4 = var_0.zz;
    return Struct_2(75105u, ~(~(~func_3())), Struct_1(var_3.x, 10619i), arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    global0 = func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-112f - -154f), arg_2.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2047f, -341f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24462u, 6u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(36244u, 6u)] * _wgslsmith_f_op_f32(arg_2.d.x + arg_2.d.x))))), vec4<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global0.a, global0.a), arg_1) ^ vec2<u32>(4294967295u, global0.a), vec2<u32>(arg_0.a, firstLeadingBit(arg_2.b.x))), ~arg_1.x, global0.a, _wgslsmith_mod_u32(global0.a, 1u)), arg_2.d.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~1979u), 6u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(56370u, 6u)], 1000f)))))).c;
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-min(global0.b, ~(-57351i)), abs(~77877i)), _wgslsmith_add_i32(2147483647i << ((_wgslsmith_mod_u32(0u, 17114u) << (func_2(arg_2.d, vec4<u32>(13578u, arg_0.a, 49532u, arg_1.x), arg_2.d.x, 1941f).b.x % 32u)) % 32u), arg_0.b));
    var_0 = ~(~2147483647i);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(true, true);
    var var_0 = select(all(select(!vec2<bool>(false, global2.x), vec2<bool>(any(vec2<bool>(global2.x, false)), global2.x), select(vec2<bool>(global2.x, false), select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true)), select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, false), global2.x)))), global2.x, !global2.x);
    let var_1 = true;
    var var_2 = 2147483647i;
    let var_3 = func_4(func_1(), vec2<u32>(global0.a, 24920u), func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], -748f, global1[_wgslsmith_index_u32(41979u, 6u)])))))), ~((vec4<u32>(47668u, 0u, global0.a, u_input.a) & vec4<u32>(0u, global0.a, 0u, 83227u)) & vec4<u32>(4294967295u, global0.a, 4294967295u, u_input.a)), global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(func_1().a, 6u)]), ~vec2<u32>(_wgslsmith_mod_u32(global0.a, u_input.a) >> (firstTrailingBit(global0.a) % 32u), min(~55390u, u_input.a)));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) - -298f) * func_2(var_3.d, vec4<u32>(76864u, var_3.c.a, 4294967295u, 1u), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(ceil(1171f))).d.x)), max(~((vec2<u32>(u_input.a, 66894u) >> (var_3.b.yy % vec2<u32>(32u))) << (vec2<u32>(8808u, 101874u) % vec2<u32>(32u))), ~var_3.b.zz), abs(abs(_wgslsmith_mult_vec3_i32(select(vec3<i32>(global0.b, var_3.c.b, -1i), vec3<i32>(1i, var_3.c.b, 19192i), false), vec3<i32>(global0.b, var_3.c.b, global0.b)))), vec4<i32>(global0.b, _wgslsmith_mod_i32(-func_2(vec3<f32>(1685f, -476f, var_3.d.x), vec4<u32>(var_3.a, 1u, 1u, 10682u), global1[_wgslsmith_index_u32(1u, 6u)], 1492f).c.b, -2147483647i), global0.b, ~global0.b));
    var var_5 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.d.x, var_4.a), -579f))), vec2<u32>(_wgslsmith_clamp_u32(global0.a, var_3.a, func_2(vec3<f32>(var_4.a, var_4.a, var_3.d.x), vec4<u32>(u_input.a, 4294967295u, global0.a, 4294967295u) | vec4<u32>(u_input.a, 0u, global0.a, 4294967295u), _wgslsmith_f_op_f32(sign(var_3.d.x)), _wgslsmith_f_op_f32(-var_4.a)).c.a), _wgslsmith_mod_u32(~u_input.a, 90757u)), var_4.c, vec4<i32>(var_4.d.x, firstTrailingBit(abs(6637i)), ~32022i, firstTrailingBit(1i)));
    let var_6 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.d.x, var_5.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 6u)]), global1[_wgslsmith_index_u32(~(~global0.a), 6u)]))), ~(var_4.b | abs(var_3.b.yx)), var_4.d.xzy, -vec4<i32>(_wgslsmith_mult_i32(~(-12702i), global0.b ^ var_5.c.x), abs(_wgslsmith_mod_i32(global0.b, var_3.c.b)), 23066i, firstTrailingBit(-2147483647i)));
    var var_7 = select(vec2<bool>(!(!global2.x), all(vec4<bool>(global2.x, global2.x, !var_1, var_4.c.x > -40062i))), vec2<bool>((abs(0u) < var_3.b.x) || !(var_5.a > -1842f), false), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(var_4.b, firstLeadingBit(var_5.b)), func_1().a);
}

