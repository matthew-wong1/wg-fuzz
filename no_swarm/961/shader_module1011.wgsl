struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(-787i, 2147483647i, 18187i, i32(-2147483648)), vec4<bool>(true, true, false, false), vec2<i32>(-39363i, -31284i), 13406i), 121505u, vec4<bool>(false, true, true, false), Struct_1(vec4<i32>(i32(-2147483648), 39059i, 2147483647i, 31155i), vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), 25506i), -27525i));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = -654f;
    let var_1 = 965f;
    let var_2 = abs(vec4<i32>(3369i, firstLeadingBit(_wgslsmith_add_i32(abs(2147483647i), global1.c.x)), ~(~(~2147483647i)), global2.a.a.x));
    global1 = Struct_1(min(~firstTrailingBit(arg_0 ^ var_2), vec4<i32>(0i, global1.c.x, 7466i, select(6765i, _wgslsmith_clamp_i32(u_input.a.x, global2.a.d, global1.c.x), !global1.b.x))), vec4<bool>(any(global1.b.wy), any(global2.d.b.zwz), select(all(arg_2), all(vec4<bool>(global2.c.x, true, arg_2.x, arg_2.x)) && !global2.a.b.x, global1.b.x), global2.a.b.x), -abs(-vec2<i32>(50110i, global2.a.d)), _wgslsmith_clamp_i32(countOneBits(max(-5971i, arg_0.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_2, global2.a.a), var_2), 1i) | -20087i);
    global2 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    return vec3<u32>(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(global2.b, 1u, 26308u, global2.b))), ~abs(~vec4<u32>(global2.b, 0u, global2.b, global2.b))), global2.b, ~global2.b);
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    let var_0 = 4294967295u;
    var var_1 = -reverseBits(vec2<i32>(-firstLeadingBit(0i), 0i));
    var var_2 = global0[_wgslsmith_index_u32(97644u >> (global2.b % 32u), 18u)];
    return -999f;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = global1.b.wy;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstLeadingBit(func_3(select(global2.d.a, vec4<i32>(arg_2.c.x, arg_2.c.x, u_input.a.x, 0i), arg_0.x), ~15661i, vec2<bool>(global2.a.b.x, arg_2.b.x))))));
    var_0 = true && arg_2.b.x;
    global2 = Struct_2(global2.a, ~1u, global1.b, global2.a);
    return global2.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 18u)];
    global2 = Struct_2(func_2(select(!(!vec3<bool>(global1.b.x, true, global2.c.x)), !(!vec3<bool>(global1.b.x, false, true)), select(!global1.b.wxw, vec3<bool>(false, false, false), !vec3<bool>(true, global1.b.x, global2.c.x))), true, Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(global1.a, var_0.d.a), global1.a, -vec4<i32>(33469i, 1i, -2147483647i, var_0.d.a.x)), vec4<bool>(all(var_0.a.b.zwx), 78013u > global2.b, true, select(global2.c.x, global2.a.b.x, var_0.c.x)), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(global2.a.d, global1.a.x)), 0i)), _wgslsmith_mod_u32(~65179u, arg_2) >> (~(~(~78458u)) % 32u), arg_0.b, var_0.d);
    var var_1 = vec3<u32>(_wgslsmith_clamp_u32(abs(1u), ~0u, 13508u), global2.b | var_0.b, var_0.b);
    var var_2 = Struct_1(abs(-max(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 7102i, 1128i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a.x, 34220i, var_0.d.a.x), vec4<i32>(0i, u_input.a.x, var_0.d.a.x, global1.d)))), vec4<bool>(!global1.b.x, 88751u < _wgslsmith_dot_vec2_u32(var_1.xz & vec2<u32>(global2.b, 4294967295u), vec2<u32>(global2.b, global2.b)), _wgslsmith_f_op_f32(1436f + _wgslsmith_f_op_f32(trunc(arg_1.x))) <= _wgslsmith_f_op_f32(abs(arg_1.x)), false), -(abs(vec2<i32>(-1i, u_input.a.x) << (var_1.xz % vec2<u32>(32u))) & ~(-vec2<i32>(global1.d, -1i))), _wgslsmith_add_i32(arg_0.a.x, ~global1.d));
    var_2 = func_2(global1.b.wyw, ~_wgslsmith_mult_u32(abs(var_0.b), 0u) <= var_1.x, var_0.d);
    return arg_0;
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -296f), 687f)), vec3<f32>(1f, 1f, 1f));
    let var_1 = _wgslsmith_clamp_u32(global2.b, ~_wgslsmith_clamp_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(45955u, global2.b, global2.b, global2.b), vec4<u32>(14839u, global2.b, 1u, 4294967295u)), 46528u), 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.b, global2.b, global2.b, 103943u), select(vec4<u32>(global2.b, 30803u, 0u, 37956u), vec4<u32>(8365u, 15771u, global2.b, 1u), vec4<bool>(global1.b.x, true, true, true)))), 39367u);
    let var_2 = all(vec2<bool>(any(vec2<bool>(true, true)), !(!(global2.d.b.x | false))));
    var var_3 = func_5(func_2(select(global2.a.b.yzw, !select(global2.c.zzz, vec3<bool>(true, var_2, true), vec3<bool>(true, false, false)), true), global1.b.x, global2.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1181f, var_0.x, var_0.x))))), !select(vec3<bool>(true, global2.c.x, global2.d.b.x), global1.b.zyy, global1.b.x))), vec3<f32>(_wgslsmith_f_op_f32(func_4(vec3<u32>(var_1, global2.b, 53254u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * -191f))))), 0u);
    return func_2(!vec3<bool>(true, !var_2 || true, func_2(!vec3<bool>(false, var_3.b.x, true), true, Struct_1(vec4<i32>(-1i, var_3.d, 11428i, -18098i), vec4<bool>(global2.c.x, global2.a.b.x, true, var_3.b.x), var_3.c, 20802i)).b.x), min(global1.c.x, var_3.c.x) < (_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -56148i, 24035i, var_3.d), var_3.a) & var_3.a.x), global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.d;
    var_0 = func_1();
    let var_1 = Struct_1(reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, global1.d, -1i, u_input.a.x), func_5(Struct_1(vec4<i32>(3519i, var_0.c.x, u_input.a.x, 13196i), vec4<bool>(true, false, global2.d.b.x, false), global2.d.c, global1.d), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1031f, 549f, 464f))), 0u).a)), !select(global2.d.b, !(!vec4<bool>(global2.d.b.x, false, true, true)), all(global2.d.b.yzz)), max(global2.a.c, _wgslsmith_mod_vec2_i32(global2.a.c, u_input.a.xz | vec2<i32>(-28669i, global2.a.d))) | var_0.c, global1.c.x);
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(1u), 18u)];
    var_2 = global0[_wgslsmith_index_u32(var_2.b, 18u)];
    var_2 = Struct_2(func_2(vec3<bool>(var_0.b.x, false, true), var_2.a.b.x, Struct_1(reverseBits(~var_2.a.a), !vec4<bool>(var_0.b.x, true, var_0.b.x, false), global2.d.c, global1.d)), global2.b, select(vec4<bool>(!(!var_0.b.x), true, true, all(func_1().b)), var_2.a.b, false), global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(973f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(683f))), _wgslsmith_f_op_f32(1f + 486f)))));
}

