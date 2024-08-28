struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 18> = array<u32, 18>(22749u, 4294967295u, 24434u, 55779u, 105455u, 24817u, 38816u, 0u, 24080u, 4294967295u, 68610u, 31584u, 46254u, 20716u, 1060u, 1u, 4294967295u, 59321u);

var<private> global2: vec3<i32> = vec3<i32>(-393i, -12923i, 2147483647i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(select(!global0.a, select(global0.a, select(vec3<bool>(true, true, true), vec3<bool>(false, global0.a.x, true), global0.a), global0.a), !(!all(vec2<bool>(global0.a.x, global0.a.x)))));
    let var_1 = -(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-79612i, u_input.b, -1i, global2.x) | max(vec4<i32>(42853i, u_input.c, -27828i, u_input.c), vec4<i32>(1i, u_input.b, -24106i, u_input.c)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-19285i, global2.x, 0i, 0i), vec4<i32>(global2.x, global2.x, u_input.b, -15058i), vec4<bool>(var_0.a.x, true, false, false)), vec4<i32>(612i, global2.x, -75762i, u_input.b) >> (u_input.a % vec4<u32>(32u)), -vec4<i32>(global2.x, 1i, -9733i, u_input.b))));
    var var_2 = !vec2<bool>(false, global0.a.x);
    let var_3 = 1345f;
    var var_4 = Struct_1(var_3, _wgslsmith_div_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -68685i, var_1, var_1) | vec4<i32>(var_1, var_1, 1i, -15145i), vec4<i32>(u_input.c, -1i, u_input.c, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, -5536i, var_1), vec4<i32>(1i, var_1, u_input.c, 52716i)))), _wgslsmith_add_vec4_i32(vec4<i32>(~(-1i), 3046i, -2147483647i ^ global2.x, 1i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, 26014i, u_input.b, u_input.b), firstTrailingBit(vec4<i32>(40610i, var_1, -14597i, 18335i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, var_1, var_1, global2.x), vec4<i32>(-24020i, var_1, -2147483647i, -1i))))), select(global0.a.zx, select(select(!global0.a.yx, vec2<bool>(true, false), !global0.a.x), select(global0.a.xy, vec2<bool>(false, true), global0.a.yy), !any(vec4<bool>(var_2.x, true, true, true))), !global0.a.yx));
    return var_4.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: bool, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)) + _wgslsmith_f_op_f32(max(-729f, _wgslsmith_f_op_f32(f32(-1f) * -547f))))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(func_3())), 982f);
    var var_1 = Struct_2(arg_0, global2.x, vec4<bool>(false, arg_1, select(arg_2, -global2.x <= -2147483647i, global0.a.x), !(var_0.x > _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<i32>(1i, -arg_3.x << (abs(0u) % 32u), -2729i), ~select(vec3<u32>(2250u, u_input.a.x, 0u) >> (_wgslsmith_sub_vec3_u32(u_input.a.wwz, vec3<u32>(global1[_wgslsmith_index_u32(1u, 18u)], 4294967295u, 35724u)) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 1u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), !vec3<bool>(true, false, global0.a.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3()), select(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-3060i, u_input.c, global2.x, 1i), vec4<i32>(24314i, -2147483647i, 47215i, global2.x)), vec4<i32>(var_1.d.x, global2.x, global2.x, var_1.b) & vec4<i32>(-34902i, global2.x, -7853i, var_1.d.x), abs(vec4<i32>(arg_3.x, global2.x, -35794i, 16640i))) >> (~_wgslsmith_div_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, -var_1.d.x, i32(-1i) * -21320i, global2.x)), 4294967295u < u_input.a.x), vec2<bool>((var_1.d.x >= 0i) || true, !all(var_1.c) | any(select(var_1.c, var_1.c, arg_1))));
    global2 = ~_wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.x, -25782i, 30801i), arg_3) ^ vec3<i32>(_wgslsmith_clamp_i32(var_1.b, var_2.b.x, var_1.b), ~25538i, -2147483647i << (global1[_wgslsmith_index_u32(var_1.e.x, 18u)] % 32u)), vec3<i32>(var_1.b & 36642i, 29641i, -9917i));
    let var_3 = Struct_3(vec3<bool>(any(global0.a.yx), true, var_2.c.x));
    return Struct_2(_wgslsmith_f_op_vec2_f32(ceil(var_0.xz)), ~u_input.c, !vec4<bool>(true, all(vec4<bool>(true, arg_2, false, arg_2)), arg_1, !(!global0.a.x)), _wgslsmith_div_vec3_i32(-(~var_1.d), -(~vec3<i32>(-1i, 1773i, 1411i))) << (vec3<u32>(~max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.e.x, 18u)], 18u)], 0u), 20701u, global1[_wgslsmith_index_u32(var_1.e.x, 18u)]) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, reverseBits(u_input.a)), firstLeadingBit(select(u_input.a, vec4<u32>(63409u, 11349u, u_input.a.x, 26130u), false))), u_input.a.x, var_1.e.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-111f - arg_1.a.x), countOneBits(vec4<i32>(-4484i, func_2(_wgslsmith_f_op_vec2_f32(-arg_1.a), true, true, abs(arg_1.d)).d.x, ~abs(arg_2.x), -2147483647i)), vec2<bool>(true, true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - -1662f) * var_0.a)) + 1f), var_0.b, var_0.c);
    var var_2 = arg_0;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-189f)) - _wgslsmith_f_op_f32(219f * var_0.a)) * _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-arg_1.a.x))) + _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(func_3()))), 126f, 1430f);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(783f - _wgslsmith_div_f32(834f, _wgslsmith_f_op_f32(ceil(var_1.a)))), _wgslsmith_f_op_f32(-178f + -1613f), arg_1.a.x);
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(max(arg_2.x, -75145i), i32(-1i) * -2147483647i), firstLeadingBit(var_1.b.yw)), ~arg_2.x), firstTrailingBit(~max(_wgslsmith_clamp_i32(arg_2.x, arg_2.x, 18569i), _wgslsmith_sub_i32(2147483647i, var_1.b.x))));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    global1 = array<u32, 18>();
    let var_0 = u_input.a.xy ^ vec2<u32>(u_input.a.x, ~_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 0u, 4294967295u))));
    global2 = (~countOneBits(~vec3<i32>(61273i, u_input.b, u_input.b)) >> (vec3<u32>(1u, u_input.a.x, 44u) % vec3<u32>(32u))) ^ -vec3<i32>(~firstTrailingBit(global2.x), func_4(Struct_3(global0.a), func_2(vec2<f32>(-322f, 1544f), global0.a.x, global0.a.x, vec3<i32>(global2.x, global2.x, global2.x)), vec2<i32>(-44601i, u_input.c), vec2<bool>(global0.a.x, global0.a.x)), ~1i);
    let var_1 = Struct_3(global0.a);
    global2 = vec3<i32>(~(~firstLeadingBit(15745i)), -_wgslsmith_mult_i32(global2.x << (global1[_wgslsmith_index_u32(127118u, 18u)] % 32u), _wgslsmith_add_i32(-2147483647i, global2.x)), ~firstLeadingBit(u_input.b) >> (~(~u_input.a.x) % 32u));
    return select(var_1.a.xz, select(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(287f, -471f) + vec2<f32>(-249f, -1871f))), global0.a.x, true, vec3<i32>(~global2.x, u_input.c, ~(-1i))).c.xx, func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(990f, 933f)))), var_1.a.x, !(!global0.a.x), abs(~vec3<i32>(38015i, u_input.c, u_input.b))).c.xw, true), global0.a.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(!(!select(global0.a, select(vec3<bool>(global0.a.x, true, false), global0.a, vec3<bool>(false, global0.a.x, global0.a.x)), select(global0.a, vec3<bool>(global0.a.x, false, global0.a.x), global0.a.x))));
    let var_0 = 0i;
    let var_1 = Struct_1(1000f, vec4<i32>(select(global2.x, var_0, reverseBits(var_0) == abs(u_input.b)), ~(u_input.c << (u_input.a.x % 32u)), u_input.b, i32(-1i) * -53001i), func_1(_wgslsmith_add_u32(~u_input.a.x ^ _wgslsmith_mod_u32(u_input.a.x, 25144u), global1[_wgslsmith_index_u32(24065u, 18u)])));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, 846f), vec2<f32>(469f, -313f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, var_1.a) - vec2<f32>(var_1.a, var_1.a)))))), countOneBits(firstTrailingBit(_wgslsmith_mod_i32(-1i, var_1.b.x))), select(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-829f, var_1.a)), !(!var_1.c.x), (false == var_1.c.x) && true, vec3<i32>(max(-2147483647i, global2.x), -1i, -1i)).c, vec4<bool>(global0.a.x, global0.a.x, !(global0.a.x && false), true), select(vec4<bool>(true, true, func_2(vec2<f32>(1000f, -865f), true, var_1.c.x, var_1.b.wyw).c.x, true), !(!vec4<bool>(var_1.c.x, false, true, global0.a.x)), global0.a.x)), vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, var_1.b.x), global2.xx >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), var_1.b.x), reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], ~global1[_wgslsmith_index_u32(~0u, 18u)])));
    global0 = Struct_3(select(select(vec3<bool>(var_2.c.x || global0.a.x, true, func_1(39922u).x), var_2.c.xxx, true), vec3<bool>(var_2.c.x, _wgslsmith_f_op_f32(var_1.a + -478f) != _wgslsmith_div_f32(-572f, var_2.a.x), true), !vec3<bool>(var_2.c.x || true, !var_1.c.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a), ~_wgslsmith_mod_u32(71178u, 4488u));
}

