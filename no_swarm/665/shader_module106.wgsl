struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(0u, 71627u, 39450u), vec3<u32>(4294967295u, 0u, 24530u), vec3<u32>(52216u, 4294967295u, 28822u), vec3<u32>(62656u, 29688u, 0u), vec3<u32>(0u, 1u, 43039u), vec3<u32>(45082u, 4294967295u, 0u), vec3<u32>(33948u, 58377u, 37911u), vec3<u32>(66879u, 0u, 4294967295u), vec3<u32>(4294967295u, 98146u, 1u), vec3<u32>(669u, 0u, 4294967295u), vec3<u32>(27828u, 41715u, 0u), vec3<u32>(4294967295u, 68281u, 4294967295u), vec3<u32>(10111u, 4294967295u, 1u), vec3<u32>(17536u, 29657u, 58329u), vec3<u32>(8053u, 0u, 0u), vec3<u32>(4294967295u, 24678u, 12203u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(42632u, 1u, 14986u), vec3<u32>(80509u, 38348u, 28198u), vec3<u32>(1u, 4294967295u, 36015u), vec3<u32>(9084u, 1u, 1u));

var<private> global1: vec3<u32> = vec3<u32>(0u, 10979u, 4294967295u);

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(6806u, 14777u, 1u), vec3<u32>(0u, 0u, 34109u), vec3<u32>(36057u, 5176u, 5833u), vec3<u32>(8695u, 21586u, 32909u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 15481u, 0u), vec3<u32>(0u, 4294967295u, 12991u), vec3<u32>(30418u, 41100u, 47847u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(7058u, 57110u, 48618u), vec3<u32>(0u, 80778u, 0u), vec3<u32>(25087u, 4294967295u, 50853u), vec3<u32>(47218u, 18161u, 4294967295u));

var<private> global3: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global1 = ~vec3<u32>(~arg_0, arg_0 | ~(~25188u), 63158u);
    let var_0 = Struct_2(global3.b, global3.b, Struct_1(u_input.c, vec2<bool>(true, false), _wgslsmith_f_op_f32(global3.a.d.x * 284f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c.d) * global3.b.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.x, -248f, -1000f, global3.c.e.x)), (1i | global3.c.a) == _wgslsmith_mult_i32(-7556i, u_input.a))), global3.a.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, -261f, -759f)))), countOneBits(~(vec4<u32>(global3.e.x, 1u, global3.e.x, global1.x) >> (firstTrailingBit(vec4<u32>(0u, 77600u, 0u, 1u)) % vec4<u32>(32u)))));
    let var_1 = vec3<i32>(-37i, ~(-1i), max(_wgslsmith_sub_i32(-firstLeadingBit(-1i), 0i), 0i));
    global0 = array<vec3<u32>, 22>();
    let var_2 = select(vec2<bool>(true, any(!(!vec4<bool>(var_0.c.b.x, global3.b.b.x, var_0.b.b.x, true)))), !var_0.b.b, !(!global3.c.b));
    return firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.b.zx, ~reverseBits(vec2<i32>(0i, var_0.a.a)), _wgslsmith_clamp_vec2_i32(u_input.b.zz, var_1.zx, var_1.yz)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.yzz, u_input.b.xzz), vec3<i32>(2147483647i, -29001i, 2147483647i)), -24331i), min(func_3(_wgslsmith_mult_u32(arg_2, 4294967295u)), vec2<i32>(max(56383i, arg_1.a), ~u_input.b.x)), u_input.b.yz), vec2<i32>(func_3(425u).x & max(abs(2147483647i), _wgslsmith_mod_i32(8108i, arg_1.a)), -11995i));
    global2 = array<vec3<u32>, 13>();
    let var_1 = arg_1;
    let var_2 = Struct_2(Struct_1(select(select(var_1.a & 2147483647i, global3.c.a >> (arg_2 % 32u), !global3.c.b.x), _wgslsmith_sub_i32(-40008i, arg_1.a), false), vec2<bool>(global3.a.b.x, var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1670f + arg_1.d.x) * 912f), global3.c.d, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(607f, 412f))))), var_1, var_1, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(906f))))), _wgslsmith_f_op_f32(-arg_1.e.x)), reverseBits(global3.e));
    let var_3 = u_input.b.ww;
    return u_input.b;
}

fn func_4(arg_0: i32) -> Struct_2 {
    global2 = array<vec3<u32>, 13>();
    let var_0 = global3.b;
    return Struct_2(Struct_1(-(~(-u_input.a)), select(vec2<bool>(true, global3.a.b.x), select(vec2<bool>(global3.b.b.x, false), vec2<bool>(true, false), any(vec4<bool>(true, true, global3.a.b.x, var_0.b.x))), true), _wgslsmith_f_op_f32(round(var_0.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, -1698f, -912f, -142f) + global3.a.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.d.x, var_0.d.x, var_0.d.x, -736f))), vec2<f32>(-2355f, _wgslsmith_f_op_f32(global3.b.c + -1152f))), Struct_1(arg_0, select(!vec2<bool>(global3.b.b.x, global3.c.b.x), select(select(vec2<bool>(false, true), vec2<bool>(global3.a.b.x, var_0.b.x), false), !global3.a.b, select(global3.b.b, vec2<bool>(true, true), false)), true), _wgslsmith_f_op_f32(588f * _wgslsmith_f_op_f32(f32(-1f) * -424f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a.d)), _wgslsmith_f_op_vec2_f32(sign(global3.a.e))), Struct_1(~arg_0, var_0.b, _wgslsmith_f_op_f32(var_0.d.x - -667f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1141f, var_0.e.x, global3.a.d.x, var_0.e.x), var_0.d) + vec4<f32>(-404f, global3.d.x, -1000f, 604f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.c, 286f) - var_0.e), _wgslsmith_f_op_vec2_f32(min(global3.b.d.xz, vec2<f32>(-1036f, -120f)))))), _wgslsmith_f_op_vec3_f32(var_0.d.yzy * var_0.d.wwy), vec4<u32>(global3.e.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~global3.e.x, 29622u ^ global3.e.x), 1u, global1.x), ~global1.x, global1.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = true;
    let var_1 = arg_0.c;
    var var_2 = min(select(select(vec4<u32>(global1.x, ~arg_1.e.x, 1u, func_4(-48627i).e.x), vec4<u32>(0u, 25282u, 0u, global1.x) << ((vec4<u32>(arg_0.e.x, global1.x, global3.e.x, 33401u) << (arg_0.e % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<bool>(!var_1.b.x, !arg_1.a.b.x, func_4(var_1.a).c.b.x, false)), ((vec4<u32>(104930u, 32839u, 50694u, 4294967295u) & vec4<u32>(3756u, 4294967295u, arg_1.e.x, arg_0.e.x)) ^ ~vec4<u32>(4294967295u, arg_0.e.x, 131144u, 1u)) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.e, global3.e), select(arg_1.e, global3.e, vec4<bool>(var_1.b.x, arg_0.a.b.x, false, arg_0.a.b.x)), vec4<u32>(global1.x, global1.x, 0u, global1.x)) % vec4<u32>(32u)), global3.c.b.x & true), global3.e);
    var var_3 = all(select(vec4<bool>(all(!vec3<bool>(arg_1.b.b.x, var_1.b.x, true)), false, countOneBits(global3.b.a) != select(28575i, arg_0.a.a, false), !global3.b.b.x & true), vec4<bool>(select(any(arg_0.b.b), any(arg_1.c.b), var_0 || false), true, global3.b.b.x, var_0), true & arg_1.c.b.x));
    var_2 = vec4<u32>(19213u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~var_2.wx, max(global1.zz, ~global3.e.ww)), max(abs(countOneBits(global1.xy)), ~(~vec2<u32>(var_2.x, var_2.x)))), _wgslsmith_div_u32(4823u, _wgslsmith_sub_u32(~global3.e.x, _wgslsmith_div_u32(1u, global1.x)) >> (~arg_1.e.x % 32u)), global1.x);
    return Struct_2(Struct_1(-18542i >> (arg_0.e.x % 32u), arg_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(round(-2162f)))), _wgslsmith_f_op_vec4_f32(global3.b.d + vec4<f32>(_wgslsmith_f_op_f32(exp2(global3.a.c)), _wgslsmith_f_op_f32(step(var_1.c, arg_1.b.d.x)), -629f, global3.a.d.x)), _wgslsmith_f_op_vec2_f32(floor(global3.c.e))), var_1, func_4(func_3(arg_0.e.x).x).a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-212f, -727f, var_1.e.x) - vec3<f32>(547f, 192f, arg_0.a.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.e.x, arg_2.x, arg_1.d.x) - vec3<f32>(arg_0.a.c, arg_1.c.c, -1109f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-879f)), _wgslsmith_f_op_f32(exp2(var_1.c)), -266f)), global3.a.d.zwx)), _wgslsmith_mult_vec4_u32(countOneBits(select(arg_0.e, _wgslsmith_add_vec4_u32(global3.e, vec4<u32>(var_2.x, global1.x, var_2.x, 32238u)), vec4<bool>(false, false, global3.a.b.x, true))), arg_1.e));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = u_input.b.x;
    global3 = func_5(func_4(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3.c.a, global3.a.a, u_input.c, -15485i), -u_input.b), func_2(vec4<f32>(global3.b.d.x, arg_0.c, global3.c.c, arg_0.c), global3.a, 4294967295u))), func_4(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.a, -1i, -16290i), vec3<i32>(global3.c.a, -2147483647i, -2489i)), arg_0.a)), arg_0.d, u_input.b.yyy);
    var_0 = arg_0.a;
    let var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(min(global3.e, global3.e), ~vec4<u32>(global1.x, 0u, 0u, 0u)), global3.e), global3.e);
    return Struct_1(-2147483647i, vec2<bool>(false, true | all(!vec4<bool>(global3.c.b.x, arg_0.b.x, true, global3.b.b.x))), -1003f, vec4<f32>(-1257f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.c + global3.c.e.x)), global3.d.x), 1038f, -471f), vec2<f32>(675f, _wgslsmith_f_op_f32(-global3.a.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 22>();
    global1 = _wgslsmith_mod_vec3_u32(reverseBits(~global2[_wgslsmith_index_u32(~11170u, 13u)] & (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.e.x, global1.x), 22u)] >> (global3.e.wyz % vec3<u32>(32u)))), max(~_wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.e.wy, global3.e.xw), 13u)], global3.e.zwx), ~min(~vec3<u32>(global3.e.x, global1.x, global3.e.x), ~vec3<u32>(0u, 0u, 0u))));
    let var_0 = Struct_2(func_1(global3.b), func_4(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(34918i, u_input.a, 0i, global3.a.a)), u_input.a | u_input.b.x, -1i)).c, func_5(func_5(func_5(func_4(-2147483647i), func_5(Struct_2(Struct_1(u_input.c, vec2<bool>(global3.a.b.x, true), global3.b.e.x, global3.b.d, global3.d.yy), global3.b, global3.b, vec3<f32>(-1101f, global3.c.d.x, global3.c.c), vec4<u32>(global3.e.x, 4294967295u, global1.x, global1.x)), Struct_2(Struct_1(global3.a.a, global3.c.b, -523f, global3.a.d, vec2<f32>(-216f, 596f)), Struct_1(u_input.c, global3.c.b, global3.a.d.x, vec4<f32>(1492f, global3.c.e.x, global3.d.x, 381f), global3.a.e), Struct_1(u_input.b.x, vec2<bool>(true, false), 1387f, vec4<f32>(242f, global3.a.d.x, -560f, -313f), vec2<f32>(global3.b.c, 1000f)), vec3<f32>(global3.b.d.x, global3.b.d.x, global3.b.e.x), global3.e), vec4<f32>(-563f, global3.c.c, global3.b.d.x, 160f), vec3<i32>(1521i, -1i, global3.a.a)), _wgslsmith_div_vec4_f32(global3.a.d, vec4<f32>(global3.c.d.x, global3.a.e.x, -2698f, -754f)), vec3<i32>(-44963i, -2147483647i, u_input.a)), Struct_2(global3.a, func_4(u_input.a).a, func_4(u_input.a).b, vec3<f32>(-122f, global3.a.d.x, global3.d.x), vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), _wgslsmith_f_op_vec4_f32(select(global3.a.d, vec4<f32>(-149f, global3.b.c, global3.a.c, -3080f), global3.a.b.x)), abs(u_input.b.xzw)), func_4(-_wgslsmith_dot_vec3_i32(u_input.b.xwz, vec3<i32>(-2364i, 1i, -2147483647i))), func_5(Struct_2(func_1(Struct_1(26451i, global3.a.b, global3.b.e.x, global3.a.d, global3.c.e)), func_4(354i).a, func_4(-30289i).a, _wgslsmith_div_vec3_f32(vec3<f32>(global3.d.x, -180f, global3.b.d.x), global3.b.d.yyx), ~global3.e), func_5(func_4(-22015i), func_5(Struct_2(global3.b, Struct_1(-15340i, global3.a.b, global3.c.e.x, vec4<f32>(global3.d.x, -139f, global3.d.x, -1560f), vec2<f32>(global3.a.d.x, 721f)), Struct_1(-2147483647i, vec2<bool>(true, true), global3.d.x, vec4<f32>(-1000f, global3.d.x, global3.c.d.x, global3.c.e.x), global3.d.xx), vec3<f32>(1146f, -284f, global3.a.e.x), global3.e), Struct_2(Struct_1(u_input.b.x, global3.a.b, -161f, global3.b.d, global3.c.e), Struct_1(u_input.c, global3.c.b, -446f, vec4<f32>(global3.c.d.x, -474f, 147f, -592f), global3.a.d.yz), Struct_1(global3.c.a, vec2<bool>(global3.b.b.x, global3.a.b.x), global3.b.e.x, global3.b.d, vec2<f32>(1000f, global3.c.e.x)), global3.a.d.zzw, global3.e), vec4<f32>(global3.c.c, global3.c.d.x, -1000f, global3.b.d.x), u_input.b.zzx), vec4<f32>(1048f, global3.a.c, -529f, -1223f), -vec3<i32>(u_input.c, -45317i, -830i)), _wgslsmith_f_op_vec4_f32(-global3.c.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 321i, u_input.b.x), _wgslsmith_div_vec3_i32(u_input.b.xwz, vec3<i32>(-1i, 0i, global3.b.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-11177i, u_input.a, u_input.b.x), u_input.b.wxz))).b.d, vec3<i32>(_wgslsmith_sub_i32(func_1(global3.b).a, -u_input.a), -abs(global3.a.a), 10369i)).b, vec3<f32>(-265f, global3.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.c)))), global3.e | min(vec4<u32>(_wgslsmith_mult_u32(global3.e.x, global1.x), global3.e.x, ~global3.e.x, 1u), global3.e));
    let var_1 = func_1(var_0.a).d.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(global3.c.d.zwx - var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.d, _wgslsmith_div_i32(u_input.c, -68356i), vec2<u32>(~(~1u ^ (28049u << (var_0.e.x % 32u))), global3.e.x));
}

